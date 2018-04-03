#!/usr/bin/ruby

require_relative './App'

def test(testdata, expect)
  app = App.new
  result = app.run(testdata)

  if result.to_s != expect.to_s
    puts 'NG:' + testdata
  else
    puts 'OK'
  end
end

test("210:Cn,In,Iw,Ap,Iw", "170")
test("220:Cp,In", "110")
test("230:Cw,In,Iw", "240")
test("240:In,An,In", "240")
test("250:In,In,Aw,In", "260")
test("260:In,In,In,In,Ap", "260")
test("270:In,An,In,In,Ip", "410")
test("280:Aw,In,Iw,In", "210")
test("200:An", "200")
test("210:Iw", "60")
test("220:Ap", "0")
test("230:Cp", "0")
test("240:Cw", "60")
test("250:In", "130")
test("260:Cn", "130")
test("270:Ip", "0")
test("280:Aw", "140")
test("1480:In,An,In,In,In,Iw,Cp,Cw,In,Aw,In,In,Iw,Cn,Aw,Iw", "5920")
test("630:Aw,Cw,Iw,An,An", "1740")
test("340:Cn,Cn,Ip,Ap", "340")
test("240:Iw,Ap,In,Iw,Aw", "120")
test("800:Cw,An,Cn,Aw,Ap", "1800")
test("1210:An,Ip,In,Iw,An,Iw,Iw,An,Iw,Iw", "3630")
test("530:An,Cw,Cw", "810")
test("170:Aw,Iw,Ip", "90")
test("150:In,Ip,Ip,Iw,In,Iw,Iw,In,An,Iw,Aw,Cw,Iw,Cw,An,Cp,Iw", "580")
test("420:Cn,Cw,Cp", "320")
test("690:Cw,In,An,Cp,Cn,In", "1220")
test("590:Iw,Iw,Cn,Iw,Aw,In,In,Ip,Iw,Ip,Aw", "1200")
test("790:Cw,Cn,Cn", "1000")
test("1220:In,In,An,An,In,Iw,Iw,In,In,Ip,In,An,Iw", "4590")
test("570:Cw,Cn,Cp", "440")
test("310:Cn,Cw,An,An,Iw,Cp,Cw,Cn,Iw", "1100")
test("910:Aw,In,Iw,Iw,Iw,Iw,Iw,An,Cw,In", "2290")
test("460:Iw,Cw,Cw,Cn", "590")
test("240:Iw,Iw,In,Iw,In,In,Cn,In,An", "780")
test("1240:In,In,In,Ap,In,Cw,Iw,Iw,Iw,Aw,Cw", "2170")
test("1000:Iw,Ip,In,An,In,In,In,An,In,Iw,In,In,Iw,In,Iw,Iw,Iw,An", "5500")
test("180:In,Aw,Ip,Iw,In,Aw,In,Iw,Iw,In", "330")
test("440:In,Ip,Cp,Aw,Iw,In,An", "660")
test("1270:Ap,In,An,Ip,In,Ip,Ip", "1270")
