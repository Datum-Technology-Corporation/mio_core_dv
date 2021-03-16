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


`ifndef __UVMA_${name_uppercase}_MON_TRN_LOGGER_SV__
`define __UVMA_${name_uppercase}_MON_TRN_LOGGER_SV__


/**
 * Component writing ${name_normal_case} monitor transactions debug data to disk as plain text.
 */
class uvma_${name}_mon_trn_logger_c extends uvml_logs_mon_trn_logger_c#(
   .T_TRN  (uvma_${name}_mon_trn_c),
   .T_CFG  (uvma_${name}_cfg_c    ),
   .T_CNTXT(uvma_${name}_cntxt_c  )
);
   
   `uvm_component_utils(uvma_${name}_mon_trn_logger_c)
   
   
   /**
    * Default constructor.
    */
   function new(string name="uvma_${name}_mon_trn_logger", uvm_component parent=null);
      
      super.new(name, parent);
      
   endfunction : new
   
   /**
    * Writes contents of t to disk
    */
   virtual function void write(uvma_${name}_mon_trn_c t);
      
      // TODO Implement uvma_${name}_mon_trn_logger_c::write()
      // Ex: fwrite($sformatf(" %t | %08h | %02b | %04d | %02h |", $realtime(), t.a, t.b, t.c, t.d));
      
   endfunction : write
   
   /**
    * Writes log header to disk
    */
   virtual function void print_header();
      
      // TODO Implement uvma_${name}_mon_trn_logger_c::print_header()
      // Ex: fwrite("----------------------------------------------");
      //     fwrite(" TIME | FIELD A | FIELD B | FIELD C | FIELD D ");
      //     fwrite("----------------------------------------------");
      
   endfunction : print_header
   
endclass : uvma_${name}_mon_trn_logger_c


/**
 * Component writing ${name_uppercase} monitor transactions debug data to disk as JavaScript Object Notation (JSON).
 */
class uvma_${name}_mon_trn_logger_json_c extends uvma_${name}_mon_trn_logger_c;
   
   `uvm_component_utils(uvma_${name}_mon_trn_logger_json_c)
   
   
   /**
    * Set file extension to '.json'.
    */
   function new(string name="uvma_${name}_mon_trn_logger_json", uvm_component parent=null);
      
      super.new(name, parent);
      fextension = "json";
      
   endfunction : new
   
   /**
    * Writes contents of t to disk.
    */
   virtual function void write(uvma_${name}_mon_trn_c t);
      
      // TODO Implement uvma_${name}_mon_trn_logger_json_c::write()
      // Ex: fwrite({"{",
      //       $sformatf("\"time\":\"%0t\",", $realtime()),
      //       $sformatf("\"a\":%h,"        , t.a        ),
      //       $sformatf("\"b\":%b,"        , t.b        ),
      //       $sformatf("\"c\":%d,"        , t.c        ),
      //       $sformatf("\"d\":%h,"        , t.c        ),
      //     "},"});
      
   endfunction : write
   
   /**
    * Empty function.
    */
   virtual function void print_header();
      
      // Do nothing: JSON files do not use headers.
      
   endfunction : print_header
   
endclass : uvma_${name}_mon_trn_logger_json_c


`endif // __UVMA_${name_uppercase}_MON_TRN_LOGGER_SV__
