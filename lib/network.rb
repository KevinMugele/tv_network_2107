class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    all_characters = []
    @shows.each do |show|
      all_characters << show.actors
    end
    all_characters.flatten
  end

  def actors_by_show
    actors_by_show_hash = {}
    @shows.each do |show, actor|
      actors_by_show_hash[show] = show.actors
    end
    actors_by_show_hash
  end
end
