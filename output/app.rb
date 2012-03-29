require "sinatra"

get %r/\/([a-z]+)?/, :agent => /iPad|iPhone|Mobile/i do |name|
  redirect "/#{name}/mobile/index.html" if name
  redirect "/mobile/index.html"
end

get %r/\/([a-z]+)?/ do |name|
  redirect "/#{name}/index.html" if name
  redirect "/index.html"
end



