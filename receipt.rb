#Calls and attaches the item.rb file
require_relative 'item'

#Will have a collection of items.
class Receipt
  #reciepts are read-only.
  #The user doesn't need to write anything on the receipt
  attr_reader :item_list
  attr_accessor :total_tax, :total

  #Container to store the collection of items
  def initialize
    @item_list = []
    @total = 0
    @total_tax = 0
  end

    #Add a new item to the collection of items
    def add(item)
      @item_list << item #Shovel/push new item into the @item_list array
      # @total_tax = "#{@sales_tax} #{@import_tax}" #Running tax calcutions on each item
      @total_tax += item.tax_calculations
      # puts "#{@total_tax} hello"
      @total += item.tax_calculations + item.price #Runing total method on each item incrementing each time
      # @total = @total + item.total longhand
    end

    ##Print out reciept with list of items
    def print_receipt
      item_list.each do |item|
        # puts "#{@total_tax}"
        p "#{item.name}: #{(item.price).round(2)}"
      end
      ##prints sales tax and totals
      p "Sales Tax: #{@total_tax.round(2)}"
      p "Total: #{@total.round(2)}"
    end

end

####CREATING items#####
##Sales tax ONLY
music_cd = Item.new("Music CD", 14.99, "true", "false")
local_perfume = Item.new("Bottle of Perfume", 18.99, "true", "false")

##Import tax ONLY
imported_box_of_chocolates = Item.new("Imported Box of Chocolates", 10.00, "false", "true")

##Neither sales tax nor import tax
book = Item.new("Book", 12.49, "false", "false")
chocolate_bar = Item.new("Chocolate Bar", 0.85, "false", "false")
headache_pills = Item.new("Packet of Headache Pills", 9.75, "false", "false")

##Both sales tax and import tax
imported_perfume = Item.new("Imported Bottle of Perfume", 47.50, "true", "true")


####Creating new receipt
receipt1 = Receipt.new
###Adding items to receipt1
receipt1.add(book)
receipt1.add(music_cd)
receipt1.add(chocolate_bar)
receipt1.print_receipt
puts "\n"
####Creating new receipt
receipt2 = Receipt.new
####Adding items to receipt2
receipt2.add(imported_box_of_chocolates)
receipt2.add(imported_perfume)
receipt2.print_receipt
puts "\n"
####Creating new receipt
receipt3 = Receipt.new
####Adding items to receipt3
receipt3.add(local_perfume)
receipt3.add(headache_pills)
receipt3.add(imported_box_of_chocolates)
receipt3.print_receipt
