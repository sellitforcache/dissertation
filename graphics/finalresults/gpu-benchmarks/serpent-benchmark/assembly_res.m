
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.21' ;
TITLE                     (idx, [1: 41])  = 'black BC, assembly, u235-fuel, u238-water' ;
INPUT_FILE_NAME           (idx, [1:  8])  = 'assembly' ;
START_DATE                (idx, [1: 24])  = 'Thu Mar 26 06:51:31 2015' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu Mar 26 06:56:17 2015' ;

% Run parameters:

POP                       (idx, 1)        = 100000 ;
CYCLES                    (idx, 1)        = 40 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1427377891 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ];
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;
DEBUG                     (idx, 1)        = 0 ;
CPU_TYPE                  (idx, [1: 30])  = 'AMD Opteron(tm) Processor 6172' ;
CPU_MHZ                   (idx, 1)        = 800.0 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 8 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:   8]) = [  1.06448E+00  9.94459E-01  9.86792E-01  9.87861E-01  9.95113E-01  1.00056E+00  9.83839E-01  9.86896E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 51])  = '/usr/local/SERPENT/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
SFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;
BRA_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  2.91008E-01 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.96070E-03 0.00184  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.98039E-01 3.6E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.31082E-01 0.00034  0.00000E+00 0.0E+00 ];
IFC_COL_EFF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TMS_SAMPLING_EFF          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.31509E-01 0.00034  0.00000E+00 0.0E+00 ];
TMS_MAJORANT_FAIL         (idx, 1)        =  0.00000E+00 ;
TMS_LIMITS_FAIL           (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  3.14495E+01 0.00053  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  3.14495E+01 0.00053  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.83508E+01 0.00026  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.00721E-02 0.00186  0.00000E+00 0.0E+00 ];

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 40 ;
SOURCE_NEUTRONS           (idx, 1)        = 4000716 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00018E+05 0.00065 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00018E+05 0.00065 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  3.72925E+01 ;
RUNNING_TIME              (idx, 1)        =  4.75775E+00 ;
INIT_TIME                 (idx, [1:  2])  = [  7.49333E-02  7.49333E-02 ];
PROCESS_TIME              (idx, [1:  2])  = [  5.00003E-04  5.00003E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.68228E+00  4.68228E+00  0.00000E+00 ];
BURNUP_CYCLE_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
BATEMAN_SOLUTION_TIME     (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.75738E+00  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 7.83826 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  7.91855E+00 0.00446 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.62980E-01 ;
OMP_AMDAHL_MAX            (idx, 1)        = 6.35 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 193689.58 ;
ALLOC_MEMSIZE             (idx, 1)        = 1310.44;
MEMSIZE                   (idx, 1)        = 640.25;
XS_MEMSIZE                (idx, 1)        = 38.33;
MAT_MEMSIZE               (idx, 1)        = 8.99;
RES_MEMSIZE               (idx, 1)        = 35.65;
MISC_MEMSIZE              (idx, 1)        = 557.28;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 670.19;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 3 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 97965 ;
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

NORM_COEF                 (idx, [1:   4]) = [  9.97913E-06 0.00032  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.26288E-01 0.00142 ];
U235_FISS_FRAC            (idx, [1:   2]) = [  9.42765E-01 0.00014 ];
U238_FISS_FRAC            (idx, [1:   2]) = [  5.72348E-02 0.00234 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.90077E-11 0.00028 ];
TOT_POWDENS               (idx, [1:   2]) = [  7.25244E-19 0.00028 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.44443E+00 0.00028 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.86454E-01 0.00028 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  4.13529E-01 0.00040 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.99983E-01 1.8E-06 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.97913E-01 0.00032 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.63487E+01 0.00035 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.69593E-05 0.10555 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  3.14326E+01 0.00072 ];
INI_FMASS                 (idx, 1)        =  2.62087E+01 ;
TOT_FMASS                 (idx, 1)        =  2.62087E+01 ;

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.46298E+00 1.5E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02295E+02 1.5E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.44718E+00 0.00047  1.43706E+00 0.00043  1.01265E-02 0.00810 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.44700E+00 0.00029 ];
COL_KEFF                  (idx, [1:   2]) = [  1.44745E+00 0.00042 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.44700E+00 0.00029 ];
ABS_KINF                  (idx, [1:   2]) = [  1.44703E+00 0.00029 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  4.90304E-03 0.00578  1.33663E-04 0.03749  7.80696E-04 0.01481  7.76861E-04 0.01427  2.25045E-03 0.00815  7.31687E-04 0.01342  2.29681E-04 0.02641 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.86177E-01 0.01313  1.24907E-02 2.3E-06  3.16729E-02 0.00020  1.10144E-01 0.00027  3.20506E-01 0.00022  1.34625E+00 0.00018  8.87566E+00 0.00145 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.10697E-03 0.00861  1.96599E-04 0.05292  1.12469E-03 0.01816  1.15958E-03 0.02062  3.21231E-03 0.01305  1.07559E-03 0.01943  3.38188E-04 0.03401 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.93409E-01 0.01719  1.24907E-02 2.6E-06  3.16759E-02 0.00023  1.10104E-01 0.00033  3.20570E-01 0.00029  1.34579E+00 0.00026  8.87240E+00 0.00217 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.49266E-06 0.00172  3.49111E-06 0.00172  3.71017E-06 0.01694 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.05446E-06 0.00158  5.05221E-06 0.00158  5.36931E-06 0.01693 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.06658E-03 0.00792  1.97384E-04 0.05013  1.13066E-03 0.02210  1.11508E-03 0.01854  3.22406E-03 0.01259  1.05860E-03 0.02111  3.40791E-04 0.03528 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.98612E-01 0.01830  1.24907E-02 3.2E-06  3.16657E-02 0.00029  1.10130E-01 0.00039  3.20576E-01 0.00029  1.34604E+00 0.00024  8.86862E+00 0.00171 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.10933E-06 0.00336  3.10829E-06 0.00336  3.25899E-06 0.02978 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.49970E-06 0.00328  4.49819E-06 0.00327  4.71640E-06 0.02978 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.28398E-03 0.02739  2.06882E-04 0.12688  1.17147E-03 0.05559  1.16035E-03 0.05806  3.40016E-03 0.03657  1.01454E-03 0.06906  3.30581E-04 0.11044 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.69401E-01 0.05929  1.24908E-02 9.2E-06  3.16730E-02 0.00080  1.10162E-01 0.00113  3.20141E-01 0.00086  1.34560E+00 0.00059  8.84464E+00 0.00643 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.30240E-03 0.02739  2.09993E-04 0.12968  1.17852E-03 0.05588  1.16763E-03 0.05662  3.40674E-03 0.03703  1.02350E-03 0.06783  3.16017E-04 0.10780 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.50140E-01 0.05674  1.24908E-02 1.0E-05  3.16756E-02 0.00078  1.10157E-01 0.00109  3.20202E-01 0.00082  1.34523E+00 0.00062  8.85076E+00 0.00636 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -2.34313E+03 0.02716 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.29904E-06 0.00089 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77427E-06 0.00070 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.06957E-03 0.00506 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -2.14287E+03 0.00486 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.42069E-07 0.00145 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  8.31616E-07 0.00070  8.31447E-07 0.00070  8.54755E-07 0.00694 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.47146E-05 0.00147  1.47368E-05 0.00147  1.16769E-05 0.01882 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  5.60956E-01 0.00046 -1.94201E-03 0.00576  1.40591E-05 0.00977 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  9.99574E+00 0.01434 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.44753E+00 0.00112 ];

