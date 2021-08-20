class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.string :name
      t.numbers :tempo
      t.string :key
      t.belongs_to :tool, null: false, foreign_key: true

      t.timestamps
    end
  end
end
