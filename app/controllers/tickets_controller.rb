class TicketsController < ApplicationController
  
  helper_method :lastupdated, :lasttouch
  # GET /tickets
  # GET /tickets.json
  def index
    
    @tickets = Ticket.find_all_by_status("Open").sort_by &:priority
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tickets }
    end
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
    @ticket = Ticket.find(params[:id])
    @updates = @ticket.updates.sort {|a,b| b.created_at <=> a.created_at }

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ticket }
    end
  end 

  # GET /tickets/new
  # GET /tickets/new.json
  def new
    @ticket = Ticket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ticket }
    end
  end

  # GET /tickets/1/edit
  def edit
    @ticket = Ticket.find(params[:id])
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.new(params[:ticket])

    respond_to do |format|
      if @ticket.save
        TicketMailer.ticket_creation(@ticket).deliver
        TicketMailer.ticket_thanks(@ticket).deliver
        if @ticket.priority == 1
          TicketMailer.p1text(@ticket).deliver
        end

        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render json: @ticket, status: :created, location: @ticket }
      else
        format.html { render action: "new" }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tickets/1
  # PUT /tickets/1.json
  def update
    @ticket = Ticket.find(params[:id])

    respond_to do |format|
      if @ticket.update_attributes(params[:ticket])
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    respond_to do |format|
      format.html { redirect_to tickets_url }
      format.json { head :no_content }
    end
  end
  
  def mytickets
    @tickets = Ticket.order(params[:sort])
  end
  
  def lastupdated(t)
    update = Update.find_all_by_ticket_id(t)
    if update.length != 0
    return update.last.created_at
    else
      return t.created_at
    end
    
  end

  def lasttouch(t)
    update = Update.find_all_by_ticket_id(t)
    if update.length != 0
      return User.find_by_id(update.last.user_id).name
      
    else
      return User.find_by_id(t.user_id).name
    end
  end
  
  def self.lastsort(t)
    return 1
  end
    def closed
    
    @tickets = Ticket.find_all_by_status("Closed").sort_by &:priority
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tickets }
    end
  end
end
