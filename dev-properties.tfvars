api_gw_domain_name   = "customer.dev.api.mobaws.mobiquitylab.tech"
api_gw_name          = "mob-api-gateway"
api_mapping_key      = "v1/update"
aws_profile          = "temp_mob-bp-dng"
handler_name         = "index.lambda_handler"
lambda_function_name = "update-product-price"
lambda_run_time      = "python3.8"
package_version      = "v0.1.0"
package_url          = "https://codeload.github.com/ss-mob/update-price/"
region               = "eu-central-1"
service_name         = "update-price"
stage                = "dev"
route_key            = "POST /price"

## Optional
dynamo-table-name = "product"
sys_params = {
  db_host = "product"
}
