puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)
Company.create(name: "Nintendo", founding_year: 1889)
Company.create(name: "DaleTech", founding_year: 1997)
Company.create(name: "Krusty Krab", founding_year: 1999)
Company.create(name: "Game Freak", founding_year: 1989)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")
Dev.create(name: "Mr. Poopy Butthole")
Dev.create(name: "Dale Gribble")
Dev.create(name: "Michael Scott")
Dev.create(name: "Squidward Tentacles")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
32.times do
Freebie.create(
    item_name: ["Plumbus", "Toilet Plunger", "Little Chocolates", "Hatrack", "Mousepad that's actually a mouse", "Muffin basket", "Kangaroo Sticker Set", "Damp Business Card", "Rubber Chicken"].sample,
    value: rand(1..1000),
    dev_id: rand(1..8),
    company_id: rand(1..8)
)
end

puts "Seeding done!"
