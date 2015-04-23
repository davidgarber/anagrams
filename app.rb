require('pry')
require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
 end

 get('/anagrams') do
   @word1 = params.fetch('word1')
   @word2 = params.fetch('word2')
   @anagrams = @word1.anagrams(@word2)
   erb(:anagrams)
 end
