#!/bin/sh

PATCH_DIR=$1
GDAL_CSHARP_DIR=$2

#patch -i $PATCH_DIR/Band.cs.patch $GDAL_CSHARP_DIR/gdal/Band.cs
#patch -i $PATCH_DIR/Dataset.cs.patch $GDAL_CSHARP_DIR/gdal/Dataset.cs
#patch -i $PATCH_DIR/Driver.cs.patch $GDAL_CSHARP_DIR/gdal/Driver.cs

patch -i $PATCH_DIR/OgrPINVOKE.cs.patch $GDAL_CSHARP_DIR/ogr/OgrPINVOKE.cs
patch -i $PATCH_DIR/OsrPINVOKE.cs.patch $GDAL_CSHARP_DIR/osr/OsrPINVOKE.cs
patch -i $PATCH_DIR/GdalPINVOKE.cs.patch $GDAL_CSHARP_DIR/gdal/GdalPINVOKE.cs
patch -i $PATCH_DIR/GNUMakefile.patch $GDAL_CSHARP_DIR/GNUMakefile

exit 0
