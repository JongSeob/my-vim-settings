" Vim syntax file
" Language:	SystemVerilog (superset extension of Verilog)
" Maintainer:	Amit Sethi <amitrajsethi@yahoo.com>
" Last Update:  Thu Jul 27 12:54:08 IST 2006
" Version: 1.1

" Extends Verilog syntax
" Requires $VIMRUNTIME/syntax/verilog.vim to exist

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif


" Read in Verilog syntax files
if version < 600
   so syntax/verilog.vim
else
   runtime! syntax/verilog.vim
endif

" add ` character as a searching data of Ctrl+* or Ctrl+# or Ctrl+]
" for verilog/systemverilog macros
set iskeyword+=`

syn sync lines=1000

"##########################################################
"       Define Color
"##########################################################
"{{{
highlight dkred    ctermfg=DarkRed     ctermbg=none      guifg=DarkRed                 gui=bold                           
highlight dkgreen  ctermfg=DarkGreen   ctermbg=none      guifg=DarkGreen               gui=bold                           
highlight Green    ctermfg=DarkGreen   ctermbg=none      guifg=Green                   gui=bold                           
highlight Blue     ctermfg=Blue        ctermbg=none      guifg=Blue                    gui=bold                           
highlight cyan     ctermfg=Cyan        ctermbg=none      guifg=Cyan                    gui=bold                           
highlight brown    ctermfg=DarkRed     ctermbg=none      guifg=#8b0000                 gui=italic,bold term=underline,bold
highlight sky      ctermfg=DarkBlue    ctermbg=none      guifg=#00afef                 gui=bold        term=bold          
highlight gold     ctermfg=Yellow      ctermbg=none      guifg=#b0b000                 gui=bold        term=bold          
highlight black    ctermfg=Black       ctermbg=none      guifg=Black                   gui=bold        term=bold          
highlight grey     ctermfg=Gray        ctermbg=none      guifg=#808080                 gui=bold        term=bold          
highlight Red      ctermfg=Red         ctermbg=none      guifg=Red                     gui=bold                           
highlight boost    ctermfg=Blue        ctermbg=none      guifg=Blue                    gui=bold                           
highlight purple   ctermfg=Magenta     ctermbg=none      guifg=Magenta                 gui=bold                           
highlight dkpurple ctermfg=DarkMagenta ctermbg=none      guifg=DarkMagenta             gui=bold                           

highlight hlcyan   ctermfg=Black       ctermbg=Cyan      guifg=Black     guibg=Cyan    gui=bold                           
highlight hlyellow ctermfg=Black       ctermbg=Yellow    guifg=Black     guibg=Yellow  gui=bold                           
"}}}

"##########################################################
"       SystemVerilog Syntax
"##########################################################
"{{{
syn keyword verilogStatement   always_comb always_ff always_latch
syn keyword verilogStatement   class endclass
syn keyword verilogStatement   virtual local const protected
syn keyword verilogStatement   package endpackage
syn keyword verilogStatement   rand randc constraint randomize
syn keyword verilogStatement   with inside dist
syn keyword verilogStatement   randcase
syn keyword verilogStatement   sequence endsequence randsequence 
syn keyword verilogStatement   get_randstate set_randstate
syn keyword verilogStatement   srandom
syn keyword verilogStatement   logic bit byte time
syn keyword verilogStatement   int longint shortint
syn keyword verilogStatement   struct packed
syn keyword verilogStatement   final
syn keyword verilogStatement   import export
syn keyword verilogStatement   context pure 
syn keyword verilogStatement   void shortreal chandle string
syn keyword verilogStatement   clocking endclocking
syn keyword verilogStatement   interface endinterface modport
syn keyword verilogStatement   cover covergroup coverpoint endgroup
syn keyword verilogStatement   property endproperty
syn keyword verilogStatement   program endprogram
syn keyword verilogStatement   bins binsof illegal_bins ignore_bins
syn keyword verilogStatement   alias matches solve static assert
syn keyword verilogStatement   assume super before expect bind
syn keyword verilogStatement   extends null tagged extern this
syn keyword verilogStatement   first_match throughout timeprecision
syn keyword verilogStatement   timeunit priority type union 
syn keyword verilogStatement   uwire var cross ref wait_order intersect
syn keyword verilogStatement   wildcard within
syn keyword verilogStatement   triggered
syn keyword verilogStatement   std
syn keyword verilogStatement   new

syn keyword verilogTypeDef     typedef enum

syn keyword verilogConditional iff

syn keyword verilogRepeat      return break continue
syn keyword verilogRepeat      do while foreach

syn keyword verilogLabel       join_any join_none forkjoin

syn match   verilogGlobal      "`begin_\w\+"
syn match   verilogGlobal      "`end_\w\+"
syn match   verilogGlobal      "`remove_\w\+"
syn match   verilogGlobal      "`restore_\w\+"

