#define TRACE
using System;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Xml;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework;

public class EnhancedListView : ListView
{
	private Hashtable _indexTable;

	private Hashtable _widthTable;

	private ContextMenuStrip _contextMenu;

	private bool _columnsLoaded;

	private bool _contextMenuIsOpen;

	private bool _sortAscending;

	private string _hiddenColumns;

	private string _visibleNames = "";

	private string _indexes = "";

	private string _widths = "";

	private int _firstVisibleIndex;

	private int _itemnumber;

	[DefaultValue(null)]
	[Category("Behavior")]
	[Description("Columns to be hidden at runtime by default")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public string HiddenColumns
	{
		get
		{
			return _hiddenColumns;
		}
		set
		{
			_hiddenColumns = value;
			SortHiddenColumns();
			if (!base.DesignMode && _columnsLoaded)
			{
				ParseHiddenColumnsString();
				UpdateVisibility();
			}
		}
	}

	public EnhancedListView()
	{
		_sortAscending = true;
		_indexTable = new Hashtable();
		_widthTable = new Hashtable();
		_contextMenu = new ContextMenuStrip();
		_contextMenu.Opened += OnContextMenuOpened;
		_contextMenu.Closed += OnContextMenuClosed;
		DoubleBuffered = true;
	}

	private void InitializeComponent()
	{
		base.SuspendLayout();
		base.ResumeLayout(false);
	}

	private void RefreshContextCheckStates()
	{
		foreach (ToolStripMenuItem item in _contextMenu.Items)
		{
			if (((ColumnHeader)item.Tag).DisplayIndex < _firstVisibleIndex)
			{
				item.Checked = false;
			}
			else
			{
				item.Checked = true;
			}
		}
	}

	private void RestoreIndexOrdering()
	{
		if (_indexes == "" || base.DesignMode)
		{
			return;
		}
		string[] array = _indexes.Split(',');
		string[] array2 = array;
		foreach (string text in array2)
		{
			string[] array3 = null;
			array3 = text.Split(':');
			string text2 = array3[0];
			string value = array3[1];
			foreach (ColumnHeader column in base.Columns)
			{
				if (column.Text == text2)
				{
					column.DisplayIndex = Convert.ToInt32(value);
				}
			}
		}
	}

	private void UpdateHiddenColumnsString()
	{
		_hiddenColumns = "";
		foreach (DictionaryEntry item in _indexTable)
		{
			if (((ColumnHeader)item.Key).DisplayIndex < _firstVisibleIndex)
			{
				string hiddenIndex = _indexTable[item.Key].ToString();
				AppendHiddenColumnIndex(hiddenIndex);
			}
		}
		SortHiddenColumns();
	}

	private void AppendHiddenColumnIndex(string hiddenIndex)
	{
		if (_hiddenColumns == "" || _hiddenColumns == null)
		{
			_hiddenColumns = hiddenIndex;
		}
		else
		{
			_hiddenColumns = _hiddenColumns + "," + hiddenIndex;
		}
	}

	private void HideColumn(ColumnHeader header)
	{
		if (!base.DesignMode && base.Columns.Contains(header))
		{
			header.Width = 0;
			header.DisplayIndex = 0;
			_firstVisibleIndex++;
			UpdateHiddenColumnsString();
		}
	}

	private void ShowColumn(ColumnHeader header)
	{
		if (!base.DesignMode && base.Columns.Contains(header))
		{
			header.DisplayIndex = _firstVisibleIndex - 1;
			_firstVisibleIndex--;
			header.Width = 120;
			UpdateHiddenColumnsString();
		}
	}

	private void OnContextMenuItemClicked(object sender, EventArgs e)
	{
		ToolStripMenuItem toolStripMenuItem = sender as ToolStripMenuItem;
		if (toolStripMenuItem.Checked)
		{
			HideColumn((ColumnHeader)toolStripMenuItem.Tag);
		}
		else
		{
			ShowColumn((ColumnHeader)toolStripMenuItem.Tag);
		}
		toolStripMenuItem.Checked = !toolStripMenuItem.Checked;
	}

	private void SortHiddenColumns()
	{
		if (!(_hiddenColumns == "") && _hiddenColumns != null)
		{
			string[] array = _hiddenColumns.Split(',');
			Array.Sort(array, new StringSorter());
			_hiddenColumns = "";
			string[] array2 = array;
			foreach (string hiddenIndex in array2)
			{
				AppendHiddenColumnIndex(hiddenIndex);
			}
		}
	}

	private void ParseHiddenColumnsString()
	{
		if (_hiddenColumns == "" || _hiddenColumns == null)
		{
			return;
		}
		string[] array = _hiddenColumns.Split(',');
		ArrayList arrayList = new ArrayList();
		for (int i = 0; i < array.Length; i++)
		{
			arrayList.Add(Convert.ToInt32(array[i]));
		}
		int count = base.Columns.Count;
		ArrayList arrayList2 = new ArrayList();
		for (int j = 0; j < count; j++)
		{
			ColumnHeader columnHeader = base.Columns[j];
			if (arrayList.Contains(columnHeader.DisplayIndex))
			{
				arrayList2.Add(columnHeader);
			}
		}
		foreach (object item in arrayList2)
		{
			ColumnHeader columnHeader = item as ColumnHeader;
			if (item != null)
			{
				HideColumn(columnHeader);
			}
		}
	}

	private void UpdateVisibility()
	{
		if (_contextMenu != null)
		{
			RefreshContextCheckStates();
		}
	}

	private bool IndexIsHidden(ColumnHeader header)
	{
		if (header.DisplayIndex < _firstVisibleIndex)
		{
			return false;
		}
		return true;
	}

	private void OnContextMenuOpened(object sender, EventArgs e)
	{
		_contextMenuIsOpen = true;
	}

	private void OnContextMenuClosed(object sender, ToolStripDropDownClosedEventArgs e)
	{
		_contextMenuIsOpen = false;
	}

	private void ReorderIndexTable()
	{
		foreach (ColumnHeader column in base.Columns)
		{
			if (_indexTable.Contains(column))
			{
				_indexTable[column] = column.DisplayIndex;
			}
		}
	}

	private void SetColumnWidths()
	{
		Hashtable hashtable = null;
		if (_widths != "")
		{
			hashtable = new Hashtable();
			string[] array = _widths.Split(',');
			string[] array2 = array;
			foreach (string text in array2)
			{
				string[] array3 = null;
				array3 = text.Split(':');
				string key = array3[0];
				string value = array3[1];
				hashtable.Add(key, Convert.ToInt32(value));
			}
		}
		foreach (ColumnHeader column in base.Columns)
		{
			if (hashtable != null && hashtable.Contains(column.Text))
			{
				column.Width = (int)hashtable[column.Text];
			}
		}
	}

	protected override void OnColumnClick(ColumnClickEventArgs e)
	{
		if (base.Sorting == SortOrder.None || base.Sorting == SortOrder.Descending)
		{
			_sortAscending = true;
			base.Sorting = SortOrder.Ascending;
		}
		else if (base.Sorting == SortOrder.Ascending)
		{
			_sortAscending = false;
			base.Sorting = SortOrder.Descending;
		}
		base.ListViewItemSorter = new EnhancedListViewItemComparer(e.Column, _sortAscending);
		base.OnColumnClick(e);
	}

	protected override void OnColumnWidthChanging(ColumnWidthChangingEventArgs e)
	{
		ColumnHeader columnHeader = base.Columns[e.ColumnIndex];
		if (columnHeader.DisplayIndex < _firstVisibleIndex)
		{
			if (e.NewWidth > 0)
			{
				columnHeader.Width = 0;
			}
		}
		else
		{
			base.OnColumnWidthChanging(e);
		}
	}

	protected override void OnColumnWidthChanged(ColumnWidthChangedEventArgs e)
	{
		ColumnHeader columnHeader = base.Columns[e.ColumnIndex];
		if (columnHeader.DisplayIndex < _firstVisibleIndex)
		{
			if (columnHeader.Width > 0)
			{
				columnHeader.Width = 0;
			}
			return;
		}
		if (_widthTable.Contains(columnHeader))
		{
			_widthTable[columnHeader] = columnHeader.Width;
		}
		base.OnColumnWidthChanged(e);
	}

	private Win32Helper.RECT GetWindowRECT()
	{
		return new Win32Helper.RECT(base.Left, base.Top, base.Right, base.Bottom);
	}

	protected override void WndProc(ref Message m)
	{
		if (base.DesignMode)
		{
			base.WndProc(ref m);
			return;
		}
		if (m.Msg == 15 && !_columnsLoaded && base.Columns.Count > 0)
		{
			ArrayList arrayList = null;
			if (_visibleNames != "")
			{
				arrayList = new ArrayList();
				_hiddenColumns = "";
				string[] array = _visibleNames.Split(',');
				string[] array2 = array;
				foreach (string value in array2)
				{
					arrayList.Add(value);
				}
			}
			foreach (ColumnHeader column in base.Columns)
			{
				ToolStripMenuItem toolStripMenuItem = new ToolStripMenuItem();
				toolStripMenuItem.Text = column.Text;
				toolStripMenuItem.Tag = column;
				toolStripMenuItem.Checked = true;
				toolStripMenuItem.Click += OnContextMenuItemClicked;
				_contextMenu.Items.Add(toolStripMenuItem);
				_indexTable.Add(column, column.DisplayIndex);
				_widthTable.Add(column, column.Width);
				if (arrayList != null && !arrayList.Contains(column.Text))
				{
					if (_hiddenColumns == "")
					{
						_hiddenColumns = column.DisplayIndex.ToString();
					}
					else
					{
						_hiddenColumns = _hiddenColumns + "," + column.DisplayIndex;
					}
				}
			}
			_columnsLoaded = true;
			try
			{
				SetColumnWidths();
				ParseHiddenColumnsString();
				RestoreIndexOrdering();
				UpdateVisibility();
			}
			catch (Exception exception)
			{
				Logger.LogException(exception);
			}
		}
		if (m.Msg == 78)
		{
			Win32Helper.NMHDR nMHDR = new Win32Helper.NMHDR();
			Marshal.PtrToStructure(m.LParam, (object)nMHDR);
			uint code = nMHDR.Code;
			if (code == 4294967291u)
			{
				_contextMenu.Show(Control.MousePosition.X, Control.MousePosition.Y);
			}
		}
		if (m.Msg != 123 || !_contextMenuIsOpen)
		{
			if (m.Msg == 4154)
			{
				ReorderIndexTable();
			}
			base.WndProc(ref m);
		}
	}

	public void AutoResizeVisibleColumns()
	{
		if (_hiddenColumns == "" || _hiddenColumns == null)
		{
			return;
		}
		ArrayList arrayList = new ArrayList(_hiddenColumns.Split(','));
		for (int i = 0; i < base.Columns.Count; i++)
		{
			string item = base.Columns[i].DisplayIndex.ToString();
			if (!arrayList.Contains(item))
			{
				AutoResizeColumn(i, ColumnHeaderAutoResizeStyle.ColumnContent);
			}
		}
	}

	public void StoreListViewConfiguration(IsolatedXmlDocument xDoc, string componentName)
	{
		if (base.DesignMode)
		{
			return;
		}
		if (xDoc == null)
		{
			throw new NullReferenceException("Provided IsolatedXmlDocument object is null");
		}
		XmlNode xmlNode = xDoc.CreatePluginNode(componentName, "EnhancedListViewConfigSettings");
		string text = "";
		ArrayList arrayList = new ArrayList();
		foreach (DictionaryEntry item in _indexTable)
		{
			arrayList.Add(item);
		}
		arrayList.Sort(new IndexSorter());
		foreach (object item2 in arrayList)
		{
			DictionaryEntry dictionaryEntry2 = (DictionaryEntry)item2;
			ColumnHeader columnHeader = dictionaryEntry2.Key as ColumnHeader;
			string text2 = columnHeader.Text.ToString();
			if (!(text2 == ""))
			{
				string text3 = dictionaryEntry2.Value.ToString();
				if (text == "")
				{
					text = text2 + ":" + text3;
					continue;
				}
				string text4 = text;
				text = text4 + "," + text2 + ":" + text3;
			}
		}
		XmlElement xmlElement = xDoc.CreateElement("Indexes");
		xmlElement.InnerText = text;
		string text5 = "";
		foreach (DictionaryEntry item3 in _widthTable)
		{
			ColumnHeader columnHeader2 = item3.Key as ColumnHeader;
			if (text5 == "")
			{
				text5 = columnHeader2.Text + ":" + item3.Value.ToString();
				continue;
			}
			string text6 = text5;
			text5 = text6 + "," + columnHeader2.Text + ":" + item3.Value.ToString();
		}
		XmlElement xmlElement2 = xDoc.CreateElement("Widths");
		xmlElement2.InnerText = text5;
		XmlElement xmlElement3 = xDoc.CreateElement("VisibleColumns");
		_visibleNames = "";
		foreach (ColumnHeader column in base.Columns)
		{
			if (column.DisplayIndex >= _firstVisibleIndex)
			{
				if (_visibleNames == "")
				{
					_visibleNames = column.Text;
				}
				else
				{
					_visibleNames = _visibleNames + "," + column.Text;
				}
			}
		}
		xmlElement3.InnerText = _visibleNames;
		Trace.WriteLine($"order={xmlElement.InnerText}   visible columns={xmlElement3.InnerText}");
		xmlNode.AppendChild(xmlElement);
		xmlNode.AppendChild(xmlElement2);
		xmlNode.AppendChild(xmlElement3);
		xDoc.AppendPluginNode(xmlNode);
	}

	public void RestoreListViewConfiguration(IsolatedXmlDocument xDoc, string componentName)
	{
		if (base.DesignMode)
		{
			return;
		}
		if (xDoc == null)
		{
			throw new NullReferenceException("Provided IsolatedXmlDocument object is null");
		}
		XmlNode xmlNode = xDoc.Fetch(componentName, "EnhancedListViewConfigSettings");
		if (xmlNode != null)
		{
			_indexes = "";
			XmlNode xmlNode2 = xmlNode.SelectSingleNode("Indexes");
			if (xmlNode2 != null && xmlNode2.InnerText != "")
			{
				_indexes = xmlNode2.InnerText;
			}
			XmlNode xmlNode3 = xmlNode.SelectSingleNode("Widths");
			if (xmlNode3 != null && xmlNode3.InnerText != "")
			{
				_widths = xmlNode3.InnerText;
			}
			XmlNode xmlNode4 = xmlNode.SelectSingleNode("VisibleColumns");
			if (xmlNode4 != null && xmlNode4.InnerText != "")
			{
				_visibleNames = xmlNode4.InnerText;
			}
		}
	}

	public void StoreListViewConfiguration(string componentName)
	{
		if (base.DesignMode)
		{
			return;
		}
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		IsolatedXmlDocument isolatedXmlDocument = new IsolatedXmlDocument(executingAssembly);
		XmlNode xmlNode = isolatedXmlDocument.CreatePluginNode(componentName, "EnhancedListViewConfigSettings");
		string text = "";
		ArrayList arrayList = new ArrayList();
		foreach (DictionaryEntry item in _indexTable)
		{
			arrayList.Add(item);
		}
		arrayList.Sort(new IndexSorter());
		foreach (object item2 in arrayList)
		{
			DictionaryEntry dictionaryEntry2 = (DictionaryEntry)item2;
			ColumnHeader columnHeader = dictionaryEntry2.Key as ColumnHeader;
			string text2 = columnHeader.Text.ToString();
			if (!(text2 == ""))
			{
				string text3 = dictionaryEntry2.Value.ToString();
				if (text == "")
				{
					text = text2 + ":" + text3;
					continue;
				}
				string text4 = text;
				text = text4 + "," + text2 + ":" + text3;
			}
		}
		XmlElement xmlElement = isolatedXmlDocument.CreateElement("Indexes");
		xmlElement.InnerText = text;
		string text5 = "";
		foreach (DictionaryEntry item3 in _widthTable)
		{
			ColumnHeader columnHeader2 = item3.Key as ColumnHeader;
			if (text5 == "")
			{
				text5 = columnHeader2.Text + ":" + item3.Value.ToString();
				continue;
			}
			string text6 = text5;
			text5 = text6 + "," + columnHeader2.Text + ":" + item3.Value.ToString();
		}
		XmlElement xmlElement2 = isolatedXmlDocument.CreateElement("Widths");
		xmlElement2.InnerText = text5;
		XmlElement xmlElement3 = isolatedXmlDocument.CreateElement("VisibleColumns");
		_visibleNames = "";
		foreach (ColumnHeader column in base.Columns)
		{
			if (column.DisplayIndex >= _firstVisibleIndex)
			{
				if (_visibleNames == "")
				{
					_visibleNames = column.Text;
				}
				else
				{
					_visibleNames = _visibleNames + "," + column.Text;
				}
			}
		}
		xmlElement3.InnerText = _visibleNames;
		xmlNode.AppendChild(xmlElement);
		xmlNode.AppendChild(xmlElement2);
		xmlNode.AppendChild(xmlElement3);
		isolatedXmlDocument.AppendPluginNode(xmlNode);
		isolatedXmlDocument.Save("EnhancedListViewConfiguration");
	}

	public void RestoreListViewConfiguration(string componentName)
	{
		if (base.DesignMode)
		{
			return;
		}
		Assembly executingAssembly = Assembly.GetExecutingAssembly();
		IsolatedXmlDocument isolatedXmlDocument = new IsolatedXmlDocument(executingAssembly);
		if (isolatedXmlDocument.Open("EnhancedListViewConfiguration"))
		{
			XmlNode xmlNode = isolatedXmlDocument.Fetch(componentName, "EnhancedListViewConfigSettings");
			if (xmlNode != null)
			{
				_indexes = "";
				XmlNode xmlNode2 = xmlNode.SelectSingleNode("Indexes");
				if (xmlNode2 != null && xmlNode2.InnerText != "")
				{
					_indexes = xmlNode2.InnerText;
				}
				XmlNode xmlNode3 = xmlNode.SelectSingleNode("Widths");
				if (xmlNode3 != null && xmlNode3.InnerText != "")
				{
					_widths = xmlNode3.InnerText;
				}
				XmlNode xmlNode4 = xmlNode.SelectSingleNode("VisibleColumns");
				if (xmlNode4 != null && xmlNode4.InnerText != "")
				{
					_visibleNames = xmlNode4.InnerText;
				}
			}
			isolatedXmlDocument.Close();
		}
		else
		{
			Logger.LogInfo("No configuration storage file found");
		}
	}
}
