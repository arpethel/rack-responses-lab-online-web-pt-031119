# require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now

    if t.hour.to_i > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
