require 'fileutils'
target = File.join(RAILS_ROOT, 'public', 'images', 'smileys')
mkdir_p(target)
FileUtils.cp_r File.join(File.dirname(__FILE__), "icons/"), target
puts IO.read(File.join(File.dirname(__FILE__), 'README'))