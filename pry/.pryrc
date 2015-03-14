current_dir = Dir.pwd

if current_dir =~ /^(.*?\/mws)$/
  require 'dotenv'
  Dotenv.load('./.env')
  require 'mws'
  Mws.log = true
  mws = Mws.new

  $:.unshift('./lib/') unless $:.include?('./lib/')
  puts '================================================================================='
  puts "  In \033[32m\033[1mMWS Library\033[0m: initialized AMWS environment vars"
  puts "  In \033[32m\033[1mMWS Library\033[0m: added './lib/' to load path"
  puts "  In \033[32m\033[1mMWS Library\033[0m: Mws instance available as \033[32mmws\033[0m"
  puts '================================================================================='
end
