# security-webcam

Security webcam harnesses a simple calculation of the difference between images to determine whether movement occurred.

![alt text](https://calhat.com/security-camera.png "The security camera detects a man fiddling on a computer")

Notes: the camera runs using the fish shell. 

1. Install fish shell

```brew install fish```

2. Install [Imagesnap](https://github.com/rharder/imagesnap) for webcam access

3. Make it executable: ```chmod a+x motiondetect.fish```

4. Execute the script: ```./motiondetect.fish```

# Optional: Your computer can imessage you the pictures of when it detects motion.
to do this:
1. ```brew install imessage-ruby```
2. Uncomment line 11 and add your phone number

# Notes:

If the security camera is too sensitive (or over-sensitive), in that it is mistaking static for movements or the other way around, adjust sensitivity by changing the ```3.0``` on line 9 of ```motiondetect.fish.``` Lower number => More sensitive, Higher number => Less sensitive. For determining what's the best sensitivity, see below. My webcam was pretty noisy— if your webcam is high-quality, you might want to adjust the sensitivity lower.

# Graphs!!! (testing):
Running ```python``` on create-graph.py will, using the data it has received from running ```motiondetect.fish```, explicate motion data in a graph, showing the differences between images over time. For adjusting sensitivity, look at the y axis. Make the number you wish to adjust (the ```3.0```) around where the motion seems to be occurring.

![alt text](https://calhat.com/graph.png "graph")