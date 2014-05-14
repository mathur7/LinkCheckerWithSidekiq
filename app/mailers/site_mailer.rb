  class SiteMailer < ActionMailer::Base
    default from: "your_email_here@domain.com"

    def status_email(site)
      @site = site
      @links = site.links
      mail(to: @site.email, subject: 'Link Checker Status')
    end
  end