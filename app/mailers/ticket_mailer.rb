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
	def update_notify(creator, assigned, ticket, updater, updatebody)
	  @creator = creator
	  @assigned = assigned
	  @updater = updater
	  @updatebody = updatebody
	  @ticket = ticket
	  sendto = [creator.email, assigned.email]
	  mail :to => sendto, :subject => "New update to ticket #{ticket.id}"
	  
	end
	
	def p1text(ticket)
	  mail :to => "5126650018@tmomail.net", :subject => "NEW P1 TICKET!"
	  
	end

end
