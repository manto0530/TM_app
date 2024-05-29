class Task < ApplicationRecord
  belongs_to :user

  enum status: { backlog: 'Backlog', in_progress: 'In-progress', done: 'Done' }
end
