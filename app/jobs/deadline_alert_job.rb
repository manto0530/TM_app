class DeadlineAlertJob < ApplicationJob
  queue_as :default

  def perform(task_id, time_remaining)
    task = Task.find(task_id)
    return if task.done?

    TaskMailer.deadline_alert(task, time_remaining).deliver_now
  end
end
