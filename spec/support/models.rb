# coding: utf-8
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  database: 'activerecord_mysql2_extensions_test',
  host: ENV['HOST'],
  username: ENV['USER'],
  password: ENV['PASSWORD'],
)

class CreateAllTables < ActiveRecord::Migration
  def change
    create_table(:people) {|t| t.string :name}
    create_table(:entries) {|t| t.integer :person_id; t.string :name }
    add_index(:people, :name, name: 'name_on_people')
  end
end

class Person < ActiveRecord::Base
  has_many :entries
end

class Entry < ActiveRecord::Base
  belongs_to :person
end
