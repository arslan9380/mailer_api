class ApplicationMailer < ActionMailer::Base
  default from: 'sojobless.bh@gmail.com'
  layout 'mailer'

  def send_mail(job)
    # attachments.inline["file.png"] = File.read("#{Rails.root}/app/assets/images/download")
    @name = job.name
    @email = job.email
    @file = job.file_url
    @profileUrl = job.image
    @candidateName = job.candidate_name
    @candidateDescription = job.candidate_description
    mail(to: @email, subject: "#{@candidateName}: Application for #{@name} Vacancy with CV")
  end
end
