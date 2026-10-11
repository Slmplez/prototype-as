using System;
using System.Runtime.InteropServices;

namespace Etas.Base.ComSupport.IncaComAPI.ClientProcess;

[ComVisible(false)]
public static class DotNetAsLocalServerLoader
{
	public static object LoadLocalServerDotNETComponent_ForDispatch(Guid DotNetServerImplementationTypeGUID)
	{
		return ConnectToDotNETLocalServer(DotNetServerImplementationTypeGUID);
	}

	internal static object LoadLocalServerDotNETComponent_ForDispatch(Type DotNetServerImplementationType)
	{
		Guid gUID = DotNetServerImplementationType.GUID;
		return LoadLocalServerDotNETComponent_ForDispatch(gUID);
	}

	private static object ConnectToDotNETLocalServer(Guid ServerToLoadGuid)
	{
		try
		{
			object rReturnedComObject = null;
			Ole32MethodWrapper.CoCreateInstance(ref ServerToLoadGuid, null, 4u, ref Ole32MethodWrapper.IID_IUnknown, out rReturnedComObject);
			if (rReturnedComObject == null)
			{
				throw new Exception("Accessing dynamically registered and registry free COM Server failed - Server GUID: " + ServerToLoadGuid.ToString());
			}
			return rReturnedComObject;
		}
		catch (Exception)
		{
			throw;
		}
	}
}
