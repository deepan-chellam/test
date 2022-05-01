
import boto3
import json
management_console_obj = boto3.session.Session(profile_name='stage')
ec2_client_obj = management_console_obj.client( region_name="us-west-2", service_name="ec2")

input_instanceid=str(input("Kindly enter the instanceid for which you need meta data = "))
ec2_userdata_json = ec2_client_obj.describe_instance_attribute(Attribute= 'userData', DryRun=False, InstanceId=input_instanceid)

print(ec2_userdata_json)


#########Expected output
# C:\Users\chellamu\AppData\Local\Programs\I-Installed\Python\Python310\python.exe C:/Users/chellamu/Desktop/studycircle_2022/labsetup/kpmg-terraform/metadata-ec2.py
# Kindly enter the instanceid for which you need meta data = i-00ae74139dc41a36d
# {'InstanceId': 'i-00ae74139dc41a36d', 'UserData': {'Value': 'IyEvYmluL2Jhc2gKeXVtIHVwZGF0ZSAteQp5dW0gaW5zdGFsbCAteSBodHRwZApzeXN0ZW1jdGwgc3RhcnQgaHR0cGQKc3lzdGVtY3RsIGVuYWJsZSBodHRwZAplY2hvICI8aDE+SGVsbG8gd29ybGQgZnJvbSAkKGhvc3RuYW1lIC1mKTwvaDE+IiA+IC92YXIvd3d3L2h0bWwvaW5kZXguaHRtbA=='}, 'ResponseMetadata': {'RequestId': 'ef39d8e1-badb-4e98-9979-5d59772ced27', 'HTTPStatusCode': 200, 'HTTPHeaders': {'x-amzn-requestid': 'ef39d8e1-badb-4e98-9979-5d59772ced27', 'cache-control': 'no-cache, no-store', 'strict-transport-security': 'max-age=31536000; includeSubDomains', 'content-type': 'text/xml;charset=UTF-8', 'content-length': '552', 'date': 'Sun, 01 May 2022 23:55:39 GMT', 'server': 'AmazonEC2'}, 'RetryAttempts': 0}}
#
# Process finished with exit code 0