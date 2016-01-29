
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
START_DATE                (idx, [1: 24])  = 'Thu Apr 24 13:08:03 2014' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Thu Apr 24 17:36:09 2014' ;

% Run parameters:

POP                       (idx, 1)        = 1000000 ;
CYCLES                    (idx, 1)        = 40 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1398370083 ;
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
ST_FRAC                   (idx, [1:   4]) = [  1.96030E-03 0.00050  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.98040E-01 9.9E-07  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.31122E-01 0.00012  0.00000E+00 0.0E+00 ];
IFC_COL_EFF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TMS_SAMPLING_EFF          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.31549E-01 0.00011  0.00000E+00 0.0E+00 ];
TMS_MAJORANT_FAIL         (idx, 1)        =  0.00000E+00 ;
TMS_LIMITS_FAIL           (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  3.14454E+01 0.00016  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  3.14454E+01 0.00016  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.83455E+01 9.4E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.99620E-02 0.00055  0.00000E+00 0.0E+00 ];

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 40 ;
SOURCE_NEUTRONS           (idx, 1)        = 40001245 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00003E+06 0.00021 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00003E+06 0.00021 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  2.68022E+02 ;
RUNNING_TIME              (idx, 1)        =  2.68105E+02 ;
INIT_TIME                 (idx, 1)        =  3.88767E-01 ;
PROCESS_TIME              (idx, [1:  2])  = [  4.49999E-04  4.49999E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  2.67716E+02  2.67716E+02  0.00000E+00 ];
BURNUP_CYCLE_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
BATEMAN_SOLUTION_TIME     (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  2.68101E+02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.99969 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.99645E-01 1.8E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.95593E-01 ;
OMP_AMDAHL_MAX            (idx, 1)        = 1.00 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32105.76 ;
ALLOC_MEMSIZE             (idx, 1)        = 5653.73;
MEMSIZE                   (idx, 1)        = 5612.97;
XS_MEMSIZE                (idx, 1)        = 26.74;
MAT_MEMSIZE               (idx, 1)        = 8.24;
RES_MEMSIZE               (idx, 1)        = 8.42;
MISC_MEMSIZE              (idx, 1)        = 5569.57;
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

NORM_COEF                 (idx, [1:   4]) = [  9.98106E-07 0.00013  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.26166E-01 0.00044 ];
U235_FISS_FRAC            (idx, [1:   2]) = [  9.42651E-01 5.3E-05 ];
U238_FISS_FRAC            (idx, [1:   2]) = [  5.73488E-02 0.00088 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.90087E-11 9.2E-05 ];
TOT_POWDENS               (idx, [1:   2]) = [  7.25283E-19 9.2E-05 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.44448E+00 9.2E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  5.86486E-01 9.2E-05 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  4.13499E-01 0.00013 ];
TOT_ABSRATE               (idx, [1:   2]) = [  9.99985E-01 6.1E-07 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.98106E-01 0.00013 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.63524E+01 0.00012 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.49722E-05 0.04050 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  3.14333E+01 0.00022 ];
INI_FMASS                 (idx, 1)        =  2.62087E+01 ;
TOT_FMASS                 (idx, 1)        =  2.62087E+01 ;

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.44719E+00 0.00015  1.43708E+00 0.00013  1.01975E-02 0.00233 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.44704E+00 9.2E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  1.44722E+00 0.00014 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.44704E+00 9.2E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  1.44706E+00 9.2E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  4.90692E-03 0.00163  1.43525E-04 0.01093  7.82411E-04 0.00522  7.61046E-04 0.00456  2.25273E-03 0.00258  7.24629E-04 0.00512  2.42579E-04 0.00748 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.07092E-01 0.00401  1.24907E-02 7.3E-07  3.16655E-02 7.1E-05  1.10117E-01 8.3E-05  3.20393E-01 7.3E-05  1.34607E+00 5.5E-05  8.87462E+00 0.00045 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.10752E-03 0.00231  2.09688E-04 0.01488  1.12962E-03 0.00708  1.10208E-03 0.00638  3.25690E-03 0.00384  1.05512E-03 0.00790  3.54117E-04 0.01125 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.11534E-01 0.00523  1.24908E-02 1.1E-06  3.16621E-02 9.4E-05  1.10123E-01 0.00013  3.20441E-01 0.00011  1.34595E+00 7.8E-05  8.88104E+00 0.00057 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  3.48950E-06 0.00047  3.48866E-06 0.00048  3.60732E-06 0.00417 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.04994E-06 0.00047  5.04874E-06 0.00047  5.22046E-06 0.00418 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.04127E-03 0.00235  2.05431E-04 0.01323  1.12989E-03 0.00695  1.08812E-03 0.00524  3.23041E-03 0.00365  1.03891E-03 0.00640  3.48499E-04 0.01219 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.07192E-01 0.00624  1.24908E-02 1.0E-06  3.16638E-02 0.00010  1.10135E-01 0.00012  3.20417E-01 0.00010  1.34596E+00 6.3E-05  8.87438E+00 0.00063 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  3.11207E-06 0.00164  3.11069E-06 0.00164  3.30809E-06 0.00962 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  4.50373E-06 0.00161  4.50174E-06 0.00161  4.78742E-06 0.00962 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.01478E-03 0.00814  1.89503E-04 0.04281  1.12329E-03 0.01846  1.13164E-03 0.02086  3.18822E-03 0.01023  1.02583E-03 0.02057  3.56279E-04 0.02945 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  8.16247E-01 0.01657  1.24908E-02 3.4E-06  3.16624E-02 0.00030  1.10149E-01 0.00033  3.20519E-01 0.00027  1.34575E+00 0.00019  8.85544E+00 0.00166 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.02214E-03 0.00793  1.86410E-04 0.04401  1.11885E-03 0.01791  1.13335E-03 0.02047  3.19986E-03 0.01040  1.02255E-03 0.01935  3.61130E-04 0.03060 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  8.21356E-01 0.01747  1.24908E-02 3.2E-06  3.16607E-02 0.00028  1.10150E-01 0.00033  3.20506E-01 0.00027  1.34566E+00 0.00019  8.85668E+00 0.00156 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -2.25516E+03 0.00814 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  3.30280E-06 0.00025 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  4.77976E-06 0.00018 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.06886E-03 0.00189 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -2.14026E+03 0.00188 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.41847E-07 0.00048 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  8.31118E-07 0.00021  8.30914E-07 0.00021  8.59322E-07 0.00248 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  1.47112E-05 0.00051  1.47356E-05 0.00052  1.13333E-05 0.00473 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  5.60912E-01 0.00015  5.59633E-01 0.00014  8.20391E-01 0.00284 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.03166E+01 0.00421 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.53000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.44672E+00 0.00027 ];

