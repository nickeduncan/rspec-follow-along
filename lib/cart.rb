class Cart
  extend Forwardable
  def_delegator :@items, :empty?

  def initialize
    @items = {}
    @total_value = 0
  end

  # def empty?
  #   # nil
  #   @items.empty?
  # end

  def add_item(item, value, quantity)
    @items[item] = [value, quantity]
  end

  def get_items
    @items
  end
  
  def get_total
    for item in @items
      @total_value += item[1][0] * item[1][1]
    end
    @total_value
  end

end
