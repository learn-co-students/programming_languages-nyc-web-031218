
def reformat_languages(languages)

  # your code here
  new_hash = {}
  progTypes = []

    languages.each {|styles, lang_names|
          progTypes << styles

           lang_names.each {|lang_name, types|
              new_hash[lang_name] = types
              new_hash[lang_name][:style] = [] << styles
              if lang_name == :javascript
                new_hash[lang_name][:style] = progTypes
              end
           }

          }


    new_hash

end
