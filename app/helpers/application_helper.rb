module ApplicationHelper

	def error_tag(model, attribute)
		if model.errors.has_key? attribute
			content_tag(
			:div,
			model.errors[attribute].first,
			class: 'error_message'
			)
		end
	end

	def google_maps_api
    content_tag(:script,:type => "text/javascript",:src => "https://maps.googleapis.com/maps/api/js?key=AIzaSyC7aAo5T7TgqVJCef01j2rthZoCFMx2i4o&sensor=false") do
    end
  end

end
