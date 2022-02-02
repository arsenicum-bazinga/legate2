import numpy as np
from time import time

def rms_array(x):
  return np.sqrt(1/n*np.sum(x**2))

total_time=time()

f=open("data_n8.txt","r")
c=[]
for line in f:
    temp=line
    c.append(float(temp))
c=np.array(c)
n=len(c)
print(n)

start=time()
min1=np.amin(c)
print(time()-start)

start=time()
min2=np.amin(c)
print(time()-start)

start=time()
max1=np.amax(c)
print(time()-start)

start=time()
mean=c.sum()/n
print(time()-start)

start=time()
rms=rms_array(c)
print(time()-start)

total_time=time()-total_time
print(total_time)