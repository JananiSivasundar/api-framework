Feature: To retrieve all the accounts available in the given session with invalid data and unexpected server/client conditions, unlimited concurrent users

Scenario: To verify the API with Invalid SessionId
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJ2MmFQNDdIQXVTUi1qWmR5U3otNDVDV2RaOFhiWGFBMXNDbWhLbWtJLXRvIn0.eyJleHAiOjE3MDExNjM1NTcsImlhdCI6MTcwMTA3NzE1NywianRpIjoiODlhMTk3N2EtZDM2OS00MGYwLWE5ZTQtNjVjNDEwM2FmZmYzIiwiaXNzIjoiaHR0cHM6Ly9zYW5kYm94Lm5lb25vbWljcy5pby9yZWFsbXMvc2FuZGJveCIsInN1YiI6IjZmZDM1M2RmLTA0MWYtNDE2ZS05NThmLTFhMTk4MTJjOGIwYyIsInR5cCI6IkJlYXJlciIsImF6cCI6ImQ5ZjY1OWJhLTQ5OTgtNDdjMS1iZTkzLWI0OTA5MmNkZDFjMCIsInNlc3Npb25fc3RhdGUiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsicGlzcCIsImFpc3AiXX0sInNjb3BlIjoiYmFucWJyaWRnZV9jbGllbnQiLCJzaWQiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJvcmdhbml6YXRpb25JZCI6Ijg0ZDhlMjM0LTE4M2EtNDZlNC05M2I1LWUzN2MwMzA4NGRkNSIsImNsaWVudEhvc3QiOiIxOTMuOTAuMTEwLjQzIiwiY2tpZCI6IjFhNDE4M2YxLTIyNWQtNDJiOC1iOTMwLWM2MDA1ZjgxMDgyNCIsImNsaWVudEFkZHJlc3MiOiIxOTMuOTAuMTEwLjQzIiwiY2xpZW50X2lkIjoiZDlmNjU5YmEtNDk5OC00N2MxLWJlOTMtYjQ5MDkyY2RkMWMwIn0.F7oR9R2KQ3n6CN0rtj2Na7AMlM060E-PLZMyC10X9PWuA7CDF5CZpsmXcrSN8P3ogGYLnAdk1tTo_A4TRNCY-jVh8RnpR7eU1F6hlxJLOdphsheUG7b-quxlQj_hpW9P9pMAzPGRUpb1dn9CJidFN4lb5m-09_ZlQzDAHePGajteEgxPh_l5zpw2XSlGfV01SEBdX4Gkg4590uRaP9jaGN8o4NCqalCq5M6r0HXjU1kPe8j2B9uHqN3MOcNFh3rEDLXVZzEwkhrPCTiDi2ZSwAITnNlt-Sand3G0rdDYbmyK2zI4WvMv7Lzh4k08CGoaejMJvO-alJmpX1h1tuK4fA
And I set header x-session-id to abcdef123
And I set header x-device-id to example_id_for_quickstart
And I receive a response
Then I expect response body should contain href

Scenario: To verify the API with Invalid Access Token
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to Bearer hfsfu123
And I set header x-session-id to ec975839-ed3c-4639-ac4c-8a12ebe5f863
And I set header x-device-id to example_id_for_quickstart
And I receive a response
Then I expect response body should contain href

Scenario: To verify the API with Invalid device ID
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJ2MmFQNDdIQXVTUi1qWmR5U3otNDVDV2RaOFhiWGFBMXNDbWhLbWtJLXRvIn0.eyJleHAiOjE3MDExNjM1NTcsImlhdCI6MTcwMTA3NzE1NywianRpIjoiODlhMTk3N2EtZDM2OS00MGYwLWE5ZTQtNjVjNDEwM2FmZmYzIiwiaXNzIjoiaHR0cHM6Ly9zYW5kYm94Lm5lb25vbWljcy5pby9yZWFsbXMvc2FuZGJveCIsInN1YiI6IjZmZDM1M2RmLTA0MWYtNDE2ZS05NThmLTFhMTk4MTJjOGIwYyIsInR5cCI6IkJlYXJlciIsImF6cCI6ImQ5ZjY1OWJhLTQ5OTgtNDdjMS1iZTkzLWI0OTA5MmNkZDFjMCIsInNlc3Npb25fc3RhdGUiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsicGlzcCIsImFpc3AiXX0sInNjb3BlIjoiYmFucWJyaWRnZV9jbGllbnQiLCJzaWQiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJvcmdhbml6YXRpb25JZCI6Ijg0ZDhlMjM0LTE4M2EtNDZlNC05M2I1LWUzN2MwMzA4NGRkNSIsImNsaWVudEhvc3QiOiIxOTMuOTAuMTEwLjQzIiwiY2tpZCI6IjFhNDE4M2YxLTIyNWQtNDJiOC1iOTMwLWM2MDA1ZjgxMDgyNCIsImNsaWVudEFkZHJlc3MiOiIxOTMuOTAuMTEwLjQzIiwiY2xpZW50X2lkIjoiZDlmNjU5YmEtNDk5OC00N2MxLWJlOTMtYjQ5MDkyY2RkMWMwIn0.F7oR9R2KQ3n6CN0rtj2Na7AMlM060E-PLZMyC10X9PWuA7CDF5CZpsmXcrSN8P3ogGYLnAdk1tTo_A4TRNCY-jVh8RnpR7eU1F6hlxJLOdphsheUG7b-quxlQj_hpW9P9pMAzPGRUpb1dn9CJidFN4lb5m-09_ZlQzDAHePGajteEgxPh_l5zpw2XSlGfV01SEBdX4Gkg4590uRaP9jaGN8o4NCqalCq5M6r0HXjU1kPe8j2B9uHqN3MOcNFh3rEDLXVZzEwkhrPCTiDi2ZSwAITnNlt-Sand3G0rdDYbmyK2zI4WvMv7Lzh4k08CGoaejMJvO-alJmpX1h1tuK4fA
And I set header x-session-id to ec975839-ed3c-4639-ac4c-8a12ebe5f863
And I set header x-device-id to XXXYYYZ
And I receive a response
Then I expect response body should contain href

