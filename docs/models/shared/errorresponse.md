# ErrorResponse


## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       | Example                                                           |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `code`                                                            | [T.nilable(::DingSDK::Shared::Code)](../../models/shared/code.md) | :heavy_minus_sign:                                                | A machine-readable code that describes the error.                 | invalid_phone_number                                              |
| `doc_url`                                                         | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | A link to the documentation that describes the error.             | https://docs.prelude.so/api-reference/errors#invalid_phone_number |
| `message`                                                         | *T.nilable(::String)*                                             | :heavy_minus_sign:                                                | A human-readable message that describes the error.                | +0 is not a valid phone number                                    |