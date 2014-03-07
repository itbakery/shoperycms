class ProductCatalog
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :released_on, type: Date
  embeds_many :photo_products, cascade_callbacks: true
  accepts_nested_attributes_for :photo_products, allow_destroy: true
end
