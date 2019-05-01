module SurveyMonkeyApi
    class Client
        # API endpoints for surveys resources
        module SurveyPages
            # Returns list of pages as array in ['data'] field
            # Each page looks like
            # {
            #   "title": "Page Title",
            #   "description": "",
            #   "position": 1,
            #   "question_count": 0,
            #   "id": "1234",
            #   "href":"http://api.surveymonkey.com/v3/surveys/1234/pages/1234"
            # }
            def pages(survey_id, options = {})
                response = self.class.get("/v3/surveys/#{survey_id}/pages", query: options)
                response.parsed_response
            end

            # Returns single page information
            def page(survey_id, page_id, options = {})
                response = self.class.get("/v3/surveys/#{survey_id}/pages/#{page_id}", query: options)
                response.parsed_response
            end
        end
    end
end
