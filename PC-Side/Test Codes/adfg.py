from matplotlib import pyplot as plt
import numpy as np
from PIL import Image

# read image data
img = Image.open("PC-Side\Test Codes\vroom.png")  # Replace with your image path
original_img_array = np.array(img)
print(original_img_array)
original_height, original_width, channels = original_img_array.shape
print(original_height, original_width, channels)
# image_data = np.zeros( (9,9,3), dtype=np.uint8)
# image_data[4,4] = [255,0,0]

# canvas size (640 x 480)
final_width = 640
final_height = 480
final_img_array = np.zeros((final_height, final_width, channels), dtype=original_img_array.dtype)
for a in range (0, final_width):
    for b in range (0, final_height):
        final_img_array[b, a] = [0, 0, 0, 255]


# output scaling algorithm
expected_width = 480
expected_height = 480
# expected_img_array = np.zeros((expected_height, expected_width, channels), dtype=original_img_array.dtype)

ratio = int(expected_width / original_width)
print(ratio)

for height in range (0, expected_height, ratio):
    for width in range (0, expected_width, ratio):
        original_height_now = int((height/ratio))
        original_width_now = int((width/ratio))
        print(original_height_now, original_width_now)
        for i in range (height, height + ratio):
            for j in range (width, width + ratio):
                final_img_array[i, j] = original_img_array[original_height_now, original_width_now]

plt.imshow(final_img_array, interpolation='nearest')
plt.show()