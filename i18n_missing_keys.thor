class Translations < Thor
    
  desc "missing", "Find and list translation keys that do not exist in all locales"
  def missing
    require './config/environment'
    I18n.backend.send(:init_translations)
    # Find available locales
    available_locales = I18n.available_locales || [:en, :fr]
    
    if available_locales.length > 2
      puts "=> This version of the script only supports 2 locales."
      puts "=> Please add this to your application.rb file or initializer:"
      puts "=> I18n.available_locales = [:en, :fr]"
      puts
      exit
    end
    
    # Loading an array with files so we can exclude stuff. Go there to add keys to exclude.
    filter = YAML.load_file(File.join(Rails.root, 'config', 'ignore_missing_keys.yml')) rescue nil
    
    # Fetch translations and remove unwanted translations
    translations = I18n.backend.send(:translations)
    translations = translations.delete_if{|key, value| !available_locales.include?(key)}
    
    # Build a new hash with key: locale, value: lookup strings. That last part is deleting if it's in the filter list
    en,fr = available_locales.map do |locale|
      collect_keys([], translations[locale]).delete_if{|key| filter[locale.to_s].include?(key)}
    end
    
    # Find the ones that exists but lacks translation data
    blanks = []
    {:en => en, :fr => fr}.each do|locale, value|
      value.each{|key| blanks << "#{locale}.#{key}" if !key_exists?(key, locale)}
    end
    puts
    puts cyan("=> #{blanks.size} key(s) exist but lacks translation (blank):") if blanks.size > 0
    blanks.each{|key| puts "  #{red(key)}"}
        
    only_in_en = (en-fr)
    puts cyan("\n=> #{only_in_en.size} key(s) found only in EN. Add these to FR:") if only_in_en.size > 0    
    only_in_en.each{|key| puts "  #{red(key)}"}

    only_in_fr = (fr-en)
    puts cyan("\n=> #{only_in_fr.size} key(s) found only in FR. Add these to EN:") if only_in_fr.size > 0
    only_in_fr.each{|key| puts "  #{red(key)}"}
    
    puts    
    puts magenta("=> Missing in FR:    #{only_in_en.size}") if only_in_en.size > 0
    puts green("=> FR is OK!") if only_in_en.size == 0
    puts magenta("=> Missing in EN:    #{only_in_fr.size}") if only_in_fr.size > 0
    puts green("=> EN is OK!") if only_in_fr.size == 0
    puts magenta("=> Exists but blank:  #{blanks.size}") if blanks.size > 0
    
    if only_in_en.size == 0 && only_in_fr.size == 0
      puts green("=> All files are perfectly translated. Go smoke a joint.\n")
    else
      puts
      puts yellow("=> Add any of these keys to the config/ignore_missing_keys.yml file to make them go away.")
      puts yellow("=> If not, go translate that shit!")
      puts
    end
  end
  
  no_tasks do
    def collect_keys(scope, translations)
      full_keys = []
      translations.to_a.each do |key, translations|
        new_scope = scope.dup << key
        if translations.is_a?(Hash)
          full_keys += collect_keys(new_scope, translations)
        else
          full_keys << new_scope.join('.')
        end
      end
      return full_keys
    end
    
    # Returns true if key exists in the given locale
    def key_exists?(key, locale)
      I18n.locale = locale
      I18n.translate(key, :raise => true)
      return true
    rescue I18n::MissingInterpolationArgument
      return true
    rescue I18n::MissingTranslationData
      return false
    end
    
    def colorize(text, color_code)
      "\e[#{color_code}m#{text}\e[0m"
    end
    
    def red(text); colorize(text, 31); end
    def green(text); colorize(text, 32); end
    def underline(text); colorize(text, 4); end
    def blink(text); colorize(text, 5); end
    def magenta(text); colorize(text, 35); end
    def cyan(text); colorize(text, 36); end
    def yellow(text); colorize(text, 33); end    
  end
end
