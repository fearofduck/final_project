class SeasonalitiesController < ApplicationController
  def index
    @seasonalities = Seasonality.page(params[:page]).per(10)

    render("seasonalities/index.html.erb")
  end

  def show
    @forecast = Forecast.new
    @seasonality = Seasonality.find(params[:id])

    render("seasonalities/show.html.erb")
  end

  def new
    @seasonality = Seasonality.new

    render("seasonalities/new.html.erb")
  end

  def create
    @seasonality = Seasonality.new

    @seasonality.seas_ds_40 = params[:seas_ds_40]
    @seasonality.seas_ds_53 = params[:seas_ds_53]
    @seasonality.conv = params[:conv]
    @seasonality.name = params[:name]

    save_status = @seasonality.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/seasonalities/new", "/create_seasonality"
        redirect_to("/seasonalities")
      else
        redirect_back(:fallback_location => "/", :notice => "Seasonality created successfully.")
      end
    else
      render("seasonalities/new.html.erb")
    end
  end

  def edit
    @seasonality = Seasonality.find(params[:id])

    render("seasonalities/edit.html.erb")
  end

  def update
    @seasonality = Seasonality.find(params[:id])

    @seasonality.seas_ds_40 = params[:seas_ds_40]
    @seasonality.seas_ds_53 = params[:seas_ds_53]
    @seasonality.conv = params[:conv]
    @seasonality.name = params[:name]

    save_status = @seasonality.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/seasonalities/#{@seasonality.id}/edit", "/update_seasonality"
        redirect_to("/seasonalities/#{@seasonality.id}", :notice => "Seasonality updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Seasonality updated successfully.")
      end
    else
      render("seasonalities/edit.html.erb")
    end
  end

  def destroy
    @seasonality = Seasonality.find(params[:id])

    @seasonality.destroy

    if URI(request.referer).path == "/seasonalities/#{@seasonality.id}"
      redirect_to("/", :notice => "Seasonality deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Seasonality deleted.")
    end
  end
end
