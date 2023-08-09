class ApplicationMailer < ActionMailer::Base
  default from: 'sojobless.online <hi@sojobless.online>'
  layout 'mailer'

  def send_mail(job)
    # attachments.inline["file.png"] = File.read("#{Rails.root}/app/assets/images/download")
    @name = job.name
    @email = job.email
    @file = job.file_url
    @profileUrl = job.image
    @candidateName = job.candidate_name
    @candidateEmail = job.candidate_email
    @candidateDescription = job.candidate_description
    mail(to: @email, subject: "#{@candidateName}: #{@name} Vacancy Application with CV", cc: [@candidateEmail])
    # mail(to: @email, subject: "#{@candidateName}: Application for #{@name} Vacancy with CV", cc: [@candidateEmail])
  end

  def send_mail_ksa(job)
    # attachments.inline["file.png"] = File.read("#{Rails.root}/app/assets/images/download")
    @name = job.name
    @email = job.email
    @file = job.file_url
    @profileUrl = job.image
    @candidateName = job.candidate_name
    @candidateEmail = job.candidate_email
    @candidateDescription = job.candidate_description
    mail(to: @email, subject: "#{@candidateName}: #{@name} Vacancy Application with CV", cc: [@candidateEmail])
    # mail(to: @email, subject: "#{@candidateName}: Application for #{@name} Vacancy with CV", cc: [@candidateEmail])
  end
end
