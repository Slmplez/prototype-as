using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace Etas.Base.Shared;

[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
[CompilerGenerated]
[DebuggerNonUserCode]
internal class XmlMediatorBase
{
	private static ResourceManager resourceMan;

	private static CultureInfo resourceCulture;

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	internal static ResourceManager ResourceManager
	{
		get
		{
			if (object.ReferenceEquals(resourceMan, null))
			{
				ResourceManager resourceManager = new ResourceManager("Etas.Base.Shared.XmlMediatorBase.XmlMediatorBase", typeof(XmlMediatorBase).Assembly);
				resourceMan = resourceManager;
			}
			return resourceMan;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Advanced)]
	internal static CultureInfo Culture
	{
		get
		{
			return resourceCulture;
		}
		set
		{
			resourceCulture = value;
		}
	}

	internal static string CouldNotReadFile => ResourceManager.GetString("CouldNotReadFile", resourceCulture);

	internal static string FileNotFound => ResourceManager.GetString("FileNotFound", resourceCulture);

	internal static string ValidationException => ResourceManager.GetString("ValidationException", resourceCulture);

	internal static string ValidationFailed => ResourceManager.GetString("ValidationFailed", resourceCulture);

	[SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
	internal XmlMediatorBase()
	{
	}
}
