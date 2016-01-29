
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.18' ;
TITLE                     (idx, [1: 41])  = 'black BC, assembly, u235-fuel, u238-water' ;
INPUT_FILE_NAME           (idx, [1:  8])  = 'assembly' ;
START_DATE                (idx, [1: 24])  = 'Thu Apr 10 23:24:18 2014' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu Apr 10 23:50:38 2014' ;

% Run parameters:

POP                       (idx, 1)        = 100000 ;
CYCLES                    (idx, 1)        = 40 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1397197458 ;
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

MIN_MACROXS               (idx, [1:   4]) = [  2.91008E-01 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:  2])  = [  9.00000E-01  9.00000E-01 ];
ST_FRAC                   (idx, [1:   4]) = [  1.96613E-03 0.00177  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.98034E-01 3.5E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.31169E-01 0.00035  0.00000E+00 0.0E+00 ];
IFC_COL_EFF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TMS_SAMPLING_EFF          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.31598E-01 0.00035  0.00000E+00 0.0E+00 ];
TMS_MAJORANT_FAIL         (idx, 1)        =  0.00000E+00 ;
TMS_LIMITS_FAIL           (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  3.14421E+01 0.00054  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  3.14420E+01 0.00054  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.83394E+01 0.00028  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  4.01006E-02 0.00165  0.00000E+00 0.0E+00 ];

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 40 ;
SOURCE_NEUTRONS           (idx, 1)        = 3999991 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  9.99998E+04 0.00074 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  9.99998E+04 0.00074 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  2.63207E+01 ;
RUNNING_TIME              (idx, 1)        =  2.63349E+01 ;
INIT_TIME                 (idx, 1)        =  1.42167E-01 ;
PROCESS_TIME              (idx, [1:  2])  = [  6.66668E-04  6.66668E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.61921E+01  2.61921E+01  0.00000E+00 ];
BURNUP_CYCLE_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
BATEMAN_SOLUTION_TIME     (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.63346E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.99946 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.99642E-01 3.2E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.94503E-01 ;
OMP_AMDAHL_MAX            (idx, 1)        = 1.00 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32105.76 ;
ALLOC_MEMSIZE             (idx, 1)        = 680.43;
MEMSIZE                   (idx, 1)        = 627.16;
XS_MEMSIZE                (idx, 1)        = 26.74;
MAT_MEMSIZE               (idx, 1)        = 8.24;
RES_MEMSIZE               (idx, 1)        = 35.13;
MISC_MEMSIZE              (idx, 1)        = 557.06;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 53.27;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 3 ;
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

NORM_COEF                 (idx, [1:   4]) = [  9.98219E-06 0.00038  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.26243E-01 0.00145 ];
U235_FISS_FRAC            (idx, [1:   2]) = [  9.42731E-01 0.00015 ];
U238_FISS_FRAC            (idx, [1:   2]) = [  5.72693E-02 0.00240 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.90082E-11 0.00022 ];
TOT_POWDENS               (idx, [1:   2]) = [  7.25263E-19 0.00022 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.44443E+00 0.00022 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.86470E-01 0.00022 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  4.13518E-01 0.00031 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.99988E-01 1.6E-06 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98219E-01 0.00038 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.63493E+01 0.00033 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.24939E-05 0.13084 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  3.14354E+01 0.00071 ];
INI_FMASS                 (idx, 1)        =  2.62087E+01 ;
TOT_FMASS                 (idx, 1)        =  2.62087E+01 ;

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.44704E+00 0.00046  1.43697E+00 0.00040  1.01456E-02 0.00745 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.44699E+00 0.00022 ];
COL_KEFF                  (idx, [1:   2]) = [  1.44701E+00 0.00048 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.44699E+00 0.00022 ];
ABS_KINF                  (idx, [1:   2]) = [  1.44701E+00 0.00022 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  4.88812E-03 0.00459  1.37757E-04 0.03877  7.73391E-04 0.01623  7.48619E-04 0.01583  2.29038E-03 0.00829  7.12129E-04 0.01738  2.25844E-04 0.02741 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.77858E-01 0.01470  1.24907E-02 2.4E-06  3.16716E-02 0.00029  1.10084E-01 0.00025  3.20329E-01 0.00026  1.34570E+00 0.00019  8.86761E+00 0.00187 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.15995E-03 0.00679  1.90124E-04 0.05595  1.13294E-03 0.02129  1.10448E-03 0.02465  3.38239E-03 0.01098  1.01826E-03 0.02013  3.31761E-04 0.03653 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.76123E-01 0.01980  1.24907E-02 2.8E-06  3.16719E-02 0.00030  1.10134E-01 0.00036  3.20428E-01 0.00030  1.34553E+00 0.00025  8.87151E+00 0.00218 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.50841E-06 0.00145  3.50753E-06 0.00146  3.63233E-06 0.01461 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.07675E-06 0.00135  5.07548E-06 0.00136  5.25610E-06 0.01463 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.01591E-03 0.00810  1.95178E-04 0.05844  1.10796E-03 0.02038  1.07037E-03 0.02276  3.30224E-03 0.01073  1.02071E-03 0.02140  3.19449E-04 0.02883 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.72332E-01 0.01440  1.24907E-02 3.1E-06  3.16695E-02 0.00038  1.10078E-01 0.00036  3.20339E-01 0.00034  1.34525E+00 0.00022  8.87178E+00 0.00246 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.11676E-06 0.00374  3.11467E-06 0.00374  3.41569E-06 0.03025 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.51001E-06 0.00369  4.50699E-06 0.00369  4.94255E-06 0.03022 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.39372E-03 0.02519  1.85254E-04 0.14764  1.23328E-03 0.07058  1.05722E-03 0.05464  3.47244E-03 0.03291  1.08576E-03 0.06935  3.59756E-04 0.10760 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.95994E-01 0.05219  1.24908E-02 9.8E-06  3.16338E-02 0.00107  1.09963E-01 0.00111  3.20328E-01 0.00083  1.34577E+00 0.00061  8.82004E+00 0.00544 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.37620E-03 0.02352  1.92488E-04 0.14211  1.22177E-03 0.06968  1.06367E-03 0.05320  3.46728E-03 0.03102  1.07320E-03 0.06326  3.57787E-04 0.10074 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.95392E-01 0.05043  1.24908E-02 9.8E-06  3.16460E-02 0.00100  1.09955E-01 0.00101  3.20344E-01 0.00085  1.34556E+00 0.00056  8.82424E+00 0.00500 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -2.37403E+03 0.02480 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.31842E-06 0.00074 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.80185E-06 0.00065 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.08473E-03 0.00435 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -2.13502E+03 0.00443 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.42084E-07 0.00145 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  8.30806E-07 0.00067  8.30595E-07 0.00067  8.59861E-07 0.00729 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.47185E-05 0.00146  1.47411E-05 0.00148  1.16056E-05 0.01592 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  5.60668E-01 0.00060  5.59368E-01 0.00061  8.26330E-01 0.00901 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.02892E+01 0.01548 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.53000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.44655E+00 8.0E-05 ];

