class BinarySearchTree
  attr_reader :head_node

  def initialize
    @head_node = nil
  end

  def insert(score, movie)
    if @head_node.nil?
      @head_node = Node.new({score => movie})
    else
      @head_node.insert(score, movie)
    end
    depth_of(score)
  end

  def depth_of(score, node = @head_node)
    @depth = 0
    if score == node.score
       return @depth
    elsif score > node.score
      depth_of(score, node.right_node)
      @depth += 1
    else
      depth_of(score, node.left_node)
      @depth += 1
    end
  end

  def include?(score, node = @head_node)
    @value = true
    if score = node.score
      return @value
    elsif score > node.score
      if node.right_node.nil?
        @value = false
      else
        include?(score, node.right_node)
      end
    else
      if node.left_node.nil?
        @value = false
      else
        include?(score, node.left_node)
      end
    end
    @value
  end
end
