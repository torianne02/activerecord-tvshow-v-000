class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    pop_show = Show.highest_rating
    Show.find_by(rating: pop_show)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    least_pop = Show.lowest_rating
    Show.find_by(rating: least_pop)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end
end
