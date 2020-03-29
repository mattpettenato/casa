require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

# rubocop:todo Metrics/BlockLength
RSpec.describe '/casa_cases', type: :request do
  # CasaCase. As you add validations to CasaCase, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      CasaCase.create! valid_attributes
      get casa_cases_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      casa_case = CasaCase.create! valid_attributes
      get casa_case_url(casa_case)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_casa_case_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      casa_case = CasaCase.create! valid_attributes
      get edit_casa_case_url(casa_case)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new CasaCase' do
        expect do
          post casa_cases_url, params: { casa_case: valid_attributes }
        end.to change(CasaCase, :count).by(1)
      end

      it 'redirects to the created casa_case' do
        post casa_cases_url, params: { casa_case: valid_attributes }
        expect(response).to redirect_to(casa_case_url(CasaCase.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new CasaCase' do
        expect do
          post casa_cases_url, params: { casa_case: invalid_attributes }
        end.to change(CasaCase, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post casa_cases_url, params: { casa_case: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested casa_case' do
        casa_case = CasaCase.create! valid_attributes
        patch casa_case_url(casa_case), params: { casa_case: new_attributes }
        casa_case.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the casa_case' do
        casa_case = CasaCase.create! valid_attributes
        patch casa_case_url(casa_case), params: { casa_case: new_attributes }
        casa_case.reload
        expect(response).to redirect_to(casa_case_url(casa_case))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        casa_case = CasaCase.create! valid_attributes
        patch casa_case_url(casa_case), params: { casa_case: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested casa_case' do
      casa_case = CasaCase.create! valid_attributes
      expect do
        delete casa_case_url(casa_case)
      end.to change(CasaCase, :count).by(-1)
    end

    it 'redirects to the casa_cases list' do
      casa_case = CasaCase.create! valid_attributes
      delete casa_case_url(casa_case)
      expect(response).to redirect_to(casa_cases_url)
    end
  end
end
# rubocop:enable Metrics/BlockLength
