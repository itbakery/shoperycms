class Post
  include Mongoid::Document
  include Mongoid::Slug
  belongs_to :author, class_name:  "User", inverse_of: :posts
  slug :title, history: true, scope: :author

  field :title, type: String
  field :body, type: String
  field :starred, type: Mongoid::Boolean, default: false

  has_many :comments, as: :commentable

end
