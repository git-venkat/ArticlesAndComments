# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

article_names = ["FIFA", "McLaren", "Romeo and Juliet", "Seven Samurai"]
content = "In determining which of several alternative names is most frequently used, it is useful to observe the usage of major international organizations, major English-language media outlets, quality encyclopedias, geographic name servers, major scientific bodies, and notable scientific journals. A search engine may help to collect this data; when using a search engine, restrict the results to pages written in English, and exclude the word 'Wikipedia'. When using Google, generally a search of Google Books and News Archive should be defaulted to before a web search, as they concentrate reliable sources (exclude works from Books, LLC when searching Google Books[7]). Search engine results are subject to certain biases and technical limitations; for detailed advice on the use of search engines and the interpretation of their results, see Wikipedia:Search engine test."

article_names.each do |an|
  Article.where(title: an, content: content).first_or_create
end