
class SignInPage 
    
    EMAIL_FIELD = {css: '#input-email'}
    PASS_FIELD = {css: '#input-password'}
    LOGIN_BUTTON = {css: '[type="submit"]'}
    LOGIN_LABEL = {css: '.alert-danger'}
      
    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def fill_fields
        browser.find_element(EMAIL_FIELD).send_keys Utils.generate_random_email
        browser.find_element(PASS_FIELD).send_keys '461254846545'
    end

    def click_login        
        browser.find_element(LOGIN_BUTTON).click
    end

    def verify_sign_in
        browser.find_element(LOGIN_LABEL).text.include?('Warning: No match')
    end
    
    def loaded?
        browser.title.include?('Login')
    end
     

  end