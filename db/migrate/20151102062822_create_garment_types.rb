class CreateGarmentTypes < ActiveRecord::Migration
  def change
    create_table :garment_types do |t|
      t.string :name
      t.string :icon

      t.timestamps null: false
    end
  end
end
