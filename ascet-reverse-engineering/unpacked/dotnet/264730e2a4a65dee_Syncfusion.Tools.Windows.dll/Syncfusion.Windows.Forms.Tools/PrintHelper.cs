using System;
using System.Drawing;
using System.Drawing.Printing;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

public class PrintHelper
{
	private enum PrintDirection
	{
		Horizontal,
		Vertical
	}

	private PrintDocument m_pdDocument;

	private Point m_ptPrintPosition;

	private Image m_imgControl;

	private int m_iNodeHeight;

	private PrintDirection m_pdCurrentDirection;

	private int m_iScrollBarHeight;

	private int m_iScrollBarWidth;

	private int m_iPageNumber;

	private DateTime m_dtDateTime;

	private string m_sTitle = string.Empty;

	public PrintHelper()
	{
		m_ptPrintPosition = Point.Empty;
		m_pdDocument = new PrintDocument();
		m_pdDocument.BeginPrint += OnPrintDocumentBeginPrint;
		m_pdDocument.PrintPage += OnPrintDocumentPrintPage;
	}

	private void OnPrintDocumentBeginPrint(object sender, PrintEventArgs e)
	{
		m_ptPrintPosition = new Point(0, 0);
		m_pdCurrentDirection = PrintDirection.Horizontal;
		m_iPageNumber = 0;
		m_dtDateTime = DateTime.Now;
	}

	private void OnPrintDocumentPrintPage(object sender, PrintPageEventArgs e)
	{
		Graphics graphics = e.Graphics;
		Rectangle srcRect = new Rectangle(m_ptPrintPosition, e.MarginBounds.Size);
		Rectangle marginBounds = e.MarginBounds;
		m_iPageNumber++;
		if (srcRect.Height % m_iNodeHeight > 0)
		{
			srcRect.Height -= srcRect.Height % m_iNodeHeight;
		}
		graphics.DrawImage(m_imgControl, marginBounds, srcRect, GraphicsUnit.Pixel);
		if (m_imgControl.Height - m_iScrollBarHeight > srcRect.Bottom || m_imgControl.Width - m_iScrollBarWidth > srcRect.Right)
		{
			e.HasMorePages = true;
		}
		if (m_pdCurrentDirection == PrintDirection.Horizontal)
		{
			if (srcRect.Right < m_imgControl.Width - m_iScrollBarWidth)
			{
				m_ptPrintPosition.X += srcRect.Width + 1;
			}
			else
			{
				m_ptPrintPosition.X = 0;
				m_ptPrintPosition.Y += srcRect.Height + 1;
				m_pdCurrentDirection = PrintDirection.Vertical;
			}
		}
		else if (m_pdCurrentDirection == PrintDirection.Vertical && srcRect.Right < m_imgControl.Width - m_iScrollBarWidth)
		{
			m_pdCurrentDirection = PrintDirection.Horizontal;
			m_ptPrintPosition.X += srcRect.Width + 1;
		}
		else
		{
			m_ptPrintPosition.Y += srcRect.Height + 1;
		}
		using Brush brush = new SolidBrush(Color.Black);
		string text = m_iPageNumber.ToString(NumberFormatInfo.CurrentInfo);
		Font font = new Font(FontFamily.GenericSansSerif, 10f);
		SizeF sizeF = graphics.MeasureString(text, font);
		PointF pointF = new PointF(e.PageBounds.Width / 2, e.MarginBounds.Bottom + (e.PageBounds.Bottom - e.MarginBounds.Bottom) / 2);
		PointF point = new PointF(pointF.X - sizeF.Width / 2f, pointF.Y - sizeF.Height / 2f);
		graphics.DrawString(text, font, brush, point);
		if (m_iPageNumber == 1 && m_sTitle.Length > 0)
		{
			Font font2 = new Font(FontFamily.GenericSansSerif, 24f, FontStyle.Bold, GraphicsUnit.Point);
			SizeF sizeF2 = graphics.MeasureString(m_sTitle, font2);
			PointF point2 = new PointF(e.MarginBounds.Left, (float)((e.MarginBounds.Top - e.PageBounds.Top) / 2) - sizeF2.Height / 2f);
			graphics.DrawString(m_sTitle, font2, brush, point2);
		}
	}

	public void PrintPreviewTree(TreeViewAdv pTreeView, string pTitle)
	{
		m_sTitle = pTitle;
		PrepareTreeImage(pTreeView);
		PrintPreviewDialog printPreviewDialog = new PrintPreviewDialog();
		printPreviewDialog.Document = m_pdDocument;
		printPreviewDialog.ShowDialog();
	}

	public void PrintTree(TreeViewAdv pTreeView, string pTitle)
	{
		m_sTitle = pTitle;
		PrepareTreeImage(pTreeView);
		PrintDialog printDialog = new PrintDialog();
		printDialog.Document = m_pdDocument;
		if (printDialog.ShowDialog() == DialogResult.OK)
		{
			m_pdDocument.Print();
		}
	}

