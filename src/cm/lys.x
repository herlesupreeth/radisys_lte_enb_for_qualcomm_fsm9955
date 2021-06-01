/********************************************************************16**

            (c) Copyright 2012 by RadiSys Corporation. All rights reserved.

     This software is confidential and proprietary to RadiSys Corporation.
     No part of this software may be reproduced, stored, transmitted, 
     disclosed or used in any form or by any means other than as expressly
     provided by the written Software License Agreement between Radisys 
     and its licensee.

     Radisys warrants that for a period, as provided by the written
     Software License Agreement between Radisys and its licensee, this
     software will perform substantially to Radisys specifications as
     published at the time of shipment, exclusive of any updates or 
     upgrades, and the media used for delivery of this software will be 
     free from defects in materials and workmanship.  Radisys also warrants 
     that has the corporate authority to enter into and perform under the 
     Software License Agreement and it is the copyright owner of the software 
     as originally delivered to its licensee.

     RADISYS MAKES NO OTHER WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
     WITHOUT LIMITATION WARRANTIES OF MERCHANTABILITY OR FITNESS FOR
     A PARTICULAR PURPOSE WITH REGARD TO THIS SOFTWARE, SERVICE OR ANY RELATED
     MATERIALS.

     IN NO EVENT SHALL RADISYS BE LIABLE FOR ANY INDIRECT, SPECIAL,
     CONSEQUENTIAL DAMAGES, OR PUNITIVE DAMAGES IN CONNECTION WITH OR ARISING
     OUT OF THE USE OF, OR INABILITY TO USE, THIS SOFTWARE, WHETHER BASED
     ON BREACH OF CONTRACT, TORT (INCLUDING NEGLIGENCE), PRODUCT
     LIABILITY, OR OTHERWISE, AND WHETHER OR NOT IT HAS BEEN ADVISED
     OF THE POSSIBILITY OF SUCH DAMAGE.

                       Restricted Rights Legend:

     This software and all related materials licensed hereby are
     classified as "restricted computer software" as defined in clause
     52.227-19 of the Federal Acquisition Regulation ("FAR") and were
     developed entirely at private expense for nongovernmental purposes,
     are commercial in nature and have been regularly used for
     nongovernmental purposes, and, to the extent not published and
     copyrighted, are trade secrets and confidential and are provided
     with all rights reserved under the copyright laws of the United
     States.  The government's rights to the software and related
     materials are limited and restricted as provided in clause
     52.227-19 of the FAR.

                    IMPORTANT LIMITATION(S) ON USE

     The use of this software is limited to the use set
     forth in the written Software License Agreement between Radisys and
     its Licensee. Among other things, the use of this software
     may be limited to a particular type of Designated Equipment, as 
     defined in such Software License Agreement.
     Before any installation, use or transfer of this software, please
     consult the written Software License Agreement or contact Radisys at
     the location set forth below in order to confirm that you are
     engaging in a permissible use of the software.

                    RadiSys Corporation
                    Tel: +1 (858) 882 8800
                    Fax: +1 (858) 777 3388
                    Email: support@trillium.com
                    Web: http://www.radisys.com 
 
*********************************************************************17*/


/**********************************************************************
 
    Name:   LTE CL layer
 
    Type:   C include file
 
    Desc:   Defines required by LTE CL
 
    File:   lys.x
 
    Sid:      lys.x@@/main/4 - Tue Aug 30 18:13:51 2011
 
    Prg:    sm
 
**********************************************************************/
 

/*
*     The defines in this file correspond to structures and variables 
*     used by the following TRILLIUM software:
*
*     part no.             description
*     --------     ----------------------------------------------
*                   LTE CL 
*
*/
 
#ifndef __LYS_X__
#define __LYS_X__
/* lys_x_001.main_2: Fix for CID- 1622-02-01 DefectId- 116522 */
/* added preprocessor to check cplusplus support */

