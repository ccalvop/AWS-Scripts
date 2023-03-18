#!/bin/bash

# Check if the script is being run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi

# Check if the IP address argument was provided
if [ -z "$1" ]; then
    echo "Please provide the IP address as an argument"
    exit 1
fi

# Set the new IP address
NEW_IP=$1

# Get the current IP address
OLD_IP=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)

# Check if the current IP address matches the new IP address
if [ "$OLD_IP" == "$NEW_IP" ]; then
    echo "The instance is already configured with the provided IP address: $NEW_IP"
    exit 0
fi

# Update the IP address in the network configuration files
sed -i "s/$OLD_IP/$NEW_IP/g" /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i "s/$OLD_IP/$NEW_IP/g" /etc/hosts

# Restart the network service to apply the changes
systemctl restart network

echo "The IP address has been successfully updated from $OLD_IP to $NEW_IP"