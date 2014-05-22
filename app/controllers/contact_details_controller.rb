class ContactDetailsController < ApplicationController
  def index
    @contact_details = ContactDetail.all
  end

  def show
    @contact_detail = ContactDetail.find(params[:id])
  end

  def new
    @contact_detail = ContactDetail.new
  end

  def create
    @contact_detail = ContactDetail.new
    @contact_detail.name = params[:name]
    @contact_detail.address = params[:address]
    @contact_detail.phone = params[:phone]
    @contact_detail.contact = params[:contact]
    @contact_detail.preferences = params[:preferences]

    if @contact_detail.save
      redirect_to "/contact_details", :notice => "Contact detail created successfully."
    else
      render 'new'
    end
  end

  def edit
    @contact_detail = ContactDetail.find(params[:id])
  end

  def update
    @contact_detail = ContactDetail.find(params[:id])

    @contact_detail.name = params[:name]
    @contact_detail.address = params[:address]
    @contact_detail.phone = params[:phone]
    @contact_detail.contact = params[:contact]
    @contact_detail.preferences = params[:preferences]

    if @contact_detail.save
      redirect_to "/contact_details", :notice => "Contact detail updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @contact_detail = ContactDetail.find(params[:id])

    @contact_detail.destroy

    redirect_to "/contact_details", :notice => "Contact detail deleted."
  end
end
