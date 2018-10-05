class AddTypeColumn < ActiveRecord::Migration[5.2]
  def change
     add_column :quotes, :type, :string
  end
end
