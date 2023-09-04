module ApplicationHelper
	def covered_topics
		[
			'decorators', 'resource routing',
			'implemented locales', 'implemented status filter'
		]
	end

	def display_topic(topic)
		content_tag(:div,topic, class: 'alert alert-primary mb-3')
	end
end
