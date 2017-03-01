class RunsController < ApplicationController
  def index
    @runs = Run.all

    render("runs/index.html.erb")
  end

  def show
    @comment = Comment.new
    @run = Run.find(params[:id])

    render("runs/show.html.erb")
  end

  def new
    @run = Run.new

    render("runs/new.html.erb")
  end

  def create
    @run = Run.new

    @run.mountain_id = params[:mountain_id]

    save_status = @run.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/runs/new", "/create_run"
        redirect_to("/runs")
      else
        redirect_back(:fallback_location => "/", :notice => "Run created successfully.")
      end
    else
      render("runs/new.html.erb")
    end
  end

  def edit
    @run = Run.find(params[:id])

    render("runs/edit.html.erb")
  end

  def update
    @run = Run.find(params[:id])

    @run.mountain_id = params[:mountain_id]

    save_status = @run.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/runs/#{@run.id}/edit", "/update_run"
        redirect_to("/runs/#{@run.id}", :notice => "Run updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Run updated successfully.")
      end
    else
      render("runs/edit.html.erb")
    end
  end

  def destroy
    @run = Run.find(params[:id])

    @run.destroy

    if URI(request.referer).path == "/runs/#{@run.id}"
      redirect_to("/", :notice => "Run deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Run deleted.")
    end
  end
end
