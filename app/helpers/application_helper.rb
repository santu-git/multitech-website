module ApplicationHelper
  def certificated_issued_label(enrollment)
    if enrollment.certificated_issued
      content_tag(:span, "Yes", class: "custom-badge green")
    else
      content_tag(:span, "No", class: "custom-badge orange")
    end
  end
end
