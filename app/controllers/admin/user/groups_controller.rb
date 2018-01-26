class Admin::User::GroupsController < Admin::BaseController

  def index
    @groups = User::Group.all
  end

  def show
    @group = User::Group.find(params[:id])
  end

  def new
    @group = User::Group.new
  end

  def edit
    @group = User::Group.find(params[:id])
  end

  def create
    @group = User::Group.new(group_params)
    if @group.save
      notice = "User group created successfully"
      redirect_to [:admin, @group], notice: notice
    else
      render :new
    end
  end

  def update
    @group = User::Group.find(params[:id])
    if @group.update(group_params)
      redirect_to [:admin, @group]
    else
      render :edit
    end
  end

  def destroy
    @group = User::Group.find(params[:id])
    @group.destroy
    notice = "User group destroyed successfully"
    redirect_to admin_user_groups_path, notice: notice
  end

  private

    def group_params
      params.require(:user_group).permit(:name)
    end

end