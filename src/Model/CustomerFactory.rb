module Model
  class CustomerFactory

    def self.create(customer_code, section_price)
      case customer_code[0]
      when 'A'
        Adult.new(customer_code, section_price)
      when 'C'
        Child.new(customer_code, section_price)
      when 'I'
        Infant.new(customer_code, section_price)
      else
        raise "規定外の年齢区分です。"
      end
    end

  end
end