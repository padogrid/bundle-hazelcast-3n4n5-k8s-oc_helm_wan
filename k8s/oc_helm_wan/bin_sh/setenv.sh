#
# Enter app specifics in this file.
#

# Cluster level variables:
# ------------------------
# BASE_DIR - padogrid base dir
# ETC_DIR - Cluster etc dir

# App level variables:
# --------------------
# APPS_DIR - <padogrid>/apps dir
# APP_DIR - App base dir
# APP_ETC_DIR - App etc dir

#
# SED backup prefix
#
if [[ ${OS_NAME} == DARWIN* ]]; then
   # Mac - space required
   __SED_BACKUP=" 0"
else
   __SED_BACKUP="0"
fi

#
# Follow the instructions in README.md using the following environment variable.
#
export HAZELCAST_OPENSHIFT_DIR=$PADOGRID_WORKSPACE/k8s/oc_wan

#
# Default Kubernetes (OpenShift) project names.
#
export PROJECT_WAN1="wan1"
export PROJECT_WAN2="wan2"

#
# Helm Chart reference name.
#
export CHART_REFERENCE_NAME=hazelcast-enterprise
