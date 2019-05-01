require 'httparty'
require_relative 'client/collectors'
require_relative 'client/responses'
require_relative 'client/surveys'
require_relative 'client/survey_pages'
require_relative 'client/survey_page_questions'
require_relative 'client/users'

module SurveyMonkeyApi
    # Client class for api requests
    class Client
        include HTTParty
        include SurveyMonkeyApi::Client::Collectors
        include SurveyMonkeyApi::Client::Users
        include SurveyMonkeyApi::Client::Surveys
        include SurveyMonkeyApi::Client::SurveyPages
        include SurveyMonkeyApi::Client::SurveyPageQuestions
        include SurveyMonkeyApi::Client::SurveyResponses
        include SurveyMonkeyApi::Client::SurveyResponses

        base_uri 'https://api.surveymonkey.net'
        format :json

        def initialize(_args = {})
            access_token = ENV['SURVEY_MONKEY_TOKEN']
            self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{access_token}", 'Content-Type' => 'application/json' })
        end
    end
end
