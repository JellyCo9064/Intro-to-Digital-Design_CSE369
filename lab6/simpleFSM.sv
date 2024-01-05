// Simple FSM to recognize sequences of 1-1 on input w.
// out is raised when w has been true for previous two clock cycles
//
// Our FSM code has three parts:
// 1. variable, net, and state declarations/definitions
// 2. Combinational Logic (always_comb block)
// 3. Sequential Logic (always_ff block)
module simpleFSM (
  input   logic clk, reset, w
  ,output logic out
  );

  // State encoding
  // an enum is a straightforward way to assign clear names to our FSM states
  // while also being able to specify the bit representation of each state.
  typedef enum logic [1:0]
  {
    e_ready = 2'b00    // ready and waiting for a 1 on w
    ,e_first = 2'b01   // saw a 1 last cycle on w
    ,e_second = 2'b10  // saw 1-1 over last two cycles on w
  } state_e;

  // state variables
  // *_r indicates a "register" - i.e., state, the stored Q / output of a DFF
  // *_n indicates the next value for a state - i.e., the D input of a DFF
  //     note: we treat *_n like a net/wire, not a variable (storage/register/state)
  state_e state_r, state_n;

  // Combinational Logic
  always_comb begin
    // default assignments - these are used unless overridden below in this
    // same always_comb block. Default assignments help prevent tools from
    // inferring latches instead of flip-flops, which happens when a variable
    // does not have a value assigned to it on ALL possible execution paths!

    // stay in current state
    state_n = state_r;

    // FSM Next State Logic
    case (state_r)
      e_ready: begin
        if (w) state_n = e_first; // saw first 1 on w
        else   state_n = e_ready;
      end
      e_first: begin
        if (w) state_n = e_second; // saw second 1 on w
        else   state_n = e_ready;
      end
      e_second: begin
        if (w) state_n = e_second; // stay here if 1 on w
        else   state_n = e_ready;
      end
      default: begin
        state_n = state_e'('x);
      end
    endcase

    // Output logic
    // note: this statement could be placed above the FSM case statement, in a
    // separate always_comb block, or outside the always_comb block as an
    // assign statement
    out = (state_r == e_second);
  end

  // Sequential Logic
  // Only state is FSM state
  // Synchronous reset signal to set FSM to its first state
  always_ff @(posedge clk) begin
    if (reset) begin
      state_r <= e_ready;
    end else begin
      state_r <= state_n;
    end
  end

endmodule

