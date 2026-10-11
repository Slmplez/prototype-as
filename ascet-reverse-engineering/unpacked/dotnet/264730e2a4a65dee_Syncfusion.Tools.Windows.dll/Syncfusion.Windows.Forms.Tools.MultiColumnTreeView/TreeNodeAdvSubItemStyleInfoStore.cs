using System.ComponentModel;
using System.Drawing;
using System.Runtime.Serialization;
using System.Windows.Forms;
using System.Xml.Serialization;
using Syncfusion.Drawing;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

[TypeConverter(typeof(TreeNodeAdvSubItemStyleInfoStoreConverter))]
public class TreeNodeAdvSubItemStyleInfoStore : StyleInfoStore
{
	private static readonly StaticData s_sd = new StaticData(typeof(TreeNodeAdvSubItemStyleInfoStore), typeof(TreeNodeAdvSubItemStyleInfo), sortProperties: false);

	internal static readonly StyleInfoProperty BaseStyleProperty = Store.CreateStyleInfoProperty(typeof(string), "BaseStyle");

	internal static readonly StyleInfoProperty VisibleProperty = Store.CreateStyleInfoProperty(typeof(bool), "Visible");

	internal static readonly StyleInfoProperty FontProperty = Store.CreateStyleInfoProperty(typeof(Font), "Font");

	internal static readonly StyleInfoProperty LineAlignmentProperty = Store.CreateStyleInfoProperty(typeof(StringAlignment), "LineAlignment");

	internal static readonly StyleInfoProperty AlignmentProperty = Store.CreateStyleInfoProperty(typeof(StringAlignment), "Alignment");

	internal static readonly StyleInfoProperty TextProperty = Store.CreateStyleInfoProperty(typeof(string), "Text");

	internal static readonly StyleInfoProperty TextColorProperty = Store.CreateStyleInfoProperty(typeof(Color), "TextColor");

	internal static readonly StyleInfoProperty HelpTextProperty = Store.CreateStyleInfoProperty(typeof(string), "HelpText");

	internal static readonly StyleInfoProperty TagProperty = Store.CreateStyleInfoProperty(typeof(object), "Tag");

	internal static readonly StyleInfoProperty LeftImageProperty = Store.CreateStyleInfoProperty(typeof(Image), "LeftImage");

	internal static readonly StyleInfoProperty LeftImageIndicesProperty = Store.CreateStyleInfoProperty(typeof(int[]), "LeftImageIndices");

	internal static readonly StyleInfoProperty LeftImagePaddingProperty = Store.CreateStyleInfoProperty(typeof(int), "LeftImagePadding");

	internal static readonly StyleInfoProperty RightImageProperty = Store.CreateStyleInfoProperty(typeof(Image), "RightImage");

	internal static readonly StyleInfoProperty RightImageIndicesProperty = Store.CreateStyleInfoProperty(typeof(int[]), "RightImageIndices");

	internal static readonly StyleInfoProperty RightImagePaddingProperty = Store.CreateStyleInfoProperty(typeof(int), "RightImagePadding");

	internal static readonly StyleInfoProperty BackgroundProperty = Store.CreateStyleInfoProperty(typeof(BrushInfo), "Background");

	internal static readonly StyleInfoProperty BorderSidesProperty = Store.CreateStyleInfoProperty(typeof(Border3DSide), "BorderSides");

	internal static readonly StyleInfoProperty BorderStyleProperty = Store.CreateStyleInfoProperty(typeof(BorderStyle), "BorderStyle");

	internal static readonly StyleInfoProperty Border3DStyleProperty = Store.CreateStyleInfoProperty(typeof(Border3DStyle), "Border3DStyle");

	internal static readonly StyleInfoProperty BorderColorProperty = Store.CreateStyleInfoProperty(typeof(Color), "BorderColor");

	internal static readonly StyleInfoProperty BorderSingleProperty = Store.CreateStyleInfoProperty(typeof(ButtonBorderStyle), "BorderSingle");

	[XmlIgnore]
	protected override StaticData StaticDataStore => s_sd;

	internal static StaticData Store => s_sd;

	public TreeNodeAdvSubItemStyleInfoStore()
	{
	}

	public TreeNodeAdvSubItemStyleInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
		if (s_sd.IsEmpty)
		{
			new TreeNodeAdvSubItemStyleInfo();
		}
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new TreeNodeAdvSubItemStyleInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
