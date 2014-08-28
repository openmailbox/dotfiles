# https://github.com/carlhuda/bundler/issues/183#issuecomment-1149953
if defined?(::Bundler)
  global_gemset = ENV['GEM_PATH'].split(':').grep(/ruby.*@global/).first
  if global_gemset
    all_global_gem_paths = Dir.glob("#{global_gemset}/gems/*")
    all_global_gem_paths.each do |p|
      gem_path = "#{p}/lib"
      $LOAD_PATH << gem_path
    end
  end
end

IRB.conf[:PROMPT][:CUSTOM] = {
  :PROMPT_I => "\e[0;33m%N(%m):%03n: > \e[m ",
  :PROMPT_S => "\e[0;33m%N(%m):%03n:%l>>\e[m ",
  :PROMPT_C => "\e[0;33m%N(%m):%03n:..\e[m ",
  :PROMPT_N => "\e[0;33m%N(%m):%03n:..\e[m ",
  :RETURN   => "\e[1;31m=>\e[m %s\n"
}
IRB.conf[:PROMPT_MODE] = :CUSTOM
IRB.conf[:AUTO_INDENT] = true

# Use Pry everywhere
require "rubygems"
require 'pry'
require 'awesome_print'
Pry.start
exit
