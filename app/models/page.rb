class Page
  include Mongoid::Document
  include Mongoid::Slug
  include Mongoid::Tree
  include Mongoid::Tree::Traversal
  belongs_to :author, class_name:  "User", inverse_of: :pages
  slug :name, history: true, scope: :author

  field :name, type: String
  field :content, type: String
  field :published_on, type: Date
  field :is_published, type: Boolean, default: false
  field :approved_by, type: String

  def self.tree_list
    results = []
    Page.traverse(:depth_first) do |node|
      prefix = '-' * node.depth
      node.name = ('-' * node.depth) + node.name
      results << node
    end
    results
  end
  def self.sort_list
    results = []
    Page.traverse(:depth_first) do |node|
      prefix = '---' * node.depth
      node.name = ('---' * node.depth) + node.name
      results << node
    end
    results
  end
end
