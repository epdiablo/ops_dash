class TicketMailer < ActionMailer::Base
  	
  	default :from => "Ad Ops Dash"

	def ticket_creation(ticket)
		@ticket = ticket
		mail :to => "rrogers@songza.com", :subject => "New Ticket: #{ticket.id}"
	end

	def ticket_thanks(ticket)
		@ticket = ticket
		mail :to => User.find_by_id(ticket.user_id).email, :subject => "Ticket Created. Ticket Number #{ticket.id}"
	end

end
