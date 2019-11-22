class ChangeDescriptionToBeDescritpionInAttractions < ActiveRecord::Migration[5.2]
  def change
    rename_column :attractions, :desctription, :description

  end
end
