class Fabric < ApplicationRecord

  validates :diseno, :presence => true
  validates :diseno, :uniqueness => true
  validates :peso, :presence => true
  validates :ancho, :presence => true


  has_many :fabrics_in_orders, :dependent => :destroy
end