Scenario: To verify the API for retrieving accounts from a Bank for the user having no associated accounts
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJ2MmFQNDdIQXVTUi1qWmR5U3otNDVDV2RaOFhiWGFBMXNDbWhLbWtJLXRvIn0.eyJleHAiOjE3MDExNjM1NTcsImlhdCI6MTcwMTA3NzE1NywianRpIjoiODlhMTk3N2EtZDM2OS00MGYwLWE5ZTQtNjVjNDEwM2FmZmYzIiwiaXNzIjoiaHR0cHM6Ly9zYW5kYm94Lm5lb25vbWljcy5pby9yZWFsbXMvc2FuZGJveCIsInN1YiI6IjZmZDM1M2RmLTA0MWYtNDE2ZS05NThmLTFhMTk4MTJjOGIwYyIsInR5cCI6IkJlYXJlciIsImF6cCI6ImQ5ZjY1OWJhLTQ5OTgtNDdjMS1iZTkzLWI0OTA5MmNkZDFjMCIsInNlc3Npb25fc3RhdGUiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsicGlzcCIsImFpc3AiXX0sInNjb3BlIjoiYmFucWJyaWRnZV9jbGllbnQiLCJzaWQiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJvcmdhbml6YXRpb25JZCI6Ijg0ZDhlMjM0LTE4M2EtNDZlNC05M2I1LWUzN2MwMzA4NGRkNSIsImNsaWVudEhvc3QiOiIxOTMuOTAuMTEwLjQzIiwiY2tpZCI6IjFhNDE4M2YxLTIyNWQtNDJiOC1iOTMwLWM2MDA1ZjgxMDgyNCIsImNsaWVudEFkZHJlc3MiOiIxOTMuOTAuMTEwLjQzIiwiY2xpZW50X2lkIjoiZDlmNjU5YmEtNDk5OC00N2MxLWJlOTMtYjQ5MDkyY2RkMWMwIn0.F7oR9R2KQ3n6CN0rtj2Na7AMlM060E-PLZMyC10X9PWuA7CDF5CZpsmXcrSN8P3ogGYLnAdk1tTo_A4TRNCY-jVh8RnpR7eU1F6hlxJLOdphsheUG7b-quxlQj_hpW9P9pMAzPGRUpb1dn9CJidFN4lb5m-09_ZlQzDAHePGajteEgxPh_l5zpw2XSlGfV01SEBdX4Gkg4590uRaP9jaGN8o4NCqalCq5M6r0HXjU1kPe8j2B9uHqN3MOcNFh3rEDLXVZzEwkhrPCTiDi2ZSwAITnNlt-Sand3G0rdDYbmyK2zI4WvMv7Lzh4k08CGoaejMJvO-alJmpX1h1tuK4fA
And I set header x-session-id to ec975839-ed3c-4639-ac4c-8a12ebe5f863
And I set header x-device-id to example_id_for_quickstart
And I receive a response
Then I expect response body should contain href

