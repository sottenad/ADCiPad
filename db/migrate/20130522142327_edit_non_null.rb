class EditNonNull < ActiveRecord::Migration
  def up
  	remove_column :cars_years, :created_at
  	remove_column :cars_years, :updated_at
  end

  def down
  end
end
