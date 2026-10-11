using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
[EditorBrowsable(EditorBrowsableState.Never)]
public class CustomizingPopupMenu : PopupMenu
{
	protected ParentBarItem customizationMenu;

	protected IBarItemContainer parentItem;

	protected BarItem selectedItem;

	private TextBoxBarItem nameEditorItem;

	private BarItem deleteItem;

	private BarItem defaultPaintStyle;

	private BarItem textOnlyAlways;

	private BarItem textOnlyInMenus;

	private BarItem imageAndText;

	private BarItem beginAGroup;

	private BarItem resetItem;

	private BarItem imageBarItem;

	protected CustomizationDndHelper helper;

	internal BarManager dummyManager;

	private bool ignoreEvents;

	public CustomizingPopupMenu()
	{
		dummyManager = new BarManager();
		InitCustomizationMenu();
	}

	protected virtual void InitCustomizationMenu()
	{
		customizationMenu = new ParentBarItem();
		dummyManager.Items.Add(customizationMenu);
		base.ParentBarItem = customizationMenu;
		deleteItem = new BarItem(SR.GetString("DeleteMenuItemText"));
		defaultPaintStyle = new BarItem(SR.GetString("DefaultMenuItemText"));
		textOnlyAlways = new BarItem(SR.GetString("TextOnlyAlways"));
		textOnlyInMenus = new BarItem(SR.GetString("TextOnlyInMenus"));
		imageAndText = new BarItem(SR.GetString("ImageAndText"));
		nameEditorItem = new TextBoxBarItem(SR.GetString("NameCaption"));
		beginAGroup = new BarItem(SR.GetString("BeginAGroup"));
		resetItem = new BarItem(SR.GetString("ResetBarItem"));
		imageBarItem = new BarItem("Change Image");
		nameEditorItem.MinWidth = 100;
		resetItem.Click += CustomizingMenuItemClicked;
		deleteItem.Click += CustomizingMenuItemClicked;
		nameEditorItem.PropertyChanged += NameEditorValueChanged;
		defaultPaintStyle.Click += CustomizingMenuItemClicked;
		textOnlyAlways.Click += CustomizingMenuItemClicked;
		textOnlyInMenus.Click += CustomizingMenuItemClicked;
		imageAndText.Click += CustomizingMenuItemClicked;
		beginAGroup.Click += CustomizingMenuItemClicked;
		imageBarItem.Click += CustomizingMenuItemClicked;
		customizationMenu.Items.AddRange(new BarItem[9] { resetItem, deleteItem, imageBarItem, nameEditorItem, defaultPaintStyle, textOnlyAlways, textOnlyInMenus, imageAndText, beginAGroup });
		customizationMenu.BeginGroupAt(nameEditorItem);
		customizationMenu.BeginGroupAt(defaultPaintStyle);
		customizationMenu.BeginGroupAt(beginAGroup);
		customizationMenu.BeforePopup += CustomizeMenuBeforePopup;
		customizationMenu.Popup += CustomizeMenuPopup;
	}

