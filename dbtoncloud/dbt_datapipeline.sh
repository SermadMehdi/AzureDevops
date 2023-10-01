#!/bin/bash

###################################################################
# This is script file to execute dbt.
#
###################################################################

# We start of finding the directory, which should be the dbt project
# folder, and change into this dbt project folder
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo "Changing to dbt project folder : $SCRIPTPATH"
cd $SCRIPTPATH

#
## initialize snowflake secrets variable
. /dbt_run_init.sh

#
#echo "Here are showing the information of values parsed from the key vault"
#echo "SNOWSQL_ACCOUNT : ${SNOWSQL_ACCOUNT}"
#echo "SNOWSQL_USER : ${SNOWSQL_USER}"
#echo "DBT_PASSWORD : ${DBT_PASSWORD}"
#echo "SNOWSQL_ROLE : ${SNOWSQL_ROLE}"
#echo "SNOWSQL_DATABASE : ${SNOWSQL_DATABASE}"
#echo "SNOWSQL_WAREHOUSE : ${SNOWSQL_WAREHOUSE}"
echo " ------------------------------------- "
echo "$SNOWSQL_ACCOUNT / $SNOWSQL_USER / $DBT_PASSWORD / $SNOWSQL_ROLE / $SNOWSQL_DATABASE / $SNOWSQL_WAREHOUSE "

# Ensure to set the DBT_PROFILE_DIR
export DBT_PROFILES_DIR=./

###
# DBT script which ideally would invoke run/snapshot or other commands.
# For this example, we are just executing the dbt lists command to 
# display the identified model
##

dbt list

echo " ================================= "
echo " Simulating dummy wait time, as if some data transformation is happening ...."
sleep 5m #5 minute

echo " Completed simulated time."
echo " ================================= "
