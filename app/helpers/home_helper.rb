module HomeHelper

  def base_rate
    if Date.today <= Date.parse("April 1st, 2018") && Date.today >= Date.parse("December 18, 2017")
      '285.00'
    else
      '265.00'
    end
  end

  def cleaning_fee
    '75.00'
  end

  def tax_rate
    0.145
  end

  def section_header(title)
    section_name = title.underscore.downcase
    content_tag(:div, class: 'section-wrap') do
      content_tag(:div, class: 'section') do
        content_tag(:div, class: 'wrapper') do
          concat link_to('', '#', { name: section_name })
          concat content_tag(:h3, title, id: section_name)
        end
      end
    end
  end
end