using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.Design;

[DocumentationExclude]
public class LMDesigner : ComponentDesigner
{
	private class LayoutManagerBehavior : Behavior
	{
		public event DragEventHandler DragOver;

		public event DragEventHandler DragDrop;

		public LayoutManagerBehavior(BehaviorService behaviorSvc)
			: base(callParentBehavior: true, behaviorSvc)
		{
		}

		public override void OnDragOver(Glyph g, DragEventArgs e)
		{
			if (this.DragOver != null)
			{
				this.DragOver(g, e);
			}
			base.OnDragOver(g, e);
		}

		public override void OnDragDrop(Glyph g, DragEventArgs e)
		{
			base.OnDragDrop(g, e);
			if (this.DragDrop != null)
			{
				this.DragDrop(g, e);
			}
		}
	}

	private const int POINTER_WIDTH = 3;

	private Point m_lastMouse = Point.Empty;

	private Rectangle m_rcPointer = Rectangle.Empty;

	private int m_insertIndex;

	private BehaviorService m_behaviorSvc;

	private LayoutManagerBehavior m_behavior;

	private Control InsertBefore
	{
		get
		{
			Control result = null;
			if (m_insertIndex >= 0)
			{
				Control control = Control;
				if (control != null)
				{
					IList controls = control.Controls;
					int num = m_insertIndex;
					for (int i = 0; i < controls.Count; i++)
					{
						if (!DragComponents.Contains(controls[i]))
						{
							if (i == num)
							{
								result = controls[i] as Control;
								break;
							}
						}
						else
						{
							num++;
						}
					}
				}
			}
			return result;
		}
	}

	private Control Control
	{
		get
		{
			if (base.Component is LayoutManager layoutManager)
			{
				return layoutManager.ContainerControl;
			}
			return null;
		}
	}

	private bool IsRightToLeft
	{
		get
		{
			Control control = Control;
			if (control != null)
			{
				return control.RightToLeft == RightToLeft.Yes;
			}
			return false;
		}
	}

	private bool IsVerticalLayout
	{
		get
		{
			if (base.Component is FlowLayout flowLayout)
			{
				return flowLayout.LayoutMode == FlowLayoutMode.Vertical;
			}
			return false;
		}
	}