% Flux spectrum in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.39714E+01 7.6E-05  2.37739E+00 0.00407 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  1.33962E+00 0.00053  5.34885E+00 0.00082 ];
INF_CAPT                  (idx, [1:   4]) = [  1.61195E-02 0.00018  7.92131E-02 0.00141 ];
INF_ABS                   (idx, [1:   4]) = [  3.15170E-02 0.00027  2.35409E-01 0.00379 ];
INF_FISS                  (idx, [1:   4]) = [  1.53976E-02 0.00036  1.56196E-01 0.00500 ];
INF_NSF                   (idx, [1:   4]) = [  3.86224E-02 0.00044  3.80603E-01 0.00500 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.50835E+00 8.0E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02766E+02 7.3E-06  2.02024E+02 2.9E-06 ];
INF_INVV                  (idx, [1:   4]) = [  4.47800E-08 0.00071  3.46455E-06 0.00067 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  1.30812E+00 0.00054  5.11348E+00 0.00101 ];
INF_SCATT1                (idx, [1:   4]) = [  6.07556E-01 0.00060  1.88538E+00 0.00094 ];
INF_SCATT2                (idx, [1:   4]) = [  2.39820E-01 0.00047  7.03941E-01 0.00061 ];
INF_SCATT3                (idx, [1:   4]) = [  1.71100E-02 0.00332  2.78452E-01 0.00025 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.65346E-02 0.00609  1.25315E-01 0.00215 ];
INF_SCATT5                (idx, [1:   4]) = [  1.18450E-03 0.10178  6.77510E-02 0.00367 ];
INF_SCATT6                (idx, [1:   4]) = [  1.41239E-02 0.00837  4.36728E-02 0.00329 ];
INF_SCATT7                (idx, [1:   4]) = [  2.59125E-03 0.02702  3.15605E-02 0.00584 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  1.30825E+00 0.00054  5.11348E+00 0.00101 ];
INF_SCATTP1               (idx, [1:   4]) = [  6.07557E-01 0.00060  1.88538E+00 0.00094 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.39821E-01 0.00047  7.03941E-01 0.00061 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.71098E-02 0.00324  2.78452E-01 0.00025 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.65345E-02 0.00610  1.25315E-01 0.00215 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.18489E-03 0.10248  6.77510E-02 0.00367 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.41236E-02 0.00835  4.36728E-02 0.00329 ];
INF_SCATTP7               (idx, [1:   4]) = [  2.59165E-03 0.02733  3.15605E-02 0.00584 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  5.22041E-01 0.00059  2.91345E+00 0.00076 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  6.38519E-01 0.00059  1.14412E-01 0.00076 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  3.13873E-02 0.00028  2.35409E-01 0.00379 ];
INF_REMXS                 (idx, [1:   4]) = [  7.16912E-02 0.00041  2.36188E-01 0.00335 ];

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

