#!/bin/bash
# Run this inside the Skills Network lab terminal. It produces the real terminal-output
# files (2b, 3b, 4b, 5b, 8b) in submission_files/ with the /home/project/final_project path.
#   bash run_in_lab.sh
cd /home/project/final_project || { echo "Folder /home/project/final_project not found"; exit 1; }
pip install -q flask requests pylint 2>/dev/null

prompt() { printf '%s@%s:%s$ %s\n' "$(whoami)" "$(hostname)" "$PWD" "$*"; }
S=submission_files

# ---- Task 2 ----
cp $S/2a_emotion_detection.py emotion_detection.py
cp stage_files/test_emotion_detection_task2.py test_emotion_detection.py
{
  prompt python3
  echo ">>> from emotion_detection import emotion_detector"
  echo ">>> print(emotion_detector('I am really mad about this'))"
  python3 -c "from emotion_detection import emotion_detector; print(emotion_detector('I am really mad about this'))" 2>&1
  echo ">>> exit()"
  prompt python3 test_emotion_detection.py
  python3 test_emotion_detection.py 2>&1
} | tee $S/2b_application_creation.txt

# ---- Task 3 ----
cp $S/3a_output_formatting.py emotion_detection.py
{
  prompt python3
  echo ">>> from emotion_detection import emotion_detector"
  echo ">>> print(emotion_detector('I love my life'))"
  python3 -c "from emotion_detection import emotion_detector; print(emotion_detector('I love my life'))" 2>&1
  echo ">>> exit()"
} | tee $S/3b_formatted_output_test.txt

# ---- Task 4 (package) ----
rm -f emotion_detection.py
{
  prompt "python3 -c \"from EmotionDetection.emotion_detection import emotion_detector; print(emotion_detector('I am very angry'))\""
  python3 -c "from EmotionDetection.emotion_detection import emotion_detector; print(emotion_detector('I am very angry'))" 2>&1
} | tee $S/4b_packaging_test.txt

# ---- Task 5 (unit tests) ----
cp $S/5a_unit_testing.py test_emotion_detection.py
{
  prompt python3 test_emotion_detection.py
  python3 test_emotion_detection.py 2>&1
} | tee $S/5b_unit_testing_result.txt

# ---- Task 8 (static analysis) ----
{
  prompt pylint server.py
  python3 -m pylint server.py 2>&1
} | tee $S/8b_static_code_analysis.txt

echo; echo "Done. Output files are in $PWD/$S"
