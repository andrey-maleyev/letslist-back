class ChangeDefaultValueForIsDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :is_default, :boolean, default: false
  end
end
