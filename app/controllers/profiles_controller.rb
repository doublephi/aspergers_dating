class ProfilesController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])    
  end
  
  def browse
    #assemble genders for search
    if params[:gender].present?
      genders = []
      params[:gender].each do |n|
        genders.push(n)
      end
    else
      genders = %w{male female trans genderqueer}
    end

    #assemble diag statuses for search
    if params[:diagnosis].present?
      diagnoses = []
      params[:diagnosis].each do |n|
        diagnoses.push(n)
      end
    else
      diagnoses = %w{confirmed self-diagnosed suspected nt}
    end

    #assemble orientations for search
    if params[:orientation].present?
      orientations = []
      params[:orientation].each do |n|
        orientations.push(n)
      end
    else
      orientations = %w{straight gay bisexual queer trans asexual}
    end

    #assemble looking fors for search
    #
    #revisit this because people can look for more than one thing
    #
    if params[:lookingfor].present?
      lookingfors = []
      params[:lookingfor].each do |n|
        lookingfors.push(n)
      end
    else
      lookingfors = %w{love dating friends hook-ups}
    end

    #assemble social preferences for search
    if params[:socialpref].present?
      socialprefs = []
      params[:socialpref].each do |n|
        socialprefs.push(n)
      end
    else
      socialprefs = %w{social sometimes one-on-one small-groups}
    end
    
    #assemble smoker preferences for search
    if params[:smoke].present?
      smokes = []
      params[:smoke].each do |n|
        smokes.push(n)
      end
    else
      smokes = %w{yes no}
    end
    
    #assemble smoker preferences for search
    if params[:drink].present?
      drinks = []
      params[:drink].each do |n|
        drinks.push(n)
      end
    else
      drinks = %w{yes no}
    end

    puts "-------------"
    puts "-------------"
    if params[:place].present?
#      @users = User.near(params[:place], params[:distance][0][:miles], :order => :distance).paginate(:page => params[:page])
      @users = User.where{(gender.eq_any genders) & (diagnostic_status.eq_any diagnoses) & 
        (orientation.eq_any orientations) & (looking_for.like_any lookingfors) & (social_preference.eq_any socialprefs) & 
        (smoke.eq_any smokes) & (drink.eq_any drinks)}.near(params[:place], params[:distance][0][:miles]).paginate(:page => params[:page])
    else
      @users = User.paginate(:page => params[:page])
    end
  end
end