class Product
  include Mongoid::Document
  field :sku, type: String
  field :name, type: String
  field :description, type: String
  field :quantity, type: Float
  field :released_on, type: Date
  has_many :reviews, as: :reviewable, cascade_callbacks: true
end

# cascade_callbacks
# fires all save callback on product  reviews
