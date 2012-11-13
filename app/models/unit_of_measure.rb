class UnitOfMeasure < ActiveRecord::Base

validates :uom, :uom_desc, :presence => true
validates :uom, :uniqueness => true

before_validation :uppercase_uom

def uppercase_uom
    self.uom.upcase!
end


validates :uom, :length => {
    :maximum => 4, 
    :message => 'must be less than 4 characters long.'
  }
validates :uom_desc, :length => {
    :maximum => 15, 
    :message => 'must be less than 15 characters long.'
  }
validates :comments, :length => {
    :maximum => 80, 
    :message => 'must be less than 80 characters long.'
  }

  has_many :primary_uomcs, :class_name => "UnitOfMeasureConversion", :foreign_key => "primary_uom_id", :dependent => :restrict
  has_many :secondary_uomcs, :class_name => "UnitOfMeasureConversion", :foreign_key => "secondary_uom_id", :dependent => :restrict


end
