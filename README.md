## Overview

`Found` is a simple wrapper script over `locate` and `xdg-open`.  It searches files with `locate` and let you to choose the file to open interactively.

## Usage

Check out `found` and put the script into one of your `PATH` directories.  Call `found` with some terms that appears in the target file name.  For example:

    $ found lamport pdf

Sample output:

    [1] 568998.Lamport - 1998 - The part-time parliament.pdf.xml
    [2] 595489.Lamport - 1998 - The part-time parliament-annotated.pdf.xml
    [3] lamport-paxos.pdf
    [4] Cheap paxos - Lamport, Massa - 2004.pdf
    [5] Consensus on transaction commit - Gray, Lamport - 2006.pdf
    [6] Fast Paxos - Lamport - 2006.pdf
    [7] LATEX A Document Preparation System User's Guide and Reference Manual - Lamport - 1986.pdf
    [8] LaTeX2e The macro package for TeX - Lamport - 1994.pdf
    [9] Paxos made simple - Lamport - 2001.pdf
    [10] Solved problems, unsolved problems and non-problems in concurrency - Lamport - 1985.pdf
    [11] Specifying systems The TLA language and tools for hardware and software engineers - Lamport - 2002.pdf
    [12] The Byzantine Generals Problem - Lamport, Shostak, Pease - 1982.pdf
    [13] The part-time parliament - Lamport - 1998.pdf
    [14] Time, clocks, and the ordering of events in a distributed system - Lamport - 1978.pdf
    [15] Using Time Instead of Timeout for Fault-Tolerant Distributed Systems. - Lamport - 1984.pdf
    [16] Vertical paxos and primary-backup replication - Lamport, Malkhi, Zhou - 2009.pdf

    Which file to open: 

Then you may choose the file to open.

## Behind the scene

`Found` is deadly simple.  First, it joins all the terms from the command line into a `locate` query, e.g.:

    $ found lamport pdf

turns into:

    $ locate -b -i "*lamport*pdf*"

After you specified the file to open, `found` will call `xdg-open` to open the file with the most appropriate program.
