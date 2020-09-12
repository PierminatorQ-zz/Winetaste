require 'rails_helper'

RSpec.describe WinesController, type: :controller do
    
    context "GET index" do

        it "assign @wines" do
            wine = Wine.create({
                name: "Carmenere",
                score: 6,
                created_at: DateTime.now,
                updated_at: DateTime.now
            })

            get :index
            expect(assigns(:wines)).to eq([wine])
        end

        # it "renders the index template" do
        #     get :index
        #     expect(response).to render_template("index")
        # end
    end

end