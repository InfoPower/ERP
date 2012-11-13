class RemovePuomFromUnitOfMeasureConversion < ActiveRecord::Migration
  def up
    remove_column :unit_of_measure_conversions, :primary_uom
      end

  def down
    add_column :unit_of_measure_conversions, :primary_uom, :string
  end
end
