require 'watir'

require 'colorize'

browser = Watir::Browser.new

Given (/^I am on the qa.fabelio homepage$/)do

  browser.goto "https://qa.fabelio.com/"

end

When (/I tap button account and input email$/)do


  browser.div(:class => 'navbar-account btn-header auth-popup ins-init-condition-tracking').click
  browser.text_field(:name,"username").set("test")
  browser.element(:xpath => "//div[2]/div[2]/button/span").click

end

Then (/Show Error Login$/)do

  puts "Input Your Email and Password please".red

end

Given (/I tap button account and input email&password$/)do

  browser.text_field(:name,"username").set("ivan.jond@gmail.com")
  browser.text_field(:name,"password").set("qweasd123")
end

  When (/I tap button Login$/)do

    browser.element(:xpath => "//div[2]/div[2]/button/span").click

end

Then (/Show Login successful$/)do

  puts "User moving in dashboard".green

  browser.close
end