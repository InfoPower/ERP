class AddUomidToUnitOfMeasureConversion < ActiveRecord::Migration
  def change
    add_column :unit_of_measure_conversions, :primary_uom_id, :integer

  end
end
