AddFunctionExport("CreateObjectEx", function (mesh, modelid, x, y, z, rx, ry, rz, sx, sy, sz)
	
	CreateObject(modelid, x, y, z, rx, ry, rz, sx, sy, sz)
	SetObjectPropertyValue(object, "mesh", mesh, true);
end)

AddFunctionExport("DestroyObjectEx", function (mesh, modelid, x, y, z, rx, ry, rz, sx, sy, sz)
	
	DestroyObject(modelid)
	SetObjectPropertyValue(object, "mesh", nil, true);
end)
