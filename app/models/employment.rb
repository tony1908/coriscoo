class Employment < ActiveRecord::Base
	mount_uploader :pdf, PdfUploader 
end
