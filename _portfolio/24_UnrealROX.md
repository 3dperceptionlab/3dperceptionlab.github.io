---
caption:
  title: UnrealROX
  subtitle: An Improved Tool for Acquiring Synthetic Data from Virtual 3D Environments
  thumbnail: assets/img/portfolio/unrealrox.jpg

title: UnrealROX
subtitle: An Improved Tool for Acquiring Synthetic Data from Virtual 3D Environments
image: assets/img/portfolio/unrealrox.jpg
alt: UnrealROX

---

Data-driven algorithms have surpassed traditional techniques in almost every aspect in robotic vision problems. Such algorithms need vast amounts of quality data to be able to work properly after their training process. Gathering and annotating that sheer amount of data in the real world is a time-consuming and error-prone task. Those problems limit scale and quality. Synthetic data generation has become increasingly popular since it is faster to generate and automatic to annotate. However, most of the current datasets and environments lack realism, interactions, and details from the real world. [UnrealROX](https://github.com/3dperceptionlab/unrealrox-plus)  is an environment built over Unreal Engine 4 which aims to reduce that reality gap by leveraging hyperrealistic indoor scenes that are explored by robot agents which also interact with objects in a visually realistic manner in that simulated world. Photorealistic scenes and robots are rendered by Unreal Engine into a virtual reality headset which captures gaze so that a human operator can move the robot and use controllers for the robotic hands; scene information is dumped on a per-frame basis so that it can be reproduced offline to generate raw data and ground truth annotations. This virtual reality environment enables robotic vision researchers to generate realistic and visually plausible data with full ground truth for a wide variety of problems such as class and instance semantic segmentation, object detection, depth estimation, visual grasping, and navigation.