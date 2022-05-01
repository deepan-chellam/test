


def decode (objv, keyv):
    #first getting the key values in list data type
    kvlist = keyv.split('/')

    #just of information
    print("after conversino kvlist =".format(kvlist))

    # looping the keys, until we reach the final key
    for k in kvlist:
        objv=objv[k]

    # once we exit from for loop, we will get the final value in "objv" object
    print( objv )


#Test3
obj1 = {"a":{"b":{"c":"d"}}}
key1="a/b/c"
decode(obj1, key1)

#Test2
obj2 = {"x":{"y":{"z":"a"}}}
key2 = "x/y/z"
decode(obj2, key2)

#Test3
obj2 = {"x1":{"x2":{"x3":{"x4":{"x5":{"x6":{"x7":"final_value"}}}}}}}
key2 = "x1/x2/x3/x4/x5/x6/x7"
decode(obj2, key2)

# Expected output
# after conversino kvlist =
# d
# after conversino kvlist =
# a
# after conversino kvlist =
# 'final_value'