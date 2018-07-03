#!/bin/bash

if [ ! "$KUBECTL_PLUGINS_GLOBAL_FLAG_NAMESPACE" = "" ]
    then
       NS="-n $KUBECTL_PLUGINS_GLOBAL_FLAG_NAMESPACE"
    else
       NS="--all-namespaces"
fi


"$KUBECTL_PLUGINS_CALLER" get pods $NS | grep -v '\s\+\([0-9]\+\)/\1\s\+'

 
