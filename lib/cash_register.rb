require "pry"
class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount=discount
        @items =[]
    end
    def add_item(title, price, quantity=1)
        self.last_item = price * quantity
        self.total =total + last_item
        quantity.times {|item| self.items << title}
    end

    def apply_discount
        if discount !=0
        self.total = (total * (1 - discount/100.0)).to_i
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        
        self.total = total - last_item.to_f
        
    end
    
end