	protected virtual void CustomizingMenuItemClicked(object sender, EventArgs e)
	{
		if (ignoreEvents)
		{
			return;
		}
		PaintStyle paintStyle = selectedItem.PaintStyle;
		if (sender == deleteItem)
		{
			helper.RemoveItem(selectedItem);
		}
		else if (sender == resetItem)
		{
			helper.ResetItem(selectedItem, messageboxshow: true);
		}
		else if (sender == defaultPaintStyle)
		{
			paintStyle = PaintStyle.Default;
		}
		else if (sender == textOnlyAlways)
		{
			paintStyle = PaintStyle.TextOnly;
		}
		else if (sender == textOnlyInMenus)
		{
			paintStyle = PaintStyle.TextOnlyInMenus;
		}
		else if (sender == imageAndText)
		{
			paintStyle = PaintStyle.ImageAndText;
		}
		else if (sender == beginAGroup)
		{
			bool flag = false;
			if (!parentItem.IsGroupBeginning(selectedItem))
			{
				flag = true;
			}
			if (!parentItem.Manager.DesignMode)
			{
				selectedItem.Manager.MainFrameBarManager.RecordModifiedGrouping(selectedItem, flag, parentItem);
			}
			else if (flag)
			{
				parentItem.BeginGroupAt(selectedItem);
			}
			else
			{
				parentItem.RemoveGroupAt(selectedItem);
			}
		}
		else if (sender == imageBarItem)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog();
			openFileDialog.Filter = "Image Files(*.BMP;*.JPG;*.GIF;*.PNG;*.JPEG)|*.BMP;*.JPG;*.GIF;*.PNG;*.JPEG";
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				ImageExt image = new ImageExt(Image.FromFile(openFileDialog.FileName));
				if (selectedItem != null)
				{
					selectedItem.Image = image;
				}
			}
			selectedItem.Manager.MainFrameBarManager.RemovePreviouslyAddedChangeImageInfo(selectedItem);
			if (!parentItem.Manager.DesignMode)
			{
				selectedItem.Manager.MainFrameBarManager.RecordChangedImage(selectedItem, selectedItem.Image);
			}
		}
		if (paintStyle != selectedItem.PaintStyle)
		{
			if (!parentItem.Manager.DesignMode)
			{
				selectedItem.Manager.MainFrameBarManager.RecordModifiedPaintStyle(selectedItem, paintStyle);
			}
			else
			{
				selectedItem.PaintStyle = paintStyle;
			}
		}
	}

	private void NameEditorValueChanged(object sender, SyncfusionPropertyChangedEventArgs e)
	{
		if (!ignoreEvents && e.PropertyName == "TextBoxValue")
		{
			string textBoxValue = nameEditorItem.TextBoxValue;
			if (!parentItem.Manager.DesignMode)
			{
				selectedItem.Manager.MainFrameBarManager.RecordModifiedCaption(selectedItem, textBoxValue);
			}
			else
			{
				selectedItem.Text = textBoxValue;
			}
		}
	}

	private void CustomizeMenuBeforePopup(object sender, CancelEventArgs e)
	{
		ignoreEvents = true;
		if (!parentItem.Manager.DesignMode && parentItem.Manager.MainFrameBarManager != null && !parentItem.Manager.MainFrameBarManager.AllowUserRenaming)
		{
			customizationMenu.Items.Remove(nameEditorItem);
		}
		else if (customizationMenu.Items.IndexOf(nameEditorItem) == -1)
		{
			customizationMenu.Items.Insert(customizationMenu.Items.IndexOf(deleteItem) + 1, nameEditorItem);
			customizationMenu.BeginGroupAt(nameEditorItem);
		}
		ignoreEvents = false;
	}

	private void CustomizeMenuPopup(object sender, EventArgs e)
	{
		ignoreEvents = true;
		if (parentItem.Manager.DesignMode)
		{
			resetItem.Visible = false;
		}
		else
		{
			resetItem.Visible = true;
		}
		nameEditorItem.TextBoxValue = selectedItem.Text;
		defaultPaintStyle.Checked = false;
		textOnlyAlways.Checked = false;
		textOnlyInMenus.Checked = false;
		imageAndText.Checked = false;
		beginAGroup.Checked = false;
		switch (selectedItem.PaintStyle)
		{
		case PaintStyle.Default:
			defaultPaintStyle.Checked = true;
			break;
		case PaintStyle.TextOnly:
			textOnlyAlways.Checked = true;
			break;
		case PaintStyle.TextOnlyInMenus:
			textOnlyInMenus.Checked = true;
			break;
		case PaintStyle.ImageAndText:
			imageAndText.Checked = true;
			break;
		}
		if (parentItem.IsGroupBeginning(selectedItem))
		{
			beginAGroup.Checked = true;
		}
		ignoreEvents = false;
	}

	public void Show(Control control, Point pos, BarItem selectedItem, IBarItemContainer parent, CustomizationDndHelper helper)
	{
		if (!(selectedItem is StandAloneBarItem))
		{
			this.selectedItem = selectedItem;
			parentItem = parent;
			this.helper = helper;
			Show(control, pos);
		}
	}

	public bool IsPopupUI(Control control)
	{
		if (childMenuUI != null)
		{
			return control == childMenuUI;
		}
		return false;
	}

	public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (GetPopupParentControl() is MenuGrid)
		{
			MenuGrid menuGrid = (MenuGrid)GetPopupParentControl();
			if (menuGrid.IsShowing())
			{
				PopupManager.SetCurrentPopupClient(menuGrid, active: true, callKillFocusOnFocused: false);
			}
		}
		base.ChildClosing(childUI, popupCloseType);
	}
}
