#! /bin/zsh
pids_str=$(pgrep Chrome)
pids=("${(f)pids_str}")
if [[ ${#pids} -eq 1 ]]
then
echo "No chrome process found at $(date).">>log.txt
else
nProcesses=${#pids[@]}
for i in $(seq 1 $nProcesses)
do
kill -0 $pids[$i]
echo "Killed Processes "$pids[$i]" at "$(date)".">>log.txt
done
fi