#ifdef __cplusplus
extern "C" {
#endif

typedef struct ysGenCfg
{
   Pst      lmPst;            /* Layer manager post structure. */
   U16      maxTfuSaps;       /* max number of upper TFU SAPs */
   U16      nmbUe;            /* max number of UEs per Cell */
   U16      freqSyncPci;      /* PCI for periodic frequency sync up*/
   U16      freqSyncEarfcn;   /* EARFCN for periodic frequency sync up*/
#ifdef MSPD 
   U16      logBuf0Size;     /* Log buffer size used in LARM */
   U16      logBuf1Size;     /* Log buffer size used in LARM */
#endif /* MSPD */
   Bool     enblSIAndPagngLog; /* Flag to enable SI and paging wireshark */ 
} YsGenCfg;

typedef enum
{
   LYS_TFU_USR_SAP,
   LYS_TFU_SCH_SAP
} YsTfuSapType;

typedef struct ysTfuSapCfg
{
   Selector     selector;   /* Selector. */
   MemoryId     mem;        /* Region and pool ID. */
   Priority     prior;      /* Priority. */
   ProcId       procId;     /* Processor ID. */
   Ent          ent;        /* Entity ID. */
   Inst         inst;       /* Instance ID. */
   Route        route;      /* Route. */
   SpId         spId;       /* Service provider ID. */
   SuId         suId;       /* Service user ID. */
   YsTfuSapType type;       /* type of the SAP */
   CmLteCellId  cellId;     /* Cell ID */
} YsTfuSapCfg;

typedef struct ysCtfSapCfg
{
   Selector selector;   /* Selector. */
   MemoryId mem;        /* Region and pool ID. */
   Priority prior;      /* Priority. */
   ProcId   procId;     /* Processor ID. */
   Ent      ent;        /* Entity ID. */
   Inst     inst;       /* Instance ID. */
   Route    route;      /* Route. */
   SpId     spId;       /* Service provider ID. */
   SuId     suId;       /* Service user ID. */
} YsCtfSapCfg;

#ifdef E_TM
typedef enum ysChBwOptions
{
    YS_BW_1_4_MHZ = 0, 
    YS_BW_3_0_MHZ, 
    YS_BW_5_0_MHZ, 
    YS_BW_10_0_MHZ, 
    YS_BW_15_0_MHZ, 
    YS_BW_20_0_MHZ
}YsChBwOptions;

typedef struct lysBwCfgInfo {
   Bool   pres;       /*!< Present field */
   YsChBwOptions   dlBw;       /*!< Downlink Bandwidth in RBs */
   YsChBwOptions  ulBw;       /*!< Uplink Bandwidth in RBs */
   U8             eUtraBand;  /*!< EUTRA Operating Band - 36.104 (5.5)
                                   FDD:(1..14), TDD:(33..40) */
} LysBwCfgInfo;

typedef enum {
   LYS_DUPMODE_FDD=1,
   LYS_DUPMODE_TDD   
} LysDuplexMode;

/**
 * This element enumerates the sub-carrier spacing for configuration at PHY. 
*/
typedef enum {
   LYS_SC_SPACING_15KHZ,
   LYS_SC_SPACING_7DOT5KHZ   
} LysSCSpacing;

/**
 * This element enumerates the cyclic prefix for use at PHY.
*/
typedef enum {
   LYS_CP_NORMAL,
   LYS_CP_EXTENDED   
} LysCPCfg;

typedef struct lysTxSchemeCfg {
   Bool pres; /*!< Present field */
   LysDuplexMode  duplexMode; /*!< Duplexing Mode: TDD/FDD */
   LysSCSpacing   scSpacing;  /*!< Sub-carrier spacing */
   LysCPCfg       cycPfx;     /*!< Cyclic prefix */
} LysTxSchemeCfg;
typedef enum {
   LYS_AP_CNT_1,
   LYS_AP_CNT_2,
   LYS_AP_CNT_4   
} LysAntennaPortsCount;

typedef struct lysAntennaCfgInfo {
   LysAntennaPortsCount   antPortsCnt; /*!< Count of antenna ports */
} LysAntennaCfgInfo;
/**
 * @brief   PRACH configuration.
 * @details This structure contains the configuration information for PRACH at PHY.
 *          -# PRACH preamble sequences are generated by PHY using Zadoff-Chu 
 *             sequences.[Ref: 36.211, 5.7.2]
 *          -# PRACH preamble format is derived from PRACH Configuration Index.
 *             [Ref: 36.211, Table 5.7.1-2]
 *          -# PrachFreqOffset is the first physical resource block allocated to 
 *             the PRACH opportunity considered for preamble format 0, 1, 2 and 3.
 *             [Ref: 36.211, 5.7.1]
*/
typedef struct lysPrachCfgInfo {
   Bool  pres;                   /*!< Indicates the presence of this info */
   U16   rootSequenceIndex;      /*!< Range (0..837) */
   U8    prachCfgIndex;          /*!< Prach Config Index (0..63) */
   U8    zeroCorrelationZoneCfg; /*!< Used for preamble sequence generation
                                      (36.211, 5.7.2); FDD:0..15, TDD:0..6 */
   Bool  highSpeedFlag;          /*!< TRUE: Restricted set, 
                                      FALSE: Unrestricted Set */
   U8    prachFreqOffset;        /*!< Range(0..94) */
} LysPrachCfgInfo;
/**
 * @brief   PDSCH configuration.
 * @details This structure contains the PDSCH configuration information for 
 *          configuration at PHY.
*/
typedef struct lysPdschCfgInfo {
   Bool           pres;       /*!< Indicates the presence of this info */
   S16             refSigPwr;  /*!< Provides downlink reference signal EPRE, 
                                   in (-60..50)dBm */
   U8             p_b;        /*!< Range(0..3) [36.213, 5.2] */ 
} LysPdschCfgInfo;
/**
 * @brief   SRS uplink configuration.
 * @details This structure contains the information for setting-up/release
 *          of uplink SRS configuration at PHY.
*/
typedef struct lysSrsUlCfgInfo {
   Bool              pres;       /*!< Indicates the presence of UL SRS info */
   U8                srsCfgType; /*!< Setup/Release: The setup structure
                                      is valid ,only if srcCfgType is setup. */
   struct srsSetup
   {
      U8                srsBw;   /*!< SRS bandwidth config (0..7) */
      U8                sfCfg;   /*!< SRS sub-frame config (0..15) */
      Bool              srsANSimultTx; /*!< Simultaneous transmisson 
                                            of SRS and ACK/NACK */
      Bool              srsMaxUpPts;   /*!< SRS MaxUpPTS: TRUE/FALSE, 
                                            This field is valid only for TDD */
   } srsSetup;
} LysSrsUlCfgInfo;

typedef struct lysCellCfgInfo {
   CmLteCellId       cellId;     /*!< Cell ID */
   U8                cellIdGrpId;/*!< Cell Identity Group ID (0..167) */
   U8                physCellId; /*!< Cell ID (0..2) */
   LysBwCfgInfo      bwCfg;      /*!< Bandwidth configuration */
   LysTxSchemeCfg    txCfg;      /*!< Basic transmission scheme 
                                      configuration [36.300, 5.1.1] */
   LysAntennaCfgInfo antennaCfg; /*!< Antenna configuration */
   LysPrachCfgInfo   prachCfg;   /*!< PRACH configuration */
   LysPdschCfgInfo   pdschCfg;   /*!< PDSCH configuration */
   LysSrsUlCfgInfo   srsUlCfg;   /*!< SRS UL configuration, setup case */
   
   U16               opMode;
   U32               counter;
   U32               period;
   S16               priSigPwr;
   S16               secSigPwr;
} LysCellCfgInfo;

/*
    E_TM_INT_MODEL - enumeration of all E-TM models per 36.141 [6.x] (need to use internal into mac-project)
*/
typedef enum ysEtmIntMod
{
    YS_ETM_INT_UNDEFINED = 0,
    YS_ETM_INT_1_1,
    YS_ETM_INT_1_2,
    YS_ETM_INT_2,
    YS_ETM_INT_3_1,
    YS_ETM_INT_3_2,
    YS_ETM_INT_3_3,

    YS_BE_INT_TEST_1,
    YS_BE_INT_TEST_2,
    YS_SWEEP_INT_TEST_1
}YsEtmIntMod;

/*
    E_TM_CONFIG - configuration for E-TM testing
*/
typedef struct ysEtmInit
{
    YsEtmIntMod tModel;     /* E-TM model*/
    YsChBwOptions bw;      /* Bandwidth */
    S32    e_rs;              // Ers [dB]
    U8 ant0;        /* 0 - disable Ant0, 1 - enable Ant0 */
    U8 ant1;        /* 0 - disable Ant1, 1 - enable Ant1 */
    U8 num_layers;  /* Number of layers */
    U8 num_cw;      /* Number of codewords */
    U8 tdd;         /* 0 - fdd, 1 - tdd (not in use now) */
}YsEtmInit;

typedef struct ysEtmCfg
{
   CmLteCellId cellId;
   YsEtmInit   etmInit;
} YsEtmCfg;
#endif /* E_TM */



/* This structure holds configuration parameters for CL. */
typedef struct ysCfg
{
   union
   {
      YsGenCfg    genCfg;  /*!< General Configuration. */
      YsTfuSapCfg tfuSap;  /*!< TFU interface SAP. */
      YsCtfSapCfg ctfSap;  /*!< CTF interface SAP. */
#ifdef E_TM
      LysCellCfgInfo cellCfg; /* Cell Config from SM*/
      YsEtmCfg   etmCfg;  /* ETM COnfiguration */
#endif
   }s;
}YsCfg;

/* This structure holds General statistical information of CL. */
typedef struct ysCtfSapSts
{
   U32 numUeCfg;         /*!< Number of UEs configured. */
   U16 numCellCfg;       /*!< Number of Cells configured. */
}YsCtfSapSts;

typedef struct ysTfuSapSts
{
   U32 numCntrlReqRcvd;     /*!< Number of control request recvd from MAC */
   U32 numDatReqRcvd;       /*!< Number of data request recvd from MAC */
   U32 numRecpReqRcvd;      /*!< Number of reception request recvd from MAC */
}YsTfuSapSts;

/* This structure holds General statistical information of CL. */
typedef struct ysL1PhySts
{
   /* lys_x_001.main_1 */
#ifdef YS_MSPD
   StsCntr          numTxStartReq;    /* Number of PHY_TXSTART.req Txed */
   StsCntr          numTxStartCfm;    /* Number of PHY_TXSTART.cfm Rcvd */
   StsCntr          numTxStartInd;    /* Number of PHY_TXSTART.ind Rcvd */
   StsCntr          numTxSduReq;      /* Number of PHY_TXSDU.req Txed */
   StsCntr          numTxSduCfm;      /* Number of PHY_TXSDU.cfm Rcvd */
   StsCntr          numTxEndInd;      /* Number of PHY_TXEND.ind Rcvd */
   StsCntr          numRxStartReq;    /* Number of PHY_RXSTART.req Txed */
   StsCntr          numRxStartCfm;    /* Number of PHY_RXSTART.cfm Rcvd */
   StsCntr          numRxStartInd;    /* Number of PHY_RXSTART.ind Rcvd */
   StsCntr          numRxSduInd;      /* Number of PHY_RXSDU.ind Rcvd */
   StsCntr          numRxEndInd;      /* Number of PHY_RXEND.ind Rcvd */
   StsCntr          numRxStatusInd;   /* Number of PHY_RXSTATUS.ind Rcvd */
#ifdef PHY_ERROR_LOGING
   StsCntr          numCrcErr;        /* Number of CRC Error */
   StsCntr          numCrcOk;         /* Number of CRC OK */
   StsCntr          numUlPackets;     /* Number of UL packets */
#endif
#else
   StsCntr          numSfReqTx;       /* Number of SUBFRAME.request Txed */
   StsCntr          numSfIndRx;       /* Number of SUBFRAME.indication received */
   StsCntr          numHiDciReqTx;    /* Number of HI_DCI.request Txed */
   StsCntr          numTxReqTx;       /* Number of TX.request Txed */
   StsCntr          numHarqIndRx;     /* Number of HARQ.indication received */
   StsCntr          numCrcIndRx;      /* Number of CRC.indication received */
   StsCntr          numRxIndRx;       /* Number of RX.indication received */
   StsCntr          numRachIndRx;     /* Number of RACH.indication received */
   StsCntr          numSrsIndRx;      /* Number of SRS.indication received */
#endif
}YsL1PhySts;

#ifdef TENB_T3K_SPEC_CHNGS 
/*This structure contains the Log Stream info*/
typedef struct ysCtfLogStrmInfo{
   U8  logStrmInfoTyp;
   U8  stat; 
   U32 bufAddr;
   U32 bufSize;
}YsCtfLogStrmInfo;
/*watchdog changes*/
/*This structure contains the Log Stream Info Cfm */
typedef struct ysCtfLogStrmInfoCfm
{
   CmStatus status;
   U16 logStrmInfoReqType;
   U8 numOfLogStrmInfo;
   YsCtfLogStrmInfo logStrmInfo[LYS_MAX_LOG_INFO];
}YsCtfLogStrmInfoCfm;
#endif  /*TENB_T3K_SPEC_CHNGS*/
/* This structure holds CL's solicited status information. */
typedef struct ysSts
{
   DateTime dt;             /*!< Date and time. */
   U8       sapInst;        /*!< SAP instance. */
   Action   action;        /*!< ARST : To reset the statistic values. */
   union
   {
      YsCtfSapSts ctfSts;   /*!< CTF SAP statistics. */
      YsTfuSapSts tfuSts;   /*!< TFU SAP statistics. */
      YsL1PhySts  phySts;  /*!< message related statistics */
   }s;
}YsSts;

/* This structure holds a SAP's status information. */
typedef struct ysSapSta
{
   U8 sapState;         /*!< SAP state. */
}YsSapSta;

/* This structure holds CL's solicited status information. */
typedef struct ysSsta
{
   DateTime dt;             /*!< Date and time. */
   U8       sapInst;        /*!< SAP instance. */
   union
   {
      SystemId sysId;       /*!< System information. */
      YsSapSta tfuSapSta;   /*!< TFU SAP state. */
      YsSapSta ctfSapSta;   /*!< CTF SAP state. */
      State    phyState;    /*!< State of PHY */
   }s;
}YsSsta;

/* Alarm diagnostics structure. */
typedef struct ysUstaDgn     /* Alarm diagnostics structure */
{
   U8 type;
   union
   {
      MemoryId          mem;          /* Memory pool and region */
      SpId              sapId;        /* SAP ID on which event received */
      CmLteTimingInfo   timingInfo;   /* Timing information */
   }u;
} YsUstaDgn;

/* This structure holds CL's Unsolicited status information. */
typedef struct ysUsta
{
   CmAlarm   cmAlarm;      /*!< Alarms. */
   YsUstaDgn dgn;          /*!< Alarm diagnostics. */
}YsUsta;

/* This structure holds CL's Trace Indication information. */
typedef struct ysTrc
{
   DateTime dt;          /*!< Date and time. */
   U8       evnt;        /*!< Event. */
}YsTrc;

/* This structure holds CL's Debug Control information. */
typedef struct ysDbgCntrl
{
   U32 dbgMask;          /*!< Debugging mask. */
}YsDbgCntrl;

/* This structure holds CL's SAP Control information. */
typedef struct ysSapCntrl
{
   SuId suId;            /*!< Service user ID. */
   SpId spId;            /*!< Service provider ID. */
}YsSapCntrl;

/* This structure holds CL's Control information. */
typedef struct ysCntrl
{
   DateTime      dt;          /*!< Date and Time. */
   U8            action;      /*!< Action. */
   U8            subAction;   /*!< Sub-action. */
   union
   {
      YsDbgCntrl ysDbgCntrl; /*!< Debug Control. */
      S16        trcLen;     /*!< Trace Length. */
      YsSapCntrl ysSapCntrl; /*!< SAP control. */
      CmLteCellId cellId;    /*!< Cell ID */
      U32         logMask;   /*!< Logging mask control */
#ifdef TENB_STATS
      U32         statsPer;  /*!< Periodicity of TeNB STATS in ms */
#endif
   }s;
}YsCntrl; 

/* This structure holds CL Configuration and Control Management Information. */
typedef struct ysMngmt
{
   Header     hdr;       /* Header. */
   CmStatus   cfm;       /* Confirmation. */
   union
   {
      YsCfg   cfg;       /* Configuration. */
      YsSts   sts;       /* Statistics. */
      YsSsta  ssta;      /* Solicited Status. */
      YsUsta  usta;      /* Unsolicited Status. */
      YsTrc   trc;       /* Trace. */
      YsCntrl cntrl;     /* Control. */
   }t;
}YsMngmt;

typedef S16 (*LysTPMRefSigPwrChangeReq)     ARGS((
Pst        *pst,               /* Post Structure. */
S16        refSigPwr           /* Reference Signal Pwr */
));

/* 
   Function Prototype Typedefs 
. */
typedef S16 (*LysCfgReq)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *cfg                /* Management Structure. */
     ));


