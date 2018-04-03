require_relative './Model/CustomerFactory'
require_relative './Model/Passengers'

class App

  def initialize
    @passengers = Model::Passengers.new
  end

  def run(data)
    # :で分割
    tmp_data = data.split(":")
    section_price = tmp_data[0]

    # ,で分割
    code_list = tmp_data[1].split(",")

    code_list.each do |code|
      customer = Model::CustomerFactory.create(code, section_price)
      @passengers.add(customer)
    end

    price = @passengers.total_price
    return price
  end

end