class Hero
  attr_accessor :name, :power, :bio
  @@all = []

  def self.create_from_hash(hash)
    hero = Hero.new
    hero.attrs_from_hash(hash)
    hero.save
  end

  def attrs_from_hash(hash)
    hash.each do |k,v|
      send("#{k}=", v)
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