typedef S16 (*LysCfgCfm)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *cfg                /* Management Structure. */
     ));

typedef S16 (*LysCntrlReq)   ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *cntrl              /* Management Structure. */
     ));

typedef S16 (*LysCntrlCfm)   ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *cntrl              /* Management Structure. */
     ));

typedef S16 (*LysStaReq)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *sta                /* Management Structure. */
     ));

typedef S16 (*LysStaCfm)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *sta                /* Management Structure. */
     ));

typedef S16 (*LysStaInd)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *sta                /* Management Structure. */
     ));

typedef S16 (*LysStsReq)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *sts                /* Management Structure. */
     ));

typedef S16 (*LysStsCfm)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *sts                /* Management Structure. */
     ));

typedef S16 (*LysTrcInd)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *trc,               /* Management Structure. */
        Buffer     *mBuf               /* Message Buffer. */
     ));


#ifdef TENB_T3K_SPEC_CHNGS
typedef S16 (*LysLogStrmInfoReq)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsMngmt    *logStrmInfoReq    /* Management Structure.*/
     ));
typedef S16 (*LysLogStrmInfoCfm)     ARGS((
        Pst        *pst,               /* Post Structure. */
        YsCtfLogStrmInfoCfm    *logStmrInfoCfm  /*LogStrmInfoCfm Structure */
     ));
