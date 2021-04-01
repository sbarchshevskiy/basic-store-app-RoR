class AboutController < ApplicationController
  def index
    @time = Time.now
    @time_since = time_since(timestamps, @time)
  end
end
