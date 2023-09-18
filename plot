import matplotlib.pyplot as pp
import numpy as np #easy to read files with numpy


#let's read whole file to numpy 2d array
data = np.loadtxt(fname = 'file.txt', delimiter = ',')
print(data)

#now lets split them into two different X and Y arrays
X = []
Y = []
for i in range(len(data)):
    for j in range(2):
        if j==0:
            X.append(data[i][j])
        else:
            Y.append(data[i][j])
print(X)
print(Y)
pp.plot(X, Y, label = 'T(N)')
pp.xlabel('SIZE (N)')
pp.ylabel('Operations count (T)')
