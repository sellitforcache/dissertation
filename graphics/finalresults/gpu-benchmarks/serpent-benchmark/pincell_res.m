
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 2.1.18' ;
TITLE                     (idx, [1: 31])  = 'black BC, pin, u235-fuel, water' ;
INPUT_FILE_NAME           (idx, [1:  7])  = 'pincell' ;
START_DATE                (idx, [1: 24])  = 'Wed Apr  9 15:48:24 2014' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Wed Apr  9 16:28:31 2014' ;

% Run parameters:

POP                       (idx, 1)        = 100000 ;
CYCLES                    (idx, 1)        = 40 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1397083704 ;
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
CPU_MHZ                   (idx, 1)        = 2000.1 ;

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
ST_FRAC                   (idx, [1:   4]) = [  9.17939E-04 0.00218  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.99082E-01 2.0E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  9.63147E-01 3.5E-05  0.00000E+00 0.0E+00 ];
IFC_COL_EFF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TMS_SAMPLING_EFF          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  9.63179E-01 3.5E-05  0.00000E+00 0.0E+00 ];
TMS_MAJORANT_FAIL         (idx, 1)        =  0.00000E+00 ;
TMS_LIMITS_FAIL           (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  6.99496E+01 0.00037  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  6.96517E+01 0.00037  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  2.66262E+00 0.00054  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.00380E-01 0.00062  0.00000E+00 0.0E+00 ];

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 40 ;
SOURCE_NEUTRONS           (idx, 1)        = 4001809 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00045E+05 0.00219 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00045E+05 0.00219 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  4.01102E+01 ;
RUNNING_TIME              (idx, 1)        =  4.01208E+01 ;
INIT_TIME                 (idx, 1)        =  1.16633E-01 ;
PROCESS_TIME              (idx, [1:  2])  = [  6.83334E-04  6.83334E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.00035E+01  4.00035E+01  0.00000E+00 ];
BURNUP_CYCLE_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
BATEMAN_SOLUTION_TIME     (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.01204E+01  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.99973 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.99739E-01 1.6E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.95515E-01 ;
OMP_AMDAHL_MAX            (idx, 1)        = 1.00 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32105.76 ;
ALLOC_MEMSIZE             (idx, 1)        = 680.41;
MEMSIZE                   (idx, 1)        = 627.15;
XS_MEMSIZE                (idx, 1)        = 26.74;
MAT_MEMSIZE               (idx, 1)        = 8.24;
RES_MEMSIZE               (idx, 1)        = 35.13;
MISC_MEMSIZE              (idx, 1)        = 557.05;
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

NORM_COEF                 (idx, [1:   4]) = [  9.99517E-06 0.00039  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.11868E-01 0.00364 ];
U235_FISS_FRAC            (idx, [1:   2]) = [  9.32234E-01 0.00034 ];
U238_FISS_FRAC            (idx, [1:   2]) = [  6.77655E-02 0.00473 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  4.99670E-12 0.00119 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  3.80325E-01 0.00117 ];
TOT_FISSRATE              (idx, [1:   2]) = [  1.54128E-01 0.00119 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.47951E-01 0.00041 ];
TOT_ABSRATE               (idx, [1:   2]) = [  7.02080E-01 0.00038 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99517E-01 0.00039 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.61054E+01 0.00032 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.97920E-01 0.00089 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  6.96579E+01 0.00039 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  3.80546E-01 0.00142  3.76954E-01 0.00144  3.58789E-03 0.00995 ];
IMP_KEFF                  (idx, [1:   2]) = [  3.80523E-01 0.00117 ];
COL_KEFF                  (idx, [1:   2]) = [  3.80511E-01 0.00128 ];
ABS_KEFF                  (idx, [1:   2]) = [  3.80523E-01 0.00117 ];
ABS_KINF                  (idx, [1:   2]) = [  5.42111E-01 0.00102 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  1.90799E-02 0.00621  5.27988E-04 0.04155  3.01300E-03 0.01619  2.99373E-03 0.01323  8.80422E-03 0.00851  2.80061E-03 0.01599  9.40360E-04 0.02644 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.08268E-01 0.01470  1.24908E-02 2.1E-06  3.16360E-02 0.00022  1.10262E-01 0.00031  3.21092E-01 0.00022  1.34477E+00 0.00016  8.92069E+00 0.00180 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  9.66662E-03 0.01023  2.73419E-04 0.07702  1.48565E-03 0.03454  1.52542E-03 0.03152  4.40189E-03 0.01751  1.45288E-03 0.03486  5.27352E-04 0.05888 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.58258E-01 0.03267  1.24907E-02 4.4E-06  3.16501E-02 0.00047  1.10238E-01 0.00064  3.21169E-01 0.00053  1.34498E+00 0.00031  8.92198E+00 0.00324 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  6.66276E-05 0.00290  6.66101E-05 0.00297  6.84792E-05 0.02047 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.53523E-05 0.00231  2.53456E-05 0.00238  2.60592E-05 0.02050 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  9.37147E-03 0.01005  2.37888E-04 0.09189  1.44774E-03 0.03388  1.48685E-03 0.03445  4.24486E-03 0.01762  1.44250E-03 0.03850  5.11628E-04 0.05873 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.66653E-01 0.03513  1.24908E-02 5.4E-06  3.16534E-02 0.00051  1.10265E-01 0.00071  3.21249E-01 0.00058  1.34446E+00 0.00041  8.95853E+00 0.00376 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  6.67948E-05 0.00801  6.67836E-05 0.00813  6.40474E-05 0.06002 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.54148E-05 0.00764  2.54105E-05 0.00776  2.43675E-05 0.05986 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  9.89108E-03 0.05039  2.69318E-04 0.34721  1.43412E-03 0.12755  1.63744E-03 0.10462  4.57259E-03 0.06512  1.66190E-03 0.13447  3.15705E-04 0.18729 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.00370E-01 0.09142  1.24908E-02 1.1E-05  3.15956E-02 0.00235  1.10449E-01 0.00240  3.21700E-01 0.00213  1.34309E+00 0.00146  9.05601E+00 0.01381 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  9.93151E-03 0.04668  3.03121E-04 0.33333  1.50253E-03 0.12647  1.64573E-03 0.10362  4.51959E-03 0.06246  1.65812E-03 0.13032  3.02425E-04 0.19376 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  6.84616E-01 0.09210  1.24907E-02 9.7E-06  3.15944E-02 0.00228  1.10532E-01 0.00253  3.21643E-01 0.00204  1.34323E+00 0.00140  9.04823E+00 0.01361 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.48493E+02 0.05169 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  6.67584E-05 0.00177 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.54025E-05 0.00094 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  9.76608E-03 0.00661 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.46315E+02 0.00701 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  2.12866E-06 0.00027 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  4.70241E-07 0.00044  4.70093E-07 0.00045  4.87965E-07 0.00490 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  4.24755E-05 0.00057  4.24753E-05 0.00059  4.25105E-05 0.00681 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.98234E-01 0.00029  8.07041E-01 0.00033  3.45947E-01 0.00794 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.01074E+01 0.01555 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.53000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  5.41902E-01 0.00080 ];

% Flux spectrum in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  7.28927E+00 0.00030  8.81108E+00 0.00113 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  2.14782E+00 5.6E-05  6.12872E+00 2.9E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  3.87456E-03 0.00015  5.89711E-02 0.00010 ];
INF_ABS                   (idx, [1:   4]) = [  7.88438E-03 9.0E-05  7.31409E-02 0.00069 ];
INF_FISS                  (idx, [1:   4]) = [  4.00982E-03 0.00033  1.41698E-02 0.00312 ];
INF_NSF                   (idx, [1:   4]) = [  1.03683E-02 0.00060  3.45669E-02 0.00135 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.58573E+00 0.00093  2.43949E+00 0.00177 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03710E+02 1.8E-06  2.02023E+02 8.2E-07 ];
INF_INVV                  (idx, [1:   4]) = [  5.41015E-08 0.00013  3.84616E-06 2.6E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.13995E+00 5.6E-05  6.05557E+00 3.6E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  1.21570E+00 0.00011  2.21279E+00 1.4E-05 ];
INF_SCATT2                (idx, [1:   4]) = [  4.72919E-01 0.00011  8.18592E-01 0.00021 ];
INF_SCATT3                (idx, [1:   4]) = [  1.87646E-02 0.00732  3.31875E-01 0.00024 ];
INF_SCATT4                (idx, [1:   4]) = [ -6.85369E-02 0.00291  1.57397E-01 0.00012 ];
INF_SCATT5                (idx, [1:   4]) = [ -5.56508E-03 0.03299  8.88966E-02 0.00049 ];
INF_SCATT6                (idx, [1:   4]) = [  2.57562E-02 0.00086  5.79361E-02 0.00047 ];
INF_SCATT7                (idx, [1:   4]) = [  4.86023E-03 0.01225  4.14057E-02 0.00288 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.14001E+00 5.6E-05  6.05557E+00 3.6E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  1.21570E+00 0.00011  2.21279E+00 1.4E-05 ];
INF_SCATTP2               (idx, [1:   4]) = [  4.72919E-01 0.00011  8.18592E-01 0.00021 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.87646E-02 0.00728  3.31875E-01 0.00024 ];
INF_SCATTP4               (idx, [1:   4]) = [ -6.85375E-02 0.00292  1.57397E-01 0.00012 ];
INF_SCATTP5               (idx, [1:   4]) = [ -5.56472E-03 0.03291  8.88966E-02 0.00049 ];
INF_SCATTP6               (idx, [1:   4]) = [  2.57561E-02 0.00082  5.79361E-02 0.00047 ];
INF_SCATTP7               (idx, [1:   4]) = [  4.86040E-03 0.01228  4.14057E-02 0.00288 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  5.65360E-01 2.1E-05  3.48651E+00 0.00013 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  5.89595E-01 2.1E-05  9.56066E-02 0.00013 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  7.82288E-03 0.00025  7.31409E-02 0.00069 ];
INF_REMXS                 (idx, [1:   4]) = [  1.17607E-01 0.00019  7.33936E-02 0.00057 ];

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

