# class Seed
# #
#   def self.begin
#     seed = Seed.new
#     seed.generate_destinations
#   end

15.times do |i|
    @skater = Skater.create!(
      skill_rating: rand(5),
      name: Faker::House.room
    )
    2.times do
      @skater.boards.new(
      color: Faker::Color.color_name,
      quark: Faker::Verb.simple_present,
      skater_id: nil)
      @skater.save
    end
  end
  # end

  #     puts "Destination #{i}: Country is #{skater.country} and city is '#{destination.city}, and spot is '#{destination.spot}'."
  #   end

  # Seed.begin
  p "Created #{Skater.count} skaters"
