class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  # accepts_nested_attributes_for :deliveraddresss
  # accepts_nested_attributes_for :orders
  has_many :deliveraddresss, class_name: "deliveraddress", dependent: :destroy
  has_many :orders, class_name: "order", dependent: :destroy
  has_ancestry
end
