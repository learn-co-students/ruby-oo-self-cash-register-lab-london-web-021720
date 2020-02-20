class CashRegister
   attr_accessor :total 
   attr_accessor :discount, :price, :title


   
    def initialize( discount=0 )
        
        @total =0
        @discount = discount
        @@items = []
        @@price = []
        @@just_items =[]
   
    end

    def add_item(titles, price, quantity = 1 )
        @price = price 
        @title = titles
       
        @quantity
 
        quantity.times {@@items << @title}
        quantity.times {@@price << @price}
        @@just_items << titles 

        self.total += price * quantity 
        
    
    end 

    def apply_discount
       if @discount > 0
        self.total =@total *(1-(@discount.to_f/100))
            "After the discount, the total comes to $800."
       else 
            "There is no discount to apply."
       end
    
    end


    def items
   
      @@items 
        
    end 


  def  void_last_transaction
   if @@just_items.size <= 1
   
          @total = 0 
      else 
          last_item = @@price.last()
          @total =  @total - last_item 
   
      end 
   
  end
end

