class LightsController < ApplicationController
  def index
    client = Hue::Client.new
    @lights = client.lights
  end

  def show
    client = Hue::Client.new
    light = params[:id].to_i
    @light = client.lights[light]
  end

  def adjust_brightness
    client = Hue::Client.new
    light_id = params[:id].to_i
    @light = client.lights[light_id]
    @light.brightness = params[:brightness].to_i
    sleep(1)
    @light.refresh
    render 'show'
  end

  def all_off
    client = Hue::Client.new
    lights = client.lights
    lights.each do |light|
      light.off!
    end
  end

  def all_on
    client = Hue::Client.new
    lights = client.lights
    lights.each do |light|
      light.on!
    end
  end

  def individual_off
    client = Hue::Client.new
    light_id = params[:id].to_i
    @light = client.lights[light_id]
    @light.off!
  end

  def individual_on
    client = Hue::Client.new
    light_id = params[:id].to_i
    @light = client.lights[light_id]
    @light.on!
  end
end