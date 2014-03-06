class Newsinfo
  include Mongoid::Document
  include Mongoid::Slug
  belongs_to :author, class_name:  "User", inverse_of: :newsinfos
  slug :name, history: true, scope: :author

  field :name, type: String
  field :content, type: String
  field :published_on, type: Date
  field :is_published, type: Boolean, default: false
  field :approved_by, type: String
end
