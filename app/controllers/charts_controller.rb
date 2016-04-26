class ChartsController < ApplicationController

def completed_tasks
    render json: Task.group_by_day(:completed_at).count
    render json: Task.group(:goal_id).group_by_day(:completed_at).count.chart_json
  end
def dataas
	project = Project.all
    render json: Project.group_by_hour_of_day(:created_at - Time.now, format:"%X").count
  end
end
