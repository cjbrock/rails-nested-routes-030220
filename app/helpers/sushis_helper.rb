module SushisHelper
  def created_in_helper(sushi)
    sushi.created_at.strftime("%B %e, %Y at %l:%M %p")
  end

end