INF_S0                    (idx, [1:   8]) = [  1.26793E+00 0.00054  4.01900E-02 0.00079  8.17250E-04 0.00590  5.11266E+00 0.00101 ];
INF_S1                    (idx, [1:   8]) = [  5.91947E-01 0.00058  1.56086E-02 0.00150  4.14460E-04 0.01964  1.88496E+00 0.00094 ];
INF_S2                    (idx, [1:   8]) = [  2.43362E-01 0.00045 -3.54190E-03 0.00103  3.07044E-04 0.00882  7.03634E-01 0.00061 ];
INF_S3                    (idx, [1:   8]) = [  2.45698E-02 0.00186 -7.45975E-03 0.00147  2.34654E-04 0.01128  2.78217E-01 0.00026 ];
INF_S4                    (idx, [1:   8]) = [ -2.34283E-02 0.00616 -3.10636E-03 0.00550  1.60661E-04 0.02342  1.25154E-01 0.00213 ];
INF_S5                    (idx, [1:   8]) = [  8.54402E-04 0.12484  3.30100E-04 0.04209  9.60846E-05 0.03071  6.76549E-02 0.00363 ];
INF_S6                    (idx, [1:   8]) = [  1.33906E-02 0.00875  7.33238E-04 0.00155  5.14778E-05 0.13705  4.36213E-02 0.00314 ];
INF_S7                    (idx, [1:   8]) = [  2.44282E-03 0.03379  1.48437E-04 0.08436  1.84727E-05 0.41597  3.15421E-02 0.00608 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  1.26806E+00 0.00054  4.01900E-02 0.00079  8.17250E-04 0.00590  5.11266E+00 0.00101 ];
INF_SP1                   (idx, [1:   8]) = [  5.91949E-01 0.00058  1.56086E-02 0.00150  4.14460E-04 0.01964  1.88496E+00 0.00094 ];
INF_SP2                   (idx, [1:   8]) = [  2.43363E-01 0.00045 -3.54190E-03 0.00103  3.07044E-04 0.00882  7.03634E-01 0.00061 ];
INF_SP3                   (idx, [1:   8]) = [  2.45696E-02 0.00181 -7.45975E-03 0.00147  2.34654E-04 0.01128  2.78217E-01 0.00026 ];
INF_SP4                   (idx, [1:   8]) = [ -2.34281E-02 0.00618 -3.10636E-03 0.00550  1.60661E-04 0.02342  1.25154E-01 0.00213 ];
INF_SP5                   (idx, [1:   8]) = [  8.54788E-04 0.12580  3.30100E-04 0.04209  9.60846E-05 0.03071  6.76549E-02 0.00363 ];
INF_SP6                   (idx, [1:   8]) = [  1.33904E-02 0.00872  7.33238E-04 0.00155  5.14778E-05 0.13705  4.36213E-02 0.00314 ];
INF_SP7                   (idx, [1:   8]) = [  2.44321E-03 0.03412  1.48437E-04 0.08436  1.84727E-05 0.41597  3.15421E-02 0.00608 ];

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

