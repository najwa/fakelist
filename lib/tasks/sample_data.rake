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
      name  = "Category #{n+1}"
      category = Category.create!(name: name)
      10.times do |m|
        name = "Subcategory #{n+1} - #{m+1}"
        Subcategory.create!(name: name, category_id: category.id )
      end
    end
  end
end