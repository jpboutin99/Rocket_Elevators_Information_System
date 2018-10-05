class RemoveColumnTest < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotes, :test
  end
end
