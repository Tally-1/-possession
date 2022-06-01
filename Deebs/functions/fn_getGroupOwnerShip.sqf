params["_group", "_clientId"];
if(groupOwner _group == _clientId)exitWith{true};
if(isServer &&{groupOwner _group == 0 or groupOwner _group == 2})exitWith{true};

private _result = _group setGroupOwner _clientId;



_result