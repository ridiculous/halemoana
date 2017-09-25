module HomeHelper

  def base_rate
    '195.00'
  end

  def tax_rate
    0.135
  end

  def section_header(title)
    section_name = title.underscore.downcase
    content_tag(:div, class: 'section-wrap') do
      content_tag(:div, class: 'section') do
        content_tag(:div, class: 'wrapper') do
          concat link_to('', '#', {name: section_name})
          concat content_tag(:h3, title, id: section_name)
        end
      end
    end
  end
end