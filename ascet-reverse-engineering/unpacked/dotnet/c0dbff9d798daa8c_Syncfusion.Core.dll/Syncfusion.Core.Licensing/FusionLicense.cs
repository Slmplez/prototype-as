using System.ComponentModel;

namespace Syncfusion.Core.Licensing;

internal class FusionLicense : License
{
	private string key;

	public override string LicenseKey => key;

	public FusionLicense(object owner, string key)
	{
		this.key = key;
	}

	public override void Dispose()
	{
	}
}
