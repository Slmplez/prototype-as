using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Diagnostics.CodeAnalysis;
using System.Drawing;
using System.Globalization;
using System.Resources;
using System.Runtime.CompilerServices;

namespace Etas.Base.UI.Framework;

[DebuggerNonUserCode]
[CompilerGenerated]
[GeneratedCode("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
internal class SuggestionResources
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
				ResourceManager resourceManager = new ResourceManager("Etas.Base.UI.Framework.SuggestionResources", typeof(SuggestionResources).Assembly);
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

	internal static Bitmap IMG_lightbulb_off16
	{
		get
		{
			object obj = ResourceManager.GetObject("IMG_lightbulb_off16", resourceCulture);
			return (Bitmap)obj;
		}
	}

	internal static Bitmap IMG_lightbulb_off24
	{
		get
		{
			object obj = ResourceManager.GetObject("IMG_lightbulb_off24", resourceCulture);
			return (Bitmap)obj;
		}
	}

	internal static Bitmap IMG_lightbulb_off32
	{
		get
		{
			object obj = ResourceManager.GetObject("IMG_lightbulb_off32", resourceCulture);
			return (Bitmap)obj;
		}
	}

	internal static Bitmap IMG_lightbulb_off48
	{
		get
		{
			object obj = ResourceManager.GetObject("IMG_lightbulb_off48", resourceCulture);
			return (Bitmap)obj;
		}
	}

	internal static Bitmap IMG_lightbulb16
	{
		get
		{
			object obj = ResourceManager.GetObject("IMG_lightbulb16", resourceCulture);
			return (Bitmap)obj;
		}
	}

	internal static Bitmap IMG_lightbulb24
	{
		get
		{
			object obj = ResourceManager.GetObject("IMG_lightbulb24", resourceCulture);
			return (Bitmap)obj;
		}
	}

	internal static Bitmap IMG_lightbulb32
	{
		get
		{
			object obj = ResourceManager.GetObject("IMG_lightbulb32", resourceCulture);
			return (Bitmap)obj;
		}
	}

	internal static Bitmap IMG_lightbulb48
	{
		get
		{
			object obj = ResourceManager.GetObject("IMG_lightbulb48", resourceCulture);
			return (Bitmap)obj;
		}
	}

	[SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
	internal SuggestionResources()
	{
	}
}
