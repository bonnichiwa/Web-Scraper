require 'nokogiri'
require 'open-uri'
require_relative 'post'
require_relative 'comment'
# require_relative 'post'
# require_relative 'comment'

doc = Nokogiri::HTML(File.open("default.html"))

title = doc.search('title').map {|element| element.inner_text}
url = doc.search('.title > span:nth-child(3)').map {|span| span.inner_text}
points = doc.search('.subtext > span:nth-child(1)').map {|span| span.inner_text}
item_id = doc.search('.subtext > a:nth-child(3)').map {|link| link['href']}

article = Post.new(title, url, points, item_id)


user_id = doc.search('.comhead > a:first-child').map {|link| link.inner_text}
comment_text = doc.search('.comment > font:first-child').map {|font| font.inner_text}

feedback = Comment.new(user_id,comment_text)


quit = false
while !quit
  puts "What would you like to do? Stats/ Comments/ Quit"
  input = gets.chomp
  case input
  when "Stats"
    article.show_stats
  when "Comments"
    feedback.output_comment
  when "Quit"
    quit = true
  end
end

puts "Bye-bye!"










