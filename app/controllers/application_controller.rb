class ApplicationController < ActionController::Base
  def new
   @grid = Array.new(8){("A".."Z").to_a.sample}
  end

  def score
    if params[:grid]
      result = params[:grid]

       result.split.each do |letter|
        if
          @grid.include?(letter)
          @display = "good job"
        else
          @display = "fuck"
        end
      end
    end
  end
end
