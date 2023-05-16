print("helloworld")

import torch

# Check the number of available CUDA devices
device_count = torch.cuda.device_count()
print("Number of CUDA devices:", device_count)

# Get the name of each CUDA device
for i in range(device_count):
    device_name = torch.cuda.get_device_name(i)
    print(f"CUDA device {i}: {device_name}")
