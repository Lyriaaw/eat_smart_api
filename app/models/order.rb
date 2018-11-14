class Order < ApplicationRecord
  belongs_to :table
  has_and_belongs_to_many :dishes



  def handle_creation opts
    table = Table.find_by_code opts[:table][:code]
    raise Exception unless table
    self.table = table


    opts[:dishes].each_with_index do |dish, index|
      current_dish = Dish.find dish[:id]
      self.dishes << current_dish if current_dish
    end

    save

    self.as_json(include: [:table, :dishes])
  end


end
