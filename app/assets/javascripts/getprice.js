
console.log('HELLO WORLD')

// require 'net/http'
//       require 'json'
//       url = "https://api.suplexed.com/v2/pricer_web.php?p_type=snkrs&p_var1=#{@shoe.style}"
//       uri = URI(url)

//       response = Net::HTTP.get(uri)
//       response2 = JSON.parse(response)
//       @arrays = response2["sizes"]
//       @rows = @arrays.select { |item| item["size"] == @shoe.size.size }

//       if @rows.empty?
//         @stockx = "No Results"
//         @goat = "No Results"
//         @flightclub = "No Results"

//       else
//         @stockx = "$#{@rows[0]["stockx"]}"
//         @goat = "$#{@rows[0]["goat"]}"
//         @flightclub = "$#{@rows[0]["flightclub"]}"

//         puts "StockX Price: #{@stockx}"
//         puts "GOAT Price: #{@goat}"
//         puts "FlightClub Price: #{@flightclub}"
//       end