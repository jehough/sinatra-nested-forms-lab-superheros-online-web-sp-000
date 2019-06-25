class Team
  attr_accessor :name, :motto
  @@all = []

  def self.create_from_params(params)
    team = Team.new
    team.name = params["name"]
    team.motto = params["motto"]
    params["members"].each do |hero_data|
      Hero.create_from_hash(hero_data)
    end
    team.save
    team
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
