Product.delete_all

5.times.each do |x|
  Product.create(title: "halloooo! #{x}", description: 'bla bla bla bla', image_url: 'https://www.zachstronaut.com/posts/beemo/beemo2.gif', price: 30)
end
