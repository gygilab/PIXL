#include <stdlib.h>
#include <stdio.h> 
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <ctime>
#include <sys/time.h>
#include "../MSLib/DigestOptions.hpp"
#include "../MSLib/MSMass.hpp"
#include "../MSLib/Proteome.hpp"
#include "../MSLib/Run.hpp"
#include "../MSLib/Search.hpp"

using namespace std;

int main(int argc, char** argv) {
    clock_t start_cpu_time = clock();
    
    timeval cur_wall_time;
    gettimeofday(&cur_wall_time,NULL);
    double start_wall_time = cur_wall_time.tv_sec;

    
    DigestOptions opt(argc, argv);
    MSMass ms(opt);
    Proteome protFasta;
    Run r;
    Search s(r, protFasta);
    
    
    // Turns out clock returns sum time across all procs
    clock_t finish_cpu_time = clock();
    
    gettimeofday(&cur_wall_time,NULL);
    double finish_wall_time = cur_wall_time.tv_sec;
    
    double sum_cpu_secs = double(finish_cpu_time - start_cpu_time) / CLOCKS_PER_SEC; // this is roughly the sum of cpu times
    double wall_time = finish_wall_time - start_wall_time;
    
    double total_PSMs = r.getNumTotalPSMs();
    
    cout << endl;
    cout << "Search Summary:" << endl;
    cout << total_PSMs << " total PSMs" << endl;
    cout << total_PSMs / r.msnSpectra.size() << " PSMs/spectrum on average" << endl;
    cout << "Search took " << wall_time << " wall seconds on " << DigestOptions::maxNumThreads << " cpu(s) running for a total of " << sum_cpu_secs << " seconds" << endl;    
    cout << "averaging " << total_PSMs / sum_cpu_secs << " PSMs/cpu-second" << endl;
    
    return (EXIT_SUCCESS);
}

