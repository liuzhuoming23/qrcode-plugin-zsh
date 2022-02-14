import pyzbar.pyzbar as pyzbar
import sys
from PIL import Image,ImageEnhance

img=Image.open(sys.argv[1])
content=pyzbar.decode(img)[0].data.decode()
print(content)
