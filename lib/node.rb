class Node
  attr_reader :movie_score_hash, :score, :movie
  attr_accessor :left_node, :right_node, :depth

  def initialize(movie_score_hash)
    @movie_score_hash = movie_score_hash
    @score = movie_score_hash.keys[0]
    @movie = movie_score_hash[@score]
    @left_node = nil
    @right_node = nil
  end

  def insert(score, movie)
    if score < @score
      if @left_node.nil?
        @left_node = Node.new({score => movie})
      else
        @left_node.insert(score, movie)
      end
    else
      if @right_node.nil?
        @right_node = Node.new({score => movie})
      else
        @right_node.insert(score, movie)
      end
    end
  end
end
