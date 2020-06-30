// 
// Copyright 2020 Datum Technology Corporation
// 
// Licensed under the Solderpad Hardware License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// 


`ifndef __UVML_HRTBT_PKG_SV__
`define __UVML_HRTBT_PKG_SV__


// Pre-processor macros
`include "uvm_macros.svh"
`include "uvml_hrtbt_macros.sv"


/**
 * Encapsulates all the types needed for Heartbeat Monitor library.
 */
package uvml_hrtbt_pkg;
   
   import uvm_pkg::*;
   
   // Constants / Structs / Enums
   `include "uvml_hrtbt_constants.sv"
   `include "uvml_hrtbt_tdefs.sv"
   
   // Components
   `include "uvml_hrtbt_mon.sv"
   
   // Default heartbeat monitor
   uvml_hrtbt_mon_c  uvml_default_hrtbt = new("uvml_default_hrtbt");
   
endpackage : uvml_hrtbt_pkg


`endif // __UVML_HRTBT_PKG_SV__
