// Copyright 2021 Datum Technology Corporation
// 
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
// Licensed under the Solderpad Hardware License v 2.1 (the "License"); you may not use this file except in compliance
// with the License, or, at your option, the Apache License version 2.0.  You may obtain a copy of the License at
//                                        https://solderpad.org/licenses/SHL-2.1/
// Unless required by applicable law or agreed to in writing, any work distributed under the License is distributed on
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations under the License.


`ifndef __UVML_VERSION_MAJ_MIN_SV__
`define __UVML_VERSION_MAJ_MIN_SV__


/**
 * Object describing a version with major and minor indices.
 */
class uvml_version_maj_min_c extends uvm_object;
   
   // Fields
   rand int unsigned  major;
   rand int unsigned  minor;
   
   
   `uvm_object_utils_begin(uvml_version_maj_min_c)
      `uvm_field_int(major, UVM_DEFAULT + UVM_DEC)
      `uvm_field_int(minor, UVM_DEFAULT + UVM_DEC)
   `uvm_object_utils_end
   
   
   /**
    * Default constructor.
    */
   extern function new(string name="uvml_version_maj_min");
   
   /**
    * TODO Describe uvml_version_maj_min_c::convert2string()
    */
   extern function string convert2string();
   
endclass : uvml_version_maj_min_c


function uvml_version_maj_min_c::new(string name="uvml_version_maj_min");
   
   super.new(name);
   
endfunction : new


function string uvml_version_maj_min_c::convert2string();
   
   convert2string = $sformatf("%0d.%0d", major, minor);
   
endfunction : convert2string


`endif // __UVML_VERSION_MAJ_MIN_SV__
