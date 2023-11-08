# CheckResponse


## Fields

| Field                                                                                | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `content_type`                                                                       | *String*                                                                             | :heavy_check_mark:                                                                   | HTTP response content type for this operation                                        |
| `create_check_response`                                                              | [T.nilable(Shared::CreateCheckResponse)](../../models/shared/createcheckresponse.md) | :heavy_minus_sign:                                                                   | OK                                                                                   |
| `error_response`                                                                     | [T.nilable(Shared::ErrorResponse)](../../models/shared/errorresponse.md)             | :heavy_minus_sign:                                                                   | Bad Request                                                                          |
| `status_code`                                                                        | *Integer*                                                                            | :heavy_check_mark:                                                                   | HTTP response status code for this operation                                         |
| `raw_response`                                                                       | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)          | :heavy_minus_sign:                                                                   | Raw HTTP response; suitable for custom response parsing                              |