class LocomotiveEngineer
    def self.generate_list_of_wagons(*list_of_wagons)
      list_of_wagons
    end
  
    def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
      wagon_one, wagon_two, loco_id, *rest_wagons = each_wagons_id
      list_of_wagons =[*loco_id, *missing_wagons, *rest_wagons, *wagon_one, *wagon_two]
    end
  
    def self.add_missing_stops(route, **stops)
      #stops_stations = stops.to_a.values
      missing_stops = {**route, stops: stops.values}
    end
  
    def self.extend_route_information(route, more_route_information)
      combined_route_info = {**route, **more_route_information}
    end
end

=begin
---------------------------------------Learning----------------------------------------------------------------------------
Decomposition refers to extraction of elements from a collection, could be an Array/Hash .

The decomposed values can be then assigned to variables within same statement.

Mutiple assignment (of any data type) can be done by separating variables with comma

ex var1, var2, var3 = [1,2,3]

*variable and **variable are used as composition and decomposition operators.

Deep decomposing - same as shallow decomposing, but needs delimited decomposition expression ‘()’ 

ex

actors_cast = [["ahad raza mir", "wahaj ali"], ["pavan ravindra", "vijay thalapathy"], ["baris arduc", "Jennifer winget"]]
...
irb(main):003> (fav3, fav2), (fav1, fav4), (fav5, fav6) = actors_cast

irb(main):004> fav1
=> "pavan ravindra"
irb(main):005> fav2
=> "wahaj ali"
irb(main):006> fav3
=> "ahad raza mir"
irb(main):007> fav4
=> "vijay thalapathy"
irb(main):008> fav5
=> "baris arduc"
irb(main):009> fav6
=> "Jennifer winget"

Using splat *operator one can decompose an array, by capturing the leftover values.

colors = [”yellow”, “brown”, “green”, “purple”, “burgundy”]

color_code_one, *left_colors = colors

*arguments —- used with positional args

**keyword_args —— used with keyworded args
=end