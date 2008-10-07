require 'fileutils'
target = File.join(RAILS_ROOT, 'public', 'images', 'smileys')
mkdir_p(target)
FileUtils.cp File.join(File.dirname(__FILE__), "icons"), target)