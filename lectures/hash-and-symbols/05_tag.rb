def tag(tag_name, content, attributes = {})
  attrs = attributes.map { |key, value| " #{key}='#{value}'" }.join

  "<#{tag_name}#{attrs}>#{content}</#{tag_name}>"
end


puts tag("h1", "Hello world")
# => <h1>Hello world</h1>

puts tag("h1", "Hello world", { class: "bold" })
# => <h1 class='bold'>Hello world</h1>

puts tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
