require 'pry'
class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_price = @@items.each {|item| item.price.to_s}
      resp.write item_price

    end
    resp.finish




  end
end
