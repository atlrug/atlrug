# -*- coding: utf-8 -*-
module ResumesHelper
  def resume_title(resume)
    resume['name'] + "'s resume"
  end

  def resume_link(resume)
    link_to(resume['name'] + "'s resume", view_resume_path(resume),
      :method => :get)
  end

  def resume_short_description(resume)
    if (resume[:skill].size > 322)
      return resume[:skill].slice(0, 322) + '...'
    else
      return resume[:skill]
    end
  end

  def resume_post_date_by(resume)
    return 'Submitted on ' + resume_date_display(
      resume[:created_at]) + ' by '
  end

  def resume_mail_to(resume)
    mail_to resume[:email], resume[:name]
  end

  def resume_more_reading(resume)
    link_to('Continue Reading  »', view_resume_path(resume), :method => :get)
  end

  def resume_delete(resume)
    if signed_in?
      link_to(' Delete  »', delete_resume_path(resume), :method => :get)
    end
  end

  def resume_date_display(time)
    time.strftime('%B %d, %Y').sub(' 0',' ')
  end
end
