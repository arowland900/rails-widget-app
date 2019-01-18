class WidgetsController < ApplicationController
    before_action :set_widget, only: [:show, :edit, :update, :destroy]

    def index
        @widgets = Widget.all
        @widget = Widget.new
    end

    def show
        @widget = Widget.find(params[:id])
    end

    def new
        @widget = Widget.new
    end

    def create
        @widget = Widget.new(bean_params)
      
        if @widget.save
            redirect_to widgets_path
        else
            render :new
        end
    end

    def edit
        @widget = Widget.find(params[:id])
    end

    def update
        @widget = Widget.find(params[:id])

        if @widget.update_attributes(widget_params)
            redirect_to widgets_path
        else
            render :edit
        end
    end

    def destroy
        @widget = Widget.find(params[:id])
        @widget.destroy
        redirect_to widgets_path
    end

    private

    def widget_params
        params.require(:widget).permit(:description, :quantity)
    end

    def set_widget
        @widget = Widget.find(params[:id])
    end
end
