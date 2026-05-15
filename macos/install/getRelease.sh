#!/bin/sh

# Synopsis:
#   getRelease.sh <downloadUrl> <arch>
#
# Description:
#   Downloads a release package from the specified URL for a given architecture.
#   The script extracts the version from the filename, creates necessary directories,
#   and downloads the package to a temporary location.
#
# Parameters:
#   downloadUrl - The URL from which to download the release package
#   arch       - The target architecture (e.g., 'arm64' or 'x64')
#
# Return values:
#   0 - Success
#   1 - Error (missing arguments, version extraction failure, or download failure)

# Check if filename and destination are provided as an argument
if [ -z "$2" ]; then
  echo "Usage: $0 <downloadUrl> <arch>"
  exit 1
fi

# get arguments
downloadUrl="$1"
arch="$2"

# Extract filename from URL
filename=${downloadUrl##*/}
echo "filename is $filename"

# do source so environment variables persist
source ./getVersion.sh $filename

# Check if a version was extracted; if not, show an error
if [ -z "$APP_VERSION" ]; then
  echo "Error: Unable to extract version from file name '$downloadUrl'."
  exit 1
fi

echo "Fetching for architecture: $arch from $downloadUrl"

# Create directory for downloaded files
mkdir -p "../temp/zips/$arch"

# Download zip file
echo "Downloading $arch package..."
dest="../temp/zips/$arch/$filename"
curl -L "$downloadUrl" -o "$dest"

if [ $? -ne 0 ]; then
    echo "Error: Failed to download $downloadUrl package to $dest - $?"
    exit 1
fi


    
