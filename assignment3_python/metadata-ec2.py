
import boto3
import pprint


def get_instance_metadata(input_region_name, input_instanceid=None):
    #prerequiste stage profile is configured locally before running this script
    try:
        management_console_obj = boto3.session.Session(profile_name='stage')
        ec2_client_obj = management_console_obj.client( region_name=input_region_name, service_name="ec2")


        if len(input_instanceid)>0:
            # planning to retrive meta data for list of ec2 instances given in user input
            ec2_userdata_json = ec2_client_obj.describe_instances(InstanceIds=input_instanceid, DryRun=False, )
        else:
            #retrieve all the ec2 instances
            ec2_userdata_json = ec2_client_obj.describe_instances(DryRun=False)

    except Exception as e:
        print("Somethning went wrong while getting meta data of ec2 with {0}".format(e))
    pprint.pprint(ec2_userdata_json)


#prerequiste using "aws configure" kindly configure the AWS_ACCESS_KEY and AWS_SECRET_ACCESS_KEY with prfile
# ex: <aws configure --profile stage>
# main program starts here

print(
'''
PREREQUISTE:
    using "aws configure" kindly configure the AWS_ACCESS_KEY and AWS_SECRET_ACCESS_KEY with profile
    ex: <aws configure --profile stage>
'''
)
# collecting the region name . Ex: us-west-2
input_region_name=str(input("kindly enter the region name = "))


flag=True
#get the list of instance id's
input_instance_list=[]

#looping to collect the list of instance id's for which meta data retrieved.
# if use want's to collect meta data to all the instances, then need to press "all"
while flag:
    input_instanceid = str(input("kindly enter either of below input below values\n 1. ec2-instanceid ==> if you have the list  \n 2. all ==> to collect all existing ec2 instances \n  "))
    if input_instanceid == "all":
        flag=False
    else:
        input_instance_list.append(input_instanceid)
        user_input=str(input(" kindly enter either of below option \n  1.exit ==> to finish the instance id input \n 2. any input ==> to continue the instance id input\n"))
        if user_input == "exit":
            flag=False




#get the meta data for the instances
get_instance_metadata(input_region_name,input_instance_list)

