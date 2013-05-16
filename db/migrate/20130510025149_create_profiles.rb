class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :picture_id
      t.integer :user_id
      t.integer :professional_id
      t.integer :requirement_id
    end
  end
end
