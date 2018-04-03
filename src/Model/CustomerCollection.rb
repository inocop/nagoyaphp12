module Model
  class CustomerCollection

    def initialize
        @customers = []
        @adult_count = 0
    end

    def add(customer)
        @customers << customer
        @adult_count += 1 if customer.instance_of?(Adult)
    end

    def total_price
      total_price = 0

      @customers.each do |customer|
        total_price += customer.result_price
      end

      # 大人１人につき、幼児２人を料金の高い順に無料にする
      discount_price = @customers.select {|c| c.instance_of?(Infant)}
                             .sort_by {|c| c.result_price}
                             .reverse
                             .take(@adult_count * 2)
                             .reduce(0) {|sum, c| sum + c.result_price}
      total_price -= discount_price unless discount_price.nil?

      return total_price
    end

  end
end