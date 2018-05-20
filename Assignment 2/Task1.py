import requests
from PIL import Image
from bs4 import BeautifulSoup
from io import BytesIO,StringIO
import urllib.request
import os
import zipfile
import datetime

names=[]

fout=open("log.txt","a+")

def getQarisNames(url):
    count=0
    page = requests.get(url)
    if page.status_code==200:
        soup=BeautifulSoup(page.content,'html.parser')
        a_lists=soup.find_all('a')
        for atag in a_lists:
            if(count<=32 and count>0):
                names.append(atag['href'])

            count += 1


def Mp3_Links(q_url):
    count = 1
    mp3_Urls = []
    page = requests.get(q_url)
    if page.status_code == 200:
        soup = BeautifulSoup(page.content, 'html.parser')
        mp3_list = soup.find_all('a')
        for atag in reversed(mp3_list):
            temp=q_url

            if (count <= 6 ):
                temp+=str(atag['href'])
                mp3_Urls.append(temp)

            else:
                return mp3_Urls
                break
            count += 1

def CreateZip():
    fout.write("Merging Files \n")
    myzip = zipfile.ZipFile('Second_half.zip', 'w')
    for subdir, dirs, files in os.walk('./'):
        for file in files:
            if (file != 'Second_half.zip'):
                myzip.write(file)
                os.remove(file)
    myzip.close();
    fout.write("Deleting Files \n")


def downloadMp3(urls_list):
    count= 0
    for mp3 in urls_list:

        tokens = urls_list[count].split('/')
        name=tokens[-1]
        print(mp3)
        fout.write("Start: " + name +"\n")
        data=urllib.request.urlretrieve(mp3,str(name))
        count += 1
        fout.write("End: " + name+ "\n")
    CreateZip()
    os.chdir("../")


def main():
    url="https://download.quranicaudio.com/quran/"
    getQarisNames(url)
    # print(names)

    fout.write(str(datetime.datetime.now())+ " Total Qari:{0}\n".format(len(names)))
    # print(len(names))
    count = 1
    for QariName in names[0:2]:

        fout.write(str(datetime.datetime.now()) + " Start processing {0} out of 32 \n".format(count))
        fout.write(str(datetime.datetime.now()) + " " + QariName + "\n")

        mp3_Urls =[]
        os.mkdir(QariName)
        url2 = "https://download.quranicaudio.com/quran/"+ QariName
        mp3_Urls = Mp3_Links(url2)
        os.chdir(QariName)
        downloadMp3(mp3_Urls)
        count+=1


if __name__ == '__main__':
    main()