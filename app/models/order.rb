class Order < ApplicationRecord

  validates :total_price, :presence => true

  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  has_many :fabrics_in_orders, :dependent => :destroy
end
