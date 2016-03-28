class AddFeedbacktypeToFeedback < ActiveRecord::Migration

  def change
    add_column :feedbacks, :feedback_type, :string
    remove_column :feedbacks, :type, :string
  end

end
