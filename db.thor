
require 'yaml'
require 'pg'

class Db < Thor

  desc "read_config","reads the configuration from config/config.yml"
  def read_config
      config = YAML.load_file "config/config.yml"
      puts config["develop"]["user"]
  end

  desc "create_db","creates the database umt"
  def create_db
    puts "creates the database 'umt'"
  end
    
  desc "create_table table","creates the table"
  def create_table(table)
      puts "creates the table with name #{table}"
  end
end
