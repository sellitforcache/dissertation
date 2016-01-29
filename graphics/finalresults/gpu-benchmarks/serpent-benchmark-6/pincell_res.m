
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
START_DATE                (idx, [1: 24])  = 'Thu Apr 24 13:08:10 2014' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu Apr 24 19:52:43 2014' ;

% Run parameters:

POP                       (idx, 1)        = 1000000 ;
CYCLES                    (idx, 1)        = 40 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1398370090 ;
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
ST_FRAC                   (idx, [1:   4]) = [  9.16100E-04 0.00058  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.99084E-01 5.3E-07  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  9.63148E-01 1.2E-05  0.00000E+00 0.0E+00 ];
IFC_COL_EFF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TMS_SAMPLING_EFF          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  9.63181E-01 1.2E-05  0.00000E+00 0.0E+00 ];
TMS_MAJORANT_FAIL         (idx, 1)        =  0.00000E+00 ;
TMS_LIMITS_FAIL           (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  6.99869E+01 0.00012  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  6.96892E+01 0.00012  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  2.66397E+00 0.00020  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.00099E-01 0.00014  0.00000E+00 0.0E+00 ];

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 40 ;
SOURCE_NEUTRONS           (idx, 1)        = 40004376 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00011E+06 0.00055 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00011E+06 0.00055 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  4.04424E+02 ;
RUNNING_TIME              (idx, 1)        =  4.04539E+02 ;
INIT_TIME                 (idx, 1)        =  3.48633E-01 ;
PROCESS_TIME              (idx, [1:  2])  = [  4.33334E-04  4.33334E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  4.04190E+02  4.04190E+02  0.00000E+00 ];
BURNUP_CYCLE_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
BATEMAN_SOLUTION_TIME     (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  4.04536E+02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.99972 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.99689E-01 1.7E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.96554E-01 ;
OMP_AMDAHL_MAX            (idx, 1)        = 1.00 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32105.76 ;
ALLOC_MEMSIZE             (idx, 1)        = 5653.72;
MEMSIZE                   (idx, 1)        = 5612.96;
XS_MEMSIZE                (idx, 1)        = 26.74;
MAT_MEMSIZE               (idx, 1)        = 8.24;
RES_MEMSIZE               (idx, 1)        = 8.42;
MISC_MEMSIZE              (idx, 1)        = 5569.56;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 40.77;

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

NORM_COEF                 (idx, [1:   4]) = [  9.99467E-07 0.00011  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.11981E-01 0.00136 ];
U235_FISS_FRAC            (idx, [1:   2]) = [  9.32277E-01 0.00011 ];
U238_FISS_FRAC            (idx, [1:   2]) = [  6.77230E-02 0.00156 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  4.99813E-12 0.00034 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  3.80421E-01 0.00034 ];
TOT_FISSRATE              (idx, [1:   2]) = [  1.54172E-01 0.00035 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  5.48176E-01 0.00012 ];
TOT_ABSRATE               (idx, [1:   2]) = [  7.02348E-01 9.2E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.99467E-01 0.00011 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.61103E+01 9.2E-05 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.97652E-01 0.00022 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  6.96929E+01 0.00011 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  3.80702E-01 0.00043  3.77162E-01 0.00042  3.56289E-03 0.00457 ];
IMP_KEFF                  (idx, [1:   2]) = [  3.80622E-01 0.00034 ];
COL_KEFF                  (idx, [1:   2]) = [  3.80624E-01 0.00037 ];
ABS_KEFF                  (idx, [1:   2]) = [  3.80622E-01 0.00034 ];
ABS_KINF                  (idx, [1:   2]) = [  5.42050E-01 0.00031 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  1.89137E-02 0.00202  5.38727E-04 0.01065  3.00653E-03 0.00456  2.94501E-03 0.00506  8.65415E-03 0.00274  2.84043E-03 0.00508  9.28850E-04 0.00923 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.08580E-01 0.00471  1.24908E-02 8.9E-07  3.16418E-02 6.7E-05  1.10251E-01 8.8E-05  3.20934E-01 7.5E-05  1.34489E+00 5.4E-05  8.90348E+00 0.00057 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  9.48342E-03 0.00462  2.94305E-04 0.01782  1.50462E-03 0.00983  1.49887E-03 0.01050  4.29628E-03 0.00627  1.43017E-03 0.00966  4.59167E-04 0.01667 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.01631E-01 0.00874  1.24908E-02 1.7E-06  3.16446E-02 0.00013  1.10237E-01 0.00022  3.20914E-01 0.00020  1.34505E+00 0.00011  8.89056E+00 0.00113 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  6.65607E-05 0.00072  6.65657E-05 0.00072  6.60137E-05 0.00901 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.53396E-05 0.00066  2.53415E-05 0.00066  2.51315E-05 0.00901 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  9.35410E-03 0.00457  2.88618E-04 0.02263  1.49337E-03 0.00909  1.48656E-03 0.00941  4.22457E-03 0.00641  1.40285E-03 0.01059  4.58134E-04 0.01494 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.05085E-01 0.00752  1.24908E-02 1.6E-06  3.16535E-02 0.00015  1.10244E-01 0.00022  3.20951E-01 0.00017  1.34494E+00 9.4E-05  8.89072E+00 0.00126 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  6.63188E-05 0.00190  6.63380E-05 0.00194  6.43279E-05 0.01753 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.52475E-05 0.00184  2.52548E-05 0.00189  2.44879E-05 0.01742 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  9.40169E-03 0.01639  2.44926E-04 0.09129  1.51973E-03 0.03994  1.56118E-03 0.03466  4.20058E-03 0.02347  1.47043E-03 0.03932  4.04846E-04 0.08179 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.58214E-01 0.03994  1.24907E-02 5.5E-06  3.16364E-02 0.00050  1.10356E-01 0.00064  3.20831E-01 0.00053  1.34406E+00 0.00051  8.87275E+00 0.00433 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  9.41884E-03 0.01631  2.50897E-04 0.08687  1.51604E-03 0.03902  1.56174E-03 0.03324  4.22346E-03 0.02380  1.46560E-03 0.03866  4.01111E-04 0.07846 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.53998E-01 0.03777  1.24908E-02 6.7E-06  3.16353E-02 0.00045  1.10364E-01 0.00063  3.20882E-01 0.00052  1.34407E+00 0.00048  8.86358E+00 0.00417 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.41714E+02 0.01614 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  6.65854E-05 0.00050 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.53490E-05 0.00042 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  9.36195E-03 0.00255 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.40603E+02 0.00270 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  2.12928E-06 8.5E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  4.70111E-07 0.00011  4.69989E-07 0.00011  4.84973E-07 0.00146 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  4.24916E-05 0.00017  4.24920E-05 0.00018  4.24461E-05 0.00209 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.98433E-01 8.7E-05  8.07186E-01 8.9E-05  3.44339E-01 0.00325 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.03173E+01 0.00435 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.53000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  5.41979E-01 0.00028 ];

% Flux spectrum in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  7.28864E+00 6.6E-05  8.81661E+00 0.00011 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  2.14823E+00 0.00012  6.12862E+00 8.7E-07 ];
INF_CAPT                  (idx, [1:   4]) = [  3.86344E-03 0.00048  5.89686E-02 1.2E-05 ];
INF_ABS                   (idx, [1:   4]) = [  7.87284E-03 0.00044  7.31347E-02 5.6E-05 ];
INF_FISS                  (idx, [1:   4]) = [  4.00941E-03 0.00040  1.41661E-02 0.00024 ];
INF_NSF                   (idx, [1:   4]) = [  1.04169E-02 0.00065  3.45246E-02 0.00023 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.59812E+00 0.00025  2.43712E+00 1.2E-05 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03712E+02 5.2E-06  2.02023E+02 8.2E-08 ];
INF_INVV                  (idx, [1:   4]) = [  5.41055E-08 0.00011  3.84605E-06 2.0E-06 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  2.14035E+00 0.00012  6.05549E+00 9.9E-07 ];
INF_SCATT1                (idx, [1:   4]) = [  1.21601E+00 0.00012  2.21267E+00 1.2E-05 ];
INF_SCATT2                (idx, [1:   4]) = [  4.73183E-01 0.00013  8.18869E-01 6.1E-05 ];
INF_SCATT3                (idx, [1:   4]) = [  1.89915E-02 0.00167  3.32157E-01 4.1E-05 ];
INF_SCATT4                (idx, [1:   4]) = [ -6.83951E-02 0.00033  1.57608E-01 3.2E-05 ];
INF_SCATT5                (idx, [1:   4]) = [ -5.48132E-03 0.00472  8.88700E-02 7.0E-05 ];
INF_SCATT6                (idx, [1:   4]) = [  2.57842E-02 0.00064  5.77239E-02 6.5E-05 ];
INF_SCATT7                (idx, [1:   4]) = [  4.82709E-03 0.00428  4.11871E-02 9.0E-06 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  2.14041E+00 0.00012  6.05549E+00 9.9E-07 ];
INF_SCATTP1               (idx, [1:   4]) = [  1.21601E+00 0.00012  2.21267E+00 1.2E-05 ];
INF_SCATTP2               (idx, [1:   4]) = [  4.73184E-01 0.00013  8.18869E-01 6.1E-05 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.89918E-02 0.00169  3.32157E-01 4.1E-05 ];
INF_SCATTP4               (idx, [1:   4]) = [ -6.83952E-02 0.00032  1.57608E-01 3.2E-05 ];
INF_SCATTP5               (idx, [1:   4]) = [ -5.48133E-03 0.00471  8.88700E-02 7.0E-05 ];
INF_SCATTP6               (idx, [1:   4]) = [  2.57843E-02 0.00064  5.77239E-02 6.5E-05 ];
INF_SCATTP7               (idx, [1:   4]) = [  4.82686E-03 0.00431  4.11871E-02 9.0E-06 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  5.65378E-01 0.00017  3.48666E+00 3.6E-06 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  5.89576E-01 0.00017  9.56024E-02 3.6E-06 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  7.80923E-03 0.00049  7.31347E-02 5.6E-05 ];
INF_REMXS                 (idx, [1:   4]) = [  1.17646E-01 0.00016  7.33687E-02 0.00017 ];

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

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 2.6E-08  2.50793E-08 1.00000 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  9.99997E-01 3.5E-06  3.49649E-06 1.00000 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  2.03058E+00 0.00012  1.09769E-01 7.7E-05  2.37622E-04 0.00448  6.05525E+00 1.2E-06 ];
INF_S1                    (idx, [1:   8]) = [  1.17193E+00 0.00013  4.40766E-02 0.00028  1.70199E-04 0.00215  2.21250E+00 1.2E-05 ];
INF_S2                    (idx, [1:   8]) = [  4.81977E-01 0.00012 -8.79388E-03 0.00016  1.32010E-04 0.00070  8.18737E-01 6.1E-05 ];
INF_S3                    (idx, [1:   8]) = [  3.93764E-02 0.00103 -2.03849E-02 0.00044  9.97838E-05 0.00338  3.32057E-01 4.0E-05 ];
INF_S4                    (idx, [1:   8]) = [ -5.93512E-02 0.00057 -9.04389E-03 0.00125  6.91015E-05 0.00826  1.57538E-01 3.5E-05 ];
INF_S5                    (idx, [1:   8]) = [ -5.95320E-03 0.00408  4.71877E-04 0.00335  4.27757E-05 0.00571  8.88272E-02 7.3E-05 ];
INF_S6                    (idx, [1:   8]) = [  2.38672E-02 0.00048  1.91695E-03 0.00258  2.28660E-05 0.00607  5.77011E-02 6.2E-05 ];
INF_S7                    (idx, [1:   8]) = [  4.35931E-03 0.00354  4.67783E-04 0.01111  9.06861E-06 0.02720  4.11780E-02 3.0E-06 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  2.03065E+00 0.00012  1.09769E-01 7.7E-05  2.37622E-04 0.00448  6.05525E+00 1.2E-06 ];
INF_SP1                   (idx, [1:   8]) = [  1.17193E+00 0.00013  4.40766E-02 0.00028  1.70199E-04 0.00215  2.21250E+00 1.2E-05 ];
INF_SP2                   (idx, [1:   8]) = [  4.81978E-01 0.00012 -8.79388E-03 0.00016  1.32010E-04 0.00070  8.18737E-01 6.1E-05 ];
INF_SP3                   (idx, [1:   8]) = [  3.93767E-02 0.00104 -2.03849E-02 0.00044  9.97838E-05 0.00338  3.32057E-01 4.0E-05 ];
INF_SP4                   (idx, [1:   8]) = [ -5.93513E-02 0.00056 -9.04389E-03 0.00125  6.91015E-05 0.00826  1.57538E-01 3.5E-05 ];
INF_SP5                   (idx, [1:   8]) = [ -5.95321E-03 0.00407  4.71877E-04 0.00335  4.27757E-05 0.00571  8.88272E-02 7.3E-05 ];
INF_SP6                   (idx, [1:   8]) = [  2.38674E-02 0.00048  1.91695E-03 0.00258  2.28660E-05 0.00607  5.77011E-02 6.2E-05 ];
INF_SP7                   (idx, [1:   8]) = [  4.35908E-03 0.00358  4.67783E-04 0.01111  9.06861E-06 0.02720  4.11780E-02 3.0E-06 ];

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

