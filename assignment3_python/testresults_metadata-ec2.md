

# test resuls 


## TEST RUN 1:  giving two instance id values to fetch meta data

    kindly enter either of below input below values
 1. ec2-instanceid ==> if you have the list  
 2. all ==> to collect all existing ec2 instances 
  i-00ae74139dc41a36d
 kindly enter either of below option 
  1.exit ==> to finish the instance id input 
 2. any input ==> to continue the instance id input

kindly enter either of below input below values
 1. ec2-instanceid ==> if you have the list  
 2. all ==> to collect all existing ec2 instances 
  i-03b3183632c9f589a
 kindly enter either of below option 
  1.exit ==> to finish the instance id input 
 2. any input ==> to continue the instance id input
exit
```
{'Reservations': [{'Groups': [],
                   'Instances': [{'AmiLaunchIndex': 0,
                                  'Architecture': 'x86_64',
                                  'BlockDeviceMappings': [{'DeviceName': '/dev/xvda',
                                                           'Ebs': {'AttachTime': datetime.datetime(2022, 4, 29, 1, 39, 14, tzinfo=tzutc()),
                                                                   'DeleteOnTermination': True,
                                                                   'Status': 'attached',
                                                                   'VolumeId': 'vol-0326521bdd919ae25'}}],
                                  'CapacityReservationSpecification': {'CapacityReservationPreference': 'open'},
                                  'ClientToken': '',
                                  'CpuOptions': {'CoreCount': 1,
                                                 'ThreadsPerCore': 1},
                                  'EbsOptimized': False,
                                  'EnaSupport': True,
                                  'EnclaveOptions': {'Enabled': False},
                                  'HibernationOptions': {'Configured': False},
                                  'Hypervisor': 'xen',
                                  'ImageId': 'ami-02b92c281a4d3dc79',
                                  'InstanceId': 'i-00ae74139dc41a36d',
                                  'InstanceType': 't2.micro',
                                  'KeyName': 'dolo-keypair',
                                  'LaunchTime': datetime.datetime(2022, 4, 29, 1, 45, 1, tzinfo=tzutc()),
                                  'MetadataOptions': {'HttpEndpoint': 'enabled',
                                                      'HttpProtocolIpv6': 'disabled',
                                                      'HttpPutResponseHopLimit': 1,
                                                      'HttpTokens': 'optional',
                                                      'InstanceMetadataTags': 'disabled',
                                                      'State': 'applied'},
                                  'Monitoring': {'State': 'disabled'},
                                  'NetworkInterfaces': [{'Association': {'IpOwnerId': 'amazon',
                                                                         'PublicDnsName': 'ec2-18-237-78-181.us-west-2.compute.amazonaws.com',
                                                                         'PublicIp': '18.237.78.181'},
                                                         'Attachment': {'AttachTime': datetime.datetime(2022, 4, 29, 1, 39, 13, tzinfo=tzutc()),
                                                                        'AttachmentId': 'eni-attach-0d281c644f519d747',
                                                                        'DeleteOnTermination': True,
                                                                        'DeviceIndex': 0,
                                                                        'NetworkCardIndex': 0,
                                                                        'Status': 'attached'},
                                                         'Description': '',
                                                         'Groups': [{'GroupId': 'sg-025c5b52766ec8739',
                                                                     'GroupName': 'trial-public-secgrp'}],
                                                         'InterfaceType': 'interface',
                                                         'Ipv6Addresses': [],
                                                         'MacAddress': '02:88:8a:52:72:2f',
                                                         'NetworkInterfaceId': 'eni-0eb851b0719f09ed7',
                                                         'OwnerId': '217814059476',
                                                         'PrivateDnsName': 'ip-10-0-1-238.us-west-2.compute.internal',
                                                         'PrivateIpAddress': '10.0.1.238',
                                                         'PrivateIpAddresses': [{'Association': {'IpOwnerId': 'amazon',
                                                                                                 'PublicDnsName': 'ec2-18-237-78-181.us-west-2.compute.amazonaws.com',
                                                                                                 'PublicIp': '18.237.78.181'},
                                                                                 'Primary': True,
                                                                                 'PrivateDnsName': 'ip-10-0-1-238.us-west-2.compute.internal',
                                                                                 'PrivateIpAddress': '10.0.1.238'}],
                                                         'SourceDestCheck': True,
                                                         'Status': 'in-use',
                                                         'SubnetId': 'subnet-0056d682faea7af0f',
                                                         'VpcId': 'vpc-0d52851fb55e99f54'}],
                                  'Placement': {'AvailabilityZone': 'us-west-2a',
                                                'GroupName': '',
                                                'Tenancy': 'default'},
                                  'PlatformDetails': 'Linux/UNIX',
                                  'PrivateDnsName': 'ip-10-0-1-238.us-west-2.compute.internal',
                                  'PrivateDnsNameOptions': {'EnableResourceNameDnsAAAARecord': False,
                                                            'EnableResourceNameDnsARecord': True,
                                                            'HostnameType': 'ip-name'},
                                  'PrivateIpAddress': '10.0.1.238',
                                  'ProductCodes': [],
                                  'PublicDnsName': 'ec2-18-237-78-181.us-west-2.compute.amazonaws.com',
                                  'PublicIpAddress': '18.237.78.181',
                                  'RootDeviceName': '/dev/xvda',
                                  'RootDeviceType': 'ebs',
                                  'SecurityGroups': [{'GroupId': 'sg-025c5b52766ec8739',
                                                      'GroupName': 'trial-public-secgrp'}],
                                  'SourceDestCheck': True,
                                  'State': {'Code': 16, 'Name': 'running'},
                                  'StateTransitionReason': '',
                                  'SubnetId': 'subnet-0056d682faea7af0f',
                                  'Tags': [{'Key': 'Name',
                                            'Value': 'trial-public-app1'}],
                                  'UsageOperation': 'RunInstances',
                                  'UsageOperationUpdateTime': datetime.datetime(2022, 4, 29, 1, 39, 13, tzinfo=tzutc()),
                                  'VirtualizationType': 'hvm',
                                  'VpcId': 'vpc-0d52851fb55e99f54'}],
                   'OwnerId': '217814059476',
                   'ReservationId': 'r-01325616a79abf223'},
                  {'Groups': [],
                   'Instances': [{'AmiLaunchIndex': 0,
                                  'Architecture': 'x86_64',
                                  'BlockDeviceMappings': [{'DeviceName': '/dev/xvda',
                                                           'Ebs': {'AttachTime': datetime.datetime(2022, 4, 29, 1, 41, 20, tzinfo=tzutc()),
                                                                   'DeleteOnTermination': True,
                                                                   'Status': 'attached',
                                                                   'VolumeId': 'vol-0b359aae02ba7352b'}}],
                                  'CapacityReservationSpecification': {'CapacityReservationPreference': 'open'},
                                  'ClientToken': '',
                                  'CpuOptions': {'CoreCount': 1,
                                                 'ThreadsPerCore': 1},
                                  'EbsOptimized': False,
                                  'EnaSupport': True,
                                  'EnclaveOptions': {'Enabled': False},
                                  'HibernationOptions': {'Configured': False},
                                  'Hypervisor': 'xen',
                                  'ImageId': 'ami-02b92c281a4d3dc79',
                                  'InstanceId': 'i-03b3183632c9f589a',
                                  'InstanceType': 't2.micro',
                                  'KeyName': 'dolo-keypair',
                                  'LaunchTime': datetime.datetime(2022, 4, 29, 1, 45, 1, tzinfo=tzutc()),
                                  'MetadataOptions': {'HttpEndpoint': 'enabled',
                                                      'HttpProtocolIpv6': 'disabled',
                                                      'HttpPutResponseHopLimit': 1,
                                                      'HttpTokens': 'optional',
                                                      'InstanceMetadataTags': 'disabled',
                                                      'State': 'applied'},
                                  'Monitoring': {'State': 'disabled'},
                                  'NetworkInterfaces': [{'Attachment': {'AttachTime': datetime.datetime(2022, 4, 29, 1, 41, 19, tzinfo=tzutc()),
                                                                        'AttachmentId': 'eni-attach-04d64fdb419658b95',
                                                                        'DeleteOnTermination': True,
                                                                        'DeviceIndex': 0,
                                                                        'NetworkCardIndex': 0,
                                                                        'Status': 'attached'},
                                                         'Description': '',
                                                         'Groups': [{'GroupId': 'sg-0cc2c501c8467b8ff',
                                                                     'GroupName': 'trial-priv-app2-secgrp'}],
                                                         'InterfaceType': 'interface',
                                                         'Ipv6Addresses': [],
                                                         'MacAddress': '02:db:93:46:4a:9f',
                                                         'NetworkInterfaceId': 'eni-0df08d0cdaff81876',
                                                         'OwnerId': '217814059476',
                                                         'PrivateDnsName': 'ip-10-0-2-227.us-west-2.compute.internal',
                                                         'PrivateIpAddress': '10.0.2.227',
                                                         'PrivateIpAddresses': [{'Primary': True,
                                                                                 'PrivateDnsName': 'ip-10-0-2-227.us-west-2.compute.internal',
                                                                                 'PrivateIpAddress': '10.0.2.227'}],
                                                         'SourceDestCheck': True,
                                                         'Status': 'in-use',
                                                         'SubnetId': 'subnet-04204c382f9de5766',
                                                         'VpcId': 'vpc-0d52851fb55e99f54'}],
                                  'Placement': {'AvailabilityZone': 'us-west-2a',
                                                'GroupName': '',
                                                'Tenancy': 'default'},
                                  'PlatformDetails': 'Linux/UNIX',
                                  'PrivateDnsName': 'ip-10-0-2-227.us-west-2.compute.internal',
                                  'PrivateDnsNameOptions': {'EnableResourceNameDnsAAAARecord': False,
                                                            'EnableResourceNameDnsARecord': True,
                                                            'HostnameType': 'ip-name'},
                                  'PrivateIpAddress': '10.0.2.227',
                                  'ProductCodes': [],
                                  'PublicDnsName': '',
                                  'RootDeviceName': '/dev/xvda',
                                  'RootDeviceType': 'ebs',
                                  'SecurityGroups': [{'GroupId': 'sg-0cc2c501c8467b8ff',
                                                      'GroupName': 'trial-priv-app2-secgrp'}],
                                  'SourceDestCheck': True,
                                  'State': {'Code': 16, 'Name': 'running'},
                                  'StateTransitionReason': '',
                                  'SubnetId': 'subnet-04204c382f9de5766',
                                  'Tags': [{'Key': 'Name',
                                            'Value': 'trail-priv-app2'}],
                                  'UsageOperation': 'RunInstances',
                                  'UsageOperationUpdateTime': datetime.datetime(2022, 4, 29, 1, 41, 19, tzinfo=tzutc()),
                                  'VirtualizationType': 'hvm',
                                  'VpcId': 'vpc-0d52851fb55e99f54'}],
                   'OwnerId': '217814059476',
                   'ReservationId': 'r-036e41ef21bf9808a'}],
 'ResponseMetadata': {'HTTPHeaders': {'cache-control': 'no-cache, no-store',
                                      'content-type': 'text/xml;charset=UTF-8',
                                      'date': 'Tue, 03 May 2022 17:55:31 GMT',
                                      'server': 'AmazonEC2',
                                      'strict-transport-security': 'max-age=31536000; '
                                                                   'includeSubDomains',
                                      'transfer-encoding': 'chunked',
                                      'vary': 'accept-encoding',
                                      'x-amzn-requestid': '6b3a4ed6-978c-457a-a449-4e9e1fbfcc50'},
                      'HTTPStatusCode': 200,
                      'RequestId': '6b3a4ed6-978c-457a-a449-4e9e1fbfcc50',
                      'RetryAttempts': 0}}

Process finished with exit code 0
```


