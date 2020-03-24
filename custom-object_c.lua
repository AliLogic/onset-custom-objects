AddEvent("OnObjectStreamIn", function (objectid)
	local mesh = GetObjectPropertyValue(object, "mesh");
		
	if mesh ~= nil then
		GetObjectActor(objectid):SetSkeletalMesh(USkeletalMesh.LoadFromAsset(mesh));
			
		if IsGameDevMode() then
			AddPlayerChat("Streamed in a custom object with mesh " .. mesh);
		end
	end
end)
