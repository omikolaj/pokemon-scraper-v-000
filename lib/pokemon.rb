class Pokemon
    attr_accessor :id, :name, :type, :db

    @@all = []

 def initialize(:id, :name, :type, :db)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
 end

 def self.all
    @@all
 end

 def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name, type) VALUES ('#{name}','#{type}')")
 end
 
 def self.find(id, db)
    atrributes = {:id=>nil, :name=>"", :type=>"" }
    keys = hash.keys
    db.execute("SELECT * FROM pokemon WHERE id = '#{id}'").flatten.each_with_index do |v, i|
        #binding.pry
        atrributes[keys[i]] = v
    end
 end    

end
