class Car < ApplicationRecord
  # validates_presence_of :make 
  # validates_uniqueness_of :make 

  validates :make, uniqueness:true, presence: true 
def self.by_make
  # order the cars by make ascending order
  order(:make)

end

def self.by_color
  # order the cars by the color ascending order 
  order(:make)

  end

  def self.by_year(direction = :asc)
    # order the cars by the year asceding order 
    order(:year direction)

  end

  def paint(color)
    #changes the color 
    self.update(color: color)
  end

  def info
    # rethurn s all the ifo of a car 
    self.attributes.except('id', 'created_at', 'updated_at')
  end

  def honk
    # returns the car horn
  end 

end