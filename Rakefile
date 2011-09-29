require "fileutils"

task :default => :install

desc "Symlink dotfiles into home directory overwriting any existing files"
task :install do
  files_directory = File.join(File.dirname(__FILE__), "files/*")
  files = Dir.glob(files_directory , File::FNM_DOTMATCH ).sort[2..-1]
  FileUtils.ln_sf( files, "/Users/logaan/" )
end

