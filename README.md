# scanpy_soupx
Repo which takes output from starsolo analysis and analyses it with scanpy and soupx

This repo is designed to run soupx on the output of aligning samples with STARsolo. In order to do this a basic scanpy workflow must also be completed to
cluster the data.

The expected directory structure that this script works on is as followed:
There are 2 top level directories: actions and results

actions contains all of the scripts and sample files (example of sample file can be seen in example-data/sample-file)
results directory contains all of the STARsolo results which are each laid out as followed:

Inside results there will be multiple directories each named after a sample. 

Each sample directory will contain log files: Final.log.out, log.out, log.progress.out

Each sample directory will also contain a output directory.

Within that output directory there will be 3 further directories: Gene, GeneFull and Velocyto.

Gene contains the raw and filtered matrices for just exons of the sample.

GeneFull will contain the raw and filtered matrices for introns and exons in the sample.

Velocyto will contain output of running velocyto on the samples (the RNA velocity of that sample which refers to the state the RNA is in such as post 
transcription etc).

To run this script simply do: ./running_soupx -s /path/to/sample-list -i /path/to/starsolo/results -o /path/to/soupx/output
