using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace Etas.Base.UI.Framework;

[DebuggerNonUserCode]
[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
[CompilerGenerated]
internal class UIFramework
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
				ResourceManager resourceManager = new ResourceManager("Etas.Base.UI.Framework.UIFramework", typeof(UIFramework).Assembly);
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

	internal static string RES_ColorSchemeError => ResourceManager.GetString("RES_ColorSchemeError", resourceCulture);

	internal static string RES_ExceptionArrayIsNull => ResourceManager.GetString("RES_ExceptionArrayIsNull", resourceCulture);

	internal static string RES_ExceptionLessThanZeroIndex => ResourceManager.GetString("RES_ExceptionLessThanZeroIndex", resourceCulture);

	internal static string RES_ExceptionLocalizerConfig_ => ResourceManager.GetString("RES_ExceptionLocalizerConfig ", resourceCulture);

	internal static string RES_ExceptionNavigationFailure => ResourceManager.GetString("RES_ExceptionNavigationFailure", resourceCulture);

	internal static string RES_ExceptionNavigationInitializationFailure => ResourceManager.GetString("RES_ExceptionNavigationInitializationFailure", resourceCulture);

	internal static string RES_ExceptionNonCLSCompliant_ => ResourceManager.GetString("RES_ExceptionNonCLSCompliant ", resourceCulture);

	internal static string RES_ExceptionNotSupported => ResourceManager.GetString("RES_ExceptionNotSupported", resourceCulture);

	internal static string RES_ExceptionNullStackObject => ResourceManager.GetString("RES_ExceptionNullStackObject", resourceCulture);

	internal static string RES_ExceptionOutOfBoundsIndex => ResourceManager.GetString("RES_ExceptionOutOfBoundsIndex", resourceCulture);

	internal static string RES_ExceptionStorageExecution => ResourceManager.GetString("RES_ExceptionStorageExecution", resourceCulture);

	internal static string RES_ExceptionUnknown => ResourceManager.GetString("RES_ExceptionUnknown", resourceCulture);

	internal static string RES_ExceptionXmlRead => ResourceManager.GetString("RES_ExceptionXmlRead", resourceCulture);

	internal static string RES_InvalidValueAsParameter => ResourceManager.GetString("RES_InvalidValueAsParameter", resourceCulture);

	internal static string RES_MediaFailure => ResourceManager.GetString("RES_MediaFailure", resourceCulture);

	internal static string RES_NavigationAudioLocation => ResourceManager.GetString("RES_NavigationAudioLocation", resourceCulture);

	internal static string RES_NullValueAsParameter => ResourceManager.GetString("RES_NullValueAsParameter", resourceCulture);

	internal static string RES_ResetToDefault1 => ResourceManager.GetString("RES_ResetToDefault1", resourceCulture);

	internal static string RES_ResetToDefault2 => ResourceManager.GetString("RES_ResetToDefault2", resourceCulture);

	internal static string RES_SuggestionMenuShortcut => ResourceManager.GetString("RES_SuggestionMenuShortcut", resourceCulture);

	[SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
	internal UIFramework()
	{
	}
}
