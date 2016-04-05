class User < ActiveRecord::Base
  has_many :products
  belongs_to :store
  belongs_to :business
end