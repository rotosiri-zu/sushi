class User
  attr_reader :chosen_product, :quantity_of_product
  def choose_product(products)
    while true
      print "商品の番号を選択 > "
      select_product_num = gets.to_i
      @chosen_product = products.find{|product| product.id == select_product_num}
      break if !@chosen_product.nil?
      puts "#{products.first.id}から#{products.last.id}の番号から選んでください。" 
    end
  end

  def decide_quantity
    while true
      print "個数を入力 >"
      @quantity_of_product = gets.to_i
      if @quantity_of_product <= 0
        puts "1個以上選んでください。"
      elsif @quantity_of_product >= 5
        puts "一度に注文出来るのは4個までです。"
      else
        break  
      end
    end
  end
end