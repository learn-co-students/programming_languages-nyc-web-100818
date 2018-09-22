require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, lang_hash|

    lang_hash.each do |lang_name, type_hash|

      type_hash.each do |key, value|
        if new_hash.keys.include?(lang_name) # if key already exists...
          new_hash[lang_name][:style] << style
        else # otherwise add a new key 
        new_hash[lang_name] = {
          :type => value,
          :style => [style]
        }
        end
      end
    end
  end
  new_hash
end





# def reformat_languages(languages)
#   # your code here
#   languages.each do |style, lang_hash|
#       style = :oo
#       lang_hash = {:ruby=>{:type=>"interpreted"},
#                   :javascript=>{:type=>"interpreted"},
#                   :python=>{:type=>"interpreted"},
#                   :java=>{:type=>"compiled"}}

#     lang_hash.each do |lang_name, type_hash|
#         lang_name = :ruby
#         type_hash = {:type=>"interpreted"}

#       type_hash.each do |key, value|
#         key = :type
#         value = "interpreted"
#       end
#     end
#   end
#
# end
