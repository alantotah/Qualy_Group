class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :orders, :dependent => :destroy

  # validates :telefono, :presence => true
  # validates :direccion, :presence => true
  # validates :nombre_empresa, :presence => true
  # validates :nombre_empresa, :uniqueness => true
  # validates :nombre, :presence => true
  # validates :appellido, :presence => true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
