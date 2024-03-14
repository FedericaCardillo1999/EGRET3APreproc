# EGRET3APreproc

![Preprocessing Image](images/preprocessing.jpg)

## The overview  
This preprocessing pipeline is tailored for handling anatomical and functional MRI data collected using a 3T machine. We employ the Habrok cluster at the University Medical Center Groningen (UMCG), University of Groningen, The Netherlands, to carry out these tasks. The execution of various pipeline steps relies on an existing repository, the Linescanning.
For general information about the cluster, visit: https://wiki.hpc.rug.nl/habrok/introduction/what_is_a_cluster. 
For additional details on linescanning, visit: https://linescanning.readthedocs.io/en/latest/index.html#.

### The Hábrók Cluster Installation

Access to the Hábrók cluster is open to all university staff upon request. Students can also obtain access if it is necessary for their courses, bachelor's, or master's research projects, provided they furnish project details, including the supervisor or teacher's name. To request access, you must complete the online form available on the CIT self-service portal Iris at: https://iris.service.rug.nl/. 
The form is located under "Research and innovation support," "Computing & facilities," and "Computing (Hábrók, Merlin)." Alternatively, you can search for "Habrok." The form requires your name and university account number, along with a brief description of why access is needed. 



- Install Python 3.9.6

```python
# Access your home directory  
cd homexx/pxxxxxx/ 

# Unload pre-existing modules
module purge

# Load the Python module
module load Python/3.9.6-GCCcore-11.2.0-bare

# Verify the installation
module list
python3 —version 
```

- Set up a virutal enviroment in your home directory

```python
# Create the virtual enviroment 
python3 -m venv $HOME/venvs/preproc

# Activate the virtual enviroment
source $HOME/venvs/preproc/bin/activate

# Update pip and wheel
pip install --upgrade pip
pip install --upgrade wheel
```

- Update your bash_profile

```bash
# Example Bash code
$ python preprocessing_script.py
```

## The Linescanning Repository Installation

The preprocessing steps are executed using an existing repository known as linescanning created by the Spinoza Centre for Neuroimgaging in Amsterdam, The Netherlands. The primary objective of this package is to generate highly accurate segmentations (both volumetric and surface) by integrating various software packages such as fMRIprep, FreeSurfer, CAT12, and SPM. 

- Clone the linescanning repository
  
```python
# Example Python code
import preprocessing_tool

# Your code here
```

- Install the necessary requirements
  
```python
# Example Python code
import preprocessing_tool

# Your code here
```

- Verify the installation

```python
# Example Python code
import preprocessing_tool

# Your code here
```
  
- Move the setup file

```python
# Example Python code
import preprocessing_tool

# Your code here
```

- Move the license file

```python
# Example Python code
import preprocessing_tool

# Your code here
```

- Install the required packages (some of which are available in the Hábrók cluster

- Personalize the spinoza_setup file

```python
# Example Python code
import preprocessing_tool

# Your code here
```

## Usage

Refer to the respective README file for specific instructions on how to use each tool.

## Contributing

Contributions are welcome! If you have any ideas for new preprocessing scripts/tools or improvements to existing ones, feel free to open an issue or submit a pull request.

Please adhere to the following guidelines when contributing:

Follow the existing coding style and conventions.
Ensure any new code is well-documented.
Test your changes thoroughly.

## License

This repository is licensed under the MIT License.
