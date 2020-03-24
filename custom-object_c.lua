AddEvent("OnObjectStreamIn", function (objectid)
	local mesh = GetObjectPropertyValue(object, "mesh");

	GetObjectActor(objectid):SetObjectSkeletalMesh(mesh);
end)
