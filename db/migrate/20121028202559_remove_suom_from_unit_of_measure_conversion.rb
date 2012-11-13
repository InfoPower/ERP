class RemoveSuomFromUnitOfMeasureConversion < ActiveRecord::Migration
  def up
    remove_column :unit_of_measure_conversions, :secondary_uom
      end

  def down
    add_column :unit_of_measure_conversions, :secondary_uom, :string
  end
end