## TEST RUN 2:  giving wrong instance id
PREREQUISTE:
    using "aws configure" kindly configure the AWS_ACCESS_KEY and AWS_SECRET_ACCESS_KEY with profile
    ex: <aws configure --profile stage>

kindly enter the region name = us-west-2
kindly enter either of below input below values
 1. ec2-instanceid ==> if you have the list  
 2. all ==> to collect all existing ec2 instances 
  
 kindly enter either of below option 
  1.exit ==> to finish the instance id input 
 2. any input ==> to continue the instance id input
exit
```
Somethning went wrong while getting meta data of ec2 with An error occurred (MissingParameter) when calling the DescribeInstances operation: The request must contain the parameter InstanceId
Traceback (most recent call last):
  File "C:\Users\chellamu\Desktop\studycircle_2022\labsetup\kpmg-terraform\repoA\test\assignment3_python\metadata-ec2.py", line 60, in <module>
    get_instance_metadata(input_region_name,input_instance_list)
  File "C:\Users\chellamu\Desktop\studycircle_2022\labsetup\kpmg-terraform\repoA\test\assignment3_python\metadata-ec2.py", line 22, in get_instance_metadata
    pprint.pprint(ec2_userdata_json)
UnboundLocalError: local variable 'ec2_userdata_json' referenced before assignment

Process finished with exit code 1

```






```