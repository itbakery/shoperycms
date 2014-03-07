class Product
  include Mongoid::Document
  include Mongoid::Slug
  belongs_to :author, class_name:  "User", inverse_of: :products

  field :sku, type: String
  field :name, type: String
  field :description, type: String
  field :quantity, type: Float
  field :released_on, type: Date
  slug  :name ,history: true, scope: :author
  embeds_many :reviews, as: :reviewable,  cascade_callbacks: true

end
