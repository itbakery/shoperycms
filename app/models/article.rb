class Article
  include Mongoid::Document
  include Mongoid::Slug
  belongs_to :author, class_name: "User" , inverse_of:  :articles
  field :name, type: String
  slug :name, history: true, scope: :author
  field :content, type: String
  field :published_on, type: Date
  field :approved_by, type: String
  embeds_many :comments, as: :commentable, cascade_callbacks: true
end

#add  _slugs field of type Array in to Article