% Flux spectrum in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.39645E+01 2.1E-05  2.37746E+00 0.00024 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  1.34031E+00 0.00018  5.34880E+00 7.3E-06 ];
INF_CAPT                  (idx, [1:   4]) = [  1.61145E-02 0.00079  7.92211E-02 0.00018 ];
INF_ABS                   (idx, [1:   4]) = [  3.15026E-02 0.00076  2.35445E-01 0.00038 ];
INF_FISS                  (idx, [1:   4]) = [  1.53881E-02 0.00073  1.56224E-01 0.00049 ];
INF_NSF                   (idx, [1:   4]) = [  3.86275E-02 0.00157  3.80433E-01 0.00070 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.51021E+00 0.00084  2.43518E+00 0.00021 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02763E+02 1.7E-06  2.02024E+02 2.9E-06 ];
INF_INVV                  (idx, [1:   4]) = [  4.48109E-08 0.00038  3.46466E-06 2.2E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  1.30878E+00 0.00019  5.11348E+00 5.7E-06 ];
INF_SCATT1                (idx, [1:   4]) = [  6.07841E-01 0.00017  1.88534E+00 0.00026 ];
INF_SCATT2                (idx, [1:   4]) = [  2.39915E-01 0.00045  7.04385E-01 0.00062 ];
INF_SCATT3                (idx, [1:   4]) = [  1.71368E-02 1.1E-05  2.78553E-01 0.00059 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.65515E-02 0.00101  1.25374E-01 0.00137 ];
INF_SCATT5                (idx, [1:   4]) = [  1.15908E-03 0.01820  6.81274E-02 0.00360 ];
INF_SCATT6                (idx, [1:   4]) = [  1.41793E-02 0.00449  4.39442E-02 0.00113 ];
INF_SCATT7                (idx, [1:   4]) = [  2.68071E-03 0.00426  3.15651E-02 0.00554 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  1.30889E+00 0.00019  5.11348E+00 5.7E-06 ];
INF_SCATTP1               (idx, [1:   4]) = [  6.07842E-01 0.00017  1.88534E+00 0.00026 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.39915E-01 0.00045  7.04385E-01 0.00062 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.71380E-02 1.1E-05  2.78553E-01 0.00059 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.65510E-02 0.00101  1.25374E-01 0.00137 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.15887E-03 0.01856  6.81274E-02 0.00360 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.41786E-02 0.00448  4.39442E-02 0.00113 ];
INF_SCATTP7               (idx, [1:   4]) = [  2.68060E-03 0.00424  3.15651E-02 0.00554 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  5.22551E-01 7.6E-06  2.91412E+00 0.00026 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  6.37896E-01 7.6E-06  1.14386E-01 0.00026 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  3.13904E-02 0.00074  2.35445E-01 0.00038 ];
INF_REMXS                 (idx, [1:   4]) = [  7.17296E-02 4.1E-05  2.36138E-01 9.4E-05 ];

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

