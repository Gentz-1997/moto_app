module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Moto Map"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def comment_icon(option = {})
    classes = option[:class] || "size-6"
    content_tag(:svg, xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", "stroke-width": "1.5", stroke: "currentColor", class: classes) do
      concat(
        content_tag(:path, "",
          "stroke-linecap": "round",
          "stroke-linejoin": "round",
          d: "M20.25 8.511c.884.284 1.5 1.128 1.5 2.097v4.286c0 1.136-.847 2.1-1.98 2.193-.34.027-.68.052-1.02.072v3.091l-3-3c-1.354 0-2.694-.055-4.02-.163a2.115 2.115 0 0 1-.825-.242m9.345-8.334a2.126 2.126 0 0 0-.476-.095 48.64 48.64 0 0 0-8.048 0c-1.131.094-1.976 1.057-1.976 2.192v4.286c0 .837.46 1.58 1.155 1.951m9.345-8.334V6.637c0-1.621-1.152-3.026-2.76-3.235A48.455 48.455 0 0 0 11.25 3c-2.115 0-4.198.137-6.24.402-1.608.209-2.76 1.614-2.76 3.235v6.226c0 1.621 1.152 3.026 2.76 3.235.577.075 1.157.14 1.74.194V21l4.155-4.155"
        )
      )
    end
  end

  def search_icon(option = {})
    classes = option[:class] || "size-6"

    content_tag :svg,
    xmlns: "http://www.w3.org/2000/svg",
    fill: "none", viewBox: "0 0 24 24",
    stroke_width: "1.5", stroke: "currentColor",
    class: classes do
      content_tag :path, nil,
      stroke_linecap: "round",
      stroke_linejoin: "round",
      d: "m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z"
    end
  end

  def spot_icon(option = {})
    classes = option[:class] || "size-6"

    content_tag :svg,
    xmlns: "http://www.w3.org/2000/svg",
    fill: "none",
    viewBox: "0 0 24 24",
    stroke_width: "1.5",
    stroke: "currentColor",
    class: classes do
      concat(content_tag(:path, nil,
      stroke_linecap: "round",
      stroke_linejoin: "round",
      d: "M15 10.5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"))
      concat(content_tag(:path, nil,
      stroke_linecap: "round",
      stroke_linejoin: "round",
      d: "M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1 1 15 0Z"))
    end
  end

  def user_icon(option = {})
  classes = option[:class] || "size-6"

  content_tag(:svg, xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", "stroke-width": "1.5", stroke: "currentColor", class: classes) do
    concat(
      content_tag(:path, "",
        "stroke-linecap": "round",
        "stroke-linejoin": "round",
        d: "M17.982 18.725A7.488 7.488 0 0 0 12 15.75a7.488 7.488 0 0 0-5.982 2.975m11.963 0a9 9 0 1 0-11.963 0m11.963 0A8.966 8.966 0 0 1 12 21a8.966 8.966 0 0 1-5.982-2.275M15 9.75a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"
      )
    )
  end
end

  def registration_icon(option = {})
    classes = option[:class] || "size-6"
    content_tag(:svg, xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", "stroke-width": "1.5", stroke: "currentColor", class: classes) do
      concat(
        content_tag(:path, "",
          "stroke-linecap": "round",
          "stroke-linejoin": "round",
          d: "M18 7.5v3m0 0v3m0-3h3m-3 0h-3m-2.25-4.125a3.375 3.375 0 1 1-6.75 0 3.375 3.375 0 0 1 6.75 0ZM3 19.235v-.11a6.375 6.375 0 0 1 12.75 0v.109A12.318 12.318 0 0 1 9.374 21c-2.331 0-4.512-.645-6.374-1.766Z"
        )
      )
    end
  end


  def logout_icon(options = {})
    classes = options[:class] || "size-6"

    content_tag :svg,
    xmlns: "http://www.w3.org/2000/svg",
    fill: "none",
    viewBox: "0 0 24 24",
    stroke: "currentColor",
    "stroke-width": "1.5",
    class: classes do
      concat(content_tag(:path, nil,
      "stroke-linecap": "round",
      "stroke-linejoin": "round",
      d: "M15.75 9V5.25A2.25 2.25 0 0 0 13.5 3h-6a2.25 2.25 0 0 0-2.25 2.25v13.5A2.25 2.25 0 0 0 7.5 21h6a2.25 2.25 0 0 0 2.25-2.25V15m3 0 3-3m0 0-3-3m3 3H9"))
    end
  end
end
