class Application


  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/item/)
      item_price = req.path.split("/item/").last
      item = @@item.find{|i| i.price == item_price}

      resp.write item.price
    else
      resp.write "Item not found"
      resp.status = 404
    end

    resp.finish




  end
end
