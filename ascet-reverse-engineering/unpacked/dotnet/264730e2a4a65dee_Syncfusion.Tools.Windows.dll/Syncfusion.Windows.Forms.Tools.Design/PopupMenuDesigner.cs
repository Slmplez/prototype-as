using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.ComponentModel.Design.Serialization;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class PopupMenuDesigner : ComponentDesigner, IListenForMainFormVisibilityChange
{
	private PopupDesignerForm popupForm;

	private DesignerVerbCollection verbs;

	private ParentBarItem latestParentBarItem;

	private IDesignerHost iDesignerHost;

	private CustomSerializationProvider dummySerProvider;

	public override DesignerVerbCollection Verbs
	{
		get
		{
			if (verbs == null)
			{
				verbs = new DesignerVerbCollection();
				verbs.Add(new DesignerVerb("Customize...", OnCustomize));
				verbs.Add(new DesignerVerb("Add Default ParentBarItem...", OnAddDefaultParentBarItem));
			}
			return verbs;
		}
	}

	public PopupMenuDesigner()
	{
		popupForm = new PopupDesignerForm();
	}

	public override void Initialize(IComponent component)
	{
		PopupMenu popupMenu = component as PopupMenu;
		popupMenu.ParentBarItemChanged += ParentBarItemChanged;
		base.Initialize(component);
		UpdateCachedParentBarItem(popupMenu);
		iDesignerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		iDesignerHost.Activated += OnActivated;
		iDesignerHost.Deactivated += OnDeactivated;
		IDesignerSerializationManager designerSerializationManager = (IDesignerSerializationManager)GetService(typeof(IDesignerSerializationManager));
		if (designerSerializationManager != null)
		{
			dummySerProvider = new CustomSerializationProvider(this);
			designerSerializationManager.AddSerializationProvider(dummySerProvider);
		}
	}

	protected void OnActivated(object sender, EventArgs e)
	{
		OnChangedVisibility(visible: true);
	}

	protected void OnDeactivated(object sender, EventArgs e)
	{
		OnChangedVisibility(visible: false);
	}

	private Form GetHostForm()
	{
		return iDesignerHost.RootComponent as Form;
	}

	private void OnAddDefaultParentBarItem(object sender, EventArgs e)
	{
		PopupMenu popupMenu = base.Component as PopupMenu;
		if (popupMenu.ParentBarItem != null)
		{
			MessageBox.Show("The PopupMenu's ParentBarItem should be null in order to add a New ParentBarItem.");
			return;
		}
		IDesignerHost designerHost = (IDesignerHost)GetService(typeof(IDesignerHost));
		ParentBarItem parentBarItem = (ParentBarItem)designerHost.CreateComponent(typeof(ParentBarItem));
		popupMenu.ParentBarItem = parentBarItem;
	}

	private void OnCustomize(object sender, EventArgs eevent)
	{
		PopupMenu popupMenu = base.Component as PopupMenu;
		if (popupMenu.ParentBarItem == null)
		{
			MessageBox.Show("Please associate a ParentBarItem with the PopupMenu before Customizing it.");
			return;
		}
		if (popupMenu.ParentBarItem.Manager != null)
		{
			popupMenu.ParentBarItem.Manager.Customize((IDesignerHost)GetService(typeof(IDesignerHost)));
		}
		popupForm.Customize(popupMenu);
	}

	private void ParentBarItemChanged(object sender, EventArgs e)
	{
		UpdateCachedParentBarItem(base.Component as PopupMenu);
	}

	private void UpdateCachedParentBarItem(PopupMenu popupMenu)
	{
		CloseDesigner();
		latestParentBarItem = popupMenu.ParentBarItem;
		if (latestParentBarItem != null && latestParentBarItem.Manager != null)
		{
			latestParentBarItem.Manager.CustomizationDone += CustomizationDone;
		}
	}

	private void CustomizationDone(object sender, EventArgs e)
	{
		CloseDesigner();
	}

	private void CloseDesigner()
	{
		if (popupForm != null && popupForm.Visible)
		{
			popupForm.Close();
		}
		if (latestParentBarItem != null)
		{
			if (latestParentBarItem.Manager != null)
			{
				latestParentBarItem.Manager.CustomizationDone -= CustomizationDone;
			}
			latestParentBarItem = null;
		}
	}

	public void ClosePopup()
	{
		if (popupForm != null)
		{
			popupForm.ClosePopup();
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && popupForm != null)
		{
			PopupMenu popupMenu = base.Component as PopupMenu;
			popupMenu.ParentBarItemChanged -= ParentBarItemChanged;
			CloseDesigner();
			popupForm.Dispose();
			popupForm = null;
		}
		base.Dispose(disposing);
	}

	public void OnChangedVisibility(bool visible)
	{
		if (!visible)
		{
			CloseDesigner();
		}
	}
}
