class CreateArticleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :article_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
