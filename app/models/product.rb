class Product < Activerecord::Base
  belongs_to :user
  belongs_to :store
  belongs_to :business, through: :store


end