require "rake/clean"

task :default => :test

require "rake/testtask"
Rake::TestTask.new do |t|
  t.pattern = "spec/**/*_spec.rb"
end

require "rdoc/task"
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = "rdoc"
  rdoc.rdoc_files.include("lib/**/*.rb")
end
CLEAN.include "rdoc"

task :gem do
  sh "gem build tilt-preload.gemspec"
end
CLEAN.include "*.gem"

task :install => :gem do
  sh "gem install tilt-preload"
end

task :push => [:clean, :gem] do
  sh "gem push tilt-preload-*.gem"
end
