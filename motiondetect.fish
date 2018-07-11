#! /usr/local/bin/fish
imagesnap "a.jpg";
imagesnap "b.jpg";
java ImgDiffPercent;
mv "b.jpg" "a.jpg"
while true
  imagesnap "b.jpg";
  set x (java ImgDiffPercent);
  set motionDetected (echo $x'>'3 | bc -l)
  if [ $motionDetected -eq 1 ]
    echo 'motion detected!'
    #imessage -a b.jpg -c "your phone number here"
    echo (date) >> MotionDetectionDates.txt
    cp "b.jpg" motion_detections/(date).jpg
  end
  mv "b.jpg" "a.jpg"
end
#python create-graph.py
