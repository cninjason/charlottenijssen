#
# Methods placed in this module can be used inside of any view.
# View helpers allow you to encapsalate complex logic and keep your
# views pristine.
#
module ViewHelpers

  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      "#{start_year}"
    else
      "#{start_year}&#8211;#{end_year}"
    end
  end

  # Handy for hiding a block of unfinished code
  def hidden(&block)
    #no-op
  end

  # Title
  def title(page_title)
    content_for :title, page_title.to_s
  end

  # Title
  def description(page_description)
    content_for :description, page_description.to_s
  end

  # Custom body class
  def body_class(class_name="default_class")
    content_for :body_class, class_name
  end
end
