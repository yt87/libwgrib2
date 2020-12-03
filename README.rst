libwgrib2
=========

Shared library based on *wgrib2* executable to read/write GRIB2 files.

For the official distribution of *wgrib2*, see

    https://www.cpc.ncep.noaa.gov/products/wesley/wgrib2

This repository is used to build `conda <https://conda.io/>`_ package.
Original ource code is not modified.

The difference between the NCEP distribution and library build by conda is
external libraries. NCEP distribution contains *libaec*, *jasper*,
*libpng*, and optionally *libnetcdf* which are linked statically.
*libwgrib2* relies on libraries provided by conda environment.

*libwgrib2* is available for Linux and MacOS.

Installation
------------

The easiest way to install *libwgrib2* and its dependencies is via conda::

  $ conda install -c yt87 libwgrib2

To build from source, one has to modify the top level makefile. It is
easier to use the NCEP distibution instead.
