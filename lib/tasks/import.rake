require "csv"

namespace :import do
  desc "imports data from csv file"
  task :data => :environment do
    filepath = "lib/assets/gamme.csv"
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    CSV.foreach(filepath, csv_options) do |row|
      h = row.to_hash
      bottle = Bottle.where(chateau: h["chateau"]).first
      if bottle
        bottle.destroy
        puts "#{bottle.appellation} a été supprimé"
        bottle = Bottle.new(chateau: h["chateau"],
                            appellation: h['appellation'],
                             year: h['year'],
                             slogan: h['slogan'],
                             caractere: h['caractere'],
                             accord: h['accord'],
                             tempservice: h['tempservice'],
                             image: h['image'],
                             map: h['map'])
        bottle.save
        puts "#{bottle.appellation} a été ajoutée"
      else
        bottle = Bottle.new(chateau: h["chateau"],
                            appellation: h['appellation'],
                             year: h['year'],
                             slogan: h['slogan'],
                             caractere: h['caractere'],
                             accord: h['accord'],
                             tempservice: h['tempservice'],
                             image: h['image'],
                             map: h['map'])
      bottle.save
      puts "#{bottle.appellation} a été ajoutée"
      end
    end
  end
end