INF_S0                    (idx, [1:   8]) = [  2.03021E+00 4.8E-05  1.09737E-01 0.00021  2.36648E-04 0.00719  6.05533E+00 3.6E-05 ];
INF_S1                    (idx, [1:   8]) = [  1.17163E+00 0.00010  4.40663E-02 0.00021  1.69506E-04 0.00565  2.21262E+00 1.5E-05 ];
INF_S2                    (idx, [1:   8]) = [  4.81720E-01 9.4E-05 -8.80164E-03 0.00091  1.32301E-04 0.00318  8.18459E-01 0.00021 ];
INF_S3                    (idx, [1:   8]) = [  3.91464E-02 0.00403 -2.03817E-02 0.00100  9.96230E-05 0.01003  3.31775E-01 0.00024 ];
INF_S4                    (idx, [1:   8]) = [ -5.95174E-02 0.00336 -9.01945E-03 5.2E-05  6.86043E-05 0.00689  1.57329E-01 0.00012 ];
INF_S5                    (idx, [1:   8]) = [ -6.04965E-03 0.02849  4.84570E-04 0.02318  4.20669E-05 0.02212  8.88545E-02 0.00050 ];
INF_S6                    (idx, [1:   8]) = [  2.38476E-02 0.00046  1.90855E-03 0.00583  2.21514E-05 0.05801  5.79139E-02 0.00050 ];
INF_S7                    (idx, [1:   8]) = [  4.41305E-03 0.01143  4.47177E-04 0.02033  8.92913E-06 0.05991  4.13967E-02 0.00287 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  2.03027E+00 4.7E-05  1.09737E-01 0.00021  2.36648E-04 0.00719  6.05533E+00 3.6E-05 ];
INF_SP1                   (idx, [1:   8]) = [  1.17163E+00 0.00010  4.40663E-02 0.00021  1.69506E-04 0.00565  2.21262E+00 1.5E-05 ];
INF_SP2                   (idx, [1:   8]) = [  4.81720E-01 9.5E-05 -8.80164E-03 0.00091  1.32301E-04 0.00318  8.18459E-01 0.00021 ];
INF_SP3                   (idx, [1:   8]) = [  3.91463E-02 0.00401 -2.03817E-02 0.00100  9.96230E-05 0.01003  3.31775E-01 0.00024 ];
INF_SP4                   (idx, [1:   8]) = [ -5.95181E-02 0.00337 -9.01945E-03 5.2E-05  6.86043E-05 0.00689  1.57329E-01 0.00012 ];
INF_SP5                   (idx, [1:   8]) = [ -6.04929E-03 0.02842  4.84570E-04 0.02318  4.20669E-05 0.02212  8.88545E-02 0.00050 ];
INF_SP6                   (idx, [1:   8]) = [  2.38475E-02 0.00041  1.90855E-03 0.00583  2.21514E-05 0.05801  5.79139E-02 0.00050 ];
INF_SP7                   (idx, [1:   8]) = [  4.41323E-03 0.01147  4.47177E-04 0.02033  8.92913E-06 0.05991  4.13967E-02 0.00287 ];

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

