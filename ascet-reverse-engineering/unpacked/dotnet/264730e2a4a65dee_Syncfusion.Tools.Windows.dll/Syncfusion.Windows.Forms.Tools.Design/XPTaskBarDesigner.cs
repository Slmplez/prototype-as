using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class XPTaskBarDesigner : ScrollableControlDesigner
{
	private static string VerbCaption = "Add Task Box";

	private DesignerVerbCollection verbs;

	private ToolTip tooltip;

	private DesignerActionListCollection actionLists;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (verbs == null)
			{
				verbs = new DesignerVerbCollection();
				verbs.Add(new DesignerVerb(VerbCaption, OnAdd));
			}
			return verbs;
		}
	}

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new XPTaskBarActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		tooltip = new ToolTip();
		tooltip.AutomaticDelay = 0;
		tooltip.InitialDelay = 0;
		tooltip.ReshowDelay = 0;
		tooltip.Active = true;
		tooltip.ShowAlways = true;
		tooltip.SetToolTip(Control, "Select " + VerbCaption + " from the Context Menu to add a new menu Category");
	}

	protected virtual Control GetSelectedControl()
	{
		ISelectionService selectionService = (ISelectionService)base.GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			return selectionService.PrimarySelection as Control;
		}
		return null;
	}

	protected override void OnDragOver(DragEventArgs de)
	{
		base.OnDragOver(de);
		if (GetSelectedControl() is XPTaskBarBox { Bounds: var bounds })
		{
			Point pt = Control.PointToClient(new Point(de.X, de.Y));
			if (bounds.Contains(pt))
			{
				de.Effect = DragDropEffects.None;
			}
			else
			{
				de.Effect = DragDropEffects.Move;
			}
		}
	}

	protected override void OnDragDrop(DragEventArgs de)
	{
		base.OnDragDrop(de);
		if (GetSelectedControl() is XPTaskBarBox xPTaskBarBox)
		{
			XPTaskBarBox taskMenuBoxUnder = GetTaskMenuBoxUnder(Control.PointToClient(new Point(de.X, de.Y)), xPTaskBarBox);
			if (taskMenuBoxUnder != null)
			{
				Control.ControlCollection controlCollection = Control.Controls;
				controlCollection.SetChildIndex(xPTaskBarBox, controlCollection.GetChildIndex(taskMenuBoxUnder));
			}
		}
	}

	protected virtual XPTaskBarBox GetTaskMenuBoxUnder(Point pt, XPTaskBarBox ignoreControl)
	{
		foreach (XPTaskBarBox control in Control.Controls)
		{
			if (pt.Y < control.Bounds.Bottom && control != ignoreControl)
			{
				return control;
			}
		}
		return null;
	}

	public override bool CanParent(Control control)
	{
		return control is XPTaskBarBox;
	}

	public override bool CanParent(ControlDesigner controlDesigner)
	{
		return controlDesigner is XPTaskBarBoxDesigner;
	}

	protected override IComponent[] CreateToolCore(ToolboxItem tool, int x, int y, int width, int height, bool hasLocation, bool hasSize)
	{
		throw new NotSupportedException("Cannot drag and drop controls from the toolbox into this component, please use the " + VerbCaption + " verb to add XPTaskBarBox Controls into this Control.");
	}

	private void OnAdd(object sender, EventArgs eevent)
	{
		XPTaskBar xPTaskBar = (XPTaskBar)base.Component;
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["Controls"];
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		if (designerHost == null)
		{
			return;
		}
		DesignerTransaction designerTransaction = null;
		try
		{
			try
			{
				designerTransaction = designerHost.CreateTransaction("Add task menu category to " + base.Component.Site.Name);
				RaiseComponentChanging(member);
			}
			catch (CheckoutException ex)
			{
				CheckoutException ex2 = ex;
				if (ex2 == CheckoutException.Canceled)
				{
					throw ex2;
				}
			}
			XPTaskBarBox xPTaskBarBox = (XPTaskBarBox)designerHost.CreateComponent(GetChildType());
			string text = null;
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(xPTaskBarBox)["Name"];
			if (propertyDescriptor != null && propertyDescriptor.PropertyType == typeof(string))
			{
				text = (string)propertyDescriptor.GetValue(xPTaskBarBox);
			}
			if (text != null)
			{
				xPTaskBarBox.Text = text;
			}
			xPTaskBar.Controls.Add(xPTaskBarBox);
			RaiseComponentChanged(member, null, null);
			if (!xPTaskBar.ThemesEnabled && xPTaskBar.Style == XPTaskBarStyle.Office2007)
			{
				xPTaskBarBox.ResetPADY();
			}
		}
		finally
		{
			designerTransaction?.Commit();
		}
	}

	private Type GetChildType()
	{
		Type result = typeof(XPTaskBarBox);
		object[] customAttributes = base.Component.GetType().GetCustomAttributes(typeof(DefaultChildTypeAttribute), inherit: true);
		if (customAttributes.Length > 0)
		{
			DefaultChildTypeAttribute defaultChildTypeAttribute = customAttributes[0] as DefaultChildTypeAttribute;
			if (!typeof(XPTaskBarBox).IsAssignableFrom(defaultChildTypeAttribute.ChildType))
			{
				MessageBox.Show("Specified custom type " + defaultChildTypeAttribute.ChildType.ToString() + " is not derived from XPTaskBarBox. Creating a XPTaskBarBox instance.", "XPTaskBar designer warning:");
			}
			else
			{
				result = defaultChildTypeAttribute.ChildType;
			}
		}
		return result;
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		if (base.Component is XPTaskBar { BorderStyle: BorderStyle.None } xPTaskBar)
		{
			DrawingUtils.DrawDesignTimeBorder(pe.Graphics, xPTaskBar);
		}
		base.OnPaintAdornments(pe);
	}
}
