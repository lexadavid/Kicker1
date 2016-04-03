class Feedback < ActiveRecord::Base
  validatess :text, presence: true
end
