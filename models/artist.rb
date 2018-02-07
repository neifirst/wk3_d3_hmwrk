require('pg')
require_relative('../db/sql_runner')

class Artist

  attr_accessor :id, :name

  def initialize(options)

    @id = options['id'].to_i
    @name = options['name']

  end


  def save()

    sql = "INSERT INTO artists (name)
          VALUES ($1)
          RETURNING id"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i

  end


  def self.delete_all()

    sql = "DELETE FROM artists"
    SqlRunner.run(sql)

  end


  def self.all()

    sql = "SELECT *
          FROM artists"
    music_guys = SqlRunner.run(sql)

    return music_guys.map{ |artist| Artist.new(artist)}

  end


  def albums()

  sql = "SELECT *
        FROM albums
        WHERE artist_id = $1"
  values = [@id]
  records = SqlRunner.run(sql, values)
  return records.map{|album| Album.new(album)}

  end


  def update()
    sql = "UPDATE artists
          SET name = $1
          WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)

  end
  

  def delete()

    sql = "DELETE FROM artists
          WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)

  end


  def self.find(id)

    sql = "SELECT *
          FROM artists
          WHERE id = $1"
    values = [id]
    stuff = SqlRunner.run(sql, values)

    return stuff.find{ |result| Artist.new(result) }

  end


end
