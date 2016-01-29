
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
START_DATE                (idx, [1: 24])  = 'Mon Apr 28 16:12:57 2014' ;
COMPLETE_DATE             (idx, [1: 24])  = 'Mon Apr 28 18:30:17 2014' ;

% Run parameters:

POP                       (idx, 1)        = 1000000 ;
CYCLES                    (idx, 1)        = 40 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1398726777 ;
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

MIN_MACROXS               (idx, [1:   4]) = [  2.30390E-01 0.0E+00  0.00000E+00 0.0E+00 ];
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
AVG_TRACKS                (idx, [1:   4]) = [  1.83695E+01 6.5E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  1.82673E+01 6.6E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  1.02193E-01 0.00036  0.00000E+00 0.0E+00 ];

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 40 ;
SOURCE_NEUTRONS           (idx, 1)        = 40000642 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  1.00002E+06 0.00022 ];
MEAN_POP_WGT              (idx, [1:  2])  = [  1.00002E+06 0.00022 ];
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.37304E+02 ;
RUNNING_TIME              (idx, 1)        =  1.37331E+02 ;
INIT_TIME                 (idx, 1)        =  2.90633E-01 ;
PROCESS_TIME              (idx, [1:  2])  = [  2.83333E-04  2.83333E-04 ];
TRANSPORT_CYCLE_TIME      (idx, [1:  3])  = [  1.37041E+02  1.37041E+02  0.00000E+00 ];
BURNUP_CYCLE_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
BATEMAN_SOLUTION_TIME     (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
MPI_OVERHEAD_TIME         (idx, [1:  2])  = [  0.00000E+00  0.00000E+00 ];
ESTIMATED_RUNNING_TIME    (idx, [1:  2])  = [  1.37329E+02  0.00000E+00 ];
CPU_USAGE                 (idx, 1)        = 0.99980 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.99806E-01 5.0E-06 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.94010E-01 ;
OMP_AMDAHL_MAX            (idx, 1)        = 1.00 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 32105.76 ;
ALLOC_MEMSIZE             (idx, 1)        = 5653.72;
MEMSIZE                   (idx, 1)        = 5609.96;
XS_MEMSIZE                (idx, 1)        = 26.74;
MAT_MEMSIZE               (idx, 1)        = 5.24;
RES_MEMSIZE               (idx, 1)        = 8.42;
MISC_MEMSIZE              (idx, 1)        = 5569.56;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00;
UNUSED_MEMSIZE            (idx, 1)        = 43.76;

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

NORM_COEF                 (idx, [1:   4]) = [  9.97934E-07 0.00012  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  4.23680E-01 0.00040 ];
U235_FISS_FRAC            (idx, [1:   2]) = [  9.18672E-01 6.4E-05 ];
U238_FISS_FRAC            (idx, [1:   2]) = [  8.13279E-02 0.00072 ];

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  1.58835E-11 0.00011 ];
TOT_POWDENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   2]) = [  1.21163E+00 0.00012 ];
TOT_FISSRATE              (idx, [1:   2]) = [  4.89788E-01 0.00011 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  4.08069E-01 0.00010 ];
TOT_ABSRATE               (idx, [1:   2]) = [  8.97857E-01 6.4E-05 ];
TOT_SRCRATE               (idx, [1:   2]) = [  9.97934E-01 0.00012 ];
TOT_FLUX                  (idx, [1:   2]) = [  1.92227E+01 0.00011 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  1.02143E-01 0.00056 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  1.82663E+01 0.00010 ];
INI_FMASS                 (idx, 1)        =  0.00000E+00 ;
TOT_FMASS                 (idx, 1)        =  0.00000E+00 ;

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.21384E+00 0.00014  1.20512E+00 0.00014  8.71499E-03 0.00303 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.21414E+00 0.00012 ];
COL_KEFF                  (idx, [1:   2]) = [  1.21414E+00 0.00020 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.21414E+00 0.00012 ];
ABS_KINF                  (idx, [1:   2]) = [  1.35258E+00 8.5E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% Forward-weighted delayed neutron parameters:

FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  6.04614E-03 0.00209  1.69154E-04 0.01489  9.46063E-04 0.00463  9.42712E-04 0.00516  2.77176E-03 0.00330  9.13895E-04 0.00443  3.02565E-04 0.00873 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.21087E-01 0.00433  1.24908E-02 7.5E-07  3.16012E-02 8.2E-05  1.10436E-01 9.1E-05  3.21604E-01 9.2E-05  1.34366E+00 5.0E-05  8.95434E+00 0.00064 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  7.30229E-03 0.00309  2.03414E-04 0.02112  1.13972E-03 0.00585  1.14511E-03 0.00780  3.33239E-03 0.00466  1.11933E-03 0.00765  3.62332E-04 0.01358 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.19681E-01 0.00650  1.24908E-02 1.1E-06  3.16032E-02 0.00013  1.10442E-01 0.00016  3.21570E-01 0.00014  1.34357E+00 8.4E-05  8.95844E+00 0.00101 ];

