class CycleTimesController < ApplicationController
  def index
    @cycle_times = CycleTime.all

    render("cycle_times/index.html.erb")
  end

  def show
    @forecast = Forecast.new
    @cycle_time = CycleTime.find(params[:id])

    render("cycle_times/show.html.erb")
  end

  def new
    @cycle_time = CycleTime.new

    render("cycle_times/new.html.erb")
  end

  def create
    @cycle_time = CycleTime.new

    @cycle_time.ct_ds_40 = params[:ct_ds_40]
    @cycle_time.ct_ds_53 = params[:ct_ds_53]
    @cycle_time.conv = params[:conv]
    @cycle_time.scenario = params[:scenario]

    save_status = @cycle_time.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/cycle_times/new", "/create_cycle_time"
        redirect_to("/cycle_times")
      else
        redirect_back(:fallback_location => "/", :notice => "Cycle time created successfully.")
      end
    else
      render("cycle_times/new.html.erb")
    end
  end

  def edit
    @cycle_time = CycleTime.find(params[:id])

    render("cycle_times/edit.html.erb")
  end

  def update
    @cycle_time = CycleTime.find(params[:id])

    @cycle_time.ct_ds_40 = params[:ct_ds_40]
    @cycle_time.ct_ds_53 = params[:ct_ds_53]
    @cycle_time.conv = params[:conv]
    @cycle_time.scenario = params[:scenario]

    save_status = @cycle_time.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/cycle_times/#{@cycle_time.id}/edit", "/update_cycle_time"
        redirect_to("/cycle_times/#{@cycle_time.id}", :notice => "Cycle time updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Cycle time updated successfully.")
      end
    else
      render("cycle_times/edit.html.erb")
    end
  end

  def destroy
    @cycle_time = CycleTime.find(params[:id])

    @cycle_time.destroy

    if URI(request.referer).path == "/cycle_times/#{@cycle_time.id}"
      redirect_to("/", :notice => "Cycle time deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Cycle time deleted.")
    end
  end
end
