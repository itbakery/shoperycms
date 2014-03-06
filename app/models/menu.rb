class Menu
  include Mongoid::Document
  include Mongoid::Tree
  include Mongoid::Tree::Traversal
  field :name_th, type: String
  field :name_en, type: String
  def self.tree_list
    results = []
    Menu.traverse(:depth_first) do |node|
      prefix = '--' * node.depth
      node.name_th = ('--' * node.depth) + node.name_th
      node.name_en = ('--' * node.depth) + node.name_en
      results << node
    end
    results
  end
  def self.menu_list
    results = []
    Menu.traverse(:depth_first) do |node|
      results << node
    end
    results
  end

end