Scenario: To verify the API response by exceeding the limited number of requests.
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJ2MmFQNDdIQXVTUi1qWmR5U3otNDVDV2RaOFhiWGFBMXNDbWhLbWtJLXRvIn0.eyJleHAiOjE3MDExNjM1NTcsImlhdCI6MTcwMTA3NzE1NywianRpIjoiODlhMTk3N2EtZDM2OS00MGYwLWE5ZTQtNjVjNDEwM2FmZmYzIiwiaXNzIjoiaHR0cHM6Ly9zYW5kYm94Lm5lb25vbWljcy5pby9yZWFsbXMvc2FuZGJveCIsInN1YiI6IjZmZDM1M2RmLTA0MWYtNDE2ZS05NThmLTFhMTk4MTJjOGIwYyIsInR5cCI6IkJlYXJlciIsImF6cCI6ImQ5ZjY1OWJhLTQ5OTgtNDdjMS1iZTkzLWI0OTA5MmNkZDFjMCIsInNlc3Npb25fc3RhdGUiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsicGlzcCIsImFpc3AiXX0sInNjb3BlIjoiYmFucWJyaWRnZV9jbGllbnQiLCJzaWQiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJvcmdhbml6YXRpb25JZCI6Ijg0ZDhlMjM0LTE4M2EtNDZlNC05M2I1LWUzN2MwMzA4NGRkNSIsImNsaWVudEhvc3QiOiIxOTMuOTAuMTEwLjQzIiwiY2tpZCI6IjFhNDE4M2YxLTIyNWQtNDJiOC1iOTMwLWM2MDA1ZjgxMDgyNCIsImNsaWVudEFkZHJlc3MiOiIxOTMuOTAuMTEwLjQzIiwiY2xpZW50X2lkIjoiZDlmNjU5YmEtNDk5OC00N2MxLWJlOTMtYjQ5MDkyY2RkMWMwIn0.F7oR9R2KQ3n6CN0rtj2Na7AMlM060E-PLZMyC10X9PWuA7CDF5CZpsmXcrSN8P3ogGYLnAdk1tTo_A4TRNCY-jVh8RnpR7eU1F6hlxJLOdphsheUG7b-quxlQj_hpW9P9pMAzPGRUpb1dn9CJidFN4lb5m-09_ZlQzDAHePGajteEgxPh_l5zpw2XSlGfV01SEBdX4Gkg4590uRaP9jaGN8o4NCqalCq5M6r0HXjU1kPe8j2B9uHqN3MOcNFh3rEDLXVZzEwkhrPCTiDi2ZSwAITnNlt-Sand3G0rdDYbmyK2zI4WvMv7Lzh4k08CGoaejMJvO-alJmpX1h1tuK4fA
And I set header x-session-id to ec975839-ed3c-4639-ac4c-8a12ebe5f863
And I set header x-device-id to example_id_for_quickstart
And I receive a response
Then I expect response body should contain href

Scenario: TO verify the API for the server error /client error
Given I make a GET request to /ics/v3/accounts
And I set header accept to application/json
And I set header authorization to Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJ2MmFQNDdIQXVTUi1qWmR5U3otNDVDV2RaOFhiWGFBMXNDbWhLbWtJLXRvIn0.eyJleHAiOjE3MDExNjM1NTcsImlhdCI6MTcwMTA3NzE1NywianRpIjoiODlhMTk3N2EtZDM2OS00MGYwLWE5ZTQtNjVjNDEwM2FmZmYzIiwiaXNzIjoiaHR0cHM6Ly9zYW5kYm94Lm5lb25vbWljcy5pby9yZWFsbXMvc2FuZGJveCIsInN1YiI6IjZmZDM1M2RmLTA0MWYtNDE2ZS05NThmLTFhMTk4MTJjOGIwYyIsInR5cCI6IkJlYXJlciIsImF6cCI6ImQ5ZjY1OWJhLTQ5OTgtNDdjMS1iZTkzLWI0OTA5MmNkZDFjMCIsInNlc3Npb25fc3RhdGUiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsicGlzcCIsImFpc3AiXX0sInNjb3BlIjoiYmFucWJyaWRnZV9jbGllbnQiLCJzaWQiOiIyOGY4NDIwOS1kYmFlLTQ4YTQtYTEyZi0xMTQxZjRmY2NjY2YiLCJvcmdhbml6YXRpb25JZCI6Ijg0ZDhlMjM0LTE4M2EtNDZlNC05M2I1LWUzN2MwMzA4NGRkNSIsImNsaWVudEhvc3QiOiIxOTMuOTAuMTEwLjQzIiwiY2tpZCI6IjFhNDE4M2YxLTIyNWQtNDJiOC1iOTMwLWM2MDA1ZjgxMDgyNCIsImNsaWVudEFkZHJlc3MiOiIxOTMuOTAuMTEwLjQzIiwiY2xpZW50X2lkIjoiZDlmNjU5YmEtNDk5OC00N2MxLWJlOTMtYjQ5MDkyY2RkMWMwIn0.F7oR9R2KQ3n6CN0rtj2Na7AMlM060E-PLZMyC10X9PWuA7CDF5CZpsmXcrSN8P3ogGYLnAdk1tTo_A4TRNCY-jVh8RnpR7eU1F6hlxJLOdphsheUG7b-quxlQj_hpW9P9pMAzPGRUpb1dn9CJidFN4lb5m-09_ZlQzDAHePGajteEgxPh_l5zpw2XSlGfV01SEBdX4Gkg4590uRaP9jaGN8o4NCqalCq5M6r0HXjU1kPe8j2B9uHqN3MOcNFh3rEDLXVZzEwkhrPCTiDi2ZSwAITnNlt-Sand3G0rdDYbmyK2zI4WvMv7Lzh4k08CGoaejMJvO-alJmpX1h1tuK4fA
And I set header x-session-id to ec975839-ed3c-4639-ac4c-8a12ebe5f863
And I set header x-device-id to example_id_for_quickstart
And I receive a response
Then I expect response body should contain href