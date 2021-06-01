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

     Name:     EnodeB Application

     Type:     C source file

     Desc:     This file contains 
               

     File:     wr_smm_init.c

     Sid:      $SID$ 

     Prg:      Sriky 

*********************************************************************21*/
#ifndef __CZTPKX__
#define __CZTPKX__ 


#ifdef __cplusplus
extern "C" {
#endif /*__cplusplus*/

EXTERN S16 cmPkCztPrivIE_ID ARGS ((CztPrivIE_ID *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnABSInformFDD_ExtIEsCls ARGS ((Czt_ExtnABSInformFDD_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_ABSInformFDD_ExtIEs ARGS ((CztProtExtnField_ABSInformFDD_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_ABSInformFDD_ExtIEs ARGS ((CztProtExtnCont_ABSInformFDD_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztABSInformFDD ARGS ((CztABSInformFDD *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnABSInformTDD_ExtIEsCls ARGS ((Czt_ExtnABSInformTDD_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_ABSInformTDD_ExtIEs ARGS ((CztProtExtnField_ABSInformTDD_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_ABSInformTDD_ExtIEs ARGS ((CztProtExtnCont_ABSInformTDD_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztABSInformTDD ARGS ((CztABSInformTDD *param, Buffer *mBuf));
EXTERN S16 cmPkCztABSInform ARGS ((CztABSInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnUsableABSInformFDD_ExtIEsCls ARGS ((Czt_ExtnUsableABSInformFDD_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_UsableABSInformFDD_ExtIEs ARGS ((CztProtExtnField_UsableABSInformFDD_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_UsableABSInformFDD_ExtIEs ARGS ((CztProtExtnCont_UsableABSInformFDD_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztUsableABSInformFDD ARGS ((CztUsableABSInformFDD *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnUsableABSInformTDD_ExtIEsCls ARGS ((Czt_ExtnUsableABSInformTDD_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_UsableABSInformTDD_ExtIEs ARGS ((CztProtExtnField_UsableABSInformTDD_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_UsableABSInformTDD_ExtIEs ARGS ((CztProtExtnCont_UsableABSInformTDD_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztUsableABSInformTDD ARGS ((CztUsableABSInformTDD *param, Buffer *mBuf));
EXTERN S16 cmPkCztUsableABSInform ARGS ((CztUsableABSInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnABS_Status_ExtIEsCls ARGS ((Czt_ExtnABS_Status_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_ABS_Status_ExtIEs ARGS ((CztProtExtnField_ABS_Status_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_ABS_Status_ExtIEs ARGS ((CztProtExtnCont_ABS_Status_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztABS_Status ARGS ((CztABS_Status *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnAdditionalSpecialSubframe_Info_ExtIEsCls ARGS ((Czt_ExtnAdditionalSpecialSubframe_Info_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_AdditionalSpecialSubframe_Info_ExtIEs ARGS ((CztProtExtnField_AdditionalSpecialSubframe_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_AdditionalSpecialSubframe_Info_ExtIEs ARGS ((CztProtExtnCont_AdditionalSpecialSubframe_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztAdditionalSpecialSubframe_Info ARGS ((CztAdditionalSpecialSubframe_Info *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnAS_SecurInform_ExtIEsCls ARGS ((Czt_ExtnAS_SecurInform_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_AS_SecurInform_ExtIEs ARGS ((CztProtExtnField_AS_SecurInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_AS_SecurInform_ExtIEs ARGS ((CztProtExtnCont_AS_SecurInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztAS_SecurInform ARGS ((CztAS_SecurInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnAllocnAndRetentionPriority_ExtIEsCls ARGS ((Czt_ExtnAllocnAndRetentionPriority_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_AllocnAndRetentionPriority_ExtIEs ARGS ((CztProtExtnField_AllocnAndRetentionPriority_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_AllocnAndRetentionPriority_ExtIEs ARGS ((CztProtExtnCont_AllocnAndRetentionPriority_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztAllocnAndRetentionPriority ARGS ((CztAllocnAndRetentionPriority *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnECGI_ExtIEsCls ARGS ((Czt_ExtnECGI_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_ECGI_ExtIEs ARGS ((CztProtExtnField_ECGI_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_ECGI_ExtIEs ARGS ((CztProtExtnCont_ECGI_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztECGI ARGS ((CztECGI *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellIdLstforMDT ARGS ((CztCellIdLstforMDT *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCellBasedMDT_ExtIEsCls ARGS ((Czt_ExtnCellBasedMDT_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CellBasedMDT_ExtIEs ARGS ((CztProtExtnField_CellBasedMDT_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CellBasedMDT_ExtIEs ARGS ((CztProtExtnCont_CellBasedMDT_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellBasedMDT ARGS ((CztCellBasedMDT *param, Buffer *mBuf));
EXTERN S16 cmPkCztTALstforMDT ARGS ((CztTALstforMDT *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnTABasedMDT_ExtIEsCls ARGS ((Czt_ExtnTABasedMDT_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_TABasedMDT_ExtIEs ARGS ((CztProtExtnField_TABasedMDT_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_TABasedMDT_ExtIEs ARGS ((CztProtExtnCont_TABasedMDT_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztTABasedMDT ARGS ((CztTABasedMDT *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnTAI_Item_ExtIEsCls ARGS ((Czt_ExtnTAI_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_TAI_Item_ExtIEs ARGS ((CztProtExtnField_TAI_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_TAI_Item_ExtIEs ARGS ((CztProtExtnCont_TAI_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztTAI_Item ARGS ((CztTAI_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCztTAILstforMDT ARGS ((CztTAILstforMDT *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnTAIBasedMDT_ExtIEsCls ARGS ((Czt_ExtnTAIBasedMDT_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_TAIBasedMDT_ExtIEs ARGS ((CztProtExtnField_TAIBasedMDT_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_TAIBasedMDT_ExtIEs ARGS ((CztProtExtnCont_TAIBasedMDT_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztTAIBasedMDT ARGS ((CztTAIBasedMDT *param, Buffer *mBuf));
EXTERN S16 cmPkCztAreaScopeOfMDT ARGS ((CztAreaScopeOfMDT *param, Buffer *mBuf));
EXTERN S16 cmPkCztBroadcastPLMNs_Item ARGS ((CztBroadcastPLMNs_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCztCause ARGS ((CztCause *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCellTyp_ExtIEsCls ARGS ((Czt_ExtnCellTyp_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CellTyp_ExtIEs ARGS ((CztProtExtnField_CellTyp_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CellTyp_ExtIEs ARGS ((CztProtExtnCont_CellTyp_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellTyp ARGS ((CztCellTyp *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCompositeAvailableCapacity_ExtIEsCls ARGS ((Czt_ExtnCompositeAvailableCapacity_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CompositeAvailableCapacity_ExtIEs ARGS ((CztProtExtnField_CompositeAvailableCapacity_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CompositeAvailableCapacity_ExtIEs ARGS ((CztProtExtnCont_CompositeAvailableCapacity_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCompositeAvailableCapacity ARGS ((CztCompositeAvailableCapacity *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCompositeAvailableCapacityGroup_ExtIEsCls ARGS ((Czt_ExtnCompositeAvailableCapacityGroup_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CompositeAvailableCapacityGroup_ExtIEs ARGS ((CztProtExtnField_CompositeAvailableCapacityGroup_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CompositeAvailableCapacityGroup_ExtIEs ARGS ((CztProtExtnCont_CompositeAvailableCapacityGroup_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCompositeAvailableCapacityGroup ARGS ((CztCompositeAvailableCapacityGroup *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCOUNTvalue_ExtIEsCls ARGS ((Czt_ExtnCOUNTvalue_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_COUNTvalue_ExtIEs ARGS ((CztProtExtnField_COUNTvalue_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_COUNTvalue_ExtIEs ARGS ((CztProtExtnCont_COUNTvalue_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCOUNTvalue ARGS ((CztCOUNTvalue *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCOUNTValueExtended_ExtIEsCls ARGS ((Czt_ExtnCOUNTValueExtended_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_COUNTValueExtended_ExtIEs ARGS ((CztProtExtnField_COUNTValueExtended_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_COUNTValueExtended_ExtIEs ARGS ((CztProtExtnCont_COUNTValueExtended_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCOUNTValueExtended ARGS ((CztCOUNTValueExtended *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCriticalityDiag_IE_Lst_ExtIEsCls ARGS ((Czt_ExtnCriticalityDiag_IE_Lst_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CriticalityDiag_IE_Lst_ExtIEs ARGS ((CztProtExtnField_CriticalityDiag_IE_Lst_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CriticalityDiag_IE_Lst_ExtIEs ARGS ((CztProtExtnCont_CriticalityDiag_IE_Lst_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCriticalityDiag_IE_LstMember ARGS ((CztCriticalityDiag_IE_LstMember *param, Buffer *mBuf));
EXTERN S16 cmPkCztCriticalityDiag_IE_Lst ARGS ((CztCriticalityDiag_IE_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCriticalityDiag_ExtIEsCls ARGS ((Czt_ExtnCriticalityDiag_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CriticalityDiag_ExtIEs ARGS ((CztProtExtnField_CriticalityDiag_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CriticalityDiag_ExtIEs ARGS ((CztProtExtnCont_CriticalityDiag_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCriticalityDiag ARGS ((CztCriticalityDiag *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnFDD_Info_ExtIEsCls ARGS ((Czt_ExtnFDD_Info_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_FDD_Info_ExtIEs ARGS ((CztProtExtnField_FDD_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_FDD_Info_ExtIEs ARGS ((CztProtExtnCont_FDD_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztFDD_Info ARGS ((CztFDD_Info *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnSpecialSubframe_Info_ExtIEsCls ARGS ((Czt_ExtnSpecialSubframe_Info_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_SpecialSubframe_Info_ExtIEs ARGS ((CztProtExtnField_SpecialSubframe_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_SpecialSubframe_Info_ExtIEs ARGS ((CztProtExtnCont_SpecialSubframe_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztSpecialSubframe_Info ARGS ((CztSpecialSubframe_Info *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnTDD_Info_ExtIEsCls ARGS ((Czt_ExtnTDD_Info_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_TDD_Info_ExtIEs ARGS ((CztProtExtnField_TDD_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_TDD_Info_ExtIEs ARGS ((CztProtExtnCont_TDD_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztTDD_Info ARGS ((CztTDD_Info *param, Buffer *mBuf));
EXTERN S16 cmPkCztEUTRA_Mode_Info ARGS ((CztEUTRA_Mode_Info *param, Buffer *mBuf));
EXTERN S16 cmPkCztENB_ID ARGS ((CztENB_ID *param, Buffer *mBuf));
EXTERN S16 cmPkCztEPLMNs ARGS ((CztEPLMNs *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnGBR_QosInform_ExtIEsCls ARGS ((Czt_ExtnGBR_QosInform_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_GBR_QosInform_ExtIEs ARGS ((CztProtExtnField_GBR_QosInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_GBR_QosInform_ExtIEs ARGS ((CztProtExtnCont_GBR_QosInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztGBR_QosInform ARGS ((CztGBR_QosInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnE_RAB_Lvl_QoS_Params_ExtIEsCls ARGS ((Czt_ExtnE_RAB_Lvl_QoS_Params_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_E_RAB_Lvl_QoS_Params_ExtIEs ARGS ((CztProtExtnField_E_RAB_Lvl_QoS_Params_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_E_RAB_Lvl_QoS_Params_ExtIEs ARGS ((CztProtExtnCont_E_RAB_Lvl_QoS_Params_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RAB_Lvl_QoS_Params ARGS ((CztE_RAB_Lvl_QoS_Params *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnE_RAB_Item_ExtIEsCls ARGS ((Czt_ExtnE_RAB_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_E_RAB_Item_ExtIEs ARGS ((CztProtExtnField_E_RAB_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_E_RAB_Item_ExtIEs ARGS ((CztProtExtnCont_E_RAB_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RAB_Item ARGS ((CztE_RAB_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueE_RAB_ItemIEsCls ARGS ((Czt_ValueE_RAB_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_E_RAB_ItemIEs ARGS ((CztProtIE_Field_E_RAB_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RAB_Lst ARGS ((CztE_RAB_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCztForbiddenTACs ARGS ((CztForbiddenTACs *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnForbiddenTAs_Item_ExtIEsCls ARGS ((Czt_ExtnForbiddenTAs_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_ForbiddenTAs_Item_ExtIEs ARGS ((CztProtExtnField_ForbiddenTAs_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_ForbiddenTAs_Item_ExtIEs ARGS ((CztProtExtnCont_ForbiddenTAs_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztForbiddenTAs_Item ARGS ((CztForbiddenTAs_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCztForbiddenTAs ARGS ((CztForbiddenTAs *param, Buffer *mBuf));
EXTERN S16 cmPkCztForbiddenLACs ARGS ((CztForbiddenLACs *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnForbiddenLAs_Item_ExtIEsCls ARGS ((Czt_ExtnForbiddenLAs_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_ForbiddenLAs_Item_ExtIEs ARGS ((CztProtExtnField_ForbiddenLAs_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_ForbiddenLAs_Item_ExtIEs ARGS ((CztProtExtnCont_ForbiddenLAs_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztForbiddenLAs_Item ARGS ((CztForbiddenLAs_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCztForbiddenLAs ARGS ((CztForbiddenLAs *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnGlobalENB_ID_ExtIEsCls ARGS ((Czt_ExtnGlobalENB_ID_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_GlobalENB_ID_ExtIEs ARGS ((CztProtExtnField_GlobalENB_ID_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_GlobalENB_ID_ExtIEs ARGS ((CztProtExtnCont_GlobalENB_ID_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztGlobalENB_ID ARGS ((CztGlobalENB_ID *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnGTPtunnelEndpoint_ExtIEsCls ARGS ((Czt_ExtnGTPtunnelEndpoint_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_GTPtunnelEndpoint_ExtIEs ARGS ((CztProtExtnField_GTPtunnelEndpoint_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_GTPtunnelEndpoint_ExtIEs ARGS ((CztProtExtnCont_GTPtunnelEndpoint_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztGTPtunnelEndpoint ARGS ((CztGTPtunnelEndpoint *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnGU_Group_ID_ExtIEsCls ARGS ((Czt_ExtnGU_Group_ID_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_GU_Group_ID_ExtIEs ARGS ((CztProtExtnField_GU_Group_ID_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_GU_Group_ID_ExtIEs ARGS ((CztProtExtnCont_GU_Group_ID_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztGU_Group_ID ARGS ((CztGU_Group_ID *param, Buffer *mBuf));
EXTERN S16 cmPkCztGUGroupIDLst ARGS ((CztGUGroupIDLst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnGUMMEI_ExtIEsCls ARGS ((Czt_ExtnGUMMEI_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_GUMMEI_ExtIEs ARGS ((CztProtExtnField_GUMMEI_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_GUMMEI_ExtIEs ARGS ((CztProtExtnCont_GUMMEI_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztGUMMEI ARGS ((CztGUMMEI *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnHovrRestrnLst_ExtIEsCls ARGS ((Czt_ExtnHovrRestrnLst_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_HovrRestrnLst_ExtIEs ARGS ((CztProtExtnField_HovrRestrnLst_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_HovrRestrnLst_ExtIEs ARGS ((CztProtExtnCont_HovrRestrnLst_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztHovrRestrnLst ARGS ((CztHovrRestrnLst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnHWLoadIndicator_ExtIEsCls ARGS ((Czt_ExtnHWLoadIndicator_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_HWLoadIndicator_ExtIEs ARGS ((CztProtExtnField_HWLoadIndicator_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_HWLoadIndicator_ExtIEs ARGS ((CztProtExtnCont_HWLoadIndicator_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztHWLoadIndicator ARGS ((CztHWLoadIndicator *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnLastVisitedEUTRANCellInform_ExtIEsCls ARGS ((Czt_ExtnLastVisitedEUTRANCellInform_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_LastVisitedEUTRANCellInform_ExtIEs ARGS ((CztProtExtnField_LastVisitedEUTRANCellInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_LastVisitedEUTRANCellInform_ExtIEs ARGS ((CztProtExtnCont_LastVisitedEUTRANCellInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztLastVisitedEUTRANCellInform ARGS ((CztLastVisitedEUTRANCellInform *param, Buffer *mBuf));
EXTERN S16 cmPkCztLastVisitedGERANCellInform ARGS ((CztLastVisitedGERANCellInform *param, Buffer *mBuf));
EXTERN S16 cmPkCztLastVisitedCell_Item ARGS ((CztLastVisitedCell_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnLocRprtngInform_ExtIEsCls ARGS ((Czt_ExtnLocRprtngInform_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_LocRprtngInform_ExtIEs ARGS ((CztProtExtnField_LocRprtngInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_LocRprtngInform_ExtIEs ARGS ((CztProtExtnCont_LocRprtngInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztLocRprtngInform ARGS ((CztLocRprtngInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnM3Config_ExtIEsCls ARGS ((Czt_ExtnM3Config_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_M3Config_ExtIEs ARGS ((CztProtExtnField_M3Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_M3Config_ExtIEs ARGS ((CztProtExtnCont_M3Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztM3Config ARGS ((CztM3Config *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnM4Config_ExtIEsCls ARGS ((Czt_ExtnM4Config_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_M4Config_ExtIEs ARGS ((CztProtExtnField_M4Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_M4Config_ExtIEs ARGS ((CztProtExtnCont_M4Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztM4Config ARGS ((CztM4Config *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnM5Config_ExtIEsCls ARGS ((Czt_ExtnM5Config_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_M5Config_ExtIEs ARGS ((CztProtExtnField_M5Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_M5Config_ExtIEs ARGS ((CztProtExtnCont_M5Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztM5Config ARGS ((CztM5Config *param, Buffer *mBuf));
EXTERN S16 cmPkCztMeasurementThresholdA2 ARGS ((CztMeasurementThresholdA2 *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnM1ThresholdEventA2_ExtIEsCls ARGS ((Czt_ExtnM1ThresholdEventA2_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_M1ThresholdEventA2_ExtIEs ARGS ((CztProtExtnField_M1ThresholdEventA2_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_M1ThresholdEventA2_ExtIEs ARGS ((CztProtExtnCont_M1ThresholdEventA2_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztM1ThresholdEventA2 ARGS ((CztM1ThresholdEventA2 *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnM1PeriodicRprtng_ExtIEsCls ARGS ((Czt_ExtnM1PeriodicRprtng_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_M1PeriodicRprtng_ExtIEs ARGS ((CztProtExtnField_M1PeriodicRprtng_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_M1PeriodicRprtng_ExtIEs ARGS ((CztProtExtnCont_M1PeriodicRprtng_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztM1PeriodicRprtng ARGS ((CztM1PeriodicRprtng *param, Buffer *mBuf));
EXTERN S16 cmPkCztMDTPLMNLst ARGS ((CztMDTPLMNLst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnMDT_Config_ExtIEsCls ARGS ((Czt_ExtnMDT_Config_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_MDT_Config_ExtIEs ARGS ((CztProtExtnField_MDT_Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_MDT_Config_ExtIEs ARGS ((CztProtExtnCont_MDT_Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMDT_Config ARGS ((CztMDT_Config *param, Buffer *mBuf));
EXTERN S16 cmPkCztMBMS_Service_Area_Identity_Lst ARGS ((CztMBMS_Service_Area_Identity_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCztSubframeAllocn ARGS ((CztSubframeAllocn *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnMBSFN_Subframe_Info_ExtIEsCls ARGS ((Czt_ExtnMBSFN_Subframe_Info_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_MBSFN_Subframe_Info_ExtIEs ARGS ((CztProtExtnField_MBSFN_Subframe_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_MBSFN_Subframe_Info_ExtIEs ARGS ((CztProtExtnCont_MBSFN_Subframe_Info_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMBSFN_Subframe_Info ARGS ((CztMBSFN_Subframe_Info *param, Buffer *mBuf));
EXTERN S16 cmPkCztMBSFN_Subframe_Infolist ARGS ((CztMBSFN_Subframe_Infolist *param, Buffer *mBuf));
EXTERN S16 cmPkCztMobilityParamsModificationRange ARGS ((CztMobilityParamsModificationRange *param, Buffer *mBuf));
EXTERN S16 cmPkCztMobilityParamsInform ARGS ((CztMobilityParamsInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnBandInfo_ExtIEsCls ARGS ((Czt_ExtnBandInfo_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_BandInfo_ExtIEs ARGS ((CztProtExtnField_BandInfo_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_BandInfo_ExtIEs ARGS ((CztProtExtnCont_BandInfo_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztBandInfo ARGS ((CztBandInfo *param, Buffer *mBuf));
EXTERN S16 cmPkCztMultibandInfoLst ARGS ((CztMultibandInfoLst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnNeighbour_Inform_ExtIEsCls ARGS ((Czt_ExtnNeighbour_Inform_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_Neighbour_Inform_ExtIEs ARGS ((CztProtExtnField_Neighbour_Inform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_Neighbour_Inform_ExtIEs ARGS ((CztProtExtnCont_Neighbour_Inform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztNeighbour_InformMember ARGS ((CztNeighbour_InformMember *param, Buffer *mBuf));
EXTERN S16 cmPkCztNeighbour_Inform ARGS ((CztNeighbour_Inform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnPRACH_Config_ExtIEsCls ARGS ((Czt_ExtnPRACH_Config_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_PRACH_Config_ExtIEs ARGS ((CztProtExtnField_PRACH_Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_PRACH_Config_ExtIEs ARGS ((CztProtExtnCont_PRACH_Config_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztPRACH_Config ARGS ((CztPRACH_Config *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnRadioResStatus_ExtIEsCls ARGS ((Czt_ExtnRadioResStatus_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_RadioResStatus_ExtIEs ARGS ((CztProtExtnField_RadioResStatus_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_RadioResStatus_ExtIEs ARGS ((CztProtExtnCont_RadioResStatus_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztRadioResStatus ARGS ((CztRadioResStatus *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnRelativeNarrowbandTxPower_ExtIEsCls ARGS ((Czt_ExtnRelativeNarrowbandTxPower_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_RelativeNarrowbandTxPower_ExtIEs ARGS ((CztProtExtnField_RelativeNarrowbandTxPower_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_RelativeNarrowbandTxPower_ExtIEs ARGS ((CztProtExtnCont_RelativeNarrowbandTxPower_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztRelativeNarrowbandTxPower ARGS ((CztRelativeNarrowbandTxPower *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnS1TNLLoadIndicator_ExtIEsCls ARGS ((Czt_ExtnS1TNLLoadIndicator_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_S1TNLLoadIndicator_ExtIEs ARGS ((CztProtExtnField_S1TNLLoadIndicator_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_S1TNLLoadIndicator_ExtIEs ARGS ((CztProtExtnCont_S1TNLLoadIndicator_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztS1TNLLoadIndicator ARGS ((CztS1TNLLoadIndicator *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnSrvdCell_Inform_ExtIEsCls ARGS ((Czt_ExtnSrvdCell_Inform_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_SrvdCell_Inform_ExtIEs ARGS ((CztProtExtnField_SrvdCell_Inform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_SrvdCell_Inform_ExtIEs ARGS ((CztProtExtnCont_SrvdCell_Inform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztSrvdCell_Inform ARGS ((CztSrvdCell_Inform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnSrvdCell_ExtIEsCls ARGS ((Czt_ExtnSrvdCell_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_SrvdCell_ExtIEs ARGS ((CztProtExtnField_SrvdCell_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_SrvdCell_ExtIEs ARGS ((CztProtExtnCont_SrvdCell_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztSrvdCellsMember ARGS ((CztSrvdCellsMember *param, Buffer *mBuf));
EXTERN S16 cmPkCztSrvdCells ARGS ((CztSrvdCells *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnTraceActvn_ExtIEsCls ARGS ((Czt_ExtnTraceActvn_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_TraceActvn_ExtIEs ARGS ((CztProtExtnField_TraceActvn_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_TraceActvn_ExtIEs ARGS ((CztProtExtnCont_TraceActvn_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztTraceActvn ARGS ((CztTraceActvn *param, Buffer *mBuf));
EXTERN S16 cmPkCztUE_HistoryInform ARGS ((CztUE_HistoryInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnUEAgg_MaxBitrate_ExtIEsCls ARGS ((Czt_ExtnUEAgg_MaxBitrate_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_UEAgg_MaxBitrate_ExtIEs ARGS ((CztProtExtnField_UEAgg_MaxBitrate_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_UEAgg_MaxBitrate_ExtIEs ARGS ((CztProtExtnCont_UEAgg_MaxBitrate_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztUEAggMaxBitRate ARGS ((CztUEAggMaxBitRate *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnUESecurCapabilities_ExtIEsCls ARGS ((Czt_ExtnUESecurCapabilities_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_UESecurCapabilities_ExtIEs ARGS ((CztProtExtnField_UESecurCapabilities_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_UESecurCapabilities_ExtIEs ARGS ((CztProtExtnCont_UESecurCapabilities_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztUESecurCapabilities ARGS ((CztUESecurCapabilities *param, Buffer *mBuf));
EXTERN S16 cmPkCztUL_InterferenceOverloadInd ARGS ((CztUL_InterferenceOverloadInd *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnUL_HighInterferenceIndInfo_Item_ExtIEsCls ARGS ((Czt_ExtnUL_HighInterferenceIndInfo_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_UL_HighInterferenceIndInfo_Item_ExtIEs ARGS ((CztProtExtnField_UL_HighInterferenceIndInfo_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_UL_HighInterferenceIndInfo_Item_ExtIEs ARGS ((CztProtExtnCont_UL_HighInterferenceIndInfo_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztUL_HighInterferenceIndInfo_Item ARGS ((CztUL_HighInterferenceIndInfo_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCztUL_HighInterferenceIndInfo ARGS ((CztUL_HighInterferenceIndInfo *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnE_RABs_ToBeSetup_ItemExtIEsCls ARGS ((Czt_ExtnE_RABs_ToBeSetup_ItemExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_E_RABs_ToBeSetup_ItemExtIEs ARGS ((CztProtExtnField_E_RABs_ToBeSetup_ItemExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_E_RABs_ToBeSetup_ItemExtIEs ARGS ((CztProtExtnCont_E_RABs_ToBeSetup_ItemExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RABs_ToBeSetup_Item ARGS ((CztE_RABs_ToBeSetup_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueE_RABs_ToBeSetup_ItemIEsCls ARGS ((Czt_ValueE_RABs_ToBeSetup_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_E_RABs_ToBeSetup_ItemIEs ARGS ((CztProtIE_Field_E_RABs_ToBeSetup_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RABs_ToBeSetup_Lst ARGS ((CztE_RABs_ToBeSetup_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnUE_CntxtInform_ExtIEsCls ARGS ((Czt_ExtnUE_CntxtInform_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_UE_CntxtInform_ExtIEs ARGS ((CztProtExtnField_UE_CntxtInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_UE_CntxtInform_ExtIEs ARGS ((CztProtExtnCont_UE_CntxtInform_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztUE_CntxtInform ARGS ((CztUE_CntxtInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueHovrRqst_IEsCls ARGS ((Czt_ValueHovrRqst_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_HovrRqst_IEs ARGS ((CztProtIE_Field_HovrRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_HovrRqst_IEs ARGS ((CztProtIE_Cont_HovrRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztHovrRqst ARGS ((CztHovrRqst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnE_RABs_Admtd_Item_ExtIEsCls ARGS ((Czt_ExtnE_RABs_Admtd_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_E_RABs_Admtd_Item_ExtIEs ARGS ((CztProtExtnField_E_RABs_Admtd_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_E_RABs_Admtd_Item_ExtIEs ARGS ((CztProtExtnCont_E_RABs_Admtd_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RABs_Admtd_Item ARGS ((CztE_RABs_Admtd_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueE_RABs_Admtd_ItemIEsCls ARGS ((Czt_ValueE_RABs_Admtd_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_E_RABs_Admtd_ItemIEs ARGS ((CztProtIE_Field_E_RABs_Admtd_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RABs_Admtd_Lst ARGS ((CztE_RABs_Admtd_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueHovrRqstAckg_IEsCls ARGS ((Czt_ValueHovrRqstAckg_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_HovrRqstAckg_IEs ARGS ((CztProtIE_Field_HovrRqstAckg_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_HovrRqstAckg_IEs ARGS ((CztProtIE_Cont_HovrRqstAckg_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztHovrRqstAckg ARGS ((CztHovrRqstAckg *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueHovrPrepFail_IEsCls ARGS ((Czt_ValueHovrPrepFail_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_HovrPrepFail_IEs ARGS ((CztProtIE_Field_HovrPrepFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_HovrPrepFail_IEs ARGS ((CztProtIE_Cont_HovrPrepFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztHovrPrepFail ARGS ((CztHovrPrepFail *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueHovrReport_IEsCls ARGS ((Czt_ValueHovrReport_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_HovrReport_IEs ARGS ((CztProtIE_Field_HovrReport_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_HovrReport_IEs ARGS ((CztProtIE_Cont_HovrReport_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztHovrReport ARGS ((CztHovrReport *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnE_RABs_SubjToStatusTfr_ItemExtIEsCls ARGS ((Czt_ExtnE_RABs_SubjToStatusTfr_ItemExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_E_RABs_SubjToStatusTfr_ItemExtIEs ARGS ((CztProtExtnField_E_RABs_SubjToStatusTfr_ItemExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_E_RABs_SubjToStatusTfr_ItemExtIEs ARGS ((CztProtExtnCont_E_RABs_SubjToStatusTfr_ItemExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RABs_SubjToStatusTfr_Item ARGS ((CztE_RABs_SubjToStatusTfr_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueE_RABs_SubjToStatusTfr_ItemIEsCls ARGS ((Czt_ValueE_RABs_SubjToStatusTfr_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_E_RABs_SubjToStatusTfr_ItemIEs ARGS ((CztProtIE_Field_E_RABs_SubjToStatusTfr_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztE_RABs_SubjToStatusTfr_Lst ARGS ((CztE_RABs_SubjToStatusTfr_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueSNStatusTfr_IEsCls ARGS ((Czt_ValueSNStatusTfr_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_SNStatusTfr_IEs ARGS ((CztProtIE_Field_SNStatusTfr_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_SNStatusTfr_IEs ARGS ((CztProtIE_Cont_SNStatusTfr_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztSNStatusTfr ARGS ((CztSNStatusTfr *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueUECntxtRls_IEsCls ARGS ((Czt_ValueUECntxtRls_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_UECntxtRls_IEs ARGS ((CztProtIE_Field_UECntxtRls_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_UECntxtRls_IEs ARGS ((CztProtIE_Cont_UECntxtRls_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztUECntxtRls ARGS ((CztUECntxtRls *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueHovrCancel_IEsCls ARGS ((Czt_ValueHovrCancel_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_HovrCancel_IEs ARGS ((CztProtIE_Field_HovrCancel_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_HovrCancel_IEs ARGS ((CztProtIE_Cont_HovrCancel_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztHovrCancel ARGS ((CztHovrCancel *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueErrInd_IEsCls ARGS ((Czt_ValueErrInd_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ErrInd_IEs ARGS ((CztProtIE_Field_ErrInd_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ErrInd_IEs ARGS ((CztProtIE_Cont_ErrInd_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztErrInd ARGS ((CztErrInd *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueResetRqst_IEsCls ARGS ((Czt_ValueResetRqst_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ResetRqst_IEs ARGS ((CztProtIE_Field_ResetRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ResetRqst_IEs ARGS ((CztProtIE_Cont_ResetRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztResetRqst ARGS ((CztResetRqst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueResetResp_IEsCls ARGS ((Czt_ValueResetResp_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ResetResp_IEs ARGS ((CztProtIE_Field_ResetResp_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ResetResp_IEs ARGS ((CztProtIE_Cont_ResetResp_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztResetResp ARGS ((CztResetResp *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueX2SetupRqst_IEsCls ARGS ((Czt_ValueX2SetupRqst_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_X2SetupRqst_IEs ARGS ((CztProtIE_Field_X2SetupRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_X2SetupRqst_IEs ARGS ((CztProtIE_Cont_X2SetupRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztX2SetupRqst ARGS ((CztX2SetupRqst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueX2SetupResp_IEsCls ARGS ((Czt_ValueX2SetupResp_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_X2SetupResp_IEs ARGS ((CztProtIE_Field_X2SetupResp_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_X2SetupResp_IEs ARGS ((CztProtIE_Cont_X2SetupResp_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztX2SetupResp ARGS ((CztX2SetupResp *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueX2SetupFail_IEsCls ARGS ((Czt_ValueX2SetupFail_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_X2SetupFail_IEs ARGS ((CztProtIE_Field_X2SetupFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_X2SetupFail_IEs ARGS ((CztProtIE_Cont_X2SetupFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztX2SetupFail ARGS ((CztX2SetupFail *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCellInform_Item_ExtIEsCls ARGS ((Czt_ExtnCellInform_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CellInform_Item_ExtIEs ARGS ((CztProtExtnField_CellInform_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CellInform_Item_ExtIEs ARGS ((CztProtExtnCont_CellInform_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellInform_Item ARGS ((CztCellInform_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueCellInform_ItemIEsCls ARGS ((Czt_ValueCellInform_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_CellInform_ItemIEs ARGS ((CztProtIE_Field_CellInform_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellInform_Lst ARGS ((CztCellInform_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueLoadInform_IEsCls ARGS ((Czt_ValueLoadInform_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_LoadInform_IEs ARGS ((CztProtIE_Field_LoadInform_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_LoadInform_IEs ARGS ((CztProtIE_Cont_LoadInform_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztLoadInform ARGS ((CztLoadInform *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnSrvdCellsToMdfy_Item_ExtIEsCls ARGS ((Czt_ExtnSrvdCellsToMdfy_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_SrvdCellsToMdfy_Item_ExtIEs ARGS ((CztProtExtnField_SrvdCellsToMdfy_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_SrvdCellsToMdfy_Item_ExtIEs ARGS ((CztProtExtnCont_SrvdCellsToMdfy_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztSrvdCellsToMdfy_Item ARGS ((CztSrvdCellsToMdfy_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCztSrvdCellsToMdfy ARGS ((CztSrvdCellsToMdfy *param, Buffer *mBuf));
EXTERN S16 cmPkCztOld_ECGIs ARGS ((CztOld_ECGIs *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueENBConfigUpd_IEsCls ARGS ((Czt_ValueENBConfigUpd_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ENBConfigUpd_IEs ARGS ((CztProtIE_Field_ENBConfigUpd_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ENBConfigUpd_IEs ARGS ((CztProtIE_Cont_ENBConfigUpd_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztENBConfigUpd ARGS ((CztENBConfigUpd *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueENBConfigUpdAckg_IEsCls ARGS ((Czt_ValueENBConfigUpdAckg_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ENBConfigUpdAckg_IEs ARGS ((CztProtIE_Field_ENBConfigUpdAckg_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ENBConfigUpdAckg_IEs ARGS ((CztProtIE_Cont_ENBConfigUpdAckg_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztENBConfigUpdAckg ARGS ((CztENBConfigUpdAckg *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueENBConfigUpdFail_IEsCls ARGS ((Czt_ValueENBConfigUpdFail_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ENBConfigUpdFail_IEs ARGS ((CztProtIE_Field_ENBConfigUpdFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ENBConfigUpdFail_IEs ARGS ((CztProtIE_Cont_ENBConfigUpdFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztENBConfigUpdFail ARGS ((CztENBConfigUpdFail *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCellToReport_Item_ExtIEsCls ARGS ((Czt_ExtnCellToReport_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CellToReport_Item_ExtIEs ARGS ((CztProtExtnField_CellToReport_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CellToReport_Item_ExtIEs ARGS ((CztProtExtnCont_CellToReport_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellToReport_Item ARGS ((CztCellToReport_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueCellToReport_ItemIEsCls ARGS ((Czt_ValueCellToReport_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_CellToReport_ItemIEs ARGS ((CztProtIE_Field_CellToReport_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellToReport_Lst ARGS ((CztCellToReport_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueResStatusRqst_IEsCls ARGS ((Czt_ValueResStatusRqst_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ResStatusRqst_IEs ARGS ((CztProtIE_Field_ResStatusRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ResStatusRqst_IEs ARGS ((CztProtIE_Cont_ResStatusRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztResStatusRqst ARGS ((CztResStatusRqst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnMeasurementFailCause_Item_ExtIEsCls ARGS ((Czt_ExtnMeasurementFailCause_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_MeasurementFailCause_Item_ExtIEs ARGS ((CztProtExtnField_MeasurementFailCause_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_MeasurementFailCause_Item_ExtIEs ARGS ((CztProtExtnCont_MeasurementFailCause_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMeasurementFailCause_Item ARGS ((CztMeasurementFailCause_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueMeasurementFailCause_ItemIEsCls ARGS ((Czt_ValueMeasurementFailCause_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_MeasurementFailCause_ItemIEs ARGS ((CztProtIE_Field_MeasurementFailCause_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMeasurementFailCause_Lst ARGS ((CztMeasurementFailCause_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnMeasurementInitiationResult_Item_ExtIEsCls ARGS ((Czt_ExtnMeasurementInitiationResult_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_MeasurementInitiationResult_Item_ExtIEs ARGS ((CztProtExtnField_MeasurementInitiationResult_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_MeasurementInitiationResult_Item_ExtIEs ARGS ((CztProtExtnCont_MeasurementInitiationResult_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMeasurementInitiationResult_Item ARGS ((CztMeasurementInitiationResult_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueMeasurementInitiationResult_ItemIEsCls ARGS ((Czt_ValueMeasurementInitiationResult_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_MeasurementInitiationResult_ItemIEs ARGS ((CztProtIE_Field_MeasurementInitiationResult_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMeasurementInitiationResult_Lst ARGS ((CztMeasurementInitiationResult_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueResStatusResp_IEsCls ARGS ((Czt_ValueResStatusResp_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ResStatusResp_IEs ARGS ((CztProtIE_Field_ResStatusResp_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ResStatusResp_IEs ARGS ((CztProtIE_Cont_ResStatusResp_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztResStatusResp ARGS ((CztResStatusResp *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCompleteFailCauseInform_Item_ExtIEsCls ARGS ((Czt_ExtnCompleteFailCauseInform_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CompleteFailCauseInform_Item_ExtIEs ARGS ((CztProtExtnField_CompleteFailCauseInform_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CompleteFailCauseInform_Item_ExtIEs ARGS ((CztProtExtnCont_CompleteFailCauseInform_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCompleteFailCauseInform_Item ARGS ((CztCompleteFailCauseInform_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueCompleteFailCauseInform_ItemIEsCls ARGS ((Czt_ValueCompleteFailCauseInform_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_CompleteFailCauseInform_ItemIEs ARGS ((CztProtIE_Field_CompleteFailCauseInform_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCompleteFailCauseInform_Lst ARGS ((CztCompleteFailCauseInform_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueResStatusFail_IEsCls ARGS ((Czt_ValueResStatusFail_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ResStatusFail_IEs ARGS ((CztProtIE_Field_ResStatusFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ResStatusFail_IEs ARGS ((CztProtIE_Cont_ResStatusFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztResStatusFail ARGS ((CztResStatusFail *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnCellMeasurementResult_Item_ExtIEsCls ARGS ((Czt_ExtnCellMeasurementResult_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_CellMeasurementResult_Item_ExtIEs ARGS ((CztProtExtnField_CellMeasurementResult_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_CellMeasurementResult_Item_ExtIEs ARGS ((CztProtExtnCont_CellMeasurementResult_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellMeasurementResult_Item ARGS ((CztCellMeasurementResult_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueCellMeasurementResult_ItemIEsCls ARGS ((Czt_ValueCellMeasurementResult_ItemIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_CellMeasurementResult_ItemIEs ARGS ((CztProtIE_Field_CellMeasurementResult_ItemIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellMeasurementResult_Lst ARGS ((CztCellMeasurementResult_Lst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueResStatusUpd_IEsCls ARGS ((Czt_ValueResStatusUpd_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_ResStatusUpd_IEs ARGS ((CztProtIE_Field_ResStatusUpd_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_ResStatusUpd_IEs ARGS ((CztProtIE_Cont_ResStatusUpd_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztResStatusUpd ARGS ((CztResStatusUpd *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValuePrivMsg_IEsCls ARGS ((Czt_ValuePrivMsg_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztPrivIE_Field_PrivMsg_IEs ARGS ((CztPrivIE_Field_PrivMsg_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztPrivIE_Cont_PrivMsg_IEs ARGS ((CztPrivIE_Cont_PrivMsg_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztPrivMsg ARGS ((CztPrivMsg *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueMobilityChangeRqst_IEsCls ARGS ((Czt_ValueMobilityChangeRqst_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_MobilityChangeRqst_IEs ARGS ((CztProtIE_Field_MobilityChangeRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_MobilityChangeRqst_IEs ARGS ((CztProtIE_Cont_MobilityChangeRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMobilityChangeRqst ARGS ((CztMobilityChangeRqst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueMobilityChangeAckg_IEsCls ARGS ((Czt_ValueMobilityChangeAckg_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_MobilityChangeAckg_IEs ARGS ((CztProtIE_Field_MobilityChangeAckg_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_MobilityChangeAckg_IEs ARGS ((CztProtIE_Cont_MobilityChangeAckg_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMobilityChangeAckg ARGS ((CztMobilityChangeAckg *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueMobilityChangeFail_IEsCls ARGS ((Czt_ValueMobilityChangeFail_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_MobilityChangeFail_IEs ARGS ((CztProtIE_Field_MobilityChangeFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_MobilityChangeFail_IEs ARGS ((CztProtIE_Cont_MobilityChangeFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztMobilityChangeFail ARGS ((CztMobilityChangeFail *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueRLFInd_IEsCls ARGS ((Czt_ValueRLFInd_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_RLFInd_IEs ARGS ((CztProtIE_Field_RLFInd_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_RLFInd_IEs ARGS ((CztProtIE_Cont_RLFInd_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztRLFInd ARGS ((CztRLFInd *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnSrvdCellsToActivate_Item_ExtIEsCls ARGS ((Czt_ExtnSrvdCellsToActivate_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_SrvdCellsToActivate_Item_ExtIEs ARGS ((CztProtExtnField_SrvdCellsToActivate_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_SrvdCellsToActivate_Item_ExtIEs ARGS ((CztProtExtnCont_SrvdCellsToActivate_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztSrvdCellsToActivate_Item ARGS ((CztSrvdCellsToActivate_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCztSrvdCellsToActivate ARGS ((CztSrvdCellsToActivate *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueCellActvnRqst_IEsCls ARGS ((Czt_ValueCellActvnRqst_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_CellActvnRqst_IEs ARGS ((CztProtIE_Field_CellActvnRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_CellActvnRqst_IEs ARGS ((CztProtIE_Cont_CellActvnRqst_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellActvnRqst ARGS ((CztCellActvnRqst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ExtnActivatedCellLst_Item_ExtIEsCls ARGS ((Czt_ExtnActivatedCellLst_Item_ExtIEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnField_ActivatedCellLst_Item_ExtIEs ARGS ((CztProtExtnField_ActivatedCellLst_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtExtnCont_ActivatedCellLst_Item_ExtIEs ARGS ((CztProtExtnCont_ActivatedCellLst_Item_ExtIEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztActivatedCellLst_Item ARGS ((CztActivatedCellLst_Item *param, Buffer *mBuf));
EXTERN S16 cmPkCztActivatedCellLst ARGS ((CztActivatedCellLst *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueCellActvnResp_IEsCls ARGS ((Czt_ValueCellActvnResp_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_CellActvnResp_IEs ARGS ((CztProtIE_Field_CellActvnResp_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_CellActvnResp_IEs ARGS ((CztProtIE_Cont_CellActvnResp_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellActvnResp ARGS ((CztCellActvnResp *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_ValueCellActvnFail_IEsCls ARGS ((Czt_ValueCellActvnFail_IEsCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Field_CellActvnFail_IEs ARGS ((CztProtIE_Field_CellActvnFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztProtIE_Cont_CellActvnFail_IEs ARGS ((CztProtIE_Cont_CellActvnFail_IEs *param, Buffer *mBuf));
EXTERN S16 cmPkCztCellActvnFail ARGS ((CztCellActvnFail *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_InitiatingMsgCls ARGS ((Czt_InitiatingMsgCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztInitiatingMsg ARGS ((CztInitiatingMsg *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_SuccessfulOutcomeCls ARGS ((Czt_SuccessfulOutcomeCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztSuccessfulOutcome ARGS ((CztSuccessfulOutcome *param, Buffer *mBuf));
EXTERN S16 cmPkCzt_UnsuccessfulOutcomeCls ARGS ((Czt_UnsuccessfulOutcomeCls *param, U32 val, Buffer *mBuf));
EXTERN S16 cmPkCztUnsuccessfulOutcome ARGS ((CztUnsuccessfulOutcome *param, Buffer *mBuf));
EXTERN S16 cmPkCztX2AP_PDU ARGS ((CztX2AP_PDU *param, Buffer *mBuf));
#ifdef __cplusplus
}
#endif /*__cplusplus*/

#endif

/********************************************************************30**

           End of file:    $SID$

*********************************************************************31*/


/********************************************************************60**

        Revision history:

*********************************************************************61*/

/********************************************************************90**

     ver       pat    init                  description
------------ -------- ---- ----------------------------------------------
$SID$        ---      chebli         1. Updated DB for X2AP R11 for TotaleNodeB GA3.0
$SID$        ---      chebli         1. Updated DB for X2AP R11.8.0 for TotaleNodeB GA5.0
*********************************************************************91*/
