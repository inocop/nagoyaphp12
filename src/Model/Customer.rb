module Model
  module Calculate
    attr_accessor :code
    attr_accessor :section_price

    # 半額計算(10円未満切り上げ)
    def half_price(price)
      return ((price.to_f / 2 / 10).ceil * 10).to_i
    end

    # 通常
    def normal_price
      return @section_price.to_i
    end

    # 定期券
    def free_price
      return 0
    end

    # 福祉割引
    def discount_price
      return half_price(@section_price)
    end

    # 料金区分を判定した料金
    def result_price
      case @code[1]
      when 'n'
        normal_price
      when 'p'
        free_price
      when 'w'
        discount_price
      else
        raise "規定外の料金区分です。"
      end
    end
  end

  class BaseCustomer
    include Calculate

    def initialize(code, section_price)
      @code = code
      @section_price = section_price
    end
  end

  class Adult < BaseCustomer
  end

  class Child < BaseCustomer
    def initialize(code, section_price)
      @code = code
      @section_price = half_price(section_price)
    end
  end

  class Infant < BaseCustomer
    def initialize(code, section_price)
      @code = code
      @section_price = half_price(section_price)
    end
  end

end
