class ProductPlan
  include Mongoid::Document
  field :month, type: String
  field :content, type: String
end
