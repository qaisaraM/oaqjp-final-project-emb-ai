# Emotion Detector – Final Project (oaqjp-final-project-emb-ai)

## Folder layout
```
final_project/
├── EmotionDetection/        __init__.py + emotion_detection.py  (final version, Task 4 + 7)
├── templates/index.html     web page
├── static/mywebscript.js    front-end script
├── server.py                Flask app (final version, Task 6 + 7 + 8)
├── test_emotion_detection.py  unit tests (Task 5)
├── stage_files/             helper used by run_in_lab.sh
├── run_in_lab.sh            generates the terminal-output files
└── submission_files/        one file per question (see table)
```

## Submission files
| Question | File |
|---|---|
| 2a | 2a_emotion_detection.py |
| 2b | 2b_application_creation.txt (generated) |
| 3a | 3a_output_formatting.py |
| 3b | 3b_formatted_output_test.txt (generated) |
| 4a | GitHub URL of EmotionDetection/__init__.py |
| 4b | 4b_packaging_test.txt (generated) |
| 5a | 5a_unit_testing.py |
| 5b | 5b_unit_testing_result.txt (generated) |
| 6a | 6a_server.py |
| 6b | 6b_deployment_test.png (screenshot, you take it) |
| 7a | 7a_error_handling_function.py |
| 7b | 7b_error_handling_server.py |
| 7c | 7c_error_handling_interface.png (screenshot, you take it) |
| 8a | 8a_server_modified.py |
| 8b | 8b_static_code_analysis.txt (generated) |

## Steps in the Skills Network lab
1. Upload/unzip so the project sits at `/home/project/final_project`.
2. `cd /home/project/final_project && bash run_in_lab.sh`  → creates 2b, 3b, 4b, 5b, 8b with real output.
3. Start the server: `python3 server.py`, then open the app on port 5000
   (lab "Launch Application" → port 5000).
4. 6b: type e.g. `I love my life`, click the button, screenshot → `6b_deployment_test.png`.
5. 7c: leave the box blank, click the button (shows "Invalid text! Please try again!"),
   screenshot → `7c_error_handling_interface.png`.
6. Push to GitHub (public repo named `oaqjp-final-project-emb-ai`) including `EmotionDetection/__init__.py`.

Note: the Watson service only works from inside the lab, not from a personal computer.
