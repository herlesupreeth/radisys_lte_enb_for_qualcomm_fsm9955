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
  
     Name:     common functions - linked list management
  
     Type:     C source file
  
     Desc:     common functions for linked lists
  
     File:     cm_llist.c
  
     Sid:      cm_llist.c@@/main/8 - Thu Aug 30 00:16:43 2007
 
     Prg:      ak
  
*********************************************************************21*/
  
/* header include files (.h) */

#include "envopt.h"        /* environment options */  
#include "envdep.h"        /* environment dependent */
#include "envind.h"        /* environment independent */

#include "gen.h"           /* general layer */
#include "ssi.h"           /* system services */

/* header/extern include files (.x) */
  
#include "gen.x"           /* general layer */
#include "ssi.x"           /* system services */
#include "cm_llist.x"      /* common functions */


/* Linked List functions */


/*
*
*       Fun:   cmLListInit
*
*       Desc:  initializes a linked list control pointer.
*
*       Ret:   ROK   - ok
*
*       Notes: None
*
*       File:  cm_llist.c
*
*/
#ifdef ANSI
PUBLIC Void cmLListInit
(
CmLListCp *lCp                /* list control point */
)
#else 
PUBLIC Void cmLListInit(lCp)
CmLListCp *lCp;               /* list control point */
#endif
{
   TRC3(cmLListInit);
   
   lCp->first = (CmLList *)NULLP;
   lCp->last  = (CmLList *)NULLP;
   lCp->crnt  = (CmLList *)NULLP;
   lCp->count = 0;

   RETVOID;
} /* end of cmLListInit */



/*insert before head*/
/*
*
*       Fun:   cmLListAdd2Head
*
*       Desc:  adds node to linked list before head.
*
*       Ret:   ROK   - ok
*
*       Notes: None
*
*       File:  cm_llist.c
*
*/
#ifdef ANSI
PUBLIC Void cmLListAdd2Head
(
CmLListCp *lCp,               /* list control point */
CmLList   *node               /* node to be added */
)
#else 
PUBLIC Void cmLListAdd2Head(lCp, node)
CmLListCp *lCp;               /* list control point */
CmLList   *node;              /* node to be added */
#endif
{
   TRC3(cmLListAdd2Head);

#ifdef ERRCHK
   if (lCp == (CmLListCp *)NULLP)
      RETVOID;
#endif
 
   lCp->count++;

   node->next = lCp->first;
   node->prev = NULLP;
   lCp->first = lCp->crnt = node;
   
   if (!node->next)
   {
      lCp->last = node;
      RETVOID;
   }
   
   node->next->prev = node;
   RETVOID;
} /* end of cmLListAdd2Head */


/*
*
*       Fun:   cmLListAdd2Tail
*
*       Desc:  adds node to linked list after last.
*
*       Ret:   ROK   - ok
*
*       Notes: None
*
*       File:  cm_llist.c
*
*/
#ifdef ANSI
PUBLIC Void cmLListAdd2Tail
(
CmLListCp *lCp,               /* list control point */
CmLList   *node               /* node to be added */
)
#else 
PUBLIC Void cmLListAdd2Tail(lCp, node)
CmLListCp *lCp;               /* list control point */
CmLList   *node;              /* node to be added */
#endif
{
   TRC3(cmLListAdd2Tail);

#ifdef ERRCHK
   if (lCp == (CmLListCp *)NULLP)
      RETVOID;
#endif
 
   lCp->count++;

   node->prev = lCp->last;
   node->next = NULLP;
   lCp->last = lCp->crnt = node;
   
   if (!node->prev)
   {
      lCp->first = node;
      RETVOID;
   }
   
   node->prev->next = node;
   RETVOID;
} /* end of cmLListAdd2Tail */


/*
*
*       Fun:   cmLListInsCrnt
*
*       Desc:  adds node to linked list before crnt.
*
*       Ret:   ROK   - ok
*
*       Notes: None
*
*       File:  cm_llist.c
*
*/
#ifdef ANSI
PUBLIC Void cmLListInsCrnt
(
CmLListCp *lCp,               /* list control point */
CmLList   *node               /* node to be added */
)
#else 
PUBLIC Void cmLListInsCrnt(lCp, node)
CmLListCp *lCp;               /* list control point */
CmLList   *node;              /* node to be added */
#endif
{
   TRC3(cmLListInsCrnt);

#ifdef ERRCHK
   if (!lCp)
      RETVOID;
#endif
 
   lCp->count++;

   if (lCp->count == 1)
   {
     lCp->crnt = lCp->first = lCp->last = node;
     RETVOID;
   }

   node->next = lCp->crnt;
   node->prev = lCp->crnt->prev;
   if (node->prev)
      node->prev->next = node;
   node->next->prev = node;
   
   if (lCp->first == lCp->crnt)
      lCp->first = node;
   lCp->crnt = node;
   
   RETVOID;
} /* end of cmLListInsCrnt */

