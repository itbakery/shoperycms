class Category
  include Mongoid::Document
  include Mongoid::Tree
  include Mongoid::Tree::Traversal
  field :name, type: String

  def self.tree_list
    results = []
    Category.traverse(:depth_first) do |node|
      prefix = '-' * node.depth
      node.name = ('-' * node.depth) + node.name
      results << node
    end
    results
  end

end
