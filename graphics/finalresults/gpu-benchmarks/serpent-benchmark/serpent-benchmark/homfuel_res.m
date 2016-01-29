
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.18' ;
TITLE                     (idx, [1: 15])  = 'black BC, water' ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'homfuel' ;
START_DATE                (idx, [1: 24])  = 'Mon Apr 28 21:06:30 2014' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Apr 28 21:20:12 2014' ;

% Run parameters:

POP                       (idx, 1)        = 100000 ;
CYCLES                    (idx, 1)        = 40 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1398744390 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, 1)        = 0 ;
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;
DEBUG                     (idx, 1)        = 0 ;
CPU_TYPE                  (idx, [1: 30])  = 'AMD Opteron(tm) Processor 6128' ;
CPU_MHZ                   (idx, 1)        = 2000.0 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 1 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 51])  = '/usr/local/SERPENT/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  2.30390E-01 2.7E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
IFC_COL_EFF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TMS_SAMPLING_EFF          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TMS_MAJORANT_FAIL         (idx, 1)        =  0.00000E+00 ;
TMS_LIMITS_FAIL           (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  1.83733E+01 0.00016  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.82715E+01 0.00017  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.01776E-01 0.00134  0.00000E+00 0.0E+00 ];

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 40 ;
SOURCE_NEUTRONS           (idx, 1)        = 4000376 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00009E+05 0.00070 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00009E+05 0.00070 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.36843E+01 ;
RUNNING_TIME              (idx, 1)        =  1.36894E+01 ;
INIT_TIME                 (idx, 1)        =  5.24333E-02 ;
PROCESS_TIME              (idx, [1:  2])  = [  2.99998E-04  2.99998E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  1.36366E+01  1.36366E+01  0.00000E+00 ];
BURNUP_CYCLE_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
BATEMAN_SOLUTION_TIME     (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.36890E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.99963 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.99645E-01 5.9E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.90881E-01 ;
OMP_AMDAHL_MAX            (idx, 1)        = 1.00 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32105.76 ;
ALLOC_MEMSIZE             (idx, 1)        = 641.08;
MEMSIZE                   (idx, 1)        = 593.63;
XS_MEMSIZE                (idx, 1)        = 26.74;
MAT_MEMSIZE               (idx, 1)        = 5.24;
RES_MEMSIZE               (idx, 1)        = 4.61;
MISC_MEMSIZE              (idx, 1)        = 557.04;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 47.45;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 2 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 97966 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 4 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 4 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 115 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 0 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;

% Normaliation coefficient:

NORM_COEF                 (idx, [1:   4]) = [  9.98088E-06 0.00033  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.23055E-01 0.00125 ];
U235_FISS_FRAC            (idx, [1:   2]) = [  9.18443E-01 0.00018 ];
U238_FISS_FRAC            (idx, [1:   2]) = [  8.15571E-02 0.00206 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.58962E-11 0.00032 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.21261E+00 0.00032 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.90178E-01 0.00032 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  4.08081E-01 0.00037 ];
TOT_ABSRATE               (idx, [1:   2]) = [  8.98259E-01 0.00021 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98088E-01 0.00033 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.92296E+01 0.00040 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.01741E-01 0.00183 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  1.82736E+01 0.00034 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.21578E+00 0.00055  1.20704E+00 0.00055  8.76452E-03 0.00785 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.21514E+00 0.00032 ];
COL_KEFF                  (idx, [1:   2]) = [  1.21494E+00 0.00047 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.21514E+00 0.00032 ];
ABS_KINF                  (idx, [1:   2]) = [  1.35309E+00 0.00024 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.06051E-03 0.00667  1.64167E-04 0.04096  9.26609E-04 0.01607  9.47279E-04 0.01311  2.81044E-03 0.00969  9.12860E-04 0.01581  2.99158E-04 0.02516 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.14727E-01 0.01336  1.24908E-02 2.9E-06  3.16091E-02 0.00026  1.10448E-01 0.00030  3.21562E-01 0.00026  1.34354E+00 0.00018  8.92045E+00 0.00172 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.30745E-03 0.00951  2.00005E-04 0.05137  1.12936E-03 0.02062  1.13710E-03 0.02289  3.40959E-03 0.01349  1.06156E-03 0.02166  3.69829E-04 0.04554 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.16499E-01 0.02253  1.24909E-02 5.0E-06  3.16221E-02 0.00040  1.10386E-01 0.00052  3.21428E-01 0.00039  1.34342E+00 0.00029  8.89614E+00 0.00241 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.87745E-06 0.00085  1.87569E-06 0.00086  2.11893E-06 0.01324 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.28255E-06 0.00085  2.28042E-06 0.00086  2.57617E-06 0.01325 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.21089E-03 0.00773  1.93830E-04 0.05373  1.11342E-03 0.02244  1.12764E-03 0.01972  3.33150E-03 0.01185  1.08413E-03 0.02082  3.60365E-04 0.03656 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.19602E-01 0.01819  1.24908E-02 3.9E-06  3.16169E-02 0.00039  1.10402E-01 0.00056  3.21549E-01 0.00037  1.34316E+00 0.00027  8.93928E+00 0.00267 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.88378E-06 0.00317  1.88204E-06 0.00313  2.12227E-06 0.02944 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.29020E-06 0.00301  2.28809E-06 0.00297  2.58003E-06 0.02935 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.39423E-03 0.02795  2.39193E-04 0.13786  1.11887E-03 0.06460  1.07404E-03 0.08030  3.50267E-03 0.03739  1.04883E-03 0.06639  4.10623E-04 0.12036 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.62777E-01 0.06482  1.24908E-02 9.5E-06  3.15388E-02 0.00146  1.10421E-01 0.00164  3.21721E-01 0.00120  1.34419E+00 0.00068  9.01306E+00 0.00828 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.44611E-03 0.02613  2.23154E-04 0.13177  1.10030E-03 0.05965  1.06943E-03 0.07461  3.56966E-03 0.03395  1.05801E-03 0.06184  4.25555E-04 0.12439 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.71658E-01 0.06565  1.24908E-02 9.4E-06  3.15394E-02 0.00133  1.10439E-01 0.00156  3.21646E-01 0.00110  1.34392E+00 0.00067  9.03145E+00 0.00821 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.93037E+03 0.02817 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.88496E-06 0.00113 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.29167E-06 0.00094 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.32106E-03 0.00338 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.88422E+03 0.00374 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  7.81548E-08 0.00074 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.59422E-06 0.00073  1.59434E-06 0.00073  1.58044E-06 0.00758 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  3.35079E-06 0.00079  3.35089E-06 0.00082  3.33651E-06 0.01160 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  2.55453E-01 0.00082  2.54902E-01 0.00082  3.46713E-01 0.01440 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.00142E+01 0.01354 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.53000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.35306E+00 0.00024 ];

% Flux spectrum in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.87865E+01 2.0E-06  4.34209E-01 0.00109 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  9.26498E-01 8.2E-05  1.99401E+00 0.00031 ];
INF_CAPT                  (idx, [1:   4]) = [  1.91186E-02 4.9E-05  1.12327E-01 0.00073 ];
INF_ABS                   (idx, [1:   4]) = [  3.42987E-02 7.4E-05  5.83983E-01 0.00077 ];
INF_FISS                  (idx, [1:   4]) = [  1.51801E-02 0.00010  4.71657E-01 0.00078 ];
INF_NSF                   (idx, [1:   4]) = [  3.79763E-02 0.00060  1.14982E+00 0.00105 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.50172E+00 0.00071  2.43784E+00 0.00027 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02684E+02 9.5E-07  2.02028E+02 2.6E-05 ];
INF_INVV                  (idx, [1:   4]) = [  3.45930E-08 0.00051  1.96454E-06 0.00074 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  8.92183E-01 9.3E-05  1.41033E+00 2.0E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  3.56878E-01 2.5E-05  5.19739E-01 0.00228 ];
INF_SCATT2                (idx, [1:   4]) = [  1.42267E-01 0.00071  2.07898E-01 0.00361 ];
INF_SCATT3                (idx, [1:   4]) = [  1.30515E-02 0.00012  6.46131E-02 0.01041 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.23566E-02 0.00288  1.28913E-02 0.05797 ];
INF_SCATT5                (idx, [1:   4]) = [  2.58460E-03 0.01683 -6.43811E-04 1.00000 ];
INF_SCATT6                (idx, [1:   4]) = [  8.92720E-03 0.00568 -1.44641E-03 0.04716 ];
INF_SCATT7                (idx, [1:   4]) = [  1.41624E-03 0.02833  2.25521E-04 0.28032 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  8.92280E-01 9.2E-05  1.41033E+00 2.0E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.56880E-01 2.3E-05  5.19739E-01 0.00228 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.42267E-01 0.00071  2.07898E-01 0.00361 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.30520E-02 0.00011  6.46131E-02 0.01041 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.23560E-02 0.00295  1.28913E-02 0.05797 ];
INF_SCATTP5               (idx, [1:   4]) = [  2.58450E-03 0.01682 -6.43811E-04 1.00000 ];
INF_SCATTP6               (idx, [1:   4]) = [  8.92730E-03 0.00567 -1.44641E-03 0.04716 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.41667E-03 0.02827  2.25521E-04 0.28032 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  4.25517E-01 0.00019  1.33007E+00 0.00067 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  7.83360E-01 0.00019  2.50613E-01 0.00067 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  3.42016E-02 8.4E-05  5.83983E-01 0.00077 ];
INF_REMXS                 (idx, [1:   4]) = [  4.79391E-02 0.00012  5.86320E-01 0.00120 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  8.78558E-01 9.3E-05  1.36243E-02 7.3E-05  2.63697E-03 0.02004  1.40769E+00 5.8E-05 ];
INF_S1                    (idx, [1:   8]) = [  3.51843E-01 2.4E-05  5.03497E-03 0.00011  8.96192E-04 0.01570  5.18842E-01 0.00231 ];
INF_S2                    (idx, [1:   8]) = [  1.43636E-01 0.00071 -1.36929E-03 0.00124  6.68784E-04 0.03500  2.07229E-01 0.00351 ];
INF_S3                    (idx, [1:   8]) = [  1.55783E-02 0.00039 -2.52684E-03 0.00176  4.79213E-04 0.05976  6.41339E-02 0.01004 ];
INF_S4                    (idx, [1:   8]) = [ -1.14125E-02 0.00295 -9.44029E-04 0.00206  3.76610E-04 0.11159  1.25147E-02 0.05636 ];
INF_S5                    (idx, [1:   8]) = [  2.40079E-03 0.01621  1.83803E-04 0.02490  2.16874E-04 0.04018 -8.60685E-04 0.74864 ];
INF_S6                    (idx, [1:   8]) = [  8.67783E-03 0.00507  2.49368E-04 0.02692  1.32867E-04 0.06886 -1.57927E-03 0.03740 ];
INF_S7                    (idx, [1:   8]) = [  1.38208E-03 0.02469  3.41526E-05 0.17555  6.17889E-05 0.09509  1.63732E-04 0.42199 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  8.78656E-01 9.3E-05  1.36243E-02 7.3E-05  2.63697E-03 0.02004  1.40769E+00 5.8E-05 ];
INF_SP1                   (idx, [1:   8]) = [  3.51845E-01 2.2E-05  5.03497E-03 0.00011  8.96192E-04 0.01570  5.18842E-01 0.00231 ];
INF_SP2                   (idx, [1:   8]) = [  1.43636E-01 0.00072 -1.36929E-03 0.00124  6.68784E-04 0.03500  2.07229E-01 0.00351 ];
INF_SP3                   (idx, [1:   8]) = [  1.55789E-02 0.00038 -2.52684E-03 0.00176  4.79213E-04 0.05976  6.41339E-02 0.01004 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14120E-02 0.00303 -9.44029E-04 0.00206  3.76610E-04 0.11159  1.25147E-02 0.05636 ];
INF_SP5                   (idx, [1:   8]) = [  2.40069E-03 0.01620  1.83803E-04 0.02490  2.16874E-04 0.04018 -8.60685E-04 0.74864 ];
INF_SP6                   (idx, [1:   8]) = [  8.67793E-03 0.00506  2.49368E-04 0.02692  1.32867E-04 0.06886 -1.57927E-03 0.03740 ];
INF_SP7                   (idx, [1:   8]) = [  1.38252E-03 0.02463  3.41526E-05 0.17555  6.17889E-05 0.09509  1.63732E-04 0.42199 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectrum in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