	private ArrayList DragComponents
	{
		get
		{
			ArrayList arrayList = new ArrayList();
			if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
			{
				arrayList.AddRange(selectionService.GetSelectedComponents());
			}
			return arrayList;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		LayoutManager layoutManager = (LayoutManager)component;
		IDesignerHost designerHost = (layoutManager.DesignerHost = (IDesignerHost)GetService(typeof(IDesignerHost)));
		Control control = null;
		if (!designerHost.Loading)
		{
			ISelectionService selectionService = (ISelectionService)base.GetService(typeof(ISelectionService));
			if (selectionService != null)
			{
				ICollection selectedComponents = selectionService.GetSelectedComponents();
				if (selectedComponents != null)
				{
					IEnumerator enumerator = selectedComponents.GetEnumerator();
					if (enumerator != null && enumerator.MoveNext())
					{
						IComponent component2 = (IComponent)enumerator.Current;
						if (component2 != null && component2 is Control)
						{
							Control control2 = (Control)component2;
							if (control2 != null && layoutManager != null && MessageBox.Show("Do you want to make " + control2.Name + " the LayoutManager's ContainerControl?", "LayoutManager Designer", MessageBoxButtons.YesNo) == DialogResult.Yes)
							{
								control = control2;
							}
						}
					}
				}
			}
		}
		IExtenderListService extenderListService = (IExtenderListService)base.GetService(typeof(IExtenderListService));
		if (extenderListService != null && control != null)
		{
			IExtenderProvider[] extenderProviders = extenderListService.GetExtenderProviders();
			IExtenderProvider[] array = extenderProviders;
			foreach (IExtenderProvider extenderProvider in array)
			{
				if (extenderProvider is LayoutManager layoutManager2 && layoutManager != layoutManager2 && layoutManager2.ContainerControl != null && layoutManager2.ContainerControl == control)
				{
					MessageBox.Show("Specified container is already bound to a Layout Manager. Try a different container.", "LayoutManager Designer Warning", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
					control = null;
				}
			}
		}
		if (!designerHost.Loading && control != null)
		{
			layoutManager.ContainerControl = control;
		}
		IComponentChangeService componentChangeService = (IComponentChangeService)GetService(typeof(IComponentChangeService));
		if (componentChangeService != null)
		{
			componentChangeService.ComponentAdded += Designer_ComponentAdded;
			componentChangeService.ComponentRemoved += Designer_ComponentRemoved;
		}
		layoutManager.ContainerControlChanged += LM_ContainerControlChanged;
		Attach();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
			if (designerHost != null)
			{
				foreach (IComponent component in designerHost.Container.Components)
				{
					if (component is Control && !(component is Form))
					{
						(component as Control).ParentChanged -= OnControlParentChanged;
					}
				}
			}
			IComponentChangeService componentChangeService = (IComponentChangeService)GetService(typeof(IComponentChangeService));
			if (componentChangeService != null)
			{
				componentChangeService.ComponentAdded -= Designer_ComponentAdded;
				componentChangeService.ComponentRemoved -= Designer_ComponentRemoved;
			}
			Detach();
		}
		base.Dispose(disposing);
	}

	private void LM_ContainerControlChanged(object sender, EventArgs e)
	{
		IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
		foreach (IComponent component in designerHost.Container.Components)
		{
			if (component is Control && !(component is Form))
			{
				Control control = component as Control;
				TypeDescriptor.Refresh(control);
			}
		}
	}

	public void OnControlParentChanged(object sender, EventArgs e)
	{
		Control control = sender as Control;
		TypeDescriptor.Refresh(control);
	}

	private void Designer_ComponentAdded(object sender, ComponentEventArgs e)
	{
		if (e.Component is Control && !(e.Component is Form))
		{
			(e.Component as Control).ParentChanged += OnControlParentChanged;
		}
		else
		{
			if (e.Component != base.Component)
			{
				return;
			}
			IDesignerHost designerHost = GetService(typeof(IDesignerHost)) as IDesignerHost;
			foreach (IComponent component in designerHost.Container.Components)
			{
				if (component is Control && !(component is Form))
				{
					Control control = component as Control;
					control.ParentChanged += OnControlParentChanged;
				}
			}
		}
	}

	private void Designer_ComponentRemoved(object sender, ComponentEventArgs e)
	{
		if (e.Component is Control && !(e.Component is Form))
		{
			(e.Component as Control).ParentChanged -= OnControlParentChanged;
		}
	}

	private bool GetIsInsertBefore(Point pt, Control c)
	{
		bool flag = false;
		if (IsRightToLeft)
		{
			if (IsVerticalLayout)
			{
				return pt.X >= c.Left && (pt.X > c.Right || pt.Y <= c.Bottom);
			}
			return pt.Y <= c.Bottom && (pt.Y < c.Top || pt.X >= c.Left);
		}
		if (IsVerticalLayout)
		{
			return pt.X <= c.Right && (pt.X < c.Left || pt.Y <= c.Bottom);
		}
		return pt.Y <= c.Bottom && (pt.Y < c.Top || pt.X <= c.Right);
	}

	private void SetInsertIndex(Point ptMouse)
	{
		int insertIndex = GetInsertIndex(ptMouse);
		if (m_insertIndex != insertIndex)
		{
			InvalidatePointer();
			m_insertIndex = insertIndex;
			SetPointerRect();
		}
		DrawPointer();
	}

	private int GetInsertIndex(Point ptMouse)
	{
		int result = -1;
		Control control = Control;
		if (control != null)
		{
			Point pt = control.PointToClient(ptMouse);
			if (control.ClientRectangle.Contains(pt))
			{
				int i = 0;
				int num = 0;
				for (; i < control.Controls.Count; i++)
				{
					Control control2 = control.Controls[i];
					if (!DragComponents.Contains(control2))
					{
						if (GetIsInsertBefore(pt, control2))
						{
							result = i - num;
							break;
						}
					}
					else
					{
						num++;
					}
				}
			}
		}
		return result;
	}

	private void SetPointerRect()
	{
		m_rcPointer = Rectangle.Empty;
		Control insertBefore = InsertBefore;
		if (insertBefore != null)
		{
			Rectangle bounds = insertBefore.Bounds;
			m_rcPointer.X = (IsRightToLeft ? bounds.Right : (bounds.X - 3));
			m_rcPointer.Y = bounds.Y - 1;
			m_rcPointer.Width = 3;
			m_rcPointer.Height = bounds.Height + 2;
		}
	}

	private void InvalidatePointer()
	{
		if (!m_rcPointer.IsEmpty)
		{
			Control?.Invalidate(m_rcPointer, invalidateChildren: true);
		}
	}

	private void DrawPointer()
	{
		if (m_rcPointer.IsEmpty)
		{
			return;
		}
		Control control = Control;
		if (control == null)
		{
			return;
		}
		IntPtr handle = control.Handle;
		IntPtr dCEx = NativeMethods.GetDCEx(handle, IntPtr.Zero, 2);
		if (dCEx != IntPtr.Zero)
		{
			using (Graphics graphics = Graphics.FromHdc(dCEx))
			{
				Pen pen = ((control.BackColor.GetBrightness() > 0.5f) ? Pens.Black : Pens.White);
				graphics.DrawLine(pen, m_rcPointer.X, m_rcPointer.Y, m_rcPointer.Right - 1, m_rcPointer.Y);
				graphics.DrawLine(pen, m_rcPointer.X + 1, m_rcPointer.Y, m_rcPointer.X + 1, m_rcPointer.Bottom - 1);
				graphics.DrawLine(pen, m_rcPointer.X, m_rcPointer.Bottom - 1, m_rcPointer.Right - 1, m_rcPointer.Bottom - 1);
			}
			NativeMethods.ReleaseDC(handle, dCEx);
		}
	}

	private void InsertControls()
	{
		Control control = Control;
		if (control == null)
		{
			return;
		}
		control.SuspendLayout();
		Control.ControlCollection controls = control.Controls;
		Control control2 = InsertBefore;
		ArrayList dragComponents = DragComponents;
		if (control2 != null)
		{
			for (int num = dragComponents.Count - 1; num >= 0; num--)
			{
				if (dragComponents[num] is Control control3)
				{
					int num2 = controls.IndexOf(control3);
					if (num2 >= 0)
					{
						int num3 = controls.IndexOf(control2);
						controls.SetChildIndex(control3, (num2 < num3) ? (num3 - 1) : num3);
						control2 = control3;
					}
				}
			}
		}
		else
		{
			for (int i = 0; i < dragComponents.Count; i++)
			{
				controls.Add(dragComponents[i] as Control);
			}
		}
		control.ResumeLayout();
		if (GetService(typeof(ISelectionService)) is ISelectionService selectionService)
		{
			selectionService.SetSelectedComponents(new object[0], SelectionTypes.Replace);
			selectionService.SetSelectedComponents(dragComponents);
		}
	}

	private void Attach()
	{
		m_behaviorSvc = GetService(typeof(BehaviorService)) as BehaviorService;
		if (m_behaviorSvc != null)
		{
			m_behavior = new LayoutManagerBehavior(m_behaviorSvc);
			m_behaviorSvc.BeginDrag += OnBehaviorSvcBeginDrag;
			m_behaviorSvc.EndDrag += OnBehaviorSvcEndDrag;
		}
	}

	private void Detach()
	{
		if (m_behaviorSvc != null)
		{
			m_behaviorSvc.BeginDrag -= OnBehaviorSvcBeginDrag;
			m_behaviorSvc.EndDrag -= OnBehaviorSvcEndDrag;
			m_behavior = null;
		}
	}

	private bool IsControlGlyph(ComponentGlyph glyph)
	{
		bool result = false;
		if (glyph != null)
		{
			Control control = Control;
			result = control != null && control == glyph.RelatedComponent;
		}
		return result;
	}

	private void OnBehaviorSvcBeginDrag(object sender, BehaviorDragDropEventArgs e)
	{
		DragComponents.Clear();
		DragComponents.AddRange(e.DragComponents);
		m_behavior.DragOver += OnBehaviorDragOver;
		m_behavior.DragDrop += OnBehaviorDragDrop;
		m_behaviorSvc.PushBehavior(m_behavior);
	}

	private void OnBehaviorSvcEndDrag(object sender, BehaviorDragDropEventArgs e)
	{
		DragComponents.Clear();
		m_behavior.DragOver -= OnBehaviorDragOver;
		m_behavior.DragDrop -= OnBehaviorDragDrop;
		m_behaviorSvc.PopBehavior(m_behavior);
	}

	private void OnBehaviorDragOver(object sender, DragEventArgs e)
	{
		if (m_lastMouse.X != e.X || m_lastMouse.Y != e.Y)
		{
			Point insertIndex = Point.Empty;
			m_lastMouse = new Point(e.X, e.Y);
			if (IsControlGlyph(sender as ComponentGlyph))
			{
				insertIndex = m_lastMouse;
			}
			SetInsertIndex(insertIndex);
		}
	}

	private void OnBehaviorDragDrop(object sender, DragEventArgs e)
	{
		if ((e.AllowedEffect & (DragDropEffects.Copy | DragDropEffects.Move)) != DragDropEffects.None && IsControlGlyph(sender as ComponentGlyph))
		{
			InsertControls();
		}
	}
}
