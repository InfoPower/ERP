class AddSuomidToUnitOfMeasureConversion < ActiveRecord::Migration
  def change
    add_column :unit_of_measure_conversions, :secondary_uom_id, :integer

  end
end
