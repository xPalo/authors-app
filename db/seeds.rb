# 30.times do
#   user = User.create! :first_name => Faker::Name.first_name,
#                       :last_name => Faker::Name.last_name,
#                       :email => Faker::Internet.email,
#                       :password => 'asdasd',
#                       :password_confirmation => 'asdasd'
# end

# 30.times do
#   user = Author.create! :first_name => Faker::Name.first_name,
#                         :last_name => Faker::Name.last_name,
#                         :country => Faker::Address.country,
#                         :user_id => rand(16..49)
# end

100.times do
  book = Book.create! :title => Faker::Book.title,
                      :isbn => Faker::Code.isbn,
                      :notes => Faker::Quote.matz,
                      :author_id => rand(39..68)
end