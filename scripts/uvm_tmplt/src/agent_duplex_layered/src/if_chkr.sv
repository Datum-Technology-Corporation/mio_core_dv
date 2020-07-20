// 
// Copyright ${year} ${name_of_copyright_owner}
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
// 
// Licensed under the Solderpad Hardware License v 2.1 (the �License�); you may
// not use this file except in compliance with the License, or, at your option,
// the Apache License version 2.0. You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/SHL-2.1/
// 
// Unless required by applicable law or agreed to in writing, any work
// distributed under the License is distributed on an �AS IS� BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// 


`ifndef __UVMA_${name_uppercase}_${layer_name_uppercase}_IF_CHKR_SV__
`define __UVMA_${name_uppercase}_${layer_name_uppercase}_IF_CHKR_SV__


/**
 * Encapsulates assertions targeting uvma_${name}_${layer_name}_if.
 */
module uvma_${name}_${layer_name}_if_chkr(
   uvma_${name}_${layer_name}_if  ${layer_name}_if
);
   
   `pragma protect begin
   
   // TODO Add assertions to uvma_${name}_${layer_name}_if_chkr
   
   `pragma protect end
   
endmodule : uvma_${name}_${layer_name}_if_chkr


`endif // __UVMA_${name_uppercase}_${layer_name_uppercase}_IF_CHKR_SV__