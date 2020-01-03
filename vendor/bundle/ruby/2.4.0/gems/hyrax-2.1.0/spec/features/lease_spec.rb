RSpec.describe 'leases' do
  let(:user) { create(:user) }

  before do
    sign_in user
  end
  describe 'create a new leased object' do
    let(:future_date) { 5.days.from_now }
    let(:later_future_date) { 10.days.from_now }

    it 'can be created, displayed and updated', :clean_repo, :workflow do
      visit '/concern/generic_works/new'
      fill_in 'Title', with: 'Lease test'
      choose 'Lease'
      fill_in 'generic_work_lease_expiration_date', with: future_date
      select 'Public', from: 'Is available to'
      select 'Private', from: 'then restrict it to'
      click_button 'Save'

      # chosen lease date is on the show page
      expect(page).to have_content(future_date.to_date.to_formatted_s(:standard))

      click_link 'Edit'
      click_link 'Lease Management Page'

      expect(page).to have_content('This Generic Work is under lease.')
      expect(page).to have_xpath("//input[@name='generic_work[lease_expiration_date]' and @value='#{future_date.to_datetime.iso8601}']") # current lease date is pre-populated in edit field

      fill_in 'until', with: later_future_date.to_s

      click_button 'Update Lease'
      expect(page).to have_content(later_future_date.to_date.to_formatted_s(:standard)) # new lease date is displayed in message
    end
  end
end
