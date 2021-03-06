#!/bin/bash

DAYS=19
COMMUTE_KM=62
PARENTS_KM=67
KpKM=0.98

PARENTS_MONTH=$(( $PARENTS_KM * 3 * 2 ))
COMMUTE_MONTH=$(( $COMMUTE_KM * $DAYS * 2 ))

TOTAL_KM=$(( $PARENTS_MONTH + $COMMUTE_MONTH))

KCO2=$(echo "$TOTAL_KM * $KpKM" | bc)

echo $KCO2
