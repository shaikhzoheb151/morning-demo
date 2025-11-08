#!/bin/bash
cal_area() {
area=$(($1 * $2))
echo "Area is : $area"
}

cal_area  10 20
cal_area  21 21 
cal_area  67 20

