require 'pry'

def languages_hash
  languages_hash = {
    :oo => {
      :ruby => {
        :type => "interpreted"
      },
      :javascript => {
        :type => "interpreted"
      },
      :python => {
        :type => "interpreted"
      },
      :java => {
        :type => "compiled"
      }
    },
    :functional => {
      :clojure => {
        :type => "compiled"
      },
      :erlang => {
        :type => "compiled"
      },
      :scala => {
        :type => "compiled"
      },
      :javascript => {
        :type => "interpreted"
      }

    }
  }
end

result = {
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}


def all_languages(languages)


  oo_languages = languages.fetch(:oo)
  functional_languages = languages.fetch(:functional)
  return oo_languages.merge(functional_languages)

end

def language_style(language, lan_hash)

  style_arr = []

  lan_hash.each{
    |style,lan|
    #binding.pry
    if lan.keys.include?(language)
      style_arr << style
    end

  }

  puts(style_arr)
  return style_arr


end

#language_style(:javascript, languages_hash)

def reformat_languages(lan_hash)
  # your code here
  new_hash = {}

  all_languages(lan_hash).keys.each{
    |language|

    new_hash[language] = {
      :type => all_languages(lan_hash)[language].fetch(:type),
      :style => language_style(language, lan_hash)
    }
  }



  puts new_hash
  return new_hash
end

reformat_languages(languages_hash)
