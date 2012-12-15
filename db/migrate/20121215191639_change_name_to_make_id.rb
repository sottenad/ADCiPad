class ChangeNameToMakeId < ActiveRecord::Migration
  def up
    rename_column :cars, :make, :make_id
  end

  def down
  end
end
