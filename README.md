# Existing Aurora MySQL

Creates a Nullstone datastore to connect to an existing Aurora MySQL cluster.

## When to use

This datastore module is used when connecting Nullstone apps to Aurora MySQL and the cluster already exists in AWS.

## Details

This datastore module configures database administration to allow Nullstone apps access to databases in an Aurora MySQL cluster.
Importing an existing cluster requires:
1. Cluster admin username - Username of the mysql user with admin privileges to the cluster
2. Cluster admin password - Password of the mysql user with admin privileges to the cluster
3. Database identifier - The name of the Aurora cluster in AWS
