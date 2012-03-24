require "sinatra"

get %r/\/([a-z]+)?/ do |name|
  redirect "/#{name}/index.html" if name
  redirect "/index.html"
end
