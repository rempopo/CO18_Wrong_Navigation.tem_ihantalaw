tSF_ACEActions_Timeout = -1;

/*
 *	Configuration of ACE Actions:
 *		[ @ActionType, @Name, @ID, @ParentID, @Code, @Condition ]
 *		0:  @List of Classname OR List of @Objects  -   if list of classname is used, then all map objects with given class will be applyed
 *		1:  @Name		-	displayed name of the action node
 *		2:  @ID		-	ID of action node
 *		3:  @ParentID	-	ID of parent action node
 *		4:  @Code		-	code to execute (_target is the action-related object)
 *		5:  @Condition	-	condition of action availabness
 *
 */

#define	ACE_ACTIONS_TABLE		tSF_ACEActions_Actions = [
#define	ACE_ACTIONS_TABLE_END	];

ACE_ACTIONS_TABLE
	[
		"SELF"
		, "Засада готова"
		, "ace_action_1"
		, ""
		, { StartConvoy = true; publicVariable "StartConvoy"; convoy addWaypoint [getPosASL EndPoint, 0];}
		, { isNil "StartConvoy" && call TFAR_fnc_haveLRRadio }
	]

	
	
	
ACE_ACTIONS_TABLE_END
