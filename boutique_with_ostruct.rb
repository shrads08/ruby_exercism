require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |item| OpenStruct.new(item) }
  end

  def item_names
    items.map(&:name).sort
  end

  def total_stock
    items.sum { |item| item.quantity_by_size.values.sum }
  end
end


=begin
--------------------------------------------------LEARNINGS-------------------------------------------------------
OpenStruct allows to create objects out of Hash, so instead of accessing via hash keys we can access using methods on the openstruct object. 
Also allows for adopting shortcut when using block. In situations where block calls a single method on the object we can use the shortcut of &:
for instance,
    items.map{|item| item.name}.sort and items.map(&:name).sort both are same.
Apart from this, OpenStruct is part of Ruby's Standard Library (stdlib) not of core library, and the files/libraries which are not from core library - your own code from different files, from standard library, or external dependencies; then you need to include it using 'require'
=end