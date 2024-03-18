from setuptools import setup

#with open("README", 'r') as f:
#    long_description = f.read()

setup(
   name='EGRET3APreproc',
   version='1.0',
   description='Preprocessing anatomical and functional MRI data',
   license="MIT",
   # long_description=long_description,
   author='FedericaCardillo',
   author_email='f.cardillo@umcg.nl',
   url="https://github.com/FedericaCardillo1999/EGRET3APreproc",
   packages=['EGRET3APreproc'],  #same as name
   install_requires=['wheel', 'bar', 'greek']
)
