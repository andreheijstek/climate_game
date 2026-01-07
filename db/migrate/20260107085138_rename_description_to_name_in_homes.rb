class RenameDescriptionToNameInHomes < ActiveRecord::Migration[8.1]
  def change
    rename_column :homes, :description, :name
  end
end
