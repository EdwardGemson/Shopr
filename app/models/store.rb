class Store < ActiveRecord::Base
  has_many :products
  belongs_to :business
  has_many :users
end