#endif /*TENB_T3K_SPEC_CHNGS*/

typedef S16 (*LysRlInd)     ARGS((
        Pst        *pst,               /* Post Structure. */
        U8         rlLogLvl           /* Management Structure. */
     ));

typedef S16 (*LysREMScanCfgReq)     ARGS((
        Pst        *pst,               /* Post Structure. */
        U16   remScanInterval,         /* REM Scan Interval. */
        U16   remScanCount            /* REM Scan Count. */
     ));


/* 
   Function Prototypes 
. */
#ifdef YS
EXTERN S16 YsMiLysCfgReq ARGS((Pst *pst, YsMngmt *cfg));
EXTERN S16 YsMiLysCfgCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 YsMiLysStsReq ARGS((Pst *pst, YsMngmt *sts));
EXTERN S16 YsMiLysStsCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 YsMiLysStaReq ARGS((Pst *pst, YsMngmt *sta));
EXTERN S16 YsMiLysStaCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 YsMiLysStaInd ARGS((Pst *pst, YsMngmt *usta));
EXTERN S16 YsMiLysCntrlReq ARGS((Pst *pst, YsMngmt *cntrl));
EXTERN S16 YsMiLysCntrlCfm ARGS(( Pst *pst, YsMngmt *cfm));
EXTERN S16 YsMiLysTrcInd ARGS((Pst *pst, YsMngmt *trc, Buffer *mBuf));
#ifdef TENB_T3K_SPEC_CHNGS
EXTERN S16 YsMiLysLogStrmInfoReq ARGS((Pst *pst,YsMngmt  *logStrmInfo));
EXTERN S16 YsMiLysLogStrmInfoCfm ARGS((Pst *pst,YsCtfLogStrmInfoCfm  *cfm));
#endif /* TENB_T3K_SPEC_CHNGS*/
EXTERN S16 YsMiLysRlInd ARGS((Pst *pst, U8 rlLogLvl));
EXTERN S16 YsMiLysREMScanCfgReq ARGS((Pst *pst,U16 remScanInterval, U16 remScanCount));
EXTERN S16 YsTPMRefSigPwrChangeReq ARGS((Pst *pst,S16 refSigPwr));

