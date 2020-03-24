function CreateObjectEx(mesh, modelid, x, y, z, rx, ry, rz, sx, sy, sz)
	
	CreateObject(modelid, x, y, z, rx, ry, rz, sx, sy, sz)
	SetObjectPropertyValue(object, "mesh", mesh, true);
end
