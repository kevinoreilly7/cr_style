class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :sf
      t.string :location
      t.float :price
    end
  end
end
