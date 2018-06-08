class Api::SchoolsController < Api::ApiController
  api :POST, '/schools', 'Create school'
  error code: 422
  def create
    @school = School.new(school_params)
    if !@school.save
      render json: {success: false }, status: 422
    end
  end

  def new
    @school = School.new
  end

  api :GET, '/schools', 'Get Schools'
  error code: 401
  def index
    @schools = School.filter(params)
  end

  api :GET, '/schools/:id', 'Get One School'
  error code: 401
  def show
    @school = School.find(params[:id])
  end

  api :PUT, '/schools/:id', 'Update One School'
  error code: 422
  def update
    @school = School.find(params[:id])
    if @school.name != ""
      @school.update_attributes(school_params)
      if @school.errors.any?
        render json: {success: false, message: @school.errors.messages}, status: 422
      else
        render :show
      end
    else
      render json: {success: false }, status: 422
    end
  end

  api :DELETE, '/schools/:id', 'Delete One School'
  error code: 401
  def destroy
    @school = School.delete(params[:id])
    render json: {success: true, message: "Deleted"}.to_json
  end

  private
  def school_params
    params.require(:school).permit(
      :name,
      :address,
      :city,
      :zip_code,
      :latitude,
      :longitude,
      :nb_student,
      :openings,
      :phone,
      :email,
      :status
    )
  end
end
