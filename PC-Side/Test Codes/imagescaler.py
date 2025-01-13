from matplotlib import pyplot as plt
import numpy as np
from PIL import Image

# read image data
# Creepy.png 5x5
# Memario.png HD
# car 4:3
# jamur 6:4
# stiv 4:6

# input image
img = Image.open("TubesSisdig\PC-Side\Images\Creepy.png")  # Replace with your image path
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

width_ratio = final_width/original_width
height_ratio = final_height/original_height

# condition
test_ww = original_width * width_ratio
test_hw = original_height * width_ratio
test_wh = original_width * height_ratio
test_hh = original_height * height_ratio

if test_ww < final_width and test_hw < final_width:
    ratio = int(width_ratio)
elif test_wh < final_width and test_hh < final_width:
    ratio = int(height_ratio)
else:
    ratio = int(width_ratio)

# output scaling algorithm
expected_width = int(original_width * ratio)
expected_height = int(original_height *ratio)
center_width = int((final_width - expected_width) / 2)
center_height = int((final_height - expected_height) / 2)
# expected_img_array = np.zeros((expected_height, expected_width, channels), dtype=original_img_array.dtype)

for height in range (0, expected_height, ratio):
    for width in range (0, expected_width, ratio):
        original_height_now = int((height/ratio))
        original_width_now = int((width/ratio))
        print(original_height_now, original_width_now)
        for i in range (height, height + ratio):
            for j in range (width, width + ratio):
                final_img_array[center_height + i, center_width + j] = original_img_array[original_height_now, original_width_now]

# display
plt.imshow(final_img_array, interpolation='nearest')
plt.show()