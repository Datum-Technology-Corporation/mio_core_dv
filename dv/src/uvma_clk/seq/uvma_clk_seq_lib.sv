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


`ifndef __UVMA_CLK_SEQ_LIB_SV__
`define __UVMA_CLK_SEQ_LIB_SV__


`include "uvma_clk_base_seq.sv"


/**
 * Object holding sequence library for Clock agent.
 */
class uvma_clk_seq_lib_c extends uvm_sequence_library#(
   .REQ(uvma_clk_seq_item_c),
   .RSP(uvma_clk_seq_item_c)
);
   
   `uvm_object_utils          (uvma_clk_seq_lib_c)
   `uvm_sequence_library_utils(uvma_clk_seq_lib_c)
   
   
   /**
    * Initializes sequence library
    */
   extern function new(string name="uvma_clk_seq_lib");
   
endclass : uvma_clk_seq_lib_c


function uvma_clk_seq_lib_c::new(string name="uvma_clk_seq_lib");
   
   super.new(name);
   init_sequence_library();
   
   // TODO Add sequences to uvma_clk_seq_lib_c
   //      Ex: add_sequence(uvma_clk_abc_seq_c::get_type());
   
endfunction : new


`endif // __UVMA_CLK_SEQ_LIB_SV__
