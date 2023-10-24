# Mutex Performance Error Testing
## Introduction 

This project explores the performance and behavior of multi-threaded code with and without the use of mutexes to handle critical sections and race conditions. The primary goal is to assess the impact of mutex usage on error rates and execution time, with a focus on varying the parameter NUMN.

## Device Information

- Device: M2 Pro Mac Mini
- CPU: 10 core CPU
- GPU: 19 core GPU
- OS: Ventura 13.3.1
- Compiler: GCC++ version 12

### Key Findings

- The use of mutexes significantly reduces the error rate in the program.
- For a lower value of NUMN (e.g., 1024), there is a chance of achieving a trial with no errors when mutexes are not used, although this is rare.
- As the value of NUMN increases, the probability of achieving error-free trials without mutexes drastically decreases.
- There is a notable difference in execution time between trials using mutexes and those that do not. Mutex-free executions are faster, as they do not incur the overhead of locking and unlocking.

## Results

| NUMN  | USE_MUTEX | NumPopErrors | Error Percentage | Elapsed Time  |
|-------|-----------|--------------|------------------|---------------|
| 1024  | true      | 0            | 0.00%            | 77.00 microseconds |
| 1024  | true      | 0            | 0.00%            | 63.00 microseconds |
| 1024  | false     | 171          | 16.70%           | 66.00 microseconds |
| 1024  | false     | 38           | 3.71%            | 4055.00 microseconds |
| 2048  | true      | 0            | 0.00%            | 80.00 microseconds |
| 2048  | true      | 0            | 0.00%            | 162.00 microseconds |
| 2048  | false     | 422          | 20.61%           | 44200.00 microseconds |
| 2048  | false     | 1037         | 50.63%           | 86384.00 microseconds |
| 4096  | true      | 0            | 0.00%            | 191.00 microseconds |
| 4096  | true      | 0            | 0.00%            | 288.00 microseconds |
| 4096  | false     | 1256         | 30.66%           | 120.00 microseconds |
| 4096  | false     | 2817         | 68.77%           | 154.00 microseconds |
| 8192  | true      | 0            | 0.00%            | 546.00 microseconds |
| 8192  | true      | 0            | 0.00%            | 476.00 microseconds |
| 8192  | false     | 3522         | 42.99%           | 17641.00 microseconds |
| 8192  | false     | 2482         | 30.30%           | 146.00 microseconds |
| 16384 | true      | 0            | 0.00%            | 936.00 microseconds |
| 16384 | true      | 0            | 0.00%            | 809.00 microseconds |
| 16384 | false     | 5779         | 35.27%           | 200.00 microseconds |
| 16384 | false     | 7448         | 45.46%           | 99291.00 microseconds |
| 32768 | true      | 0            | 0.00%            | 1752.00 microseconds |
| 32768 | true      | 0            | 0.00%            | 1893.00 microseconds |
| 32768 | false     | 11642        | 35.53%           | 307.00 microseconds |
| 32768 | false     | 12223        | 37.30%           | 348.00 microseconds |

For more data, refer to the included CSV file.
