# external-secrets-bitwarden
Bitwarden webhook provider for external secrets operator

A small webhook receiver for the integration of external-secrets-operator with Bitwarden (see [External Secrets](https://external-secrets.io/main/examples/bitwarden/))

## Environment variables:
| Key               | Description                                                                                               |
| ----------------- | --------------------------------------------------------------------------------------------------------- |
| `BW_HOST`         | Bitwarden server URL, e.g., https://your.bw.domain.com                                                    |
| `BW_CLIENTID`     | Client Id, see [Personal API Key for CLI Authentication](https://bitwarden.com/help/personal-api-key/)    |
| `BW_CLIENTSECRET` | Client Secret, see Personal API Key for CLI Authentication](https://bitwarden.com/help/personal-api-key/) |
| `BW_PASSWORD`     | User password to unlock your vault                                                                        |

## How to setup
visit: [External Secrets - Examples Bitwarden](https://external-secrets.io/main/examples/bitwarden/)

## Deployment
will follow soon, currently in testing