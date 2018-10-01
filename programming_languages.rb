def reformat_languages(languages)
  new_hash ={}

  languages.each do |style,language_hash|
    #:oo, {:ruby => {...}}
    language_hash.each do |language_name,attribute_hash|
      #:ruby, {:type => "interpreted"}
      attribute_hash.each do |attribute,value|
        #:type, "interpreted"
        if new_hash.keys.include?(language_name)
          new_hash[language_name][:style] << style
        else
          new_hash[language_name] = {
            :type => value,
            :style => [style]
          }
        end
      end
    end
  end
  new_hash
end
