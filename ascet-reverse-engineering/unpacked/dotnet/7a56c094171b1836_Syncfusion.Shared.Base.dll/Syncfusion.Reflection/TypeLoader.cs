using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms;

namespace Syncfusion.Reflection;

[Description("A component lets you load custom types into the design time.")]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.TypeLoader.bmp")]
public class TypeLoader : Component
{
	internal static string UnresolvedType = " (Unresolved type)";

	private TypesToLoadList typesList = new TypesToLoadList();

	[DefaultValue("")]
	[Description("Returns the static member name to invoke.")]
	public string InvokeMemberName
	{
		get
		{
			return typesList.InvokeMemberName;
		}
		set
		{
			typesList.InvokeMemberName = value;
		}
	}

	[Description("Specifies the TypesToLoadList containing the list of TypeNames.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public TypesToLoadList TypesToLoadList => typesList;

	public TypeLoader()
	{
		typesList.TypeNotFound += OnTypeNotFound;
	}

	public TypeLoader(IContainer container)
	{
		container?.Add(this);
	}

	protected void OnTypeNotFound(object sender, TypeNotFoundEventArgs args)
	{
		if (base.DesignMode)
		{
			string typeFullName = args.InvalidTypeName.TypeFullName;
			typeFullName = typeFullName.Replace(UnresolvedType, string.Empty);
			MessageBox.Show("Cannot resolve " + typeFullName + " to a valid type. Make sure the corresponding assembly is referenced in your project.", "TypeLoader Design Time Notification:");
			if (args.InvalidTypeName.TypeFullName.IndexOf(UnresolvedType) == -1)
			{
				typesList.SuspendEvents();
				args.InvalidTypeName.TypeFullName += UnresolvedType;
				typesList.ResumeEvents(throwEvent: false);
			}
		}
	}
}