% Flux spectrum in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.39681E+01 0.00011  2.37692E+00 0.00022 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  1.34004E+00 4.1E-05  5.34865E+00 2.4E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  1.61112E-02 5.6E-05  7.92260E-02 0.00011 ];
INF_ABS                   (idx, [1:   4]) = [  3.14953E-02 8.4E-05  2.35490E-01 0.00024 ];
INF_FISS                  (idx, [1:   4]) = [  1.53841E-02 0.00011  1.56264E-01 0.00031 ];
INF_NSF                   (idx, [1:   4]) = [  3.85702E-02 7.5E-05  3.80782E-01 0.00031 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.50715E+00 3.9E-05  2.43679E+00 4.7E-06 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02763E+02 1.5E-06  2.02023E+02 2.9E-07 ];
INF_INVV                  (idx, [1:   4]) = [  4.47887E-08 0.00017  3.46452E-06 4.2E-06 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  1.30855E+00 3.2E-05  5.11321E+00 3.6E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  6.07710E-01 1.9E-05  1.88525E+00 5.8E-05 ];
INF_SCATT2                (idx, [1:   4]) = [  2.39895E-01 3.0E-05  7.04031E-01 0.00018 ];
INF_SCATT3                (idx, [1:   4]) = [  1.71422E-02 0.00021  2.78585E-01 0.00042 ];
INF_SCATT4                (idx, [1:   4]) = [ -2.65740E-02 0.00050  1.25729E-01 0.00023 ];
INF_SCATT5                (idx, [1:   4]) = [  1.14641E-03 0.00483  6.81452E-02 0.00183 ];
INF_SCATT6                (idx, [1:   4]) = [  1.41251E-02 0.00019  4.37858E-02 0.00077 ];
INF_SCATT7                (idx, [1:   4]) = [  2.61579E-03 0.00292  3.14729E-02 0.00082 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  1.30866E+00 3.2E-05  5.11321E+00 3.6E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  6.07712E-01 1.9E-05  1.88525E+00 5.8E-05 ];
INF_SCATTP2               (idx, [1:   4]) = [  2.39896E-01 3.0E-05  7.04031E-01 0.00018 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.71421E-02 0.00022  2.78585E-01 0.00042 ];
INF_SCATTP4               (idx, [1:   4]) = [ -2.65744E-02 0.00051  1.25729E-01 0.00023 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.14628E-03 0.00470  6.81452E-02 0.00183 ];
INF_SCATTP6               (idx, [1:   4]) = [  1.41251E-02 0.00020  4.37858E-02 0.00077 ];
INF_SCATTP7               (idx, [1:   4]) = [  2.61587E-03 0.00294  3.14729E-02 0.00082 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  5.22450E-01 9.1E-05  2.91335E+00 2.3E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  6.38019E-01 9.1E-05  1.14416E-01 2.3E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  3.13851E-02 8.4E-05  2.35490E-01 0.00024 ];
INF_REMXS                 (idx, [1:   4]) = [  7.16982E-02 0.00012  2.36259E-01 0.00022 ];

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

