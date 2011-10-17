Clock.controllers do
  
  # GET /
  get :index do
    @schedule = Schedule.first(:active => true)
    
    if !@schedule.blank?
      @periods = @schedule.periods.sort(:number.asc)
    end
    
    @marquees = Marquee.all
    @notices = Notice.all
    
    render :clock
  end
  
  # GET /ping
  get :ping do
    "pong"
  end
  
end
