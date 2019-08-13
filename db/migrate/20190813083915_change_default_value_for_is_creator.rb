class ChangeDefaultValueForIsCreator < ActiveRecord::Migration[5.2]
  def change
    change_column :participants, :is_creator, :boolean, default: false
  end
end
