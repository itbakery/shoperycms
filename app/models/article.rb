class Article
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  field :published_on, type: Date
  field :approved_by, type: String
  embeds_many :comments, as: :commentable, cascade_callbacks: true
end