#endif /* YS. */

#ifdef SM 
EXTERN S16 smYsActvTsk ARGS((Pst *pst, Buffer *mBuf));
/*-- stack manager initialization function ---*/
EXTERN S16 smYsActvInit  ARGS ((Ent ent, Inst inst,
                                Region region, Reason reason));
EXTERN S16 SmMiLysCfgReq ARGS((Pst *pst, YsMngmt *cfg));
EXTERN S16 SmMiLysCfgCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 SmMiLysStsReq ARGS((Pst *pst, YsMngmt *sts));
EXTERN S16 SmMiLysStsCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 SmMiLysStaReq ARGS((Pst *pst, YsMngmt *sta));
EXTERN S16 SmMiLysStaCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 SmMiLysStaInd ARGS((Pst *pst, YsMngmt *usta));
EXTERN S16 SmMiLysCntrlReq ARGS((Pst *pst, YsMngmt *cntrl));
EXTERN S16 SmMiLysCntrlCfm ARGS(( Pst *pst, YsMngmt *cfm));
EXTERN S16 SmMiLysTrcInd ARGS((Pst *pst, YsMngmt *trc, Buffer *mBuf));
#ifdef TENB_T3K_SPEC_CHNGS
EXTERN S16 SmMiLysLogStrmInfoReq ARGS ((Pst *spst,YsMngmt *logInfoReq));
EXTERN S16 SmMiLysLogStrmInfoCfm ARGS ((Pst     *pst,YsCtfLogStrmInfoCfm  *cfm));
#endif /* TENB_T3K_SPEC_CHNGS*/
EXTERN S16 SmMiLysRlInd ARGS((Pst *pst, U8 rlLogLvl));
EXTERN S16 SmMiLysREMScanCfgReq ARGS((U16 remScanInterval, 
                                            U16 remScanCount));
