class Item

  attr_accessor :price, :sales_tax, :import_tax, :total_tax
  attr_reader :name
#initializing name, price, sales_tax, and import_tax
  def initialize(name, price, sales_tax, import_tax)
    @name = name
    @price = price #Rounds to the second decemal point
    @sales_tax = sales_tax
    @import_tax = import_tax
    @total_tax = total_tax
  end

  ###### EQUATIONS FOR CALCULATING TAXES ######
    def tax_calculations

      ##If both sales_tax and import_tax apply
      ##then multiply the item's price by 1.15
      if (@sales_tax == "true") && (@import_tax == "true")
        @total_tax = @price * 0.15
      ##If neither sales_tax nor import_tax apply
      ##then print the item's original price
      elsif (@sales_tax == "false") && (@import_tax == "false")
         @price
      ##If ONLY the sales_tax applies, then multiply the item's
      ##price by 1.10
      elsif (@sales_tax == "true" && @import_tax == "false")
        @total_tax = (@price * 0.10).round(2)
      ##If ONLY the import_tax applies, then multiply the item's
      ##price by 1.05
      elsif (@sales_tax == "false") && (@import_tax == "true")
        @total_tax = (@price * 0.05)
      end
    end
end
