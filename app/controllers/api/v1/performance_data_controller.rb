class Api::V1::PerformanceDataController < ApplicationController

    def create
        @data = PerformanceData.new(params[:performance_data])
        if @data.save
            render json: { message: 'all good' }
        end
    end
end