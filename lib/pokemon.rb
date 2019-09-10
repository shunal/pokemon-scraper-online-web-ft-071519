require 'pry'
class Pokemon
  attr_reader :id, :name, :type, :db

  def initialize (id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
<<<<<<< HEAD

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    new_pokemon = Pokemon.new(id: pokemon[0], name: pokemon[1], type: pokemon[2], db: nil)
    new_pokemon
  end
=======
  
  def save
    sql = <<-SQL
      INSERT INTO pokemon (name, type, db) VALUES (?, ?, ?)
    SQL
    DB.execute(sql, self.name, self.type, self.db)
    @id = DB.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  
>>>>>>> 082c554b224dbf59457350bb7cd0a324dabf7041
end
