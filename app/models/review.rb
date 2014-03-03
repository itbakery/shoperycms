class Review
  include Mongoid::Document
  field :content, type: String
  belongs_to :reviewable , polymorphic: true
end
