class PriceSchema
  include Mongoid::Document
  field :quantity, type: Float
  field :unit, type: String
  field :price, type: BigDecimal
end
