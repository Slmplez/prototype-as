using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Xml;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework;

public class PositionStoringForm : Form
{
	private Rectangle _lastGoodLocation = default(Rectangle);

	private IContainer components;

	public PositionStoringForm()
	{
		InitializeComponent();
	}

	private void OnFormResize(object sender, EventArgs e)
	{
		if (base.WindowState != FormWindowState.Minimized)
		{
			UpdateFormPosition();
		}
	}

	private void UpdateFormPosition()
	{
		_lastGoodLocation.X = base.Bounds.X;
		_lastGoodLocation.Y = base.Bounds.Y;
		_lastGoodLocation.Height = base.Size.Height;
		_lastGoodLocation.Width = base.Size.Width;
	}

	private void OnFormMove(object sender, EventArgs e)
	{
		if (base.WindowState != FormWindowState.Minimized)
		{
			UpdateFormPosition();
		}
	}

	protected virtual void StoreFormBounds(IsolatedXmlDocument xDoc, XmlNode configNode)
	{
		if (xDoc == null || configNode == null)
		{
			throw new NullReferenceException("A null argument was passed.");
		}
		XmlElement xmlElement = xDoc.CreateElement("FormWidth");
		xmlElement.InnerText = _lastGoodLocation.Width.ToString();
		XmlElement xmlElement2 = xDoc.CreateElement("FormHeight");
		xmlElement2.InnerText = _lastGoodLocation.Height.ToString();
		XmlElement xmlElement3 = xDoc.CreateElement("FormPositionX");
		xmlElement3.InnerText = _lastGoodLocation.X.ToString();
		XmlElement xmlElement4 = xDoc.CreateElement("FormPositionY");
		xmlElement4.InnerText = _lastGoodLocation.Y.ToString();
		configNode.AppendChild(xmlElement);
		configNode.AppendChild(xmlElement2);
		configNode.AppendChild(xmlElement3);
		configNode.AppendChild(xmlElement4);
	}

	protected virtual void RestoreFormBounds(XmlNode configNode)
	{
		if (configNode == null)
		{
			throw new NullReferenceException("A null argument was passed.");
		}
		int num = 0;
		int num2 = 0;
		XmlNode xmlNode = configNode.SelectSingleNode("FormWidth");
		if (xmlNode != null && xmlNode.InnerText != "")
		{
			num = Convert.ToInt32(xmlNode.InnerText);
		}
		XmlNode xmlNode2 = configNode.SelectSingleNode("FormHeight");
		if (xmlNode2 != null && xmlNode2.InnerText != "")
		{
			num2 = Convert.ToInt32(xmlNode2.InnerText);
		}
		int num3 = 0;
		int num4 = 0;
		XmlNode xmlNode3 = configNode.SelectSingleNode("FormPositionX");
		if (xmlNode3 != null && xmlNode3.InnerText != "")
		{
			num3 = Convert.ToInt32(xmlNode3.InnerText);
		}
		XmlNode xmlNode4 = configNode.SelectSingleNode("FormPositionY");
		if (xmlNode4 != null && xmlNode4.InnerText != "")
		{
			num4 = Convert.ToInt32(xmlNode4.InnerText);
		}
		if (num > 0 && num2 > 0)
		{
			Rectangle rect = new Rectangle(num3, num4, num, num2);
			if (Screen.GetWorkingArea(rect).IntersectsWith(rect))
			{
				SetBounds(num3, num4, num, num2);
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		base.SuspendLayout();
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.ClientSize = new System.Drawing.Size(292, 266);
		base.Name = "PositionStoringForm";
		this.Text = "PositionStoringForm";
		base.Resize += new System.EventHandler(OnFormResize);
		base.Move += new System.EventHandler(OnFormMove);
		base.ResumeLayout(false);
	}
}
