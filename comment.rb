class Comment
  attr_accessor :user_id, :comment_text

  def initialize(user_id,comment_text)
    @user_id = user_id
    @comment_text = comment_text
  end

  def output_comment
    i = 0
    new_arr = @user_id.zip(@comment_text)
    # while i < new_arr.length
    new_arr.each do |x|
      puts " ---------- "
      puts "User ID: #{x[0]}"
      puts "Comment: #{x[1]}"
      puts " ---------- "
      i = i + 1
    end
  end
end