EXTERN S16 SmLysTPMTxPwrChangeReq ARGS ((S16 refSigPwr));

#endif /* SM. */

/*
   Function Prototypes for Packing and unpacking the primitives
. */
#ifdef LCLYS
EXTERN S16 cmPkLysCfgReq ARGS((Pst *pst, YsMngmt *cfg));
EXTERN S16 cmPkLysCfgCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 cmPkLysStsReq ARGS((Pst *pst, YsMngmt *sts));
EXTERN S16 cmPkLysStsCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 cmPkLysStaReq ARGS((Pst *pst, YsMngmt *sta));
EXTERN S16 cmPkLysStaCfm ARGS((Pst *pst, YsMngmt *cfm));
EXTERN S16 cmPkLysStaInd ARGS((Pst *pst, YsMngmt *usta));
EXTERN S16 cmPkLysCntrlReq ARGS((Pst *pst, YsMngmt *cntrl));
EXTERN S16 cmPkLysCntrlCfm ARGS(( Pst *pst, YsMngmt *cfm));
EXTERN S16 cmPkLysTrcInd ARGS((Pst *pst, YsMngmt *trc, Buffer *mBuf));
EXTERN S16 cmPkLysRlInd ARGS((Pst *pst, U8 rlLogLvl));
EXTERN S16 cmPkLysREMScanCfgReq ARGS
((
Pst *pst, 
U16 remScanInterval,
U16 remScanCount
));

EXTERN S16 cmPkLysTPMRefSigPwrChangeReq ARGS((
Pst *pst,
S16 refSigPwr
));



