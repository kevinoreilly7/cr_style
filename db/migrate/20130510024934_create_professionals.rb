class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :architect_company
      t.string :photographer
    end
  end
end
