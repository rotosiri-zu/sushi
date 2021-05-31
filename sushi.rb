require "./product.rb"
require "./sushi1.rb"
require "./user.rb"

product_params1 = [
  {name: "サーモン", price: 110},
  {name: "玉子", price: 110},
  {name: "イクラ", price: 110},
  {name: "まぐろ", price: 110}
]

sushi1 = Sushi.new(product_params1)

user = User.new

sushi1.disp_products

user.choose_product(sushi1.products)

sushi1.ask_quantity(user.chosen_product)

user.decide_quantity

sushi1.calculate_charges(user)