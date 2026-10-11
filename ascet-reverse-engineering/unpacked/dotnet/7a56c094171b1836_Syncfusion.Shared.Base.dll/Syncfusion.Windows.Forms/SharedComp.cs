using System.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[LicenseProvider(typeof(FusionLicenseProvider))]
[DocumentationExclude]
public class SharedComp
{
	public virtual int GetVer()
	{
		return 0;
	}
}
