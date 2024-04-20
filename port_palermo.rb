module Port
  # TODO: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].to_sym.upcase
  end

  def self.get_terminal(ship_identifier)
    cargo_carried = ship_identifier.to_s[0..2]
    if cargo_carried == "OIL" || cargo_carried == "GAS"
      terminal = "A"
    else
      terminal = "B"
    end
    terminal.to_sym
  end
end
#-------------------learning--------------------------------------
# 1. Symbols are named identifiers referring to some value, created using : character suffixed by some name. eg: :PALE OR you can also create symbols with double quotes eg: :"PALE PORT" the double quotes are used in scenarios where you have spaces in the symbol.
# 2. Symbols are raw data, that is they are directly stored as value in memory without the overhead of storing metadata i.e. associated methods, pointer to class definition.
# 3. Thus symbols are more memory efficient as compared to strings because strings do store metadata. The strings created will also be stored with the information of associated methods, and pointer to String Class
# 4. Symbols are immutable, once created they cannot be modified, if you modify then that creates a separate symbol with different object_id and thus they are unique. Example: :key.object_id => 173788 and :key.upcase.object_id => 115260.
# 5. Strings are mutable, but the true essence of mutability can be explored while using string methods with bang. Example: str_one = "new" ; str_one.object_id => 162080; str_one = "old" ; print str_one will display new value i.e. "old" showing mutability however str_one.object_id will give new object_id 211620 depicting creation of new string object and thus immutability.
#6. However when using str_one.upcase! this changes value to "OLD" and now when you check str_one.object_id it will give same last object_id i.e. 211620; thus changing the original value in true sense.
# 7. str[0..2] .. range operator is inclusive of both start and end values
# 8. str[0...2] ... this range operator excludes end value.