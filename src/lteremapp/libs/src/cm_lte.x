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


/********************************************************************20**
  
        Name:    Common LTE
    
        Type:    C include file
  
        Desc:    This file Contains the Data structures for Common LTE
 
        File:    cm_lte.x

        Sid:      cm_lte.x@@/main/2 - Fri Nov 13 14:09:17 2009
  
        Prg:     chakrapani
  
*********************************************************************21*/

#ifndef __CM_LTE_X__
#define __CM_LTE_X__

#include <cm_lte.h>
/* Packing Defines */
#define cmPkLteRbId              SPkU8
#define cmPkLteRnti              SPkU16
#define cmPkLteCellId            SPkU16
#define cmPkLteRlcMode           SPkU8
#define cmPkLteLcId              SPkU8
#define cmPkLteLcType            SPkU8
#define cmPkLteAggrLvl           SPkU32

/* Unpacking Defines */
#define cmUnpkLteRbId            SUnpkU8
#define cmUnpkLteRnti            SUnpkU16
#define cmUnpkLteCellId          SUnpkU16
#define cmUnpkLteRlcMode         SUnpkU8
#define cmUnpkLteLcId            SUnpkU8
#define cmUnpkLteLcType          SUnpkU8
#define cmUnpkLteAggrLvl         SUnpkU32

#define MAX_POOL_SIZE        6      /*!< Maximum pool size */
#define MAX_REGION_SIZE      5      /*!< Maximum Region size */
#ifdef PACK_STRUCT
#define CM_PACK_STRUCT __attribute__((packed))
#else
#define CM_PACK_STRUCT
#endif




