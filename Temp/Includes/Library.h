/* Automation Studio generated header file */
/* Do not edit ! */
/* Library  */

#ifndef _LIBRARY_
#define _LIBRARY_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef struct FB_Integrator
{
	/* VAR_INPUT (analog) */
	float in;
	float dt;
	/* VAR_OUTPUT (analog) */
	float out;
	/* VAR (analog) */
	float state;
} FB_Integrator_typ;

typedef struct FB_Motor
{
	/* VAR_INPUT (analog) */
	float in;
	float in1;
	/* VAR_OUTPUT (analog) */
	float out_w;
	float out_phi;
	float out_w1;
	float out_phi1;
	/* VAR (analog) */
	float k_e;
	float T_m;
	float dt;
	struct FB_Integrator integrator;
	struct FB_Integrator integrator_phi;
	float k_e1;
	float T_m1;
	float dt1;
	struct FB_Integrator integrator1;
	struct FB_Integrator integrator_phi1;
} FB_Motor_typ;

typedef struct FB_Controller
{
	/* VAR_INPUT (analog) */
	float in;
	/* VAR_OUTPUT (analog) */
	float out;
	/* VAR (analog) */
	float k_i;
	float sum;
	float k_p;
	float dt;
	float max_abs_value;
	struct FB_Integrator integrator;
	float last_sum;
} FB_Controller_typ;

typedef struct FB_Axis
{
	/* VAR_INPUT (analog) */
	float in;
	signed char pwm_percentage;
	/* VAR_OUTPUT (analog) */
	signed short pwm_value;
	signed short counter;
	float speed;
	/* VAR (analog) */
	signed short last_counter;
	signed char i;
	/* VAR_INPUT (digital) */
	plcbit reset_error;
	plcbit endswitch_a_reached;
	plcbit endswitch_b_reached;
	/* VAR_OUTPUT (digital) */
	plcbit reset_counter;
} FB_Axis_typ;

typedef struct FB_Endswitch
{
	/* VAR_INPUT (analog) */
	float in;
	float neg_value;
	float pos_value;
	float in1;
	float neg_value1;
	float pos_value1;
	/* VAR_OUTPUT (digital) */
	plcbit neg_reached;
	plcbit pos_reached;
	plcbit neg_reached1;
	plcbit pos_reached1;
} FB_Endswitch_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void FB_Motor(struct FB_Motor* inst);
_BUR_PUBLIC void FB_Integrator(struct FB_Integrator* inst);
_BUR_PUBLIC void FB_Controller(struct FB_Controller* inst);
_BUR_PUBLIC void FB_Axis(struct FB_Axis* inst);
_BUR_PUBLIC void FB_Endswitch(struct FB_Endswitch* inst);


#ifdef __cplusplus
};
#endif
#endif /* _LIBRARY_ */

