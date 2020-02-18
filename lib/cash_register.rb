require 'pry'

class CashRegister

    attr_accessor :total, :discount, :basket, :last_transaction

    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @basket = []
    end

    def add_item(title, price, amount = 1)
        @total += price * amount

        amount.times do
            @basket << title
        end
        self.last_transaction = price * amount
    end

    def apply_discount
        output = ""
        if @discount == 0
            output = "There is no discount to apply."
        else
            @total *= ((100.0 - @discount) / 100)
            output = "After the discount, the total comes to $#{@total.to_i}."
        end
        output
    end

    def items
        @basket
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end