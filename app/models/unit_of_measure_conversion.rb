class UnitOfMeasureConversion < ActiveRecord::Base

validates :conversion_factor, :primary_uom_id, :secondary_uom_id, :presence => true

validates :item_no, :length => {
    :maximum => 15, 
    :message => 'must be less than 15 characters long.'
  }
validates :comments, :length => {
    :maximum => 80, 
    :message => 'must be less than 80 characters long.'
  }

  belongs_to :puoms, :class_name => "UnitOfMeasure", :foreign_key => "primary_uom_id"
  belongs_to :suoms, :class_name => "UnitOfMeasure", :foreign_key => "secondary_uom_id"

end
