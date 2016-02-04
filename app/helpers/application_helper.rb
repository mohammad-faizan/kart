module ApplicationHelper

	def get_alert_class(flash_key)
		case flash_key.to_s
		when 'notice'
			'alert alert-info'
		when 'alert'
			'alert alert-danger'
		when 'success'
			'alert alert-success'
		end
	end
end
