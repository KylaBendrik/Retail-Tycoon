class Customer
  attr_reader :size, :name
  attr_accessor :budget

  def initialize
    @size = %w(S M L).sample
    @budget = (10..300).to_a.sample
    @name = %w(Mary Jane Alice Kyla Kate Nina Phoebe Jennifer Allison Catherine Cindi Cindy Samantha Alexandra).sample + " " + %w(Jenkins Ashton Matthews Marcus Taylor Reynolds Harrison Hanson).sample
  end

end
