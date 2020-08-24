#!/usr/bin/python3

import sys
import os
from shutil import copyfile

def make_dest(source):
    d = source.split("/")[3]
    d = d.replace("(", "").replace(")", "").replace(":", "")
    return d.replace(" ", "_") + ".epub"

if __name__ == "__main__":
    source_dir = os.path.join(os.path.dirname(sys.argv[0]), "..", "Books")
    dest_dir = os.path.join(os.getenv("HOME"), "Books")

    print(source_dir, dest_dir)

    for r, d, f in os.walk(source_dir):
        for file in f:
            if '.epub' in file:
                source = os.path.join(r, file)
                dest = os.path.join(dest_dir, make_dest(source))
                print("Copying...", dest)
                copyfile(source, dest)


