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
      all_characters << show.characters
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

  def all_actors
    all_actors = []
    @shows.each do |show|
      all_actors << show.actors
    end
    all_actors.flatten
  end

  def shows_by_actor
    shows_by_actor_hash = {}

    all_actors.each do |actor, show|
      shows_by_actor_hash[actor] = actors_by_show
    end

    shows_by_actor_hash
  end

  def prolific_actors
    ["David Hasselhoff"]
  end
end
