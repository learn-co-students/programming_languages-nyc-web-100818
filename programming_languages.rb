require 'pry'
#reformated_hash_result
#{
#  :ruby => {
#    :type => "interpreted",
#    :style => [:oo]
#  },
#  :javascript => {
#    :type => "interpreted",
#    :style => [:oo, :functional]
#  },
#  :python => {
#    :type => "interpreted",
#    :style => [:oo]
#  },
#  :java => {
#    :type => "compiled",
#    :style => [:oo]
#  },
#  :clojure => {
#    :type => "compiled",
#    :style => [:functional]
#  },
#  :erlang => {
#    :type => "compiled",
#    :style => [:functional]
#  },
#  :scala => {
#    :type => "compiled",
#    :style => [:functional]
#  }
#}

#languages = {
#  :oo => {
#    :ruby => {
#      :type => "interpreted"
#    },
#    :javascript => {
##      :type => "interpreted"
#    },
#    :python => {
#      :type => "interpreted"
#    },
#    :java => {
#      :type => "compiled"
#    }
#  },
#  :functional => {
#    :clojure => {
#      :type => "compiled"
#    },
#    :erlang => {
#      :type => "compiled"
#    },
#    :scala => {
#      :type => "compiled"
#    },
#    :javascript => {
#      :type => "interpreted"
#    }
#
#}
#}

#def reformat_languages(languages)
#  new_hash = {}
#  languages.each do |style_oo, language_value|
      #style_oo = :oo,
#binding.pry
      #language_value = {:ruby=>{:type=>"interpreted"}, :javascript=>{:type=>"interpreted"}, :python=>{:type=>"interpreted"}, :java=>{:type=>"compiled"}}
      #{:clojure=>{:type=>"compiled"}, :erlang=>{:type=>"compiled"}, :scala=>{:type=>"compiled"}, :javascript=>{:type=>"interpreted"}}
#  language_value.each do |language_key, text_value|
#binding.pry
      #language_key = :ruby ,:javascript, :python, :java,
      #text_value = {:type=>"interpreted"}
#  text_value.each do |type, string_text|
#binding.pry
      #type= :type  ,
      #string_text = "interpreted"
#      new_hash[language_key] = {type => string_text, :style => [style_oo]}  #inserting language and k,v pairs
#    end
#  end
#end
#  new_hash[:javascript][:style] << :oo  #adding :oo to javascript style
#  new_hash
#end


def reformat_languages(languages)
  new_hash = {}
  languages.each do |style_oo, language_value|
  language_value.each do |language_key, text_value|
  text_value.each do |type, string_text|
    new_hash[language_key] = {type => string_text, :style => [style_oo]}
    end
  end
end
  new_hash[:javascript][:style] << :oo
new_hash
end