/* cm_llist_c_001.main_7 - Add function */
/*
*
*       Fun:   cmLListInsAfterCrnt
*
*       Desc:  adds node to linked list after crnt.
*
*       Ret:   ROK   - ok
*
*       Notes: None
*
*       File:  cm_llist.c
*
*/
#ifdef ANSI
PUBLIC Void cmLListInsAfterCrnt
(
CmLListCp *lCp,               /* list control point */
CmLList   *node               /* node to be added */
)
#else 
PUBLIC Void cmLListInsAfterCrnt(lCp, node)
CmLListCp *lCp;               /* list control point */
CmLList   *node;              /* node to be added */
#endif
{
   TRC3(cmLListInsAfterCrnt);

#ifdef ERRCHK
   if (!lCp)
      RETVOID;
#endif
 
   lCp->count++;

   if (lCp->count == 1)
   {
     lCp->crnt = lCp->first = lCp->last = node;
     RETVOID;
   }

   node->prev = lCp->crnt;
   node->next = lCp->crnt->next;
   if (node->next)
      node->next->prev = node;
   node->prev->next = node;
  
   if (lCp->last == lCp->crnt)
      lCp->last = node;
   lCp->crnt = node;
   
   RETVOID;
} /* end of cmLListInsAfterCrnt */



/*
*
*       Fun:   cmLListDelFrm
*
*       Desc:  remove node pointed to by nodePtr from list and return node.
*              nodePtr could be anywhere in the list.
*              - resets crnt to NULLP.
*
*       Ret:   pointer
*
*       Notes: None
*
*       File:  cm_llist.c
*
*/
#ifdef ANSI
PUBLIC CmLList *cmLListDelFrm
(
CmLListCp *lCp,                /* list control pointer */
CmLList *node                  /* node to be removed */
)
#else 
PUBLIC CmLList *cmLListDelFrm(lCp, node)
CmLListCp *lCp;               /* list control pointer */
CmLList *node;                /* node to be removed */
#endif
{
   TRC3(cmLListDelFrm);
  
#ifdef ERRCHK
   /* cm_llist_c_001.main_8 : added null check for node */
   if (lCp == (CmLListCp *)NULLP || lCp->count == 0 || !node)
   {
      RETVALUE(NULLP);
   }
#endif

   if (lCp->count == 1)
   {
      lCp->first = lCp->crnt = lCp->last = (CmLList *)NULLP;
      lCp->count = 0;
      RETVALUE(node);
   }
   
   lCp->count--;
   lCp->crnt = (CmLList *)NULLP;
   if (lCp->first == node)
   {
      if (node->next)
         node->next->prev = (CmLList *)NULLP;
      lCp->first = node->next;
      node->next = node->prev = (CmLList *)NULLP;
      RETVALUE(node);
   }
   
   if (lCp->last == node)
   {
      if (node->prev)
         node->prev->next = (CmLList *)NULLP;
      lCp->last = node->prev;
      node->next = node->prev = (CmLList *)NULLP;
      RETVALUE(node);
   }

   node->prev->next = node->next;
   node->next->prev = node->prev;
   node->next = node->prev = (CmLList *)NULLP;
   RETVALUE(node);
} /* end of cmLListDelFrm */


/*--
  *
  *       Fun:   cmLListCatLList
  *
  *       Desc:  adds a linked list to the end of the first list. list2 is 
  *              added at the end of list1
  *
  *       Ret:   ROK   - ok
  *
  *       Notes: None
  *
  *       File:  cm_llist.c
  *
  --*/
#ifdef ANSI
PUBLIC Void cmLListCatLList
(
 CmLListCp *list1,              /*-- list control point --*/
 CmLListCp *list2               /*-- node to be added --*/
 )
#else 
PUBLIC Void cmLListCatLList(list1, list2)
   CmLListCp *list1;              /*-- list control point --*/
   CmLListCp *list2;              /*-- node to be added --*/
#endif
{
   TRC3(cmLListCatLList);

   /*-- if the second list is empty nothing to do --*/
   if(list2->count == 0)
   {
      RETVOID;
   }

   /*-- if the first list is empty make first the same as second*/
   if(list1->count == 0)
   {
      list1->first = list2->first;
      list1->last  = list2->last;
      list1->count = list2->count;
      list1->crnt  = list1->first;
   }
   else
   {
      list2->first->prev = list1->last;
      list1->last->next = list2->first;
      /* Set the last to the end of the 2nd list */
      list1->last = list2->last;
      list1->count += list2->count;
   }

   cmLListInit(list2);

   RETVOID;
} /*-- end of cmLListCatLList --*/


/********************************************************************30**
  
         End of file:     cm_llist.c@@/main/8 - Thu Aug 30 00:16:43 2007
   
*********************************************************************31*/


/********************************************************************40**
  
        Notes:
  
*********************************************************************41*/

/********************************************************************50**

*********************************************************************51*/


/********************************************************************60**
  
        Revision history:
  
*********************************************************************61*/
  
/********************************************************************80**

  version    pat  init                   description
----------- ----- ----  ------------------------------------------------
1.1          ---  ak    1. initial release

1.2          ---  ak    1. Fixed bugs in cmLListInsCrnt and cmLListDelFrm

*********************************************************************81*/
/********************************************************************90**

     ver       pat    init                  description
------------ -------- ---- ----------------------------------------------
1.3          ---      mg   1. Removed public declaration for cmLListInit, 
                              cmLListAdd2Tail, cmLListInsCrnt and 
                              cmLListDelFrm.
             ---      mg   2. Changes to pass through chksrc.

1.4          ---      bbk  1. Changed copyright header date.

1.5          ---      mb   1. Changed copyright header data (1999).
/main/7      ---      rbabu 1. updated for NBAP software release 1.2
/main/8      ---      cm_llist_c_001.main_7      mn   1. Add funtion cmLListInsAfterCrnt
$SID$      ---     cm_llist_c_001.main_8  akaranth  1. Add null check in cmLListDelFrm
*********************************************************************91*/
