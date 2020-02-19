class CashRegister

    @@all = []


    attr_accessor :total, :discount

    def initialize(discount = 0.0, total = 0.0, items = [], cart = [])
        @total = total
        @discount = discount
        @items = items
        @cart = cart
    end

    def add_item(title, price, quantity = 1.0)
        @total += (quantity * price)
        i = 0
        while i < quantity do 
            @items << title
            i += 1
        end
        
        @cart << {:title => title, :price => price, :quantity => quantity}
        @total
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            discount = (@discount / 100.0) * @total
            @total = @total - discount
            return "After the discount, the total comes to $#{@total.round}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - (@cart[-1][:price] * @cart[-1][:quantity])
        @total
    end


end