#ifdef __cplusplus
EXTERN "C" {
#endif  /*__cplusplus*/

/** @file cm_lte.x
    @brief CM_LTE Interface File (cm_lte.x)
*/
 
/* definitions for Common LTE */

/** @brief Radio Bearer ID */
typedef U8    CmLteRbId;

/** @brief Cell ID */
typedef U16   CmLteCellId;

/** @brief RNTI */
typedef U16   CmLteRnti;

/** @brief Mode Type TM/UM/AM */
typedef U8    CmLteRlcMode;

/** @brief Logical Channel ID */
typedef U8    CmLteLcId;         

/** @brief Logical Channel Type */
typedef U8    CmLteLcType;         

/** @brief Transport Channel Type */
typedef U8    CmLteTrchType;         

/** @brief Contention Resolution ID */
typedef U8 CmLteContResId[6];

/** @brief RLC ID */
typedef struct cmLteRlcId
{
  CmLteRbId     rbId;   /*!< Radio Bearer ID */
  U8            rbType; /*!< RB Type */
  CmLteRnti     ueId;   /*!< UE ID */
  CmLteCellId   cellId; /*!< Cell ID */
}CmLteRlcId;

/** @brief LTE Timing Info */
typedef struct cmLteTimingInfo
{
   U16 sfn;                  /*!< System Frame Number */
   U8  subframe;             /*!< Subframe number */
} CmLteTimingInfo;

/** @brief PDCP ID */
typedef struct cmLtePdcpId
{
   CmLteCellId   cellId;      /*!< Cell ID */
   CmLteRnti     ueId;        /*!< UE ID */
   CmLteRbId     rbId;        /*!< PDCP Instance ID */
   U8            rbType;      /*!< RB type */
} CmLtePdcpId;

/* Defining structures for Memory Information for L2-MEAS */
typedef struct cmLtePoolInfo
{
   U32   poolSize;
   U32   totAvailable;
   U32   crntUsed;
   U32   maxUsed;
} CmLtePoolInfo;

typedef struct cmLteRegionInfo
{
   U8   regionType; /* 0-SSI 1-Shared */
   U8   regionId;
   U8   numPools;
   U8   isGenMemInfoUpdated;
   CmLtePoolInfo poolInfo[MAX_POOL_SIZE];
}CmLteRegionInfo;

typedef struct cmLteMemInfo
{
   U8           numRegions;
   U8           idx;
   CmLteRegionInfo   regInfo[MAX_REGION_SIZE];
}CmLteMemInfo;

/** @brief CPU Utilization INFO */
typedef struct cmLteCpuUtilInfo
{
   U32      avgCpuUtil; /*!< average cpu utilization */
   U32      maxCpuUtil; /*!< Max cpu utilization */
}CmLteCpuUtilInfo;

/** @brief CPU INFO */
typedef struct cmLteCpuInfo
{
   U8       numCores;        /*!< number of cores*/
   CmLteCpuUtilInfo cpuUtil[CM_MAX_CPU_CORES]; /*!< cpu measurement info*/
}CmLteCpuInfo;
/** @brief CPU Utilization INFO */
typedef struct cmCpuUtilStatsInfo
{
   U32      numSamples;
   U32      maxCpuUtil; /*!< Max cpu utilization */
   U32      totCpuUtil; /*!< Total cpu utilization */
}CmCpuUtilStatsInfo;

/** @brief CPU INFO */
typedef struct cmCpuStatsInfo
{
   U8       numCores;        /*!< number of cores*/
   CmCpuUtilStatsInfo cpuUtil[CM_MAX_CPU_CORES]; /*!< cpu measurement info*/
}CmCpuStatsInfo;




/** @brief Counter Statistics */
typedef U32  CntrSts;

/** @brief Aggregation Level */
typedef enum cmLteAggrLvl
{
   CM_LTE_AGGR_LVL1 = 1,  /*!< Aggregation level 1 */
   CM_LTE_AGGR_LVL2 = 2,  /*!< Aggregation level 2 */
   CM_LTE_AGGR_LVL4 = 3,  /*!< Aggregation level 3 */
   CM_LTE_AGGR_LVL8 = 4   /*!< Aggregation level 4 */
} CmLteAggrLvl;

/** @brief UE Category */
typedef enum cmLteUeCategory
{
   CM_LTE_UE_CAT_1 = 1,
   CM_LTE_UE_CAT_2,
   CM_LTE_UE_CAT_3,
   CM_LTE_UE_CAT_4,
   CM_LTE_UE_CAT_5,
   CM_LTE_UE_CAT_6,
   CM_LTE_UE_CAT_7, /* RRC-REL10-Upgrade */
   CM_LTE_UE_CAT_8
} CmLteUeCategory;

/****************************************************************************
 *                         PACK/UNPACK Functions
 ***************************************************************************/

EXTERN PUBLIC S16 cmUpdateSsiMemInfo(CmLteMemInfo *mInfo);

EXTERN PUBLIC S16 cmFillMemUtilizationMeas(CmLteMemInfo *memoryInfo,CmLteMemInfo *memInfo);

EXTERN PUBLIC S16 cmClearMemUtilizationCounter(CmLteMemInfo *memInfo);
EXTERN PUBLIC S16 UpdateSocMemInfo(U8 area , CmLteMemInfo *mInfo);

EXTERN S16 cmFillCpuUtilizationMeas(CmLteCpuInfo *cpuMeasInfo,CmCpuStatsInfo *cpuInfo);

EXTERN S16 cmClearCpuUtilizationCounter(CmCpuStatsInfo *cpuInfo);
EXTERN PUBLIC Void UpdateSocCpuInfo(CmCpuStatsInfo *cpuInfo,U8 Idx);

EXTERN PUBLIC S16 SGetRegPoolInfo(U8* numRegion, U8* numPool);

/* Packing Functions */
EXTERN S16 cmPkLteRlcId ARGS ((
CmLteRlcId *param,
Buffer *mBuf
));

EXTERN S16 cmPkLteTimingInfo ARGS ((
CmLteTimingInfo *param,
Buffer *mBuf
));

EXTERN S16 cmPkLtePdcpId ARGS ((
CmLtePdcpId *param,
Buffer *mBuf
));

/* Unpack Function */
EXTERN S16 cmUnpkLteRlcId ARGS ((
CmLteRlcId *param,
Buffer *mBuf
));

EXTERN S16 cmUnpkLteTimingInfo ARGS ((
CmLteTimingInfo *param,
Buffer *mBuf
));

EXTERN S16 cmUnpkLtePdcpId ARGS ((
CmLtePdcpId *param,
Buffer *mBuf
));

#ifdef TENB_TTI_PERF

typedef struct cmTtiProc 
{
	U32 totTtiProcessingTime;
	U32 numOfTti;
	U32 maxTtiProcessingTime;
	U32 ttiStretchCount;
	U32 ttiThresholdExceedCount;
	/* this count is added to compare phy reported tti stretch and calculated tti stretch */
	U32 phyReptTtiStretchCount;
}CmTtiProc;

EXTERN CmTtiProc ttiProc;

EXTERN Void cmUpdateTtiCounters(U32 ttiProcessingTime);
EXTERN Void cmResetTtiCounters(Void); 
#endif

#ifdef __cplusplus
}
#endif /* __cplusplus */
#endif /* __CM_LTE_X__ */

/********************************************************************30**
  
         End of file:     cm_lte.x@@/main/2 - Fri Nov 13 14:09:17 2009
  
*********************************************************************31*/


/********************************************************************40**
  
        Notes:
  
*********************************************************************41*/

/********************************************************************50**

*********************************************************************51*/


/********************************************************************60**
  
        Revision history:
  
*********************************************************************61*/
  
/********************************************************************90**

     ver       pat    init                  description
----------- -------- ---- -----------------------------------------------
/main/1      ---      cp   1. initial release.
*********************************************************************91*/
