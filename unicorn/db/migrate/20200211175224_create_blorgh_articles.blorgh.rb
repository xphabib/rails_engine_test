# This migration comes from blorgh (originally 20200211171303)
class CreateBlorghArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :blorgh_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
