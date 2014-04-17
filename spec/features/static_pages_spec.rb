require 'spec_helper'

feature 'Static pages' do
  scenario 'Main page (cover page)' do
    visit '/'

    expect(page).to have_content 'Первая российская жонглёрская конвенция'
  end

  shared_examples 'a valid About page' do
    scenario 'About page' do
      expect(page).to have_css('li.global_nav-link.is-active', text: 'О мероприятии')
      expect(page).to have_content 'Потому что жонглирование – это полет, доступный каждому'
    end
  end

  context 'visiting About page directly' do
    before do
      visit '/about'
    end

    it_behaves_like 'a valid About page'
  end

  context 'visiting About page from Main page' do
    before do
      visit '/'
      find('a.welcome-learn_more').click
    end

    it_behaves_like 'a valid About page'
  end

  scenario 'Contacts page' do
    visit '/contacts'

    expect(page).to have_content '#rjc2014'
  end
end
