import os
import psutil
import time
import datetime
def Info(id):
    p=psutil.Process(id)
    print("Id: ", id)
    print("Name: ", p.name())
    print("Status: ", p.status())
    print("Parent ID: ", p.ppid() )
    print("Parent Name: ", psutil.Process(p.ppid()).name())
    print("Memory Info: ", p.memory_info().rss)
    print("Process Creation Time: ", datetime.datetime.fromtimestamp(p.create_time()).strftime("%Y-%m-%d %H:%M:%S"))
    print("Files Opened by the Process Info: ", p.open_files())


def main():
    id=input("Enter the id:")
    Info(int(id))

if __name__ == '__main__':
    main()