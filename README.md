## Installing and using the code assessment tool with cs50.dev

Each student installs this in their own codespace. Installation takes just a few minutes.

### Installation

Step 1: In your terminal, create a new directory:

```
cd
mkdir ~/aiAssessment
cd ~/aiAssessment
```

Step 2: Copy and paste the following two lines into your terminal:

```
wget https://raw.githubusercontent.com/ecamodeo/cs50-assess/main/setup.sh
wget https://raw.githubusercontent.com/ecamodeo/cs50-assess/main/assess
```

Step 3: Execute setup.sh and add the API key when prompted:

```
source setup.sh
```

When prompted for your key, paste the key your teacher provided.

### Using the tool

Assess your understanding of your own program code!

`cd` into the directory that holds the program you want to assess, then run:

```
assess readability.py
```

or with your name:

```
assess caesar.c "Jane Doe"
```

You'll be prompted for your name (if not provided) and your GitHub username. Then answer the AI's questions about your code thoughtfully.

If the AI asks you about distro code, you can tell it a particular function was starter code.

### Submitting the assessment

When the assessment is done, submit your work using the slug shown in your Schoology assignment:

```
submit50 canisiushs/problems/caesar
```

This will upload both your code and your `assessment.json` transcript to your teacher.

### Notes

This is a one-time installation. The `assess` tool will remain available in `cs50.dev` even after restarting your codespace. It may need to be reinstalled if the codespace is rebuilt.
