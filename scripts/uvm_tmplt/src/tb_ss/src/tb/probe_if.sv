// 
// Copyright ${year} ${name_of_copyright_owner}
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
// 
// Licensed under the Solderpad Hardware License v 2.1 (the "License"); you may
// not use this file except in compliance with the License, or, at your option,
// the Apache License version 2.0. You may obtain a copy of the License at
// 
//     https://solderpad.org/licenses/SHL-2.1/
// 
// Unless required by applicable law or agreed to in writing, any work
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
// License for the specific language governing permissions and limitations
// under the License.
// 


`ifndef __UVMT_${name_uppercase}_PROBE_IF_SV__
`define __UVMT_${name_uppercase}_PROBE_IF_SV__


/**
 * Interface encapsulating all extra signals to/from design hierarchy.
 */
interface uvmt_${name}_probe_if;
   
   import uvme_${name}_pkg::*;
   
   // TODO Add signals to uvmt_${name}_probe_if
   //      Ex: logic  probed_wire_a;
   
endinterface : uvmt_${name}_probe_if


`endif // __UVMT_${name_uppercase}_PROBE_IF_SV__
