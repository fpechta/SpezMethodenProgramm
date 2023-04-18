class Tree
  attr_accessor :children, :node_name

  def initialize(tree_data)
    @node_name = tree_data.keys.first
    @children = []
    tree_data[@node_name].each do |child_name, child_data|
      @children << Tree.new({child_name => child_data})
    end
  end

  def visit(&block)
    block.call(self)
  end

  def visit_all(&block)
    visit(&block)
    @children.each { |child| child.visit_all(&block) }
  end
end

# Beispielbaum erstellen
tree_data = {"grandpa" => { "dad" => {"child 1" => {}, "child 2" => {} }, "uncle" => {"child 3" => {}, "child 4" => {} } } }

# Baum-Instanz erstellen
tree = Tree.new(tree_data)

# Besuch aller Knoten mit Ausgabe
tree.visit_all { |node| puts node.node_name }