INF_S0                    (idx, [1:   8]) = [  1.26834E+00 3.6E-05  4.02041E-02 0.00011  8.11542E-04 0.00230  5.11240E+00 3.6E-05 ];
INF_S1                    (idx, [1:   8]) = [  5.92093E-01 2.2E-05  1.56167E-02 9.6E-05  4.10725E-04 0.00094  1.88484E+00 5.8E-05 ];
INF_S2                    (idx, [1:   8]) = [  2.43435E-01 3.4E-05 -3.54016E-03 0.00033  3.11329E-04 0.00179  7.03720E-01 0.00018 ];
INF_S3                    (idx, [1:   8]) = [  2.46090E-02 5.9E-05 -7.46674E-03 0.00030  2.34285E-04 0.00127  2.78351E-01 0.00042 ];
INF_S4                    (idx, [1:   8]) = [ -2.34595E-02 0.00054 -3.11447E-03 0.00024  1.64287E-04 0.00245  1.25564E-01 0.00023 ];
INF_S5                    (idx, [1:   8]) = [  8.23997E-04 0.01046  3.22409E-04 0.00955  1.03437E-04 0.01727  6.80418E-02 0.00186 ];
INF_S6                    (idx, [1:   8]) = [  1.33978E-02 0.00032  7.27268E-04 0.00229  5.59088E-05 0.00943  4.37299E-02 0.00076 ];
INF_S7                    (idx, [1:   8]) = [  2.46873E-03 0.00380  1.47063E-04 0.01186  2.13468E-05 0.02696  3.14515E-02 0.00080 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  1.26845E+00 3.6E-05  4.02041E-02 0.00011  8.11542E-04 0.00230  5.11240E+00 3.6E-05 ];
INF_SP1                   (idx, [1:   8]) = [  5.92095E-01 2.2E-05  1.56167E-02 9.6E-05  4.10725E-04 0.00094  1.88484E+00 5.8E-05 ];
INF_SP2                   (idx, [1:   8]) = [  2.43436E-01 3.4E-05 -3.54016E-03 0.00033  3.11329E-04 0.00179  7.03720E-01 0.00018 ];
INF_SP3                   (idx, [1:   8]) = [  2.46088E-02 6.5E-05 -7.46674E-03 0.00030  2.34285E-04 0.00127  2.78351E-01 0.00042 ];
INF_SP4                   (idx, [1:   8]) = [ -2.34599E-02 0.00054 -3.11447E-03 0.00024  1.64287E-04 0.00245  1.25564E-01 0.00023 ];
INF_SP5                   (idx, [1:   8]) = [  8.23869E-04 0.01027  3.22409E-04 0.00955  1.03437E-04 0.01727  6.80418E-02 0.00186 ];
INF_SP6                   (idx, [1:   8]) = [  1.33978E-02 0.00033  7.27268E-04 0.00229  5.59088E-05 0.00943  4.37299E-02 0.00076 ];
INF_SP7                   (idx, [1:   8]) = [  2.46881E-03 0.00382  1.47063E-04 0.01186  2.13468E-05 0.02696  3.14515E-02 0.00080 ];

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

