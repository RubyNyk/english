class ApplyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.apply_mailer.notify_apply.subject
  #
  def notify_apply(applicant)
    @applicant = applicant

    @name = applicant.name
    @email = applicant.email
    @cell = applicant.cell
    @line = applicant.line
    @major = applicant.major
    @teachernation = applicant.teachernation
    @section = applicant.section
    @message = applicant.message

    mail to: @email , 
         subject: "已收到申請 謝謝您的試聽申請 我們儘快安排您的試聽~!",
         bcc: ["applicants@newyorkerr.to-email.com"]
  end
end