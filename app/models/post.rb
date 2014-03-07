class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :starred, type: Mongoid::Boolean, default: false

  embeds_many :comments, as: :commentable, cascade_callbacks: true

end
