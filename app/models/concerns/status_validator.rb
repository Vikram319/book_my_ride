class StatusValidator < ActiveModel::EachValidator
	def validate_each(record, attribute, value)
		unless value=='booked' || value == 'pending'
			record.errors[attribute] << (options[:message] || "is not a valid status")
    end
	end
end