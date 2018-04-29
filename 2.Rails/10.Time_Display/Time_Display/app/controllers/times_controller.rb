class TimesController < ApplicationController
  def main
    Time.zone = "Pacific Time (US & Canada)"
    @time = Time.zone.now
  end
end