% Adjoint weighted time constants using Nauchi's method:

ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.88148E-06 0.00038  1.87969E-06 0.00038  2.12805E-06 0.00407 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.28381E-06 0.00035  2.28164E-06 0.00034  2.58311E-06 0.00406 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  7.17938E-03 0.00300  2.00230E-04 0.02115  1.12237E-03 0.00574  1.12558E-03 0.00796  3.28037E-03 0.00492  1.09579E-03 0.00774  3.55043E-04 0.01230 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.17329E-01 0.00673  1.24908E-02 1.2E-06  3.16021E-02 0.00012  1.10440E-01 0.00013  3.21624E-01 0.00013  1.34365E+00 8.1E-05  8.95298E+00 0.00090 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.88261E-06 0.00103  1.88101E-06 0.00106  2.10106E-06 0.01091 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.28518E-06 0.00105  2.28325E-06 0.00107  2.55039E-06 0.01095 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  7.25472E-03 0.00861  1.96597E-04 0.05314  1.15864E-03 0.02004  1.17677E-03 0.02605  3.28551E-03 0.01056  1.09846E-03 0.02178  3.38740E-04 0.03955 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.90258E-01 0.01847  1.24909E-02 4.3E-06  3.16086E-02 0.00031  1.10474E-01 0.00048  3.21889E-01 0.00035  1.34416E+00 0.00021  8.95482E+00 0.00204 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  7.23448E-03 0.00921  1.92895E-04 0.05348  1.15800E-03 0.01961  1.16359E-03 0.02428  3.27252E-03 0.01037  1.10509E-03 0.02060  3.42375E-04 0.03730 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.96846E-01 0.01746  1.24908E-02 4.2E-06  3.16134E-02 0.00028  1.10476E-01 0.00052  3.21874E-01 0.00033  1.34410E+00 0.00021  8.94704E+00 0.00190 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.85703E+03 0.00870 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.88507E-06 0.00024 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.28817E-06 0.00022 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  7.22215E-03 0.00131 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.83123E+03 0.00124 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  7.81193E-08 0.00026 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  1.59453E-06 0.00021  1.59450E-06 0.00021  1.59746E-06 0.00245 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  3.34754E-06 0.00032  3.34771E-06 0.00032  3.32671E-06 0.00304 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  2.55401E-01 0.00029  2.54855E-01 0.00030  3.45328E-01 0.00505 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.01538E+01 0.00506 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:  1])  = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  1.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.53000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.35146E+00 6.6E-06 ];

% Flux spectrum in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.87801E+01 4.8E-05  4.33853E-01 0.00012 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  9.26460E-01 7.1E-06  1.99405E+00 8.4E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  1.91265E-02 0.00013  1.12330E-01 0.00019 ];
INF_ABS                   (idx, [1:   4]) = [  3.42993E-02 0.00011  5.84016E-01 0.00022 ];
INF_FISS                  (idx, [1:   4]) = [  1.51727E-02 9.0E-05  4.71685E-01 0.00023 ];
INF_NSF                   (idx, [1:   4]) = [  3.79095E-02 0.00027  1.14917E+00 0.00021 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.49853E+00 0.00018  2.43630E+00 0.00044 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.02683E+02 5.6E-08  2.02023E+02 2.6E-06 ];
INF_INVV                  (idx, [1:   4]) = [  3.45779E-08 7.0E-05  1.96447E-06 0.00019 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  8.92160E-01 1.0E-05  1.41008E+00 0.00013 ];
INF_SCATT1                (idx, [1:   4]) = [  3.56800E-01 2.1E-05  5.19395E-01 0.00040 ];
INF_SCATT2                (idx, [1:   4]) = [  1.42198E-01 0.00022  2.07773E-01 0.00030 ];
INF_SCATT3                (idx, [1:   4]) = [  1.30431E-02 0.00200  6.48260E-02 0.00042 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.23120E-02 0.00111  1.30887E-02 0.00415 ];
INF_SCATT5                (idx, [1:   4]) = [  2.57242E-03 0.00376 -2.35892E-04 0.28994 ];
INF_SCATT6                (idx, [1:   4]) = [  8.89845E-03 0.00110 -1.02903E-03 0.04771 ];
INF_SCATT7                (idx, [1:   4]) = [  1.44884E-03 0.00238  1.31787E-04 0.36883 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  8.92256E-01 1.1E-05  1.41008E+00 0.00013 ];
INF_SCATTP1               (idx, [1:   4]) = [  3.56802E-01 2.2E-05  5.19395E-01 0.00040 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.42198E-01 0.00022  2.07773E-01 0.00030 ];
INF_SCATTP3               (idx, [1:   4]) = [  1.30431E-02 0.00199  6.48260E-02 0.00042 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.23119E-02 0.00110  1.30887E-02 0.00415 ];
INF_SCATTP5               (idx, [1:   4]) = [  2.57232E-03 0.00381 -2.35892E-04 0.28994 ];
INF_SCATTP6               (idx, [1:   4]) = [  8.89843E-03 0.00111 -1.02903E-03 0.04771 ];
INF_SCATTP7               (idx, [1:   4]) = [  1.44876E-03 0.00248  1.31787E-04 0.36883 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  4.25606E-01 3.0E-05  1.33015E+00 8.9E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  7.83196E-01 3.0E-05  2.50599E-01 8.9E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  3.42030E-02 0.00012  5.84016E-01 0.00022 ];
INF_REMXS                 (idx, [1:   4]) = [  4.79238E-02 2.3E-05  5.86592E-01 4.9E-05 ];

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