syn match   verilogGlobal      "`[a-zA-Z0-9_]\+\>"

syn match   verilogNumber      "\<[0-9][0-9_\.]\=\([fpnum]\|\)s\>"
syn match   verilogNumber      "\<[0-9][0-9_\.]\=step\>"

syn match  verilogMethod       "\.atobin"
syn match  verilogMethod       "\.atohex\>"
syn match  verilogMethod       "\.atoi\>"
syn match  verilogMethod       "\.atooct\>"
syn match  verilogMethod       "\.atoreal\>"
syn match  verilogMethod       "\.bintoa\>"
syn match  verilogMethod       "\.hextoa\>"
syn match  verilogMethod       "\.itoa\>"
syn match  verilogMethod       "\.octtoa\>"
syn match  verilogMethod       "\.realtoa\>"
syn match  verilogMethod       "\.len\>"
syn match  verilogMethod       "\.getc\>"
syn match  verilogMethod       "\.putc\>"
syn match  verilogMethod       "\.toupper\>"
syn match  verilogMethod       "\.tolower\>"
syn match  verilogMethod       "\.compare\>"
syn match  verilogMethod       "\.icompare\>"
syn match  verilogMethod       "\.substr\>"
syn match  verilogMethod       "\.num\>"
syn match  verilogMethod       "\.exists\>"
syn match  verilogMethod       "\.first\>"
syn match  verilogMethod       "\.last\>"
syn match  verilogMethod       "\.name\>"
syn match  verilogMethod       "\.index\>"
syn match  verilogMethod       "\.find\>"
syn match  verilogMethod       "\.find_first\>"
syn match  verilogMethod       "\.find_last\>"
syn match  verilogMethod       "\.find_index\>"
syn match  verilogMethod       "\.find_first_index\>"
syn match  verilogMethod       "\.find_last_index\>"
syn match  verilogMethod       "\.min\>"
syn match  verilogMethod       "\.max\>"
syn match  verilogMethod       "\.unique\>"
syn match  verilogMethod       "\.unique_index\>"
syn match  verilogMethod       "\.sort\>"
syn match  verilogMethod       "\.rsort\>"
syn match  verilogMethod       "\.shuffle\>"
syn match  verilogMethod       "\.reverse\>"
syn match  verilogMethod       "\.sum\>"
syn match  verilogMethod       "\.product\>"
syn match  verilogMethod       "\.xor\>"
syn match  verilogMethod       "\.status\>"
syn match  verilogMethod       "\.kill\>"
syn match  verilogMethod       "\.self\>"
syn match  verilogMethod       "\.await\>"
syn match  verilogMethod       "\.suspend\>"
syn match  verilogMethod       "\.resume\>"
syn match  verilogMethod       "\.get\>"
syn match  verilogMethod       "\.put\>"
syn match  verilogMethod       "\.peek\>"
syn match  verilogMethod       "\.try_get\>"
syn match  verilogMethod       "\.try_peek\>"
syn match  verilogMethod       "\.try_put\>"
syn match  verilogMethod       "\.data\>"
syn match  verilogMethod       "\.eq\>"
syn match  verilogMethod       "\.neq\>"
syn match  verilogMethod       "\.next\>"
syn match  verilogMethod       "\.prev\>"
syn match  verilogMethod       "\.new\>"
syn match  verilogMethod       "\.size\>"
syn match  verilogMethod       "\.delete\>"
syn match  verilogMethod       "\.empty\>"
syn match  verilogMethod       "\.pop_front\>"
syn match  verilogMethod       "\.pop_back\>"
syn match  verilogMethod       "\.push_front\>"
syn match  verilogMethod       "\.push_back\>"
syn match  verilogMethod       "\.front\>"
syn match  verilogMethod       "\.back\>"
syn match  verilogMethod       "\.insert\>"
syn match  verilogMethod       "\.insert_range\>"
syn match  verilogMethod       "\.erase\>"
syn match  verilogMethod       "\.erase_range\>"
syn match  verilogMethod       "\.set\>"
syn match  verilogMethod       "\.swap\>"
syn match  verilogMethod       "\.clear\>"
syn match  verilogMethod       "\.purge\>"
syn match  verilogMethod       "\.start\>"
syn match  verilogMethod       "\.finish\>"

