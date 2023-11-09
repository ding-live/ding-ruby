# ErrorResponse


## Fields

| Field                                                          | Type                                                           | Required                                                       | Description                                                    | Example                                                        |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| `code`                                                         | [T.nilable(Shared::Code)](../../models/shared/code.md)         | :heavy_minus_sign:                                             | N/A                                                            | invalid_phone_number                                           |
| `doc_url`                                                      | *T.nilable(String)*                                            | :heavy_minus_sign:                                             | A link to the documentation that describes the error.          | https://docs.ding.live/api/error-handling#invalid_phone_number |
| `message`                                                      | *T.nilable(String)*                                            | :heavy_minus_sign:                                             | N/A                                                            | +0 is not a valid phone number                                 |