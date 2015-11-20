class Feature < ActiveRecord::Base
  has_and_belongs_to_many :properties
end

# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
