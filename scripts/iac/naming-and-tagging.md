# Naming and Tagging Strategy

## Naming Convention

Resources will be named using the following convention:

`<resource-type>-<project-name>-<environment>-<region>-<instance>`

- **resource-type**: Abbreviation of the Azure resource type (e.g., `rg`, `st`, `func`).
- **project-name**: `cityvehicles`
- **environment**: `dev`, `stg`, `prod`
- **region**: Azure region abbreviation (e.g., `eus`)
- **instance**: A number for multiple instances of the same resource (e.g., `001`)

Example: `rg-cityvehicles-dev-eus-001`

## Tagging Strategy

All resources will be tagged with the following:

- **Project**: `City-Vehicles`
- **Environment**: `Dev`, `Staging`, or `Production`
- **Owner**: The team responsible for the resource.
- **CostCenter**: The cost center for billing.
