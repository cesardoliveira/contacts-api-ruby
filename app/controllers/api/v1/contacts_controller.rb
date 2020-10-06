class Api::V1::ContactsController < Api::V1::ApiController
    
   # GET /api/v1/contacts
   def index 
    @contacts = current_user.contacts
    render json: @contacts
   end

   # GET /api/v1/contacts/id
   def show
    render json: @contacts
   end

   #POST /api/v1/contacts
   def create 
    @contact = Contact.new(contact_params.merge(user: current_user))

    if @contact.save
        render json: @contact, status: :created
    else
        render json: @contact.erros, status: unprocessable_entity
    end
   end

   #PUT /api/v1/contacts/1
   def update 
    if @contact.update(contact_params)
        render json: @contact
    else
        render json: @contact.erros, status: :unprocessable_entity
    end
   end

   # DELETE /api/contacts/id
   def destroy
    @contacts.:destroy
   end

   private
   #Use callbacks to share common setup or constraints between actions
   def set_contact
    @contact = Contact.find(params[:id])
   end

   # Only allow a trusted parameter "white list" through
   def contact_params
    params.require(:contact).permit(:name, :email, :phone, :description)
   end

   def require_authorization!
    unless current_user == @contact.user
        render json: {}, status: :forbidden
    end
   end

end
