class TicketMailer < ActionMailer::Base
  
	def ticket_creation(ticket)
		mail :to => "rrogers@songza.com", :subject => "New Ticket: #{ticket.id}", :from => "Ad Ops Dash"
	end


end
