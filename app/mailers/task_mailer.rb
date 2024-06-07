class TaskMailer < ApplicationMailer
    default from: 'brainmanju@gmail.com'
  
    def deadline_alert(task, time_remaining)
      @task = task
      @time_remaining = time_remaining
  
      mail(to: @task.user.email, subject: "Task Deadline Alert: #{@task.name}")
    end
  end
  