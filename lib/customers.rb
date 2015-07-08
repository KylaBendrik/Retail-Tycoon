class Customer
  attr_reader :size
  attr_accessor :budget

  def initialize
    @size = %w(S M L).sample
    @budget = (10..300).to_a.sample
  end

end
