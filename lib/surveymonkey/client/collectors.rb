module SurveyMonkeyApi
    class Client
        # API endpoints for surveys resources
        module Collectors
            # Creates a collector for a survey
            # Each collector looks like
            # {
            #   "status": "open",
            #   "id": "1234",
            #   "type": "weblink",
            #   "name": "My Collector",
            #   "thank_you_message": "Thank you for taking my survey.",
            #   "disqualification_message": "Thank you for taking my survey.",
            #   "close_date": "2038-01-01T00:00:00+00:00",
            #   "closed_page_message": "This survey is currently closed.",
            #   "redirect_url": "https://www.surveymonkey.com",
            #   "display_survey_results": false,
            #   "edit_response_type": "until_complete",
            #   "anonymous_type": "not_anonymous",
            #   "allow_multiple_responses": false,
            #   "date_modified": "2015-10-06T12:56:55+00:00",
            #   "url": "https://www.surveymonkey.com/r/2Q3RXZB",
            #   "open": true,
            #   "date_created": "2015-10-06T12:56:55+00:00",
            #   "password_enabled": false,
            #   "sender_email": null,
            #   "response_limit": null,
            #   "redirect_type": "url",
            #   "href": "https://api.surveymonkey.com/v3/collectors/1234"
            # }
            def create_collector(survey_id, options = {})
                response = self.class.post("/v3/surveys/#{survey_id}/collectors", body: options)
              response.parsed_response
            end

            # Fetches a collector for a survey
            # The collector looks like
            # {
            #   "status": "open",
            #   "id": "1234",
            #   "type": "weblink",
            #   "name": "My Collector",
            #   "thank_you_message": "Thank you for taking my survey.",
            #   "disqualification_message": "Thank you for taking my survey.",
            #   "close_date": "2038-01-01T00:00:00+00:00",
            #   "closed_page_message": "This survey is currently closed.",
            #   "redirect_url": "https://www.surveymonkey.com",
            #   "display_survey_results": false,
            #   "edit_response_type": "until_complete",
            #   "anonymous_type": "not_anonymous",
            #   "allow_multiple_responses": false,
            #   "date_modified": "2015-10-06T12:56:55+00:00",
            #   "url": "https://www.surveymonkey.com/r/2Q3RXZB",
            #   "open": true,
            #   "date_created": "2015-10-06T12:56:55+00:00",
            #   "password_enabled": false,
            #   "sender_email": null,
            #   "response_limit": null,
            #   "redirect_type": "url",
            #   "href": "https://api.surveymonkey.com/v3/collectors/1234"
            # }
            def collector(collector_id, options = {})
                response = self.class.get("/v3/collectors/#{collector_id}", query: options)
              response.parsed_response
            end

            # Returns list of collectors for survey
            # Each collector looks like
            # {"href"=>"https://api.surveymonkey.net/v3/collectors/1234", "name"=>"My collector", "id"=>"1234}
            def collectors(survey_id, options = {})
                response = self.class.get("/v3/surveys/#{survey_id}/collectors", query: options)
              response.parsed_response
            end
        end
    end
end
