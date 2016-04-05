class Business < Activerecord::Base
has_many :stores
has_many :products, through: :stores
has_many :users, through: :stores
end