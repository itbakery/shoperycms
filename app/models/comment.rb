class Comment
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  embedded_in :commentable , polymorphic: true
end
