class DayWiseActivitiesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def daily_activity_plan
        plan_hash = {}
        day_plans = DayWiseActivity.where(day: Date.parse(params[:id]))
        if day_plans.present?
            day_plans.each do |plan|
                id = plan.activity.id
                plan_hash[id] = {}
                plan_hash[id]["name"] = plan.activity.name
                plan_hash[id]["frequency"] = plan.activity.frequency
            end
            render json: {data: plan_hash, message: 'Activity found for the date'}
        else
            render json: {message: 'No plan found for this date'}
        end
    end

    def submit_activity_progress
        submitted_activity_ids = params[:activity_ids]
        byebug
        current_user = User.find_by(id: params[:id])
        submitted_activity_ids.each do |id|
            UserActivityProgress.create(user_id: current_user.id, activity_id: id, status: 'Completed')
        end
        render json: {message: 'User Progress created successfully'}
    end


end