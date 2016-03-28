class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :type
      t.string :text

      t.timestamps null: false
    end
  end
end
