using System;

namespace Syncfusion.Core.Licensing;

internal class SyncfusionLicenseException : Exception
{
	public SyncfusionLicenseException()
	{
	}

	public SyncfusionLicenseException(string message)
		: base(message)
	{
	}

	public SyncfusionLicenseException(string message, Exception inner)
		: base(message, inner)
	{
	}
}
