class CreateUnitOfMeasureConversions < ActiveRecord::Migration
  def change
    create_table :unit_of_measure_conversions do |t|
      t.decimal :conversion_factor
      t.string :primary_uom
      t.string :secondary_uom
      t.string :item_no
      t.date :from_effective_date
      t.date :to_effective_date
      t.text :comments

      t.timestamps
    end
  end
end
