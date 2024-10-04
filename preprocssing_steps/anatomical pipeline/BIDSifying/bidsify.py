import os
import subprocess

# BIDSify all converted NIfTI files
bidsify_command = [
    "/Volumes/FedericaCardillo/EGRET+/dicom/bidsify-master",
    "-c",
    "/Volumes/FedericaCardillo/EGRET+/data/config.yml",
    "-d",
    "/Volumes/FedericaCardillo/EGRET+/raw_data"
]

subprocess.run(bidsify_command)