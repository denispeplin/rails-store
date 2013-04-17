class AddAttachmentPhoto2ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.has_attached_file :photo2
    end
  end

  def self.down
    drop_attached_file :products, :photo2
  end
end
