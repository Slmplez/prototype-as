using System;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Design;

public sealed class DMFormCollectionCodeDomSerializer : CodeDomSerializer
{
	private DockingManagerDesigner notifyDesigner;

	private DockingManager dockingManager;

	public DMFormCollectionCodeDomSerializer(DockingManagerDesigner dsgnr)
	{
		notifyDesigner = dsgnr;
		dockingManager = notifyDesigner.Component as DockingManager;
	}

	public override object Deserialize(IDesignerSerializationManager manager, object codeObject)
	{
		CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(Control.ControlCollection), typeof(CodeDomSerializer));
		return codeDomSerializer.Deserialize(manager, codeObject);
	}

	public override object Serialize(IDesignerSerializationManager manager, object obj)
	{
		if (notifyDesigner != null && !notifyDesigner.bRemoved)
		{
			bool flag = false;
			if (obj is Control.ControlCollection)
			{
				Control.ControlCollection controlCollection = obj as Control.ControlCollection;
				flag = controlCollection.Owner is RibbonControlAdv || controlCollection.Owner is RibbonControlAdvHeader;
			}
			else if (!(obj is RibbonControlAdv) && !(obj is RibbonControlAdvHeader))
			{
				flag = true;
			}
			if (flag)
			{
				return null;
			}
			if (dockingManager.HostControl.Handle != IntPtr.Zero)
			{
				dockingManager.HostControl.SuspendLayout();
				NativeMethodsHelper.LockWindowUpdate(dockingManager.HostControl.Handle);
			}
			notifyDesigner.RemoveUnserializableChildControls();
			CodeDomSerializer codeDomSerializer = (CodeDomSerializer)manager.GetSerializer(typeof(Control.ControlCollection), typeof(CodeDomSerializer));
			object result = codeDomSerializer.Serialize(manager, obj);
			notifyDesigner.ReaddUnserializableChildControls();
			if (dockingManager.HostControl.Handle != IntPtr.Zero)
			{
				NativeMethodsHelper.LockWindowUpdate(IntPtr.Zero);
				dockingManager.HostControl.ResumeLayout();
			}
			return result;
		}
		CodeDomSerializer codeDomSerializer2 = (CodeDomSerializer)manager.GetSerializer(typeof(Control.ControlCollection), typeof(CodeDomSerializer));
		return codeDomSerializer2.Serialize(manager, obj);
	}

	public void Dispose()
	{
		notifyDesigner = null;
		dockingManager = null;
	}
}
