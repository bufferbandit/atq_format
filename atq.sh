for j in $(atq | sort -k6,6 -k3,3M -k4,4 -k5,5 |cut -f 1);
        do
                echo -n "$j | ";
                echo -n $(atq | sort -k6,6 -k3,3M -k4,4 -k5,5 |cut -f 2) | echo -n `cut -d ' ' -f 4`;
                echo -n " | ";
                echo `atq |at -c "$j" | tail -n 2`;
        done
