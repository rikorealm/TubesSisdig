from matplotlib import pyplot as plt
import numpy as np
image_data = np.zeros( (9,9,3), dtype=np.uint8)
image_data[4,4] = [255,0,0]

# image scalling algorithm
# image_data = (image_data - (255.0 / 2)) / 255.0
image_data = (image_data * 255.0) + (255.0 / 2)

plt.imshow(image_data, interpolation='nearest')
plt.show()