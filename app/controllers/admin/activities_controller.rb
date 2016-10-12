class Admin::ActivitiesController < ApplicationController
  before_action :verify_admin

  def index
    @activities = Activity.all.paginate page: params[:page],
      per_page: Settings.admin_show_user
  end
end
