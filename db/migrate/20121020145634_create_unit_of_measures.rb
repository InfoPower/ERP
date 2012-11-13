class CreateUnitOfMeasures < ActiveRecord::Migration
  def change
    create_table :unit_of_measures do |t|
      t.string :uom
      t.string :uom_desc
      t.text :comments

      t.timestamps
    end
  end
end
