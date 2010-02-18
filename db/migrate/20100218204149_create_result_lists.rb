class CreateResultLists < ActiveRecord::Migration
  def self.up
    create_table :result_lists do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :result_lists
  end
end
