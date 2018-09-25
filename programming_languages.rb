require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, value| # type = oo / value = big block
    value.each do |lang,v|# lang = ruby / v = {type=>"interpreted"}
      style = {style: [type]}
      new_hash[lang][:style] << type if new_hash[lang] != nil
      new_hash[lang] = v.merge!(style) if new_hash[lang] == nil
    end
  end
  puts new_hash
  new_hash
end


=begin
languages = {
  :oo => {
    :ruby => {:type => "interpreted"},
    :javascript => {:type => "interpreted"},
    :python => {:type => "interpreted"},
    :java => {:type => "compiled"}
  },
  :functional => {
    :clojure => {:type => "compiled"},
    :erlang => {:type => "compiled"},
    :scala => {:type => "compiled"},
    :javascript => {:type => "interpreted"}
  }
}

reformat_languages(languages)
=end
