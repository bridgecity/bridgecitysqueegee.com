require "fileutils"
require "logger"
require "middleman"
require "git"

BUILD_DIR         = "public"
BUILD_DIR_CONTENT = File.join(Dir.pwd,BUILD_DIR,".")
CACHE_DIR         = "/tmp/bridgecity/"
CACHE_DIR_CONTENT = File.join(CACHE_DIR,".")
STATIC_BRANCH     = "gh-pages"

task :default => [:build]
task :publish => [:build, :commit]

desc "Build the website from source"
task :build do
  puts "## Building website"
  build_status = system("middleman build --clean --verbose")
  puts build_status ? "OK" : "FAILED"
end

desc "Commit build to static site branch"
task :commit do
  unless File.exists?(CACHE_DIR)
    Dir.mkdir(CACHE_DIR)
  end
  puts "Copying build to temporary directory..."
  cp_r(BUILD_DIR_CONTENT,CACHE_DIR)
  puts "Checking out static site branch (#{STATIC_BRANCH})..."
  repo = Git.open(Dir.pwd)
  repo.branch(STATIC_BRANCH).checkout
  puts "Copying static site contents to static site branch..."
  cp_r(CACHE_DIR_CONTENT,Dir.pwd)
  puts "Committing static site changes..."
  repo.add
  repo.commit("Yolo")
  puts "SUCCESS!"
end
