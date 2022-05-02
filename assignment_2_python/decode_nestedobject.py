

# function will decode the nested dict passed with keys and return the final value
def decode_dict(nested_dictobj, keys):
    orig_dict = nested_dictobj
    mylist_keys = keys.split('/')

    # try block to catch if passed nested dict and keys is out of sync.
    try:
        for key in mylist_keys:
            nested_dictobj=nested_dictobj.get(key)
    except:
        print("something went wrong, while decoding the nested dict. kindly check input nested_dict and keys are proper")


    print("final value of {0} is ====> {1}".format(orig_dict,nested_dictobj) )

#Test1
obj1 = {"a":{"b":{"c":"d"}}}
key1="a/b/c"
decode_dict(obj1, key1)

#Test2
obj2 = {"x":{"y":{"z":"a"}}}
key2 = "x/y/z"
decode_dict(obj2, key2)

#Test3
obj2 = {"x1":{"x2":{"x3":{"x4":{"x5":{"x6":{"x7":"final_value"}}}}}}}
key2 = "x1/x2/x3/x4/x5/x6/x7"
decode_dict(obj2, key2)

# Expected output for the nested object passed
# final value of {'a': {'b': {'c': 'd'}}} is ====> d
# final value of {'x': {'y': {'z': 'a'}}} is ====> a
# final value of {'x1': {'x2': {'x3': {'x4': {'x5': {'x6': {'x7': 'final_value'}}}}}}} is ====> final_value
