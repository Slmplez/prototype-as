using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.InteropServices;
using System.Timers;
using System.Windows.Forms;
using System.Xml;
using System.Xml.Serialization;
using ASCET;
using ASCETPluginsBase;
using ASDRM;
using CaliberRMPlugin.Properties;
using Starbase.CaliberRM.Interop;

namespace CaliberRMPlugin;

[ProgId("CaliberRMPlugin.Simple")]
[ComSourceInterfaces(typeof(IControlASDDefaultEvents))]
public class CaliberDisplayPlugin : UserControl, IControlASDRMIv1Interface
{
	private IContainer components = null;

	private TableLayoutPanel tableLayoutPanel1;

	private BindingSource reqBindingSource;

	private Button btnFetchRQ;

	private Button btnAddFile;

	private OpenFileDialog addFileDialog;

	private SplitContainer splitContainer1;

	private DataGridView dataGridView;

	private TextBox txtData;

	private DataGridViewLinkColumn REQID;

	private DataGridViewTextBoxColumn Description;

	private DataGridViewTextBoxColumn Version;

	private DataGridViewTextBoxColumn Comment;

	private DataGridViewButtonColumn UpdateRQ;

	private DataGridViewTextBoxColumn RQType;

	private DataGridViewLinkColumn Hyperlink;

	private DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;

	private Button btAbout;

	private static CaliberServer mServer;

	private static CaliberRMPlugin.Properties.Settings mSettings = null;

	private static System.Timers.Timer idleTimer;

	private static Hashtable mOptions = null;

	private static Session mSession;

	private static string mServername;

	private static string mUser;

	private static string mPassword;

	private Info mData;

