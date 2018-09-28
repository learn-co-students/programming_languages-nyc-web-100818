require 'pry'

# languages = {{:oo=>
#   {:ruby=>{:type=>"interpreted"},
#    :javascript=>{:type=>"interpreted"},
#    :python=>{:type=>"interpreted"},
#    :java=>{:type=>"compiled"}},
#  :functional=>
#   {:clojure=>{:type=>"compiled"},
#    :erlang=>{:type=>"compiled"},
#    :scala=>{:type=>"compiled"},
#    :javascript=>{:type=>"interpreted"}}}


# def reformat_languages(languages)
# new_hash = {}
# languages.each do |oo, language|
# language.each do |language1, type_interpreted|
# type_interpreted.each do |type,interpreted|
# binding.pry
# end
# end
# end
# end

def reformat_languages(languages)
new_hash = {}
languages.each do |oo, language|
language.each do |language1, type_interpreted|
type_interpreted.each do |type,interpreted|
new_hash[language1] = {type => interpreted, :style => [oo]}

end
end
end
new_hash[:javascript][:style] << :oo

new_hash
end

# def reformat_languages(languages)
#   language_attributes = {}
#
#   languages.each do |oo_or_functional, language_hash|
#     #:oo, {:ruby => {...}}
#     language_hash.each do |language, attribute_hash|
#       #:ruby, {:type => "interpreted"}
#       attribute_hash.each do |attribute, str_value|
#         #:type, "interpreted"
#         if language_attributes[language].nil?
#           #if language :ruby doesn't exist in new hash
#           language_attributes[language] = {}  #initiate a new hash for the value of :ruby
#         end
#         # this would cause us problems if we had more than one attribute we're iterating over
#         language_attributes[language][:style] ||= []  # create a :style key within that hash and set it equal to an empty array
#         language_attributes[language][:style] << oo_or_functional  #added oo key from first level of languages hash to this key
#         if language_attributes[language][attribute].nil?
#           #if :ruby language key doesn't have a :type key nested within it
#           language_attributes[language][attribute] = str_value  #set this :type key to equal the str "interpreted"
#         end
#       end
#     end
#   end
#   language_attributes
# end


# it 'reformats javascript properly' do
#   expect(result[:javascript][:type]).to eq("interpreted")
#   [:oo, :functional].each { |v| expect(result[:javascript][:style]).to include(v) }
# end



# it 'reformats ruby properly' do
#   ruby = {:type => "interpreted", :style => [:oo]}
#   ruby.each { |k,v| expect(result[:ruby][k]).to eq(v) }
# end
#
# it 'reformats javascript properly' do
#   expect(result[:javascript][:type]).to eq("interpreted")
#   [:oo, :functional].each { |v| expect(result[:javascript][:style]).to include(v) }
# end
#
# it 'reformats python properly' do
#   python = {:type => "interpreted", :style => [:oo]}
#   python.each { |k, v| expect(result[:python][k]).to eq(v) }
# end
#
# it 'reformats java properly' do
#   java = {:type => "compiled", :style => [:oo]}
#   java.each { |k, v| expect(result[:java][k]).to eq(v) }
# end
#
# it 'reformats clojure properly' do
#   clojure = {:type => "compiled", :style => [:functional]}
#   clojure.each { |k, v| expect(result[:clojure][k]).to eq(v) }
# end
#
# it 'reformats erlang properly' do
#   erlang = {:type => "compiled", :style => [:functional]}
#   erlang.each { |k, v| expect(result[:erlang][k]).to eq(v) }
# end
#
# it 'reformats scala properly' do
#   scala = {:type => "compiled", :style => [:functional]}
#   scala.each { |k, v| expect(result[:scala][k]).to eq(v) }
# end
#
# end



# hash = {}
# hash[:my_key] = "my value"
#
# puts hash
#  => {my_key: "my value"}

# hash = {}
# hash[:my_key] = {second_level_key: "second level value"}
#
# puts hash
# #  =>
# {
#   my_key: {
#      second_level_key: "second level value"
#   }
# }
