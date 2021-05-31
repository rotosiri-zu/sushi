class Sushi
  attr_reader :products
  def initialize(product_params)
    @products = []
    register_product(product_params)
  end

  def register_product(product_params)
    product_params.each do |param|
      @products << Product.new(param)
    end 
  end

  def disp_products
    puts "いらっしゃいませ！商品を選んでください。"
    @products.each do |product|
      puts "#{product.id}.#{product.name}" "(¥#{product.price}円)"
    end
  end

  def ask_quantity(chosen_product)
    puts "個数を入力してください。"
  end

  def calculate_charges(user)
    total_price = user.chosen_product.price * user.quantity_of_product
    puts "合計金額は#{total_price.floor}円です。"
    puts "ご注文ありがとうございました!"
  end
end