	private Session curSession
	{
		get
		{
			if (mServer == null || mSession == null)
			{
				doLogon();
			}
			if (mSession == null)
			{
				throw new Exception("RMI: Could not connect to server!");
			}
			if (mOptions.ContainsKey("RmiCloseOnIdle") && mOptions["RmiCloseOnIdle"].ToString() == "true")
			{
				idleTimer.Start();
			}
			return mSession;
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
		this.components = new System.ComponentModel.Container();
		this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
		this.btnFetchRQ = new System.Windows.Forms.Button();
		this.splitContainer1 = new System.Windows.Forms.SplitContainer();
		this.dataGridView = new System.Windows.Forms.DataGridView();
		this.REQID = new System.Windows.Forms.DataGridViewLinkColumn();
		this.Description = new System.Windows.Forms.DataGridViewTextBoxColumn();
		this.Version = new System.Windows.Forms.DataGridViewTextBoxColumn();
		this.Comment = new System.Windows.Forms.DataGridViewTextBoxColumn();
		this.UpdateRQ = new System.Windows.Forms.DataGridViewButtonColumn();
		this.RQType = new System.Windows.Forms.DataGridViewTextBoxColumn();
		this.Hyperlink = new System.Windows.Forms.DataGridViewLinkColumn();
		this.reqBindingSource = new System.Windows.Forms.BindingSource(this.components);
		this.txtData = new System.Windows.Forms.TextBox();
		this.btAbout = new System.Windows.Forms.Button();
		this.btnAddFile = new System.Windows.Forms.Button();
		this.addFileDialog = new System.Windows.Forms.OpenFileDialog();
		this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
		this.tableLayoutPanel1.SuspendLayout();
		this.splitContainer1.Panel1.SuspendLayout();
		this.splitContainer1.Panel2.SuspendLayout();
		this.splitContainer1.SuspendLayout();
		((System.ComponentModel.ISupportInitialize)this.dataGridView).BeginInit();
		((System.ComponentModel.ISupportInitialize)this.reqBindingSource).BeginInit();
		base.SuspendLayout();
		this.tableLayoutPanel1.AutoScroll = true;
		this.tableLayoutPanel1.AutoSize = true;
		this.tableLayoutPanel1.ColumnCount = 2;
		this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50.66667f));
		this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 49.33333f));
		this.tableLayoutPanel1.Controls.Add(this.btnFetchRQ, 0, 1);
		this.tableLayoutPanel1.Controls.Add(this.splitContainer1, 0, 0);
		this.tableLayoutPanel1.Controls.Add(this.btAbout, 1, 2);
		this.tableLayoutPanel1.Controls.Add(this.btnAddFile, 1, 1);
		this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
		this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
		this.tableLayoutPanel1.Name = "tableLayoutPanel1";
		this.tableLayoutPanel1.RowCount = 3;
		this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100f));
		this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 36f));
		this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 36f));
		this.tableLayoutPanel1.Size = new System.Drawing.Size(726, 458);
		this.tableLayoutPanel1.TabIndex = 0;
		this.btnFetchRQ.Anchor = System.Windows.Forms.AnchorStyles.None;
		this.btnFetchRQ.Location = new System.Drawing.Point(146, 392);
		this.btnFetchRQ.Name = "btnFetchRQ";
		this.btnFetchRQ.Size = new System.Drawing.Size(75, 23);
		this.btnFetchRQ.TabIndex = 2;
		this.btnFetchRQ.Text = "Add RQ ...";
		this.btnFetchRQ.UseVisualStyleBackColor = true;
		this.btnFetchRQ.Click += new System.EventHandler(btnFetchRQ_Click);
		this.tableLayoutPanel1.SetColumnSpan(this.splitContainer1, 2);
		this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
		this.splitContainer1.Location = new System.Drawing.Point(3, 3);
		this.splitContainer1.Name = "splitContainer1";
		this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
		this.splitContainer1.Panel1.Controls.Add(this.dataGridView);
		this.splitContainer1.Panel2.Controls.Add(this.txtData);
		this.splitContainer1.Size = new System.Drawing.Size(720, 380);
		this.splitContainer1.SplitterDistance = 351;
		this.splitContainer1.TabIndex = 5;
		this.dataGridView.AllowUserToAddRows = false;
		this.dataGridView.AutoGenerateColumns = false;
		this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
		this.dataGridView.Columns.AddRange(this.REQID, this.Description, this.Version, this.Comment, this.UpdateRQ, this.RQType, this.Hyperlink);
		this.dataGridView.DataSource = this.reqBindingSource;
		this.dataGridView.Dock = System.Windows.Forms.DockStyle.Fill;
		this.dataGridView.Location = new System.Drawing.Point(0, 0);
		this.dataGridView.Name = "dataGridView";
		this.dataGridView.Size = new System.Drawing.Size(720, 351);
		this.dataGridView.TabIndex = 2;
		this.dataGridView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(dataGridView_CellContentClick);
		this.REQID.DataPropertyName = "REQID";
		this.REQID.HeaderText = "REQ ID";
		this.REQID.Name = "REQID";
		this.REQID.ReadOnly = true;
		this.REQID.Resizable = System.Windows.Forms.DataGridViewTriState.True;
		this.REQID.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
		this.Description.DataPropertyName = "ShortDesc";
		this.Description.HeaderText = "Description";
		this.Description.Name = "Description";
		this.Version.DataPropertyName = "Version";
		this.Version.HeaderText = "Version";
		this.Version.Name = "Version";
		this.Version.ReadOnly = true;
		this.Comment.DataPropertyName = "Comment";
		this.Comment.HeaderText = "Comment";
		this.Comment.Name = "Comment";
		this.UpdateRQ.FlatStyle = System.Windows.Forms.FlatStyle.System;
		this.UpdateRQ.HeaderText = "Update Requirements";
		this.UpdateRQ.Name = "UpdateRQ";
		this.UpdateRQ.Text = "Update ...";
		this.UpdateRQ.ToolTipText = "Update the requirement to the actual values";
		this.UpdateRQ.UseColumnTextForButtonValue = true;
		this.RQType.DataPropertyName = "RQType";
		this.RQType.HeaderText = "RQType";
		this.RQType.Name = "RQType";
		this.RQType.Visible = false;
		this.Hyperlink.DataPropertyName = "Hyperlink";
		this.Hyperlink.HeaderText = "Hyperlink";
		this.Hyperlink.Name = "Hyperlink";
		this.Hyperlink.Resizable = System.Windows.Forms.DataGridViewTriState.True;
		this.Hyperlink.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
		this.Hyperlink.Visible = false;
		this.reqBindingSource.DataMember = "Reqs";
		this.reqBindingSource.DataSource = typeof(ASDRM.TReqList);
		this.txtData.Dock = System.Windows.Forms.DockStyle.Fill;
		this.txtData.Location = new System.Drawing.Point(0, 0);
		this.txtData.Multiline = true;
		this.txtData.Name = "txtData";
		this.txtData.ScrollBars = System.Windows.Forms.ScrollBars.Both;
		this.txtData.Size = new System.Drawing.Size(720, 25);
		this.txtData.TabIndex = 5;
		this.btAbout.Anchor = System.Windows.Forms.AnchorStyles.None;
		this.btAbout.AutoSize = true;
		this.btAbout.Location = new System.Drawing.Point(514, 428);
		this.btAbout.Name = "btAbout";
		this.btAbout.Size = new System.Drawing.Size(64, 23);
		this.btAbout.TabIndex = 6;
		this.btAbout.Text = "About ...";
		this.btAbout.UseVisualStyleBackColor = true;
		this.btAbout.Click += new System.EventHandler(btAbout_Click);
		this.btnAddFile.Anchor = System.Windows.Forms.AnchorStyles.None;
		this.btnAddFile.AutoSize = true;
		this.btnAddFile.Location = new System.Drawing.Point(514, 392);
		this.btnAddFile.Name = "btnAddFile";
		this.btnAddFile.Size = new System.Drawing.Size(64, 23);
		this.btnAddFile.TabIndex = 3;
		this.btnAddFile.Text = "Add file ...";
		this.btnAddFile.UseVisualStyleBackColor = true;
		this.btnAddFile.Click += new System.EventHandler(btnAddFile_Click);
		this.addFileDialog.Title = "Select file for requirements...";
		this.dataGridViewTextBoxColumn1.DataPropertyName = "RQType";
		this.dataGridViewTextBoxColumn1.HeaderText = "RQType";
		this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
		this.dataGridViewTextBoxColumn1.Visible = false;
		base.AutoScaleDimensions = new System.Drawing.SizeF(6f, 13f);
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
		base.Controls.Add(this.tableLayoutPanel1);
		base.Name = "CaliberDisplayPlugin";
		base.Size = new System.Drawing.Size(726, 458);
		this.tableLayoutPanel1.ResumeLayout(false);
		this.tableLayoutPanel1.PerformLayout();
		this.splitContainer1.Panel1.ResumeLayout(false);
		this.splitContainer1.Panel2.ResumeLayout(false);
		this.splitContainer1.Panel2.PerformLayout();
		this.splitContainer1.ResumeLayout(false);
		((System.ComponentModel.ISupportInitialize)this.dataGridView).EndInit();
		((System.ComponentModel.ISupportInitialize)this.reqBindingSource).EndInit();
		base.ResumeLayout(false);
		base.PerformLayout();
	}

	public CaliberDisplayPlugin()
	{
		InitializeComponent();
		if (mSettings == null)
		{
			mSettings = new CaliberRMPlugin.Properties.Settings();
		}
		if (mOptions == null)
		{
			mOptions = new Hashtable();
		}
		if (mSettings.CaliberRMServer == null)
		{
			mSettings.CaliberRMServer = new AutoCompleteStringCollection();
		}
		if (mSettings.CaliberRMUser == null)
		{
			mSettings.CaliberRMUser = new AutoCompleteStringCollection();
		}
		if (idleTimer == null)
		{
			idleTimer = new System.Timers.Timer();
			idleTimer.Enabled = false;
			idleTimer.Interval = 180000.0;
			idleTimer.Elapsed += doTimedLogout;
		}
	}

	~CaliberDisplayPlugin()
	{
		mSettings.Save();
	}

	public void SetUserSettings(string xmldata)
	{
		XmlSerializer xmlSerializer = new XmlSerializer(typeof(ASCET.Settings));
		ASCET.Settings settings = (ASCET.Settings)xmlSerializer.Deserialize(new StringReader(xmldata));
		GroupType groupType = null;
		GroupType[] array = settings.Group;
		foreach (GroupType groupType2 in array)
		{
			if (groupType2.name == "CustomerControlRMI")
			{
				groupType = groupType2;
				break;
			}
		}
		if (groupType != null)
		{
			object[] items = groupType.Items;
			for (int i = 0; i < items.Length; i++)
			{
				GroupTypeOption groupTypeOption = (GroupTypeOption)items[i];
				mOptions.Add(groupTypeOption.name, groupTypeOption.Value);
			}
			if (mOptions.ContainsKey("RmiDefaultServers"))
			{
				mServername = (string)mOptions["RmiDefaultServers"];
			}
			if (mOptions.ContainsKey("RmiCloseOnIdle") && mOptions["RmiCloseOnIdle"].ToString() == "true" && mOptions.ContainsKey("RmiIdlePeriod"))
			{
				idleTimer.Interval = int.Parse(mOptions["RmiIdlePeriod"].ToString()) * 1000;
			}
		}
	}

	public void SetItemData(string xmldata)
	{
		if (xmldata.Length == 0)
		{
			return;
		}
		try
		{
			xmldata = xmldata.Replace("<Info>", "<Info xmlns=\"http://tempuri.org/ASD_RMData.xsd\">");
			txtData.Text = xmldata + Environment.NewLine;
			XmlSerializer xmlSerializer = new XmlSerializer(typeof(Info));
			mData = (Info)xmlSerializer.Deserialize(new StringReader(xmldata));
			List<TReq> list = new List<TReq>();
			if (mData.Req.Reqs != null)
			{
				for (int i = 0; i < mData.Req.Reqs.Length; i++)
				{
					list.Add(mData.Req.Reqs[i]);
				}
			}
			reqBindingSource.Clear();
			reqBindingSource.DataSource = list;
			foreach (Control control in base.Controls)
			{
				control.Enabled = !mData.ReadOnly;
			}
		}
		catch (Exception ex)
		{
			MessageBox.Show("Exception caught!\n" + ex.Message + " from " + ex.Source, "Error", MessageBoxButtons.OK, MessageBoxIcon.Hand);
		}
	}

	public string GetItemData(bool CanPersist)
	{
		try
		{
			mData.Req.LastUpdate = DateTime.Now;
			if (mData.Req.Reqs == null || reqBindingSource.List.Count > mData.Req.Reqs.Length)
			{
				mData.Req.Reqs = new TReq[reqBindingSource.List.Count];
			}
			reqBindingSource.CopyTo(mData.Req.Reqs, 0);
			StringWriter stringWriter = new StringWriter();
			XmlSerializer xmlSerializer = new XmlSerializer(typeof(TReqList));
			xmlSerializer.Serialize(stringWriter, mData.Req);
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.LoadXml(stringWriter.ToString());
			return xmlDocument.DocumentElement.InnerXml.Replace("xmlns=\"http://tempuri.org/ASD_RMData.xsd\"", "");
		}
		catch (Exception ex)
		{
			MessageBox.Show("Exception caught!\n" + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Hand);
		}
		return "";
	}

	private void MyDummyEvent(object sender, EventArgs e)
	{
	}

	private static void doTimedLogout(object o, ElapsedEventArgs e)
	{
		doLogout();
	}

	private void btnFetchRQ_Click(object sender, EventArgs e)
	{
		try
		{
			if (curSession == null)
			{
				return;
			}
			GetRequirement getRequirement = new GetRequirement();
			if (getRequirement.ShowDialog() == DialogResult.OK)
			{
				base.UseWaitCursor = true;
				if (int.TryParse(getRequirement.txtRQID.Text, out var result))
				{
					reqBindingSource.AddNew();
					DataGridViewRow dataGridViewRow = dataGridView.Rows[dataGridView.Rows.Count - 1];
					dataGridViewRow.Cells["REQID"].Value = result;
					Requirement requirement = ((ISession)curSession).getRequirement(result);
					if (requirement != null)
					{
						dataGridViewRow.Cells["Description"].Value = ((IRequirement)requirement).Name;
						dataGridViewRow.Cells["Description"].ReadOnly = true;
						dataGridViewRow.Cells["Version"].Value = ((IVersion)((IRequirement)requirement).Version).toString();
						dataGridViewRow.Cells["Hyperlink"].Value = "crm://" + ((IProjectID)((IProject)((IRequirement)requirement).Project).ProjectID).IDNumber + "?" + result;
						dataGridViewRow.Cells["REQID"].Tag = "crm://" + ((IProjectID)((IProject)((IRequirement)requirement).Project).ProjectID).IDNumber + "?" + result;
						dataGridViewRow.Cells["RQType"].Value = "CaliberRM";
					}
					else
					{
						MessageBox.Show("No requirement found!");
					}
					dataGridView.AutoSize = true;
				}
				else
				{
					MessageBox.Show("Only integer IDs allowed!");
				}
			}
		}
		catch (Exception ex)
		{
			MessageBox.Show("Access to CaliberRM server failed!" + Environment.NewLine + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Hand);
			mServer = null;
			mSession = null;
		}
		base.UseWaitCursor = false;
	}

	private void btnAddFile_Click(object sender, EventArgs e)
	{
		if (addFileDialog.ShowDialog() == DialogResult.OK)
		{
			reqBindingSource.AddNew();
			DataGridViewRow dataGridViewRow = dataGridView.Rows[dataGridView.Rows.Count - 1];
			dataGridViewRow.Cells["Description"].Value = addFileDialog.FileName.Remove(0, addFileDialog.FileName.LastIndexOf("\\") + 1);
			dataGridViewRow.Cells["REQID"].Value = addFileDialog.FileName;
			dataGridViewRow.Cells["REQID"].Tag = "file://" + addFileDialog.FileName;
			dataGridViewRow.Cells["RQType"].Value = "File";
			dataGridViewRow.Cells["Hyperlink"].Value = addFileDialog.FileName;
			dataGridViewRow.Cells["Version"].Value = "UTC: " + File.GetLastAccessTimeUtc(addFileDialog.FileName);
			dataGridViewRow.Cells["Version"].ToolTipText = File.GetLastAccessTime(addFileDialog.FileName).ToLocalTime().ToLongTimeString();
		}
	}

	private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
	{
		try
		{
			DataGridViewRow dataGridViewRow = dataGridView.Rows[e.RowIndex];
			if (e.ColumnIndex == dataGridView.Columns["REQID"].Index)
			{
				Process.Start(dataGridViewRow.Cells["REQID"].Tag.ToString());
			}
			else if (e.ColumnIndex == dataGridView.Columns["Hyperlink"].Index)
			{
				Process.Start(dataGridViewRow.Cells["Hyperlink"].Value.ToString());
			}
			else if (e.ColumnIndex == dataGridView.Columns["UpdateRQ"].Index)
			{
				if (dataGridViewRow.Cells["RQType"].Value.ToString() == "File")
				{
					dataGridViewRow.Cells["Version"].Value = File.GetLastAccessTimeUtc(dataGridViewRow.Cells["Hyperlink"].Value.ToString());
				}
				else if (dataGridViewRow.Cells["RQType"].Value.ToString() == "CaliberRM")
				{
					Requirement requirement = ((ISession)curSession).getRequirement(int.Parse(dataGridViewRow.Cells["REQID"].Value.ToString()));
					dataGridViewRow.Cells["Description"].Value = ((IRequirement)requirement).Name;
					dataGridViewRow.Cells["Version"].Value = ((IVersion)((IRequirement)requirement).Version).toString();
				}
			}
		}
		catch (Exception ex)
		{
			MessageBox.Show("Error reported: " + ex.Message, "Error opening link", MessageBoxButtons.OK, MessageBoxIcon.Hand);
		}
	}

	private void doLogon()
	{
		//IL_015c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0162: Expected O, but got Unknown
		base.UseWaitCursor = true;
		if (mServer == null || mSession == null)
		{
			if (mUser != "" && mPassword != "" && mServer != null)
			{
				mSession = ((ICaliberServer)mServer).login(mUser, mPassword);
			}
			if (mSession == null)
			{
				LogonDialog logonDialog = new LogonDialog();
				if (mServername != "" && !logonDialog.cbServer.Items.Contains(mServername))
				{
					logonDialog.cbServer.Items.Add(mServername);
					logonDialog.cbServer.Text = mServername;
				}
				logonDialog.tbUser.Text = mUser;
				if (logonDialog.ShowDialog() == DialogResult.OK)
				{
					TextBox textBox = txtData;
					string text = textBox.Text;
					textBox.Text = text + "Login into " + logonDialog.Server + " as " + logonDialog.User + Environment.NewLine;
					CaliberServerFactory val = (CaliberServerFactory)new CaliberServerFactoryClass();
					mServer = ((ICaliberServerFactory)val).Create(logonDialog.Server);
					mSession = ((ICaliberServer)mServer).login(logonDialog.User, logonDialog.Password);
					mServername = logonDialog.Server;
					mUser = logonDialog.User;
					mPassword = logonDialog.Password;
				}
			}
		}
		base.UseWaitCursor = false;
	}

	private static void doLogout()
	{
		if (mSession != null)
		{
			((ISession)mSession).logout();
			mSession = null;
		}
		idleTimer.Stop();
	}

	private void btAbout_Click(object sender, EventArgs e)
	{
		AboutBox aboutBox = new AboutBox();
		aboutBox.ShowDialog();
	}
}
