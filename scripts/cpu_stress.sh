#!/usr/bin/env bash
set -euo pipefail
python3 - <<'PY'
import multiprocessing, time
def burn():
    x = 0
    end = time.time() + 30
    while time.time() < end:
        x += 1
procs = [multiprocessing.Process(target=burn) for _ in range(multiprocessing.cpu_count())]
[p.start() for p in procs]
[p.join() for p in procs]
PY
echo "CPU stress simulation completed"
