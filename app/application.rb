class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_price = req.path.split("/items/").last
      item = @@items.find{|i| i.price == item_price}

      resp.write item.price
    else
      resp.write "Item not found"
      resp.status = 400
    end

    resp.finish




  end
end
