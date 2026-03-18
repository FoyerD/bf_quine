import sys
import re

BF_CHARS = set("><+-.,[]")

with open(sys.argv[1]) as f:
    code = f.read()

# keep only what is after START HERE
parts = code.split("START HERE", 1)
code = parts[1] if len(parts) == 2 else ""

# remove multiline { ... } comments
code = re.sub(r'\{.*?\}', '', code, flags=re.S)

# remove ALL whitespace
code = re.sub(r'\s+', '', code)

# keep only BF characters
code = ''.join(c for c in code if c in BF_CHARS)

# generate bigline
bigline = ''.join("+" * ord(c) + ">>>" for c in code)

# write final quine with no whitespace or newlines
with open("quine.bf", "w") as f:
    f.write(">>>" + bigline + code + '\n')
