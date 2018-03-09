require "pry"

#languages = {
#  :oo => {
#    :ruby => {
#      :type => "interpreted"
#    },
#    :javascript => {
#      :type => "interpreted"
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
#  }
#}


def reformat_languages(languages)

  new_hash = {}
  #style_array = []
  #new_hash[:ruby] = {type: interpreted, style:[:oo]}

  #new_hash[lang] = {type: name, style: style_array}??

  languages.each do |style_name, style_info|
    style_info.each do |lang, lang_info|
      lang_info.each do |type, type_name|
        if !new_hash[lang]
          new_hash[lang] = {type => type_name}
        end
        if !new_hash[lang][:style]
          new_hash[lang][:style] = [style_name]
        else
          new_hash[lang][:style] << style_name
        end
      end
    end
  end

  new_hash

end
