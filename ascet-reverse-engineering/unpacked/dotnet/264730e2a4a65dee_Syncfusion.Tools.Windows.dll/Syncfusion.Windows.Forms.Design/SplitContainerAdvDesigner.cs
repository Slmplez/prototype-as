using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;
using Syncfusion.Windows.Forms.Tools;
using Syncfusion.Windows.Forms.Tools.Events;

namespace Syncfusion.Windows.Forms.Design;

public class SplitContainerAdvDesigner : ControlDesigner
{
	private const string DEF_SPLITDISTANCE_PROP_NAME = "SplitterDistance";

	private static string DEF_PANEL1_NAME = "Panel1";

	private static string DEF_PANEL2_NAME = "Panel2";

	private DesignerActionListCollection actionLists;

	private SplitContainerAdv m_splitContainer;

	private ISelectionService m_selectionService;

	private bool m_bIsActive;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new SplitContainerAdvActionList(base.Component));
			}
			return actionLists;
		}
	}

	protected ISelectionService SelectionService
	{
		get
		{
			if (m_selectionService == null)
			{
				InitSelectionService();
			}
			return m_selectionService;
		}
	}

	private void InitSelectionService()
	{
		m_selectionService = (ISelectionService)base.GetService(typeof(ISelectionService));
		if (m_selectionService != null)
		{
			m_selectionService.SelectionChanged += SelectionChanged;
		}
	}

	private void UninitSelectionService()
	{
		if (m_selectionService != null)
		{
			m_selectionService.SelectionChanged -= SelectionChanged;
			m_selectionService = null;
		}
	}

	public override void Initialize(IComponent component)
	{
		if (component == null)
		{
			throw new NullReferenceException("component");
		}
		base.Initialize(component);
		m_splitContainer = component as SplitContainerAdv;
		if (m_splitContainer != null)
		{
			if (!m_bIsActive)
			{
				m_bIsActive = true;
				MessageFilterEntryHelper.AddMessageFilter(m_splitContainer, ontop: false);
			}
			m_splitContainer.SplitterMoved += SplitterMoved;
			InitDesignerHost();
			InitSelectionService();
			EnablePanelsDesign();
		}
	}

	private void UnInitDesignerHost()
	{
		IDesignerHost designerHost = (IDesignerHost)base.GetService(typeof(IDesignerHost));
		if (designerHost != null)
		{
			designerHost.Activated -= DesignerActivated;
			designerHost.Deactivated -= DesignerDeactivated;
		}
	}

	private void InitDesignerHost()
	{
		IDesignerHost designerHost = (IDesignerHost)base.GetService(typeof(IDesignerHost));
		if (designerHost != null)
		{
			designerHost.Activated += DesignerActivated;
			designerHost.Deactivated += DesignerDeactivated;
		}
	}

	protected override void Dispose(bool disposing)
	{
		UnInitDesignerHost();
		UninitSelectionService();
		if (m_splitContainer != null)
		{
			MessageFilterEntryHelper.RemoveMessageFilter(m_splitContainer);
			m_splitContainer = null;
		}
		base.Dispose(disposing);
	}

	protected override void OnContextMenu(int x, int y)
	{
		base.OnContextMenu(x, y);
	}

	private void EnsureReferences()
	{
		IDesignerHost designerHost = (IDesignerHost)base.GetService(typeof(IDesignerHost));
		if (designerHost != null)
		{
			IReferenceService referenceService = designerHost.GetService(typeof(IReferenceService)) as IReferenceService;
			referenceService.GetReferences(typeof(SplitContainerAdv));
		}
	}

	private void UpdateProperties()
	{
		PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(m_splitContainer);
		PropertyDescriptor propertyDescriptor = properties["SplitterDistance"];
		if (propertyDescriptor != null)
		{
			RaiseComponentChanging(propertyDescriptor);
			RaiseComponentChanged(propertyDescriptor, null, null);
		}
	}

	private void EnablePanelsDesign()
	{
		if (m_splitContainer != null)
		{
			EnableDesignMode(m_splitContainer.Panel1, DEF_PANEL1_NAME);
			EnableDesignMode(m_splitContainer.Panel2, DEF_PANEL2_NAME);
		}
	}

	private void DesignerActivated(object sender, EventArgs e)
	{
		if (!m_bIsActive)
		{
			m_bIsActive = true;
			if (m_splitContainer != null)
			{
				MessageFilterEntryHelper.AddMessageFilter(m_splitContainer, ontop: false);
			}
		}
	}

	private void DesignerDeactivated(object sender, EventArgs e)
	{
		MessageFilterEntryHelper.RemoveMessageFilter(m_splitContainer);
		m_bIsActive = false;
	}

	private void SelectionChanged(object sender, EventArgs e)
	{
		if (m_splitContainer != null)
		{
			if (SelectionService.PrimarySelection == m_splitContainer.Panel1)
			{
				m_splitContainer.SelectedPanel = m_splitContainer.Panel1;
			}
			else if (SelectionService.PrimarySelection == m_splitContainer.Panel2)
			{
				m_splitContainer.SelectedPanel = m_splitContainer.Panel2;
			}
			else
			{
				m_splitContainer.SelectedPanel = null;
			}
		}
	}

	private void SplitterMoved(object sender, SplitterMoveEventArgs e)
	{
		UpdateProperties();
	}
}
