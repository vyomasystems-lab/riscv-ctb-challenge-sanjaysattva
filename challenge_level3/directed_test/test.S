# See LICENSE for license details.

#*****************************************************************************
# add.S
#-----------------------------------------------------------------------------
#
# Test add instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32M
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  #TEST_RR_OP( 2,  sub, 0x00000001, 0x00000002, 0x00000001 );
 #TEST_BR2_OP_TAKEN( 2, blt, 0x00, 0x01 );
#TEST_LD_OP( 2, lh, 10, 0x04, 0x00001000 );
#TEST_BR2_OP_NOTTAKEN( 2, beq, 0x0, 0x1 );
#TEST_JR_SRC1_BYPASS( 2, 3, jr );
TEST_JALR_SRC1_BYPASS( 2, 3, jalr );
  TEST_PASSFAIL

RVTEST_CODE_END


  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
