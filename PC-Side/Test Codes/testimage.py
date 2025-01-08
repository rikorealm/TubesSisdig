import numpy as np
from PIL import Image

def nearest_neighbor_scaling(image, new_width, new_height):
    """
    Scales an image using nearest neighbor interpolation.
    
    Args:
        image (numpy.ndarray): Original image as a NumPy array.
        new_width (int): Desired width of the scaled image.
        new_height (int): Desired height of the scaled image.
    
    Returns:
        numpy.ndarray: Scaled image as a NumPy array.
    """
    original_height, original_width, channels = image.shape
    # Initialize an empty array for the new image
    scaled_image = np.zeros((new_height, new_width, channels), dtype=image.dtype)
    
    # Calculate the scaling factors
    scale_x = original_width / new_width
    scale_y = original_height / new_height
    
    # Iterate over each pixel in the scaled image
    for y in range(new_height):
        for x in range(new_width):
            # Find the nearest pixel in the original image
            original_x = int(round(x * scale_x))
            original_y = int(round(y * scale_y))
            
            # Ensure the indices are within bounds
            original_x = min(original_x, original_width - 1)
            original_y = min(original_y, original_height - 1)
            
            # Assign the nearest neighbor's value to the scaled image
            scaled_image[y, x] = image[original_y, original_x]
    
    return scaled_image

# Example usage
if __name__ == "__main__":
    # Load an image using PIL
    img = Image.open("PC-Side\Test Codes\Creepy.png")  # Replace with your image path
    img_array = np.array(img)
    
    # Set new dimensions
    new_width = 600
    new_height = 600
    
    # Scale the image
    scaled_img_array = nearest_neighbor_scaling(img_array, new_width, new_height)
    
    # Convert back to an image and display/save
    scaled_img = Image.fromarray(scaled_img_array)
    scaled_img.show()
    scaled_img.save("scaled_example.jpg")