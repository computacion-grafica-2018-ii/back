class QuotationMailer < ApplicationMailer
	def send_quotation( user, path )
		@user = user		
		attachments['cotizacion.pdf'] = File.open( path + '/COTIZACION.pdf', 'rb' ){ |f| f.read }
		attachments['vista_previa.pdf'] = File.open( path + '/PDF3D.pdf', 'rb' ){ |f| f.read }
		mail(to: @user.email, subject: 'Cotización')
	end
end
