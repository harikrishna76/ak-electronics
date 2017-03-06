class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :prepare_meta_tags

  def prepare_meta_tags(options={})
    site_name   = "AK Electronics"
    title       = "Electronics Services"
    description = "Electronics Services"
    image       = options[:image] || "your-default-image-url"
    current_url = request.url

    # Let's prepare a nice set of defaults
    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      keywords:    "",
      icon: 'assets/favicon.ico',
      # twitter: {
      #   site_name: site_name,
      #   site: '@thecookieshq',
      #   card: 'summary',
      #   description: description,
      #   image: image
      # },
      # og: {
      #   url: current_url,
      #   site_name: site_name,
      #   title: title,
      #   image: image,
      #   description: description,
      #   type: 'website'
      # }
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end
end
