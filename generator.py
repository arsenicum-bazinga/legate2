import numpy as np

n=10**6
a=np.random.rand(n)
a=a.reshape(n,1)
a_file = open("data_n6.txt", "w")
for row in a:
    np.savetxt(a_file, row)

a_file.close()
