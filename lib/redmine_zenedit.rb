# encoding: utf-8
module RedmineZenedit
  extend ActionView::Helpers
  class << self
    def root
      @root ||= Pathname(File.expand_path(File.dirname(File.dirname(__FILE__))))
    end

    def assets_root
      @assets_root ||= "#{Redmine::Utils.relative_url_root}/plugin_assets/redmine_zenedit"
    end
    def config
      ActionController::Base.config
    end
  end
end
