(1..5).each do |x|
  a = x.to_s
  User.create(:email => 'john.doe'+a+'@foo.com', :password => 'foobar123', :password_confirmation => 'foobar123', :firstname => 'John'+a, :lastname => 'Doe'+a)
  Category.create(:name => 'Category'+a)
  (1..5).each do |y|
    b = y.to_s
    Product.create(:title => 'product'+a+b, :price => 33.11, :category_id => x, :user_id => x, :description => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.')
    (1..5).each do |z|
      c = z.to_s
      Review.create(:rating => Random.rand(1..5), :product_id => Random.rand(1..25), :user_id => Random.rand(1..5), :content => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.')
    end
  end
end
User.create(:email => 'administrator@foo.com', :password => 'admin123', :password_confirmation => 'admin123', :firstname => 'admin', :lastname => 'admin', :admin => true)
