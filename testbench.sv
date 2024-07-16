module tb_vedicMul_2;

  // Input Declaration
  reg [1:0] a;
  reg [1:0] b;

  // Output Declaration
  wire [3:0] m;

  // Instantiate DUT
  vedicMul_2 uut (
    .m(m),
    .a(a),
    .b(b)
  );

  // Task to perform the test and check results
  task perform_test;
    input [1:0] a_in;
    input [1:0] b_in;
    input [3:0] expected_m;
    
    begin
      a = a_in;
      b = b_in;
      #10;
      if (m !== expected_m) begin
        $display("Test failed for a = %b, b = %b: expected m = %b, got m = %b", a, b, expected_m, m);
      end else begin
        $display("Test passed for a = %b, b = %b: got m = %b", a, b, m);
      end
    end
  endtask

  // Initial block to run all tests
  initial begin
    
    $dumpfile("waveform.vcd");
    $dumpvars(0,tb_vedicMul_2);
    
    // Test cases
    perform_test(2'b00, 2'b00, 4'b0000);
    perform_test(2'b00, 2'b01, 4'b0000);
    perform_test(2'b00, 2'b10, 4'b0000);
    perform_test(2'b00, 2'b11, 4'b0000);
    
    perform_test(2'b01, 2'b00, 4'b0000);
    perform_test(2'b01, 2'b01, 4'b0001);
    perform_test(2'b01, 2'b10, 4'b0010);
    perform_test(2'b01, 2'b11, 4'b0011);
    
    perform_test(2'b10, 2'b00, 4'b0000);
    perform_test(2'b10, 2'b01, 4'b0010);
    perform_test(2'b10, 2'b10, 4'b0100);
    perform_test(2'b10, 2'b11, 4'b0110);
    
    perform_test(2'b11, 2'b00, 4'b0000);
    perform_test(2'b11, 2'b01, 4'b0011);
    perform_test(2'b11, 2'b10, 4'b0110);
    perform_test(2'b11, 2'b11, 4'b1001);
    
    // Finish
    $finish;
    
  end

endmodule
