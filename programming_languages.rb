def reformat_languages(languages)

new_hash_type = {}

new_hash_style = {}
new_hash = {}
final_hash = []



  languages.each do |function, lang_type|
    lang_type.each do |lang, type|
      final_hash << ["#{lang}", :style => [function]}]
      type.each do |key, value|
        new_hash_type[lang] = type
    end
    end
  end
  puts final_hash
  new_hash_style.each do |style_lang, style_style|
    style_style.each do |style_key, style_value|
    new_hash_type.each do |type_lang, type_type|
      type_type.each do |type_key, type_value|
      if style_lang == type_lang
        new_hash[style_lang] = {:type => type_value, :style => style_value}
      end
    end
end
end
end
return new_hash
end
