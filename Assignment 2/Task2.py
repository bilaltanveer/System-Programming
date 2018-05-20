import requests
from PIL import Image
from bs4 import BeautifulSoup
from io import BytesIO,StringIO

urls=[]
def getAllUrls(url,word):
    for i in range(1,6):
        print("Page #:",i)
        page = requests.get(url)
        if page.status_code==200:
            soup=BeautifulSoup(page.content,'html.parser')
            p_lists=soup.find_all('p')
            for p_tag in p_lists:
                 if word in p_tag.get_text():
                    print(p_tag)
                    links=p_tag.find('a')['href']
                    print(links)
                    urls.append(links)
        if(i!=1):
            url="https://propakistani.pk/category/sports/page/{0}".format(i)

def main():
    url="https://propakistani.pk/category/sports/"
    url=getAllUrls(url,word='national')
    print(urls)

if __name__ == '__main__':
    main()