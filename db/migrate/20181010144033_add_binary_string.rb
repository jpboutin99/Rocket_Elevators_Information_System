class AddBinaryString < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :attachment_file, :string
  end
end