INF_S0                    (idx, [1:   8]) = [  8.78536E-01 8.7E-06  1.36237E-02 0.00011  2.62167E-03 0.00338  1.40746E+00 0.00014 ];
INF_S1                    (idx, [1:   8]) = [  3.51762E-01 2.8E-05  5.03831E-03 0.00046  9.16195E-04 0.01149  5.18479E-01 0.00038 ];
INF_S2                    (idx, [1:   8]) = [  1.43565E-01 0.00022 -1.36728E-03 0.00055  6.54815E-04 0.00194  2.07118E-01 0.00031 ];
INF_S3                    (idx, [1:   8]) = [  1.55667E-02 0.00168 -2.52366E-03 2.8E-05  4.98608E-04 0.01650  6.43274E-02 0.00055 ];
INF_S4                    (idx, [1:   8]) = [ -1.13675E-02 0.00122 -9.44543E-04 0.00027  3.54024E-04 0.02698  1.27346E-02 0.00352 ];
INF_S5                    (idx, [1:   8]) = [  2.39029E-03 0.00422  1.82133E-04 0.00233  2.21494E-04 0.01539 -4.57386E-04 0.14208 ];
INF_S6                    (idx, [1:   8]) = [  8.64926E-03 0.00112  2.49189E-04 0.00044  1.11582E-04 0.03423 -1.14062E-03 0.04639 ];
INF_S7                    (idx, [1:   8]) = [  1.41161E-03 0.00378  3.72306E-05 0.05079  4.86159E-05 0.09612  8.31711E-05 0.64060 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  8.78632E-01 9.2E-06  1.36237E-02 0.00011  2.62167E-03 0.00338  1.40746E+00 0.00014 ];
INF_SP1                   (idx, [1:   8]) = [  3.51764E-01 2.9E-05  5.03831E-03 0.00046  9.16195E-04 0.01149  5.18479E-01 0.00038 ];
INF_SP2                   (idx, [1:   8]) = [  1.43565E-01 0.00022 -1.36728E-03 0.00055  6.54815E-04 0.00194  2.07118E-01 0.00031 ];
INF_SP3                   (idx, [1:   8]) = [  1.55668E-02 0.00167 -2.52366E-03 2.8E-05  4.98608E-04 0.01650  6.43274E-02 0.00055 ];
INF_SP4                   (idx, [1:   8]) = [ -1.13674E-02 0.00121 -9.44543E-04 0.00027  3.54024E-04 0.02698  1.27346E-02 0.00352 ];
INF_SP5                   (idx, [1:   8]) = [  2.39019E-03 0.00428  1.82133E-04 0.00233  2.21494E-04 0.01539 -4.57386E-04 0.14208 ];
INF_SP6                   (idx, [1:   8]) = [  8.64925E-03 0.00113  2.49189E-04 0.00044  1.11582E-04 0.03423 -1.14062E-03 0.04639 ];
INF_SP7                   (idx, [1:   8]) = [  1.41153E-03 0.00389  3.72306E-05 0.05079  4.86159E-05 0.09612  8.31711E-05 0.64060 ];

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