syn match   verilogAssertion   "\<\w\+\>\s*:\s*\<assert\>\_.\{-});"
"}}}

"##########################################################
" UVM Keywords
"##########################################################
"{{{
syn keyword svStd std process semaphore mailbox

syn keyword Alert        REPORT_INFO REPORT_WARNING REPORT_ERROR REPORT_FATAL uvm_severity_type
syn match   Alert        "[\$]\(finish\|error\|stop\|warning\|info\)\>"

syn keyword myMethod     copy_from clone to_string compare

syn match   uvm_method   "::type_id::create"

syn keyword uvm_class    uvm_active_passive_enum
syn keyword uvm_class    uvm_adaptor

"syn match   uvm_class    /\<uvm_analysis_imp_\w\+\s/
syn match   uvm_class    "uvm_analysis_imp\(_decl\)\@!\w*"

syn keyword uvm_class    uvm_barrier
syn keyword uvm_class    uvm_barrier_pool
syn keyword uvm_class    uvm_component
syn keyword uvm_class    uvm_configure_phase
syn keyword uvm_class    uvm_domain
syn keyword uvm_class    uvm_driver
syn keyword uvm_class    uvm_enum_wrapper
syn keyword uvm_class    uvm_env
syn keyword uvm_class    uvm_event
syn keyword uvm_class    uvm_event_base
syn keyword uvm_class    uvm_event_pool
syn keyword uvm_class    uvm_factory
syn keyword uvm_class    uvm_heartbeat
syn keyword uvm_class    uvm_heartbeat_cb
syn keyword uvm_class    uvm_in_order_built_in_comparator
syn keyword uvm_class    uvm_in_order_class_comparator
syn keyword uvm_class    uvm_in_order_comparator
syn keyword uvm_class    uvm_main_phase
syn keyword uvm_class    uvm_mem
syn keyword uvm_class    uvm_monitor
syn keyword uvm_class    uvm_object
syn keyword uvm_class    uvm_object_registry
syn keyword uvm_class    uvm_objection
syn keyword uvm_class    uvm_path_e
syn keyword uvm_class    uvm_phase
syn keyword uvm_class    uvm_task_phase
syn keyword uvm_class    uvm_topdown_phase
syn keyword uvm_class    uvm_bottomup_phase
syn keyword uvm_class    uvm_phase_cb
syn keyword uvm_class    uvm_pool
syn keyword uvm_class    uvm_port_base
syn keyword uvm_class    uvm_post_configure_phase
syn keyword uvm_class    uvm_post_main_phase
syn keyword uvm_class    uvm_post_reset_phase
syn keyword uvm_class    uvm_post_shutdown_phase
syn keyword uvm_class    uvm_pre_configure_phase
syn keyword uvm_class    uvm_pre_main_phase
syn keyword uvm_class    uvm_pre_reset_phase
syn keyword uvm_class    uvm_pre_shutdown_phase
syn keyword uvm_class    uvm_predict_e
syn keyword uvm_class    uvm_predictor
syn keyword uvm_class    uvm_printer
syn keyword uvm_class    uvm_printer_knobs
syn keyword uvm_class    uvm_push_driver
syn keyword uvm_class    uvm_push_sequencer
syn keyword uvm_class    uvm_recorder
syn keyword uvm_class    uvm_reg
syn keyword uvm_class    uvm_reg_adapter
syn keyword uvm_class    uvm_reg_backdoor
syn keyword uvm_class    uvm_reg_block
syn keyword uvm_class    uvm_reg_bus_op
syn keyword uvm_class    uvm_reg_cbs
syn keyword uvm_class    uvm_reg_data_t
syn keyword uvm_class    uvm_reg_field
syn keyword uvm_class    uvm_reg_item
syn keyword uvm_class    uvm_reg_map
syn keyword uvm_class    uvm_reg_predictor
syn keyword uvm_class    uvm_reg_sequence
syn keyword uvm_class    uvm_reg_transaction_order_policy
syn keyword uvm_class    uvm_report_catcher
syn keyword uvm_class    uvm_reset_phase
syn keyword uvm_class    uvm_sequence
syn keyword uvm_class    uvm_sequencer
syn keyword uvm_class    uvm_sequencer_base
syn keyword uvm_class    uvm_severity
syn keyword uvm_class    uvm_shutdown_phase
syn keyword uvm_class    uvm_test
syn keyword uvm_class    uvm_text_tr_database
syn keyword uvm_class    uvm_tlm_analysis_fifo
syn keyword uvm_class    uvm_tlm_extension
syn keyword uvm_class    uvm_tlm_extension_base
syn keyword uvm_class    uvm_tlm_fifo
syn keyword uvm_class    uvm_tlm_generic_payload
syn keyword uvm_class    uvm_tr_stream
syn keyword uvm_class    uvm_transaction

