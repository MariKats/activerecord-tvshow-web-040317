class Show < ActiveRecord::Base

  def self.highest_rating
    @most_pop = maximum(:rating)
  end

  def self.most_popular_show
    find_by(rating: @most_pop)
  end

  def self.lowest_rating
    @least_pop = minimum(:rating)
  end

  def self.least_popular_show
    find_by(rating: @least_pop)
  end

  def self.ratings_sum
    sum(:rating)
  end

  def self.popular_shows
    where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    order(:name)
  end

end
