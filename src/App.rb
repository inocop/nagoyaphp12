require_relative './Model/CustomerFactory'
require_relative './Model/Passenger'

class App

  def initialize
    @passenger = Model::Passenger.new
  end

  def run(data)
    # :で分割
    tmp_data = data.split(":")
    section_price = tmp_data[0]

    # ,で分割
    code_list = tmp_data[1].split(",")

    code_list.each do |code|
      customer = Model::CustomerFactory.create(code, section_price)
      @passenger.add(customer)
    end

    price = @passenger.total_price
    return price
  end

end