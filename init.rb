require 'cloud_tag'
ActionView::Base.send(:include, CloudTag::Helpers)

class CloudTagUtil
  def self.copy_flash_file
    require "fileutils"
    dir = "public/flash"
    flash_file = Rails.root.join("vendor/plugins/cloud_tag/flash/cloudtag.swf").to_s
    FileUtils.mkdir_p dir unless File.exists? dir
    FileUtils.cp(flash_file, dir)
  rescue
  end
end

CloudTagUtil.copy_flash_file
