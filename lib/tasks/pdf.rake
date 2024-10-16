namespace :pdf do
  desc "Speed test"
  task speed: :environment do
    Table.speed
  end
end