	private void PrepareTreeImage(TreeViewAdv pTreeView)
	{
		if (pTreeView == null || pTreeView.Nodes.Count <= 0)
		{
			return;
		}
		TreeViewAdv treeViewAdv = new TreeViewAdv();
		treeViewAdv.Root = pTreeView.Root.Clone();
		treeViewAdv.BackColor = pTreeView.BackColor;
		treeViewAdv.BackgroundImage = pTreeView.BackgroundImage;
		treeViewAdv.HideSelection = pTreeView.HideSelection;
		treeViewAdv.Indent = pTreeView.Indent;
		treeViewAdv.InteractiveCheckBoxes = pTreeView.InteractiveCheckBoxes;
		treeViewAdv.ItemHeight = pTreeView.ItemHeight;
		treeViewAdv.LineColor = pTreeView.LineColor;
		treeViewAdv.LineStyle = pTreeView.LineStyle;
		treeViewAdv.RightToLeft = pTreeView.RightToLeft;
		treeViewAdv.ShowLines = pTreeView.ShowLines;
		treeViewAdv.ShowRootLines = pTreeView.ShowRootLines;
		treeViewAdv.ShowCheckBoxes = pTreeView.ShowCheckBoxes;
		treeViewAdv.ShowOptionButtons = pTreeView.ShowOptionButtons;
		treeViewAdv.ShowPlusMinus = pTreeView.ShowPlusMinus;
		treeViewAdv.ThemesEnabled = pTreeView.ThemesEnabled;
		treeViewAdv.NodeCount = pTreeView.NodeCount;
		treeViewAdv.Font = pTreeView.Font;
		treeViewAdv.ForeColor = pTreeView.ForeColor;
		foreach (string key in pTreeView.BaseStyles.Keys)
		{
			treeViewAdv.BaseStyles[key] = pTreeView.BaseStyles[key];
		}
		treeViewAdv.NodeStateImageList = pTreeView.NodeStateImageList;
		treeViewAdv.DefaultCollapseImageIndex = pTreeView.DefaultCollapseImageIndex;
		treeViewAdv.DefaultExpandImageIndex = pTreeView.DefaultExpandImageIndex;
		treeViewAdv.LeftImageList = pTreeView.LeftImageList;
		treeViewAdv.RightImageList = pTreeView.RightImageList;
		treeViewAdv.StateImageList = pTreeView.StateImageList;
		m_iScrollBarWidth = treeViewAdv.Width - treeViewAdv.ClientSize.Width;
		m_iScrollBarHeight = treeViewAdv.Height - treeViewAdv.ClientSize.Height;
		int num = (m_iNodeHeight = treeViewAdv.ItemHeight);
		int num2 = treeViewAdv.Nodes[0].PrintTextBounds.Right;
		for (TreeNodeAdv nextSelectableNode = treeViewAdv.Nodes[0].NextSelectableNode; nextSelectableNode != null; nextSelectableNode = nextSelectableNode.NextSelectableNode)
		{
			num += m_iNodeHeight;
			if (treeViewAdv.RightToLeft == RightToLeft.No)
			{
				if (nextSelectableNode.PrintTextBounds.Right > num2)
				{
					num2 = nextSelectableNode.PrintTextBounds.Right;
				}
			}
			else if (nextSelectableNode.PrintTextBounds.Right < 0)
			{
				num2 = -nextSelectableNode.PrintTextBounds.Right + treeViewAdv.ClientRectangle.Width;
			}
		}
		treeViewAdv.SelectedNode = null;
		treeViewAdv.Height = num + m_iScrollBarHeight;
		treeViewAdv.Width = num2 + m_iScrollBarWidth;
		treeViewAdv.BorderStyle = BorderStyle.None;
		treeViewAdv.Dock = DockStyle.None;
		treeViewAdv.VScroll = false;
		treeViewAdv.HScroll = false;
		m_imgControl = GetImage(treeViewAdv.Handle, treeViewAdv.Width, treeViewAdv.Height);
	}

	private Image GetImage(IntPtr pHandle, int pWidth, int pHeight)
	{
		IntPtr dC = Syncfusion.Runtime.InteropServices.NativeMethods.GetDC(IntPtr.Zero);
		IntPtr hbitmap = Syncfusion.Runtime.InteropServices.NativeMethods.CreateCompatibleBitmap(dC, pWidth, pHeight);
		Image image = Image.FromHbitmap(hbitmap);
		Graphics graphics = Graphics.FromImage(image);
		IntPtr hdc = graphics.GetHdc();
		Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(pHandle, 792, hdc, 22);
		graphics.ReleaseHdc(hdc);
		Syncfusion.Runtime.InteropServices.NativeMethods.ReleaseDC(IntPtr.Zero, dC);
		return image;
	}
}