INF_S0                    (idx, [1:   8]) = [  1.26858E+00 0.00019  4.02026E-02 0.00035  8.18620E-04 0.01498  5.11266E+00 3.3E-06 ];
INF_S1                    (idx, [1:   8]) = [  5.92231E-01 0.00017  1.56097E-02 0.00026  4.18903E-04 0.02252  1.88492E+00 0.00026 ];
INF_S2                    (idx, [1:   8]) = [  2.43463E-01 0.00049 -3.54821E-03 0.00328  3.10932E-04 0.03931  7.04074E-01 0.00064 ];
INF_S3                    (idx, [1:   8]) = [  2.45997E-02 0.00050 -7.46286E-03 0.00161  2.36353E-04 0.04217  2.78317E-01 0.00062 ];
INF_S4                    (idx, [1:   8]) = [ -2.34478E-02 0.00107 -3.10366E-03 0.00058  1.69237E-04 0.05314  1.25204E-01 0.00144 ];
INF_S5                    (idx, [1:   8]) = [  8.36455E-04 0.02859  3.22622E-04 0.00872  1.07369E-04 0.04719  6.80200E-02 0.00353 ];
INF_S6                    (idx, [1:   8]) = [  1.34524E-02 0.00481  7.26918E-04 0.00145  5.60924E-05 0.07949  4.38881E-02 0.00103 ];
INF_S7                    (idx, [1:   8]) = [  2.53928E-03 0.00457  1.41427E-04 0.00124  2.28504E-05 0.31637  3.15422E-02 0.00531 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  1.26869E+00 0.00019  4.02026E-02 0.00035  8.18620E-04 0.01498  5.11266E+00 3.3E-06 ];
INF_SP1                   (idx, [1:   8]) = [  5.92232E-01 0.00017  1.56097E-02 0.00026  4.18903E-04 0.02252  1.88492E+00 0.00026 ];
INF_SP2                   (idx, [1:   8]) = [  2.43463E-01 0.00049 -3.54821E-03 0.00328  3.10932E-04 0.03931  7.04074E-01 0.00064 ];
INF_SP3                   (idx, [1:   8]) = [  2.46009E-02 0.00050 -7.46286E-03 0.00161  2.36353E-04 0.04217  2.78317E-01 0.00062 ];
INF_SP4                   (idx, [1:   8]) = [ -2.34474E-02 0.00107 -3.10366E-03 0.00058  1.69237E-04 0.05314  1.25204E-01 0.00144 ];
INF_SP5                   (idx, [1:   8]) = [  8.36245E-04 0.02908  3.22622E-04 0.00872  1.07369E-04 0.04719  6.80200E-02 0.00353 ];
INF_SP6                   (idx, [1:   8]) = [  1.34517E-02 0.00481  7.26918E-04 0.00145  5.60924E-05 0.07949  4.38881E-02 0.00103 ];
INF_SP7                   (idx, [1:   8]) = [  2.53917E-03 0.00455  1.41427E-04 0.00124  2.28504E-05 0.31637  3.15422E-02 0.00531 ];

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

