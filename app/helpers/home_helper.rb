module HomeHelper

  def gem_classification(gems)
    classes = []
    gems.each.each do | gem_info |
      gem_info.classification.split(" ").each do |klass|
        classes <<  klass
      end
    end
    classes.uniq
  end

  def gem_image_file(gem_data)
    "<div class='text_over_image span3 img-circle img-rounded'>#{gem_data.name}</div>".html_safe 
  end

  def image_file_exists?(gem_data)
    File.exists?("#{Rails.root}/app/assets/assets/images/#{gem_data.name.downcase}.png")
  end

  def construct_image_path(name)
    "assets/images/team_member/" + name
  end

  def name_sanitizer(name)
    name.split(".").first.split("_").first.capitalize
  end

  def facebook(name)
    case name
    when 'ashish'
      "https://www.facebook.com/bilLaaBadMash"
    when 'gourav'
      "https://www.facebook.com/gouravtiwari21"
    when 'nikhil'
      "https://www.facebook.com/nikhil.nanjappa.9"
    when 'ankur'
      "https://www.facebook.com/gera.ankur"
    when 'hrishita'
      "https://www.facebook.com/hrishita.vaish"
    end
  end

  def twitter(name)
    case name
    when 'ashish'
      "https://twitter.com/_zapper320"
    when 'gourav'
      "https://twitter.com/gouravtiwari21"
    when 'nikhil'
      "https://twitter.com/_PleaseBugMeNot"
    when 'ankur'
      "https://twitter.com/ankurgera"
    when 'hrishita'
      "https://twitter.com/HrishitaVaish"
    end
  end

  def linkedin(name)
    case name
    when 'ashish'
      "http://www.linkedin.com/pub/ashish-upadhyay/31/b0a/696"
    when 'gourav'
      "http://in.linkedin.com/pub/gourav-tiwari/1/b3b/782"
    when 'nikhil'
      "http://in.linkedin.com/pub/nikhil-nanjappa/76/780/94"
    when 'ankur'
      "http://in.linkedin.com/pub/ankur-gera/17/850/569"
    when 'hrishita'
      "#"
    end
  end

end
