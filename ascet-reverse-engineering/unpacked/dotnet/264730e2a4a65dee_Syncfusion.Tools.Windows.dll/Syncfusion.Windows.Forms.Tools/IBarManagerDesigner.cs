using System;
using System.ComponentModel.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public interface IBarManagerDesigner
{
	IDesignerHost DesignerHost { get; }

	IntPtr MdiClientWnd { get; }

	void SetDirty();

	object GetService(Type type);
}
