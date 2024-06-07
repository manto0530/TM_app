class Task < ApplicationRecord
  belongs_to :user

  enum status: { backlog: 'Backlog', in_progress: 'In-progress', done: 'Done' }


  after_commit :schedule_deadline_alerts, on: [:create, :update]

  private

  def schedule_deadline_alerts
    if deadline.present? && !done?
      DeadlineAlertJob.set(wait_until: deadline - 1.day).perform_later(id, '1 day')
      DeadlineAlertJob.set(wait_until: deadline - 1.hour).perform_later(id, '1 hour')
    end
  end


end