syn keyword uvm_data     adaptor
syn keyword uvm_data     analysis_export
syn keyword uvm_data     analysis_port
syn keyword uvm_data     bus_in
syn keyword uvm_data     enable_print_topology
syn keyword uvm_data     fld
syn keyword uvm_data     kind
syn keyword uvm_data     map
syn keyword uvm_data     p_sequencer
syn keyword uvm_data     parent phase
syn keyword uvm_data     path
syn keyword uvm_data     reg_ap
syn keyword uvm_data     req
syn keyword uvm_data     rsp
syn keyword uvm_data     rw
syn keyword uvm_data     seq_item_export
syn keyword uvm_data     seq_item_port
syn keyword uvm_data     starting_phase
syn keyword uvm_data     uvm_top
syn keyword uvm_data     value

syn keyword uvm_enum     UVM_ACTIVE
syn keyword uvm_enum     UVM_ALL_ON
syn keyword uvm_enum     UVM_BIN
syn keyword uvm_enum     UVM_CALL_HOOK
syn keyword uvm_enum     UVM_COUNT
syn keyword uvm_enum     UVM_DEC
syn keyword uvm_enum     UVM_DISPLAY
syn keyword uvm_enum     UVM_ERROR
syn keyword uvm_enum     UVM_EXIT
syn keyword uvm_enum     UVM_FATAL
syn keyword uvm_enum     UVM_INFO
syn keyword uvm_enum     UVM_LOG
syn keyword uvm_enum     UVM_NOCOMPARE
syn keyword uvm_enum     UVM_NOPRINT
syn keyword uvm_enum     UVM_NO_ACTION
syn keyword uvm_enum     UVM_PASSIVE
syn keyword uvm_enum     UVM_PRINT
syn keyword uvm_enum     UVM_RGM
syn keyword uvm_enum     UVM_STOP
syn keyword uvm_enum     UVM_WARNING

syn keyword uvm_macros   uvm_add_to_seq_lib
syn keyword uvm_macros   uvm_analysis_imp_decl
syn keyword uvm_macros   uvm_component_param_utils
syn keyword uvm_macros   uvm_component_utils
syn keyword uvm_macros   uvm_component_utils_begin
syn keyword uvm_macros   uvm_component_utils_end
syn keyword uvm_macros   uvm_create
syn keyword uvm_macros   uvm_create_on
syn keyword uvm_macros   uvm_create_seq
syn keyword uvm_macros   uvm_declare_p_sequencer
syn keyword uvm_macros   uvm_do
syn keyword uvm_macros   uvm_do_on
syn keyword uvm_macros   uvm_do_on_pri
syn keyword uvm_macros   uvm_do_on_pri_with
syn keyword uvm_macros   uvm_do_on_with
syn keyword uvm_macros   uvm_do_pri
syn keyword uvm_macros   uvm_do_pri_with
syn keyword uvm_macros   uvm_do_seq
syn keyword uvm_macros   uvm_do_seq_with
syn keyword uvm_macros   uvm_do_with
syn keyword uvm_macros   uvm_error
syn keyword uvm_macros   uvm_error_context
syn keyword uvm_macros   uvm_fatal
syn keyword uvm_macros   uvm_fatal_context
syn keyword uvm_macros   uvm_field_enum
syn keyword uvm_macros   uvm_field_int
syn keyword uvm_macros   uvm_info
syn keyword uvm_macros   uvm_info_begin
syn keyword uvm_macros   uvm_info_context
syn keyword uvm_macros   uvm_info_end
syn keyword uvm_macros   uvm_message_add_int
syn keyword uvm_macros   uvm_message_add_object
syn keyword uvm_macros   uvm_message_add_string
syn keyword uvm_macros   uvm_message_add_tag
syn keyword uvm_macros   uvm_object_param_utils
syn keyword uvm_macros   uvm_object_utils
syn keyword uvm_macros   uvm_object_utils_begin
syn keyword uvm_macros   uvm_object_utils_end
syn keyword uvm_macros   uvm_rand_send
syn keyword uvm_macros   uvm_rand_send_pri
syn keyword uvm_macros   uvm_rand_send_pri_with
syn keyword uvm_macros   uvm_rand_send_with
syn keyword uvm_macros   uvm_record_int
syn keyword uvm_macros   uvm_record_real
syn keyword uvm_macros   uvm_record_string
syn keyword uvm_macros   uvm_record_time
syn keyword uvm_macros   uvm_send
syn keyword uvm_macros   uvm_send_pri
syn keyword uvm_macros   uvm_sequence_library_utils
syn keyword uvm_macros   uvm_warning
syn keyword uvm_macros   uvm_warning_context

