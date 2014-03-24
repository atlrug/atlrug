module JobsHelper
  def job_link(job)
    link_to(job['title'], view_job_path(job), :method => :get)
  end
  
  def job_short_description(job)
    if (job[:description].size > 322)
      return job[:description].slice(0, 322) + '...'
    else
      return job[:description]
    end
  end
  
  def job_start_end_date(job)
    return 'Start date: ' + job_date_display(job[:start_date]) + ' - End date: ' + job_date_display(job[:end_date])
  end
  
  def job_post_date_by(job)
    return 'Submitted on ' + job_date_display(job[:created_at]) + ' by '
  end
  
  def job_mail_to(job)
    mail_to job[:email], job[:name]
  end
  
  def job_more_reading(job)
    link_to('Continue Reading  »', view_job_path(job), :method => :get)
  end
  
  def job_date_display(time)
    time.strftime('%B %d, %Y').sub(' 0',' ')
  end
end