EXTERN S16 cmUnpkLysCfgReq ARGS((LysCfgReq ,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysCfgCfm ARGS((LysCfgCfm ,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysStsReq ARGS((LysStsReq,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysStsCfm ARGS((LysStsCfm,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysStaReq ARGS((LysStaReq,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysStaCfm ARGS((LysStaCfm,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysStaInd ARGS((LysStaInd,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysCntrlReq ARGS((LysCntrlReq,Pst *pst,Buffer *mBuf));
EXTERN S16 cmUnpkLysCntrlCfm ARGS((LysCntrlCfm,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysTrcInd ARGS((LysTrcInd,Pst *pst,Buffer *mBuf));
EXTERN S16 cmUnpkLysRlInd ARGS((LysRlInd ,Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnpkLysREMScanCfgReq ARGS((LysREMScanCfgReq, Pst *pst, Buffer *mBuf));
EXTERN S16 cmUnPkLysTPMRefSigPwrChangeReq ARGS((LysTPMRefSigPwrChangeReq CfgReq, Pst *pst, Buffer *mBuf));

/*
   Prototypes for Packing and Unpacking the definitions 
. */

EXTERN S16 cmPkYsMngmt ARGS((Pst *pst, YsMngmt *req,U8 eventType, Buffer *mBuf));
EXTERN S16 cmPkYsGenCfg ARGS((YsGenCfg *cfg,Buffer *mBuf));
EXTERN S16 cmPkYsTfuSapCfg ARGS(( YsTfuSapCfg *cfg, Buffer *mBuf));
EXTERN S16 cmPkYsCtfSapCfg ARGS((YsCtfSapCfg *cfg, Buffer *mBuf));
EXTERN S16 cmPkYsCfg ARGS((YsCfg *cfg, S16 elmnt, Buffer *mBuf));
EXTERN S16 cmPkYsCtfSapSts ARGS((YsCtfSapSts *sts, Buffer *mBuf));
EXTERN S16 cmPkYsTfuSapSts ARGS((YsTfuSapSts *sts, Buffer *mBuf));
EXTERN S16 cmPkYsPhySts ARGS((YsL1PhySts *cfg, Buffer *mBuf));
EXTERN S16 cmPkYsSts ARGS((YsSts *sts, S16 elmnt,Buffer *mBuf));
EXTERN S16 cmPkYsSapSta ARGS((YsSapSta *sta, Buffer *mBuf));
/* lys_x_001.main_3: ccpu00118324 eventtype passed as arg */
EXTERN S16 cmPkYsSsta ARGS((Pst *pst, YsSsta *ssta,S16 elmnt,U8 eventType, Buffer *mBuf));
EXTERN S16 cmPkYsUstaDgn ARGS((YsUstaDgn *param, Buffer *mBuf));
EXTERN S16 cmPkYsUsta ARGS((YsUsta *usta, Buffer *mBuf));
EXTERN S16 cmPkYsTrc ARGS((YsTrc *trc,Buffer *mBuf));
EXTERN S16 cmPkYsDbgCntrl ARGS((YsDbgCntrl *cntrl, Buffer *mBuf));
EXTERN S16 cmPkYsSapCntrl ARGS((YsSapCntrl *cntrl, Buffer *mBuf));
EXTERN S16 cmPkYsCntrl ARGS((YsCntrl *cntrl, S16 elmnt, Buffer *mBuf));

EXTERN S16 cmUnpkYsMngmt ARGS((Pst *pst, YsMngmt *req,U8 eventType, Buffer *mBuf));
EXTERN S16 cmUnpkYsGenCfg ARGS((YsGenCfg *cfg,Buffer *mBuf));
EXTERN S16 cmUnpkYsTfuSapCfg ARGS(( YsTfuSapCfg *cfg, Buffer *mBuf));
EXTERN S16 cmUnpkYsCtfSapCfg ARGS((YsCtfSapCfg *cfg, Buffer *mBuf));
EXTERN S16 cmUnpkYsCfg ARGS((YsCfg *cfg, S16 elmnt, Buffer *mBuf));
EXTERN S16 cmUnpkYsCtfSapSts ARGS((YsCtfSapSts *sts, Buffer *mBuf));
EXTERN S16 cmUnpkYsTfuSapSts ARGS((YsTfuSapSts *sts, Buffer *mBuf));
EXTERN S16 cmUnpkYsPhySts ARGS((YsL1PhySts *cfg, Buffer *mBuf));
EXTERN S16 cmUnpkYsSts ARGS((YsSts *sts, S16 elmnt,Buffer *mBuf));
EXTERN S16 cmUnpkYsSapSta ARGS((YsSapSta *sta, Buffer *mBuf));
EXTERN S16 cmUnpkYsSsta ARGS((Pst *pst, YsSsta *ssta,S16 elmnt, Buffer *mBuf));
EXTERN S16 cmUnpkYsUstaDgn ARGS(( YsUstaDgn *param, Buffer *mBuf));
EXTERN S16 cmUnpkYsUsta ARGS((YsUsta *usta, Buffer *mBuf));
EXTERN S16 cmUnpkYsTrc ARGS((YsTrc *trc,Buffer *mBuf));
EXTERN S16 cmUnpkYsDbgCntrl ARGS((YsDbgCntrl *cntrl, Buffer *mBuf));
EXTERN S16 cmUnpkYsSapCntrl ARGS((YsSapCntrl *cntrl, Buffer *mBuf));
EXTERN S16 cmUnpkYsCntrl ARGS((YsCntrl *cntrl, S16 elmnt, Buffer *mBuf));
#ifdef E_TM
EXTERN S16 cmPkYsEtmInit ARGS((YsEtmInit *param, Buffer *mBuf));
EXTERN S16 cmPkYsEtmCfg ARGS((YsEtmCfg *param, Buffer *mBuf));
EXTERN S16 cmPkLysSrsUlCfgInfo ARGS((LysSrsUlCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmPkLysPdschCfgInfo ARGS((LysPdschCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmPkLysPrachCfgInfo ARGS((LysPrachCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmPkLysAntennaCfgInfo ARGS((LysAntennaCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmPkLysTxSchemeCfg ARGS((LysTxSchemeCfg *param, Buffer *mBuf));
EXTERN S16 cmPkLysBwCfgInfo ARGS((LysBwCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmPkLysCellCfgInfo ARGS((LysCellCfgInfo *param, Buffer *mBuf));

EXTERN S16 cmUnpkYsEtmInit ARGS((YsEtmInit *param, Buffer *mBuf));
EXTERN S16 cmUnpkYsEtmCfg ARGS((YsEtmCfg *param, Buffer *mBuf));
EXTERN S16 cmUnpkLysSrsUlCfgInfo ARGS((LysSrsUlCfgInfo *param, Buffer *mBuf));
EXTERN S16 cUnpkLysPdschCfgInfo ARGS((LysPdschCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmUnpkLysPrachCfgInfo ARGS((LysPrachCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmUnpkLysAntennaCfgInfo ARGS((LysAntennaCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmUnpkLysTxSchemeCfg ARGS((LysTxSchemeCfg *param, Buffer *mBuf));
EXTERN S16 cmUnpkLysBwCfgInfo ARGS((LysBwCfgInfo *param, Buffer *mBuf));
EXTERN S16 cmUnpkLysCellCfgInfo ARGS((LysCellCfgInfo *param, Buffer *mBuf));
#ifdef TENB_T3K_SPEC_CHNGS
/*Added Packing and Unpacking functions prototypes for log stream info*/
EXTERN S16 cmPkYslogStrmInfo ARGS((YsCtfLogStrmInfo *param,S16 elmnt,
Buffer *mBuf));
EXTERN S16 cmUnpkYslogStrmInfo ARGS((YsCtfLogStrmInfo *param,S16 elmnt,
Buffer *mBuf));
EXTERN S16 cmPkLysLogStrmInfoReq ARGS((Pst * pst,YsMngmt * logInfoReq));
EXTERN S16 cmUnpkLysLogStrmInfoReq ARGS ((LysLogStrmInfoReq func,Pst *pst,
Buffer *mBuf));
EXTERN S16 cmPkYsLogStrmInfo ARGS (( YsCtfLogStrmInfo *param,Buffer *mBuf));
EXTERN  S16 cmUnpkYsLogStrmInfo ARGS ((YsCtfLogStrmInfo *param,Buffer *mBuf));
EXTERN S16 cmPkLysLogStrmInfoCfm ARGS ((Pst * pst,YsCtfLogStrmInfoCfm* cfm));
EXTERN S16 cmUnpkLysLogStrmInfoCfm ARGS ((LysLogStrmInfoCfm func,Pst *pst,
Buffer *mBuf));
#endif /* TENB_T3K_SPEC_CHNGS*/

#endif /* E_TM */
#endif 
#ifdef __cplusplus
}
#endif
#endif /* __LYS_X__. */


/**********************************************************************
         End of file:     lys.x@@/main/4 - Tue Aug 30 18:13:51 2011
**********************************************************************/
/**********************************************************************
 
        Revision history:
 
**********************************************************************/
/********************************************************************90**
 
     ver       pat    init                  description
------------ -------- ---- ----------------------------------------------
/main/1      ---     ys               1. Initial Release.
/main/2      ---      lys_x_001.main_1 apany      1. Additional PHY stats info
/main/3      ---      lys_x_001.main_2 ms  1. added preprocessor to support cplusplus
/main/4      ---    lys_x_001.main_3   ms  1. eventtype passed as arg.
*********************************************************************91*/

