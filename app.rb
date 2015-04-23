require('pry')
require('sinatra')
require('sinatra/reloader')
require('.lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
 end

 get('/anagrams') do
   erb(:anagrams)
 end
