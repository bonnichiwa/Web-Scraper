class Post
  attr_accessor :title, :url, :points, :item_id

  def initialize(title, url, points, item_id)
    @title = title
    @url = url
    @points = points
    @item_id = item_id
    @comments = []
  end

  def comments
    return @comments
  end

  def add_comment(comment_file)
    @comments << comment_file
  end

  def show_stats
    puts "Article Title: #{@title.join(" ")}"
    puts "Article Url: #{@url.join(" ")}"
    puts "Article Points: #{@points.join(" ")}"
    puts "Article ID: #{@item_id.join(" ")}"
  end
end

