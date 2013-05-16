class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.text :caption
      t.boolean :add_pic
      t.string :source
    end
  end
end
