class CreatePdflists < ActiveRecord::Migration
  def self.up
    create_table :pdflists do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :pdflists
  end
end
