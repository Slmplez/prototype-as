using System.CodeDom;
using System.ComponentModel.Design.Serialization;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class CaptionButtonsCodeDomSerializer : CodeDomSerializer
{
	public override object Deserialize(IDesignerSerializationManager manager, object codeobject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(DockingManager).BaseType, typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeobject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object value)
	{
		if (value is CaptionButtonsCollection captionButtonsCollection && captionButtonsCollection.NeedSerializeToolTipInfo())
		{
			CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(CaptionButtonsCollection).BaseType, typeof(CodeDomSerializer));
			return codeDomSerializer.Serialize(manager, value);
		}
		return new CodeStatementCollection();
	}
}
