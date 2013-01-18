class AddMoreDeviseStuff < ActiveRecord::Migration
    def self.up
    change_table :users do |t|

	    add_index  :users, :authentication_token, :unique => true
    end
  end
  

  def down
  end
end
