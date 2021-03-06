#!/bin/sh

# How this script should behave:
#
# INPUT:   Paths to one or more fasta sequence files
#
# OUTPUT:  For each file, it should write a line with the number of sequences
#          in the file, a space, and then the file NAME (NOT the path!), and a
#          final line with the total number of sequences across all files.
#
# EXAMPLE: In the same directory as this script, you should find an example
#          fasta file named 'example-seqs1.fasta', which contains:
#
#          >RMB3263_Cyrtodactylus_philippinicus_Negros
#          CGGGCCCATACCCCGAAAATGTTGGTATAAACCCCTTCCTATACTAATAAACCCCATTATTTGATCACTATTACTAAC
#          
#          >CWL052_Cyrtodactylus_philippinicus_Negros
#          CGGGCCCATACCCCGAAAATGTTGGTATAAACCCCTTCCTATACTAATAAACCCCATTATTTGATCACTATTACTAAC
#
#          If you run this script on this fasta file, you want to get the
#          following output:          
#
#          $ sh count-fasta-seqs.sh example-seqs1.fasta
#          2 example-seqs1.fasta
#          2
#
#          There should be another example fasta file named
#          'example-seqs2.fasta', which contains:
#
#          >RMB7155_Sphenomorphus_arborens_Negros
#          ATGAACCCCATTATAACCTCCCTCATTTTATCAAGCCTGGCCCTTGGAACCGTAATCACACTAACAAGCTACCACTGA
#          
#          >RMB7156_Sphenomorphus_arborens_Negros
#          ATGAACCCCATTATAACCTCCCTCATTTTATCAAGCCTGGCCCTTGGAACCGTAATCACACTAACAAGCTACCACTGA
#          
#          >RMB7163_Sphenomorphus_arborens_Negros
#          ATGAACCCCATTATAACCTCCCTCATTTTATCAAGCCTGGCCCTTGGAACCGTAATCACACTAACAAGCTACCACTGA
#
#          If you run this script on BOTH fasta files, you want to get the
#          following output:          
#
#          $ sh count-fasta-seqs.sh example-seqs1.fasta example-seqs2.fasta
#          2 example-seqs1.fasta
#          3 example-seqs2.fasta
#          5
#
#
# Your goal is to work collaboratively with ~ 3 other people to edit this
# script until it passes all the tests that have been written for it. I.e., you
# should be able to run:
#
#   $ sh run_tests.sh
#
# and see 'All tests passed!' at the bottom of the output.
#
# To do this, one member of your group should fork this repository, and add the
# other members as collaborators, so that all members of the team can be
# pulling and pushing changes to the script to the collaborative remote
# repository on Github.
#
# HINTS
# The first thing you need to be able to do is access the paths to the fasta
# files that were 'given to' this script. The variable "$@" will be very useful
# for this. Let's take a look at what it gives us:

# Here i am using a loop to  print the file names, one at a time. 
#for x  in e*.fasta
#do
#    echo $x
#done

#I commented out the oringinal echo command
#echo "$@"

# How are you going to work with each file path?
# HINT: for loop (remember "for do done"?)
#
# To get the name of each file from the path, checkout the command 'basename':
#
#   $ man basename
#
# To count the number of sequences in each file, I recommend you checkout
# 'grep' and 'wc':
#
#   $ man grep 
#   $ man wc 
#
# WARNING about 'grep': ALWAYS quote the string that you are trying to find!
# For example, do:
#
#   $ grep "string I want to find" file-i-want-to-find-it-in.txt
#   **NOT**
#   $ grep string I want to find file-i-want-to-find-it-in.txt # DON'T DO THIS!
#
# To keep a tally of the total number of sequences across all files, 'expr'
# might be useful:
#
#   $ man expr 
#
# Good luck!
#
# ADD YOUR CODE BELOW:

#Krista beigins her grep line below:
#grep ">" #whatever variable we're using for files in the loop | wc -l



#Mursalin added based on room4 students' input 
#For Exercise2 ONLY 
#to run in the command line you have to input 1 or 2 fasta files(will not work for more than 3, use bottom codes)
#For example ./test.sh example-seqs1.fasta example-seqs2.fasta

#!/bin/bash
i=0
for file in $@
do
#echo $file
a=$(echo `basename -a "$file"`)
y=$(grep ">" $file | wc -l)
echo $y $a
i=$((i+y))
done
echo $i

#TO GRAB all the files in the list
#make sure to remove the comments before use

#!/bin/bash
#ls -l | awk -v OFS="," '$1=$1' > dummy4.csv
#x=$(awk -F "," '$9 ~ /.fasta$/ {print $9}' dummy4.csv)

#echo $x

#i=0
#for file in $x
#do
#echo $file
#y=$(grep ">" $file | wc -l)
#echo $y $file
#i=$((i+y))
#done
#echo $i

<<<<<<< HEAD
# Great job everybody! -Randy
>>>>>>> fd012e01fadea5cfbdc3b7f74dde9fe0dd71c79a

#Sarah's comment to test using git and committing/pushing
