import boto3
import os


def lambda_handler(event, context):
    db_host = os.environ['db_host']
    client = boto3.resource('dynamodb')
    table = client.Table(db_host)
    response = table.put_item(
        Item={

            'productId': event['productId'],
            'productName': event['productName'],
            'price': event['price']
        }
    )

    return {
        'statusCode': response['ResponseMetadata']['HTTPStatusCode'],
        'body': 'Product ' + event['productId'] + ' updated'
    }
