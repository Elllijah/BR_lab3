
FUNCTION_BLOCK FB_Motor (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL;
	END_VAR
	VAR_OUTPUT
		out_w : REAL;
		out_phi : REAL;
	END_VAR
	VAR
		k_e : REAL;
		T_m : REAL;
		dt : REAL;
		integrator : FB_Integrator;
		integrator_phi : FB_Integrator;
	END_VAR
	VAR_INPUT
		in1 : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_OUTPUT
		out_w1 : {REDUND_UNREPLICABLE} REAL;
		out_phi1 : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR
		k_e1 : {REDUND_UNREPLICABLE} REAL;
		T_m1 : {REDUND_UNREPLICABLE} REAL;
		dt1 : {REDUND_UNREPLICABLE} REAL;
		integrator1 : {REDUND_UNREPLICABLE} FB_Integrator;
		integrator_phi1 : {REDUND_UNREPLICABLE} FB_Integrator;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Integrator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL;
		dt : REAL;
	END_VAR
	VAR_OUTPUT
		out : REAL;
	END_VAR
	VAR
		state : REAL := 0.0;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Controller (* *) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL;
	END_VAR
	VAR_OUTPUT
		out : REAL;
	END_VAR
	VAR
		k_i : REAL;
		sum : REAL;
		k_p : REAL;
		dt : REAL;
		max_abs_value : REAL;
		integrator : FB_Integrator;
		last_sum : REAL;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Axis (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		in : REAL;
		reset_error : BOOL;
		endswitch_a_reached : BOOL;
		endswitch_b_reached : BOOL;
		pwm_percentage : SINT;
	END_VAR
	VAR_OUTPUT
		reset_counter : BOOL;
		pwm_value : INT;
	END_VAR
	VAR_OUTPUT RETAIN
		counter : INT;
	END_VAR
	VAR_OUTPUT
		speed : REAL;
	END_VAR
	VAR
		last_counter : INT;
		i : SINT := 1;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK FB_Endswitch
	VAR_INPUT
		in : REAL;
		neg_value : REAL;
		pos_value : REAL;
	END_VAR
	VAR_OUTPUT
		neg_reached : BOOL;
		pos_reached : BOOL;
	END_VAR
	VAR_INPUT
		in1 : {REDUND_UNREPLICABLE} REAL;
		neg_value1 : {REDUND_UNREPLICABLE} REAL;
		pos_value1 : {REDUND_UNREPLICABLE} REAL;
	END_VAR
	VAR_OUTPUT
		neg_reached1 : {REDUND_UNREPLICABLE} BOOL;
		pos_reached1 : {REDUND_UNREPLICABLE} BOOL;
	END_VAR
END_FUNCTION_BLOCK
