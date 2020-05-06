require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |color_gender_lives, value|
    puts color_gender_lives
    puts value
    value.each do |stats, all_names|
      puts stats
      puts all_names
      all_names.each do |name|

        if pigeon_list[name] == nil
           pigeon_list[name] = {}
        end
        if pigeon_list[name][color_gender_lives] == nil
          pigeon_list[name][color_gender_lives] = []
        end
        pigeon_list[name][color_gender_lives].push(stats.to_s)

      end
    end
  end
  pigeon_list
end

pigeon_data = {
  :color => {
    :brown => ["Luca"],
    :black => ["Lola"],
    :blue => ["Luca"],
    :green => ['Luca']
  },
  :gender => {
    :male => ["Luca"],
    :female => ["Lola"]
  },
  :lives => {
    "Central Park" => ["Lola"],
    "Library" => ["Luca"]
  }
}


nyc_pigeon_organizer(pigeon_data)
