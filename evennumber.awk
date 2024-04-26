#!/bin/awk -f

BEGIN {
    start = 1  # Start of the range
    end = 100  # End of the range

    for (i = start; i <= end; i++) {
        if (i % 2 == 0) {
            print i
        }
    }
}
