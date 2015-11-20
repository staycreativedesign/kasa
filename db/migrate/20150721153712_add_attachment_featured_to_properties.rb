class AddAttachmentFeaturedToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      t.attachment :featured
    end
  end

  def self.down
    remove_attachment :properties, :featured
  end
end
