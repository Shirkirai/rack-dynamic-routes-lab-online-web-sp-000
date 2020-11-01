require 'pry'
class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_price = @@items.each do |item|
        item.price.to_s
      end
      resp.write

    end
    resp.finish




  end
end
