import matplotlib.pyplot as plt
import os 
dir_path = os.path.dirname(os.path.realpath(__file__)) + "/graph.png"

data = []
with open('data.txt') as f:
    for line in f:
        w=(float(x) for x in line.split())
        data.append(w.next())

fig, ax = plt.subplots( nrows=1, ncols=1 )  # create figure & 1 axis
ax.plot([x for x in range(0,len(data))], data)
fig.savefig(dir_path)   # save the figure to file
plt.close(fig)    # close the figure

