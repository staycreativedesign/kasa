class Property < ActiveRecord::Base
  has_and_belongs_to_many :features
  has_many :images, :dependent => :destroy

  def monetize
    @amount = self.current_list_price.to_i * 100
    @amount = Money.new(@amount, "USD")
    @amount.format
  end

  has_attached_file :featured,
    :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
    # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
    :path => '/:class/:id/:style/:filename',
    # :url => "/system/:attachment/:id/:basename_:style.:extension",
    :url =>':s3_domain_url',

    :styles => {
      :admin    => ['100x100#',  :jpg, :quality => 70],
      :thumb    => ['250x250#',  :jpg, :quality => 70],
      :preview  => ['500x500#',  :jpg, :quality => 70],
      :retina   => ['1920>',     :jpg, :quality => 100]
    },

    :convert_options => {
      :admin    => '-set colorspace sRGB -strip',
      :thumb    => '-set colorspace sRGB -strip',
      :preview  => '-set colorspace sRGB -strip',
      :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
    }

    validates_attachment_content_type :featured, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    process_in_background :featured

    def url
      {:url => ':s3_domain_url'}
    end

    def s3_credentials
      {:bucket => ENV['AWS_BUCKET'], :access_key_id => ENV["access_key_id"], :secret_access_key => ENV["secret_access_key"]}
    end

end

# == Schema Information
#
# Table name: properties
#
#  id                            :integer          not null, primary key
#  mls_listing_number            :string
#  mls_name                      :string
#  mls_sources                   :string
#  mls_date_added                :date
#  mls_date_modified             :date
#  street_number                 :integer
#  street_name                   :string
#  unit_number                   :string
#  city                          :string
#  zip                           :integer
#  location                      :string
#  full_address                  :string
#  property_type                 :string
#  last_update_description       :text
#  short_last_update_description :text
#  status                        :string
#  current_list_price            :decimal(, )
#  sold_price                    :decimal(, )
#  sqft                          :decimal(, )
#  sqft_price                    :decimal(, )
#  lot_sqft                      :decimal(, )
#  year_built                    :integer
#  listing_office                :string
#  condition                     :string
#  bedrooms                      :integer
#  half_bathrooms                :decimal(, )
#  full_bathrooms                :integer
#  favorited                     :integer
#  fake_favorited                :integer
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  featured_file_name            :string
#  featured_content_type         :string
#  featured_file_size            :integer
#  featured_updated_at           :datetime
#  image_id                      :integer
#  description                   :text
#  short_description             :text
#  garage_size                   :integer
#  has_garage                    :boolean
#
# Indexes
#
#  index_properties_on_full_address  (full_address) UNIQUE
#
