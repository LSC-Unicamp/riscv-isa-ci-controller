module Controller #(
    parameter CLK_FREQ = 25000000
) (
    input wire clk,
    input wire reset,

    //saída de clock para o core, reset, endereço de memória, 
    //barramento de leitura e escrita entre outros.
    output wire clk_core,

    output wire reset_core,

    input wire memory_read_memory,
    input wire memory_write_memory,
    input wire [31:0] address_memory,
    input wire [31:0] write_data_memory,
    output wire [31:0]read_data_memory,

    //RISC-V FORMAL INTERFACE(RVFI)
    
    //INSTRUCTION METADATA (check: https://github.com/YosysHQ/riscv-formal/blob/main/cores/nerv/nerv.sv)
    input wire        rvfi_valid,
    input wire [63:0] rvfi_order,
    input wire [31:0] rvfi_insn,
    input wire        rvfi_trap,
    input wire        rvfi_halt,
    input wire        rvfi_intr,
    input wire [ 1:0] rvfi_mode,
    input wire [ 1:0] rvfi_ixl,
    
    //INTEGER wireISTER READ/WRITE
    input wire [ 4:0] rvfi_rs1_addr,
    input wire [ 4:0] rvfi_rs2_addr,
    input wire [31:0] rvfi_rs1_rdata,
    input wire [31:0] rvfi_rs2_rdata,
    input wire [ 4:0] rvfi_rd_addr,
    input wire [31:0] rvfi_rd_wdata,

    //PROGRAM COUNTER
    input wire [31:0] rvfi_pc_rdata,
    input wire [31:0] rvfi_pc_wdata,

    //MEMORY ACCESS
    input wire [31:0] rvfi_mem_addr,
    input wire [ 3:0] rvfi_mem_rmask,
    input wire [ 3:0] rvfi_mem_wmask,
    input wire [31:0] rvfi_mem_rdata,
    input wire [31:0] rvfi_mem_wd
);
    
endmodule
