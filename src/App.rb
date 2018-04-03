require_relative './Model/CustomerFactory'
require_relative './Model/CustomerCollection'

class App

  def initialize
    @customers = Model::CustomerCollection.new
  end

  def run(data)
    # :で分割
    tmp_data = data.split(":")
    section_price = tmp_data[0]

    # ,で分割
    customer_code_list = tmp_data[1].split(",")

    customer_code_list.each do |code|
      customer = Model::CustomerFactory.create(code, section_price)
      @customers.add(customer)
    end

    price = @customers.total_price
    return price
  end

end