class Show < ActiveRecord::Base

  def Show::highest_rating
    Show.maximum(:rating)
  end

  def Show::most_popular_show
    Show.where(highest_rating).first
  end

  def Show::lowest_rating
    Show.minimum(:rating)
  end
end
