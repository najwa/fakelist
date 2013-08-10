namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    [City, Category, Subcategory].each(&:delete_all)
    make_cities
    make_categories
  end
    
  def make_cities
    10.times do |n|
      name  = Faker::Address.city
      City.create!(name: name)
    end
  end

  def make_categories
    5.times do |n|
      name  = "Category #{n}"
      category = Category.create!(name: name)
      10.times do |m|
        name = "Subcategory #{n} - #{m}"
        subcategory = Subcategory.create!(name: name, category_id: category.id )
        50.times do |l|
              price     = 1+rand(400)
              body      = Faker::Lorem.paragraph(6)
              location  = Faker::Address.street_address
              email     = Faker::Internet.email
              city_id   = 1 + rand(10)
              title     = "Post #{city_id}, #{subcategory.id}, #{l}"
              Post.create!(title: title, price: price, body: body, 
                           location: location, email: email,
                           subcategory_id: subcategory.id,
                           city_id: city_id)
        end
      end
    end
  end
end