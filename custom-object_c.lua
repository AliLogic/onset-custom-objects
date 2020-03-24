local ObjectModels = {}

function AddCustomModel(modelid, mesh)
	table.insert(ObjectModels, modelid, mesh)
end

AddEvent("OnObjectStreamIn", function (objectid)
	local mesh = ObjectModels[objectid]
		
	if mesh ~= nil then
		GetObjectActor(objectid):SetSkeletalMesh(USkeletalMesh.LoadFromAsset(mesh));
		
		if IsGameDevMode() then
			AddPlayerChat("Streamed in a custom object with mesh " .. mesh);
		end
	end
end)

AddFunctionExport("AddCustomModel", AddCustomModel)
