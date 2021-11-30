import os

working_directory = os.getcwd()

print(working_directory)

def return_user_id():
    print(os.getuid())

return_user_id()