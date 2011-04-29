# coding: utf-8

begin
  require 'rubygems'
#  require 'utility_belt'
  require 'irb_rocket'
  IRB.conf[:PROMPT][:VERSION_PROMPT] = {
    :PROMPT_I => "#{RUBY_VERSION} > ",
    :PROMPT_N => "#{RUBY_VERSION}?> ",
    :PROMPT_S => "#{RUBY_VERSION}%l> ",
    :PROMPT_C => "#{RUBY_VERSION}*> ",
    :RETURN => " => %s\n"
  }
  IRB.conf[:PROMPT_MODE] = :VERSION_PROMPT
rescue LoadError
end

