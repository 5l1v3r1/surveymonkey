module SurveyMonkeyApi
    class Client
        # API endpoints for surveys resources
        module SurveyPageQuestions
            # Returns list of questions for a page as array in ['data'] field
            # Each question looks like
            # {"headings": [{"heading": "A question about primates.", "random_assignment": {"percent": 50, "position": 1}}
            def questions(survey_id, page_id, options = {})
                response = self.class.get("/v3/surveys/#{survey_id}/pages/#{page_id}/questions", query: options)
                response.parsed_response
            end

            # Returns single question information
            def question(survey_id, page_id, question_id, options = {})
                response = self.class.get("/v3/surveys/#{survey_id}/pages/#{page_id}/questions/#{question_id}", query: options)
                response.parsed_response
            end
        end
    end
end
