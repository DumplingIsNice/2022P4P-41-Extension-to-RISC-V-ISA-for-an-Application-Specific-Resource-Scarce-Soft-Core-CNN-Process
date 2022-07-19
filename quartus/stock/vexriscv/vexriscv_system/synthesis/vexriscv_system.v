// vexriscv_system.v

// Generated using ACDS version 21.1 850

`timescale 1 ps / 1 ps
module vexriscv_system (
		input  wire  clk_clk,                                          //                                       clk.clk
		input  wire  reset_reset_n,                                    //                                     reset.reset_n
		input  wire  vexriscvavalonmaxperf_0_jtag_tms,                 //              vexriscvavalonmaxperf_0_jtag.tms
		input  wire  vexriscvavalonmaxperf_0_jtag_tdi,                 //                                          .tdi
		output wire  vexriscvavalonmaxperf_0_jtag_tdo,                 //                                          .tdo
		input  wire  vexriscvavalonmaxperf_0_jtag_tck,                 //                                          .tck
		input  wire  vexriscvavalonmaxperf_0_softwareinterrupt_export  // vexriscvavalonmaxperf_0_softwareinterrupt.export
	);

	wire         vexriscvavalonmaxperf_0_dbusavalon_waitrequest;              // mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_waitrequest -> VexRiscvAvalonMaxPerf_0:dBusAvalon_waitRequestn
	wire  [31:0] vexriscvavalonmaxperf_0_dbusavalon_readdata;                 // mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_readdata -> VexRiscvAvalonMaxPerf_0:dBusAvalon_readData
	wire  [31:0] vexriscvavalonmaxperf_0_dbusavalon_address;                  // VexRiscvAvalonMaxPerf_0:dBusAvalon_address -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_address
	wire         vexriscvavalonmaxperf_0_dbusavalon_read;                     // VexRiscvAvalonMaxPerf_0:dBusAvalon_read -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_read
	wire   [3:0] vexriscvavalonmaxperf_0_dbusavalon_byteenable;               // VexRiscvAvalonMaxPerf_0:dBusAvalon_byteEnable -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_byteenable
	wire         vexriscvavalonmaxperf_0_dbusavalon_readdatavalid;            // mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_readdatavalid -> VexRiscvAvalonMaxPerf_0:dBusAvalon_readDataValid
	wire   [1:0] vexriscvavalonmaxperf_0_dbusavalon_response;                 // mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_response -> VexRiscvAvalonMaxPerf_0:dBusAvalon_response
	wire         vexriscvavalonmaxperf_0_dbusavalon_write;                    // VexRiscvAvalonMaxPerf_0:dBusAvalon_write -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_write
	wire  [31:0] vexriscvavalonmaxperf_0_dbusavalon_writedata;                // VexRiscvAvalonMaxPerf_0:dBusAvalon_writeData -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_writedata
	wire   [3:0] vexriscvavalonmaxperf_0_dbusavalon_burstcount;               // VexRiscvAvalonMaxPerf_0:dBusAvalon_burstCount -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_dBusAvalon_burstcount
	wire         vexriscvavalonmaxperf_0_ibusavalon_waitrequest;              // mm_interconnect_0:VexRiscvAvalonMaxPerf_0_iBusAvalon_waitrequest -> VexRiscvAvalonMaxPerf_0:iBusAvalon_waitRequestn
	wire  [31:0] vexriscvavalonmaxperf_0_ibusavalon_readdata;                 // mm_interconnect_0:VexRiscvAvalonMaxPerf_0_iBusAvalon_readdata -> VexRiscvAvalonMaxPerf_0:iBusAvalon_readData
	wire  [31:0] vexriscvavalonmaxperf_0_ibusavalon_address;                  // VexRiscvAvalonMaxPerf_0:iBusAvalon_address -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_iBusAvalon_address
	wire         vexriscvavalonmaxperf_0_ibusavalon_read;                     // VexRiscvAvalonMaxPerf_0:iBusAvalon_read -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_iBusAvalon_read
	wire         vexriscvavalonmaxperf_0_ibusavalon_readdatavalid;            // mm_interconnect_0:VexRiscvAvalonMaxPerf_0_iBusAvalon_readdatavalid -> VexRiscvAvalonMaxPerf_0:iBusAvalon_readDataValid
	wire   [1:0] vexriscvavalonmaxperf_0_ibusavalon_response;                 // mm_interconnect_0:VexRiscvAvalonMaxPerf_0_iBusAvalon_response -> VexRiscvAvalonMaxPerf_0:iBusAvalon_response
	wire   [3:0] vexriscvavalonmaxperf_0_ibusavalon_burstcount;               // VexRiscvAvalonMaxPerf_0:iBusAvalon_burstCount -> mm_interconnect_0:VexRiscvAvalonMaxPerf_0_iBusAvalon_burstcount
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect;  // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_chipselect -> jtag_uart_0:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata;    // jtag_uart_0:av_readdata -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest; // jtag_uart_0:av_waitrequest -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address;     // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_address -> jtag_uart_0:av_address
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read;        // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_read -> jtag_uart_0:av_read_n
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write;       // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_write -> jtag_uart_0:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata;   // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_writedata -> jtag_uart_0:av_writedata
	wire         vexriscvavalonmaxperf_0_timerinterrupt_irq;                  // irq_mapper:sender_irq -> VexRiscvAvalonMaxPerf_0:timerInterrupt
	wire         irq_mapper_001_receiver0_irq;                                // jtag_uart_0:av_irq -> irq_mapper_001:receiver0_irq
	wire         vexriscvavalonmaxperf_0_externalinterrupt_irq;               // irq_mapper_001:sender_irq -> VexRiscvAvalonMaxPerf_0:externalInterrupt
	wire         rst_controller_reset_out_reset;                              // rst_controller:reset_out -> [VexRiscvAvalonMaxPerf_0:reset, irq_mapper:reset, irq_mapper_001:reset, mm_interconnect_0:VexRiscvAvalonMaxPerf_0_reset_reset_bridge_in_reset_reset]
	wire         vexriscvavalonmaxperf_0_debug_resetout_reset;                // VexRiscvAvalonMaxPerf_0:debug_resetOut -> rst_controller:reset_in1
	wire         rst_controller_001_reset_out_reset;                          // rst_controller_001:reset_out -> [VexRiscvAvalonMaxPerf_0:debugReset, jtag_uart_0:rst_n, mm_interconnect_0:jtag_uart_0_reset_reset_bridge_in_reset_reset]

	VexRiscvAvalonMaxPerf vexriscvavalonmaxperf_0 (
		.timerInterrupt           (vexriscvavalonmaxperf_0_timerinterrupt_irq),       //    timerInterrupt.irq
		.externalInterrupt        (vexriscvavalonmaxperf_0_externalinterrupt_irq),    // externalInterrupt.irq
		.softwareInterrupt        (vexriscvavalonmaxperf_0_softwareinterrupt_export), // softwareInterrupt.export
		.debug_resetOut           (vexriscvavalonmaxperf_0_debug_resetout_reset),     //    debug_resetOut.reset
		.iBusAvalon_address       (vexriscvavalonmaxperf_0_ibusavalon_address),       //        iBusAvalon.address
		.iBusAvalon_read          (vexriscvavalonmaxperf_0_ibusavalon_read),          //                  .read
		.iBusAvalon_waitRequestn  (~vexriscvavalonmaxperf_0_ibusavalon_waitrequest),  //                  .waitrequest_n
		.iBusAvalon_burstCount    (vexriscvavalonmaxperf_0_ibusavalon_burstcount),    //                  .burstcount
		.iBusAvalon_response      (vexriscvavalonmaxperf_0_ibusavalon_response),      //                  .response
		.iBusAvalon_readDataValid (vexriscvavalonmaxperf_0_ibusavalon_readdatavalid), //                  .readdatavalid
		.iBusAvalon_readData      (vexriscvavalonmaxperf_0_ibusavalon_readdata),      //                  .readdata
		.dBusAvalon_address       (vexriscvavalonmaxperf_0_dbusavalon_address),       //        dBusAvalon.address
		.dBusAvalon_read          (vexriscvavalonmaxperf_0_dbusavalon_read),          //                  .read
		.dBusAvalon_write         (vexriscvavalonmaxperf_0_dbusavalon_write),         //                  .write
		.dBusAvalon_waitRequestn  (~vexriscvavalonmaxperf_0_dbusavalon_waitrequest),  //                  .waitrequest_n
		.dBusAvalon_burstCount    (vexriscvavalonmaxperf_0_dbusavalon_burstcount),    //                  .burstcount
		.dBusAvalon_byteEnable    (vexriscvavalonmaxperf_0_dbusavalon_byteenable),    //                  .byteenable
		.dBusAvalon_writeData     (vexriscvavalonmaxperf_0_dbusavalon_writedata),     //                  .writedata
		.dBusAvalon_response      (vexriscvavalonmaxperf_0_dbusavalon_response),      //                  .response
		.dBusAvalon_readDataValid (vexriscvavalonmaxperf_0_dbusavalon_readdatavalid), //                  .readdatavalid
		.dBusAvalon_readData      (vexriscvavalonmaxperf_0_dbusavalon_readdata),      //                  .readdata
		.jtag_tms                 (vexriscvavalonmaxperf_0_jtag_tms),                 //              jtag.export
		.jtag_tdi                 (vexriscvavalonmaxperf_0_jtag_tdi),                 //                  .export
		.jtag_tdo                 (vexriscvavalonmaxperf_0_jtag_tdo),                 //                  .export
		.jtag_tck                 (vexriscvavalonmaxperf_0_jtag_tck),                 //                  .export
		.clk                      (clk_clk),                                          //               clk.clk
		.reset                    (rst_controller_reset_out_reset),                   //             reset.reset
		.debugReset               (rst_controller_001_reset_out_reset)                //        debugReset.reset
	);

	vexriscv_system_jtag_uart_0 jtag_uart_0 (
		.clk            (clk_clk),                                                     //               clk.clk
		.rst_n          (~rst_controller_001_reset_out_reset),                         //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_001_receiver0_irq)                                 //               irq.irq
	);

	vexriscv_system_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                             (clk_clk),                                                     //                                           clk_0_clk.clk
		.jtag_uart_0_reset_reset_bridge_in_reset_reset             (rst_controller_001_reset_out_reset),                          //             jtag_uart_0_reset_reset_bridge_in_reset.reset
		.VexRiscvAvalonMaxPerf_0_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                              // VexRiscvAvalonMaxPerf_0_reset_reset_bridge_in_reset.reset
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_address                (vexriscvavalonmaxperf_0_dbusavalon_address),                  //                  VexRiscvAvalonMaxPerf_0_dBusAvalon.address
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_waitrequest            (vexriscvavalonmaxperf_0_dbusavalon_waitrequest),              //                                                    .waitrequest
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_burstcount             (vexriscvavalonmaxperf_0_dbusavalon_burstcount),               //                                                    .burstcount
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_byteenable             (vexriscvavalonmaxperf_0_dbusavalon_byteenable),               //                                                    .byteenable
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_read                   (vexriscvavalonmaxperf_0_dbusavalon_read),                     //                                                    .read
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_readdata               (vexriscvavalonmaxperf_0_dbusavalon_readdata),                 //                                                    .readdata
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_readdatavalid          (vexriscvavalonmaxperf_0_dbusavalon_readdatavalid),            //                                                    .readdatavalid
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_write                  (vexriscvavalonmaxperf_0_dbusavalon_write),                    //                                                    .write
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_writedata              (vexriscvavalonmaxperf_0_dbusavalon_writedata),                //                                                    .writedata
		.VexRiscvAvalonMaxPerf_0_dBusAvalon_response               (vexriscvavalonmaxperf_0_dbusavalon_response),                 //                                                    .response
		.VexRiscvAvalonMaxPerf_0_iBusAvalon_address                (vexriscvavalonmaxperf_0_ibusavalon_address),                  //                  VexRiscvAvalonMaxPerf_0_iBusAvalon.address
		.VexRiscvAvalonMaxPerf_0_iBusAvalon_waitrequest            (vexriscvavalonmaxperf_0_ibusavalon_waitrequest),              //                                                    .waitrequest
		.VexRiscvAvalonMaxPerf_0_iBusAvalon_burstcount             (vexriscvavalonmaxperf_0_ibusavalon_burstcount),               //                                                    .burstcount
		.VexRiscvAvalonMaxPerf_0_iBusAvalon_read                   (vexriscvavalonmaxperf_0_ibusavalon_read),                     //                                                    .read
		.VexRiscvAvalonMaxPerf_0_iBusAvalon_readdata               (vexriscvavalonmaxperf_0_ibusavalon_readdata),                 //                                                    .readdata
		.VexRiscvAvalonMaxPerf_0_iBusAvalon_readdatavalid          (vexriscvavalonmaxperf_0_ibusavalon_readdatavalid),            //                                                    .readdatavalid
		.VexRiscvAvalonMaxPerf_0_iBusAvalon_response               (vexriscvavalonmaxperf_0_ibusavalon_response),                 //                                                    .response
		.jtag_uart_0_avalon_jtag_slave_address                     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //                       jtag_uart_0_avalon_jtag_slave.address
		.jtag_uart_0_avalon_jtag_slave_write                       (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),       //                                                    .write
		.jtag_uart_0_avalon_jtag_slave_read                        (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),        //                                                    .read
		.jtag_uart_0_avalon_jtag_slave_readdata                    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                                                    .readdata
		.jtag_uart_0_avalon_jtag_slave_writedata                   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                                                    .writedata
		.jtag_uart_0_avalon_jtag_slave_waitrequest                 (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                                                    .waitrequest
		.jtag_uart_0_avalon_jtag_slave_chipselect                  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect)   //                                                    .chipselect
	);

	vexriscv_system_irq_mapper irq_mapper (
		.clk        (clk_clk),                                    //       clk.clk
		.reset      (rst_controller_reset_out_reset),             // clk_reset.reset
		.sender_irq (vexriscvavalonmaxperf_0_timerinterrupt_irq)  //    sender.irq
	);

	vexriscv_system_irq_mapper_001 irq_mapper_001 (
		.clk           (clk_clk),                                       //       clk.clk
		.reset         (rst_controller_reset_out_reset),                // clk_reset.reset
		.receiver0_irq (irq_mapper_001_receiver0_irq),                  // receiver0.irq
		.sender_irq    (vexriscvavalonmaxperf_0_externalinterrupt_irq)  //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                               // reset_in0.reset
		.reset_in1      (vexriscvavalonmaxperf_0_debug_resetout_reset), // reset_in1.reset
		.clk            (clk_clk),                                      //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),               // reset_out.reset
		.reset_req      (),                                             // (terminated)
		.reset_req_in0  (1'b0),                                         // (terminated)
		.reset_req_in1  (1'b0),                                         // (terminated)
		.reset_in2      (1'b0),                                         // (terminated)
		.reset_req_in2  (1'b0),                                         // (terminated)
		.reset_in3      (1'b0),                                         // (terminated)
		.reset_req_in3  (1'b0),                                         // (terminated)
		.reset_in4      (1'b0),                                         // (terminated)
		.reset_req_in4  (1'b0),                                         // (terminated)
		.reset_in5      (1'b0),                                         // (terminated)
		.reset_req_in5  (1'b0),                                         // (terminated)
		.reset_in6      (1'b0),                                         // (terminated)
		.reset_req_in6  (1'b0),                                         // (terminated)
		.reset_in7      (1'b0),                                         // (terminated)
		.reset_req_in7  (1'b0),                                         // (terminated)
		.reset_in8      (1'b0),                                         // (terminated)
		.reset_req_in8  (1'b0),                                         // (terminated)
		.reset_in9      (1'b0),                                         // (terminated)
		.reset_req_in9  (1'b0),                                         // (terminated)
		.reset_in10     (1'b0),                                         // (terminated)
		.reset_req_in10 (1'b0),                                         // (terminated)
		.reset_in11     (1'b0),                                         // (terminated)
		.reset_req_in11 (1'b0),                                         // (terminated)
		.reset_in12     (1'b0),                                         // (terminated)
		.reset_req_in12 (1'b0),                                         // (terminated)
		.reset_in13     (1'b0),                                         // (terminated)
		.reset_req_in13 (1'b0),                                         // (terminated)
		.reset_in14     (1'b0),                                         // (terminated)
		.reset_req_in14 (1'b0),                                         // (terminated)
		.reset_in15     (1'b0),                                         // (terminated)
		.reset_req_in15 (1'b0)                                          // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
