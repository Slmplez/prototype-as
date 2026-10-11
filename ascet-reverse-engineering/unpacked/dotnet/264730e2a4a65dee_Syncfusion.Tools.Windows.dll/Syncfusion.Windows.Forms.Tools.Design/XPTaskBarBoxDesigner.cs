using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class XPTaskBarBoxDesigner : ParentControlDesigner
{
	private const string DEF_ITEMS_PROPERTY_NAME = "Name";

	private const string DEF_ADD_ITEM_VERB_TEXT = "Add Item";

	private XPTaskBarBox control;

	private DesignerVerbCollection m_verbs;

	private DesignerActionListCollection actionLists;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (m_verbs == null)
			{
				InitVerbs();
			}
			return m_verbs;
		}
	}

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new XPTaskBarBoxActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override SelectionRules SelectionRules
	{
		get
		{
			SelectionRules selectionRules = base.SelectionRules;
			Control control = Control;
			if (control.Parent is XPTaskBar)
			{
				selectionRules &= ~SelectionRules.AllSizeable;
			}
			return selectionRules;
		}
	}

	private void InitVerbs()
	{
		m_verbs = new DesignerVerbCollection();
		DesignerVerb value = new DesignerVerb("Add Item", OnAddItem);
		m_verbs.Add(value);
	}

	private void OnAddItem(object sender, EventArgs e)
	{
		if (base.Component is XPTaskBarBox xPTaskBarBox && GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			DesignerTransaction designerTransaction = designerHost.CreateTransaction();
			PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(xPTaskBarBox);
			PropertyDescriptor member = properties["Name"];
			RaiseComponentChanging(member);
			XPTaskBarItem value = new XPTaskBarItem();
			xPTaskBarBox.Items.Add(value);
			RaiseComponentChanged(member, null, null);
			designerTransaction.Commit();
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		control = component as XPTaskBarBox;
		if (control != null)
		{
			control.SizeChanged += SourceControl_SizeChanged;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && control != null)
		{
			control.SizeChanged -= SourceControl_SizeChanged;
		}
		base.Dispose(disposing);
	}

	private void SourceControl_SizeChanged(object sender, EventArgs e)
	{
		Type typeFromHandle = typeof(AnchorEditor);
		typeFromHandle = typeFromHandle.Assembly.GetType("System.Windows.Forms.Design.ISelectionUIService");
		if (typeFromHandle != null)
		{
			object service = GetService(typeFromHandle);
			DesignTimeUtils.SyncSelection(service);
		}
	}

	public override bool CanParent(Control control)
	{
		XPTaskBarBox xPTaskBarBox = base.Component as XPTaskBarBox;
		if (control is Panel)
		{
			return xPTaskBarBox.Controls.Count == 0;
		}
		return false;
	}

	public override bool CanBeParentedTo(IDesigner parentDesigner)
	{
		return parentDesigner is XPTaskBarDesigner;
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		XPTaskBarBox xPTaskBarBox = (XPTaskBarBox)base.Component;
		if (xPTaskBarBox.HeaderBackColor == xPTaskBarBox.BackColor || xPTaskBarBox.ItemBackColor == xPTaskBarBox.BackColor)
		{
			DrawingUtils.DrawDesignTimeBorder(pe.Graphics, xPTaskBarBox);
		}
		base.OnPaintAdornments(pe);
	}
}
