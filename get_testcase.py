import re
import sys
import requests
from bs4 import BeautifulSoup
from time import sleep

abc_number=
urlbase='https://atcoder.jp/contests/abc%s/tasks/abc%s_' % (abc_number,abc_number)
probrems=['a','b','c','d','e','f']

for p in probrems:
    html=requests.get(urlbase+p)
    source=BeautifulSoup(html.content,"html.parser")

    langja=(source.find_all('span',class_='lang-ja'))[0]
    pre=langja.find_all('pre')

    print("-----------"+p+"------------")
    filenum=1
    for i in range(1,len(pre),2):
        print(pre[i].text.strip())
        path='./testcase/%s/case%s' % (p.upper(),filenum)
        with open(path, mode='w') as f:
            f.write(pre[i].text.strip()+"\n")

        print(pre[i+1].text.strip())
        path='./testcase/%s/case%s-ans' % (p.upper(),filenum)
        with open(path, mode='w') as f:
            f.write(pre[i+1].text.strip()+"\n")

        filenum+=1

    sleep(1)


