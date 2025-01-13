import numpy as np

# Define the 8x8 RGB image matrix (example with random RGB values)
image_matrix = np.random.randint(0, 256, (8, 8, 3), dtype=np.uint8)  # 8x8 matrix with RGB tuples

# Transformation matrix for flipping (identity matrix reversed)
flip_matrix = np.eye(8)[::-1]

# Perform the flip horizontally and vertically
flipped_image_matrix = flip_matrix @ image_matrix @ flip_matrix.T

# For demonstration, let's print the original and flipped matrices
print("Original Image Matrix:")
print(image_matrix)

print("\nFlipped Image Matrix (Horizontally and Vertically):")
print(flipped_image_matrix)