syn keyword uvm_method   add
syn keyword uvm_method   add_callback
syn keyword uvm_method   add_uvm_phases
syn keyword uvm_method   after_phase
syn keyword uvm_method   b_transport
syn keyword uvm_method   before_phase
syn keyword uvm_method   block
syn keyword uvm_method   body
syn keyword uvm_method   can_get
syn keyword uvm_method   can_peek
syn keyword uvm_method   can_put
syn keyword uvm_method   connect
syn keyword uvm_method   convert2string
syn keyword uvm_method   create
syn keyword uvm_method   default_sequence
syn keyword uvm_method   delete_callback
syn keyword uvm_method   do_compare
syn keyword uvm_method   do_copy
syn keyword uvm_method   do_global_phase
syn keyword uvm_method   do_print
syn keyword uvm_method   drop_objection
syn keyword uvm_method   dump_report_state
syn keyword uvm_method   encode decode
syn keyword uvm_method   end_prematurely
syn keyword uvm_method   find
syn keyword uvm_method   finish_item
syn keyword uvm_method   get
syn keyword uvm_method   get_adjacent_predecessor_nodes
syn keyword uvm_method   get_adjacent_successor_nodes
syn keyword uvm_method   get_child
syn keyword uvm_method   get_children
syn keyword uvm_method   get_common_domain
syn keyword uvm_method   get_depth
syn keyword uvm_method   get_first_child
syn keyword uvm_method   get_full_name
syn keyword uvm_method   get_global_pool
syn keyword uvm_method   get_is_active
syn keyword uvm_method   get_name
syn keyword uvm_method   get_next_child
syn keyword uvm_method   get_next_item
syn keyword uvm_method   get_num_children
syn keyword uvm_method   get_num_waiters
syn keyword uvm_method   get_objection
syn keyword uvm_method   get_parent
syn keyword uvm_method   get_phase_type
syn keyword uvm_method   get_sequence_path
syn keyword uvm_method   get_starting_phase
syn keyword uvm_method   get_trigger_data
syn keyword uvm_method   get_trigger_time
syn keyword uvm_method   get_type_name
syn keyword uvm_method   global_stop_request
syn keyword uvm_method   has_child
syn keyword uvm_method   is_off
syn keyword uvm_method   is_on
syn keyword uvm_method   item_done
syn keyword uvm_method   lookup
syn keyword uvm_method   max_quit_count
syn keyword uvm_method   mid_do
syn keyword uvm_method   nb_transport_bw
syn keyword uvm_method   nb_transport_fw
syn keyword uvm_method   peek
syn keyword uvm_method   post_body
syn keyword uvm_method   post_do
syn keyword uvm_method   post_predict
syn keyword uvm_method   post_read
syn keyword uvm_method   post_start
syn keyword uvm_method   post_write
syn keyword uvm_method   pre_body
syn keyword uvm_method   pre_do
syn keyword uvm_method   pre_predict
syn keyword uvm_method   pre_read
syn keyword uvm_method   pre_start
syn keyword uvm_method   pre_write
syn keyword uvm_method   print
syn keyword uvm_method   print_real
syn keyword uvm_method   print_topology
syn keyword uvm_method   put
syn keyword uvm_method   raise_objection
syn keyword uvm_method   ralgen
syn keyword uvm_method   read_by_name
syn keyword uvm_method   regfile
syn keyword uvm_method   register
syn keyword uvm_method   report_hook
syn keyword uvm_method   report_summarize
syn keyword uvm_method   reset
syn keyword uvm_method   run_test
syn keyword uvm_method   set
syn keyword uvm_method   set_automatic_phase_object
syn keyword uvm_method   set_config
syn keyword uvm_method   set_domain
syn keyword uvm_method   set_drain_time set_timeout
syn keyword uvm_method   set_global_timeout
syn keyword uvm_method   set_id_info
syn keyword uvm_method   set_inst_override_by_type
syn keyword uvm_method   set_jump_phase
syn keyword uvm_method   set_phase_imp
syn keyword uvm_method   set_propagate_mode
syn keyword uvm_method   set_report_default_file
syn keyword uvm_method   set_report_default_file_hier
syn keyword uvm_method   set_report_id_action
syn keyword uvm_method   set_report_id_action_hier
syn keyword uvm_method   set_report_id_file
syn keyword uvm_method   set_report_id_file_hier
syn keyword uvm_method   set_report_max_quit_count
syn keyword uvm_method   set_report_severity_action
syn keyword uvm_method   set_report_severity_action_hier
syn keyword uvm_method   set_report_severity_file
syn keyword uvm_method   set_report_severity_file_hier
syn keyword uvm_method   set_report_severity_id_action
syn keyword uvm_method   set_report_severity_id_action_hier
syn keyword uvm_method   set_report_severity_id_file
syn keyword uvm_method   set_report_severity_id_file_hier
syn keyword uvm_method   set_report_verbosity_level
syn keyword uvm_method   set_report_verbosity_level_hier
syn keyword uvm_method   set_starting_phase
syn keyword uvm_method   set_threshold
syn keyword uvm_method   set_type_override_by_type
syn keyword uvm_method   sprint
syn keyword uvm_method   start_item
syn keyword uvm_method   transform
syn keyword uvm_method   trigger
syn keyword uvm_method   try_get
syn keyword uvm_method   try_next_item
syn keyword uvm_method   try_peek
syn keyword uvm_method   try_put
syn keyword uvm_method   type_id
syn keyword uvm_method   uvm_agent
syn keyword uvm_method   uvm_algorithmic_comparator
syn keyword uvm_method   uvm_analysis_export
syn keyword uvm_method   uvm_analysis_port
syn keyword uvm_method   uvm_bitstream_t
syn keyword uvm_method   uvm_callback
syn keyword uvm_method   uvm_callback_iter
syn keyword uvm_method   uvm_callbacks
syn keyword uvm_method   uvm_callbacks_objection
syn keyword uvm_method   uvm_cmdline_proc
syn keyword uvm_method   uvm_cmdline_processor
syn keyword uvm_method   uvm_component_registry
syn keyword uvm_method   uvm_config_db
syn keyword uvm_method   uvm_default_line_printer
syn keyword uvm_method   uvm_default_printer
syn keyword uvm_method   uvm_default_table_printer
syn keyword uvm_method   uvm_default_tree_printer
syn keyword uvm_method   uvm_event_callback
syn keyword uvm_method   uvm_integral_t
syn keyword uvm_method   uvm_is_match
syn keyword uvm_method   uvm_line_printer
syn keyword uvm_method   uvm_objection_callback
syn keyword uvm_method   uvm_objection_cbs_t
syn keyword uvm_method   uvm_process_report_message
syn keyword uvm_method   uvm_random_stimulus
syn keyword uvm_method   uvm_report_error
syn keyword uvm_method   uvm_report_fatal
syn keyword uvm_method   uvm_report_handler
syn keyword uvm_method   uvm_report_info
syn keyword uvm_method   uvm_report_message
syn keyword uvm_method   uvm_report_object
syn keyword uvm_method   uvm_report_server
syn keyword uvm_method   uvm_coreservice_t
syn keyword uvm_method   uvm_report_warning
syn keyword uvm_method   uvm_resource_db
syn keyword uvm_method   uvm_root
syn keyword uvm_method   uvm_scoreboard
syn keyword uvm_method   uvm_seq_item_export
syn keyword uvm_method   uvm_seq_item_port
syn keyword uvm_method   uvm_seq_item_pull_export
syn keyword uvm_method   uvm_seq_item_pull_port
syn keyword uvm_method   uvm_sequence_base
syn keyword uvm_method   uvm_sequence_item
syn keyword uvm_method   uvm_sequence_library
syn keyword uvm_method   uvm_sequence_library_cfg
syn keyword uvm_method   uvm_sequence_state
syn keyword uvm_method   uvm_sequencer_param_base
syn keyword uvm_method   uvm_subscriber
syn keyword uvm_method   uvm_table_printer
syn keyword uvm_method   uvm_table_printer_knobs
syn keyword uvm_method   uvm_test_done_objection
syn keyword uvm_method   uvm_tlm_if
syn keyword uvm_method   uvm_tlm_time
syn keyword uvm_method   uvm_tree_printer
syn keyword uvm_method   uvm_tree_printer_knobs
syn keyword uvm_method   wait_for
syn keyword uvm_method   wait_off
syn keyword uvm_method   wait_on
syn keyword uvm_method   wait_ptrigger
syn keyword uvm_method   wait_trigger
syn keyword uvm_method   with_phase
syn match   uvm_method   /\<write_\w\+\>/
syn match   uvm_method   "\(reg_blk.*\)\@<=\.write"
syn match   uvm_method   "\(reg_blk.*\)\@<=\.read"

syn keyword uvm_phase    build_phase
syn keyword uvm_phase    check_phase
syn keyword uvm_phase    configure_phase
syn keyword uvm_phase    connect_phase
syn keyword uvm_phase    define_domain
syn keyword uvm_phase    do_kill
syn keyword uvm_phase    end_of_elaboration_phase
syn keyword uvm_phase    exec_task
syn keyword uvm_phase    extract_phase
syn keyword uvm_phase    final_phase
syn keyword uvm_phase    main_phase
syn keyword uvm_phase    phase_ended
syn keyword uvm_phase    phase_ready_to_end
syn keyword uvm_phase    phase_started
syn keyword uvm_phase    post_configure_phase
syn keyword uvm_phase    post_main_phase
syn keyword uvm_phase    post_reset_phase
syn keyword uvm_phase    post_shutdown_phase
syn keyword uvm_phase    pre_configure_phase
syn keyword uvm_phase    pre_main_phase
syn keyword uvm_phase    pre_reset_phase
syn keyword uvm_phase    pre_shutdown_phase
syn keyword uvm_phase    report_phase
syn keyword uvm_phase    reset_phase
syn keyword uvm_phase    run_phase
syn keyword uvm_phase    shutdown_phase
syn keyword uvm_phase    start_of_simulation_phase

syn keyword uvm_seq      uvm_reg_bit_hash_seq
syn keyword uvm_seq      uvm_reg_hw_reset_seq
syn keyword uvm_seq      uvm_reg_mem_built_in_seq

syn keyword verilogConditional unique priority

syn match   verilogNumber "\(\<\d[0-9_]*\|\)'[sS]?[bB]\s*[0-1_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d[0-9_]*\|\)'[sS]?[oO]\s*[0-7_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d[0-9_]*\|\)'[sS]?[dD]\s*[0-9_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d[0-9_]*\|\)'[sS]?[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match   verilogNumber "\(\<\d[0-9_]*\)[munpf]\?s\>"
syn match   verilogNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)[munpa]s\>"
syn keyword verilogNumber 1step
syn match   verilogTodo   "\<\(File\|IFile\|Include\|Continue\): .*" contained

"}}}

"##########################################################
" UVM Class & Enum defined by user
"##########################################################

syn match   uvm_class    "\<\w\+_c\>"

syn match   uvm_class    "\<\w\+_e\>"

"##########################################################
" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
"##########################################################
if version >= 508 || !exists("did_verilog_syn_inits")
   if version < 508
      let did_verilog_syn_inits = 1
      command -nargs=+ HiLink hi link <args>
   else
      command -nargs=+ HiLink hi def link <args>
   endif

   " The default highlighting.
   HiLink verilogMethod          Function
   HiLink verilogTypeDef         TypeDef
   HiLink verilogAssertion       Include

   delcommand HiLink
endif

"##########################################################
" Define UVM highlight color
"##########################################################
highlight link svStd       sky
highlight link myMethod    dkpurple
highlight link uvm_enum    Constant
highlight link uvm_macros  gold
highlight link uvm_method  sky
highlight link uvm_class   sky
highlight link uvm_seq     sky
highlight link uvm_data    grey
highlight link uvm_phase   purple
highlight link svStatement Statement
highlight link Alert       red

let b:current_syntax = "sv"

" vim: ts=8
" vim: fdm=marker
