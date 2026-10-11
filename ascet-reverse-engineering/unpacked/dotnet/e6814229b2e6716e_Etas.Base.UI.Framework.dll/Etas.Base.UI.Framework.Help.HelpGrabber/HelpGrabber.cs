using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Windows.Forms;
using Etas.Base.Shared;
using Etas.Base.UI.Framework.Help.HelpCore;

namespace Etas.Base.UI.Framework.Help.HelpGrabber;

[Localizable(false)]
[Designer(typeof(HelpGrabberDesigner))]
public class HelpGrabber : Component
{
	public const string HIERARCHY_SEPARATOR = ".";

	private IContainer components;

	private static IModeReader modeReader;

	private string helpNamespace = ControlIdentifier.DEFAULT_NS;

	private string namePrefix = string.Empty;

	protected static IDictionary<Control, HelpGrabber> associatedGrabber = new Dictionary<Control, HelpGrabber>();

	private Control myRootCtl;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(false)]
	public Control AssociatedControl
	{
		get
		{
			return myRootCtl;
		}
		set
		{
			if (!base.DesignMode)
			{
				if (myRootCtl != null)
				{
					associatedGrabber.Remove(myRootCtl);
					myRootCtl.HelpRequested -= HelpRequestCatched;
					myRootCtl.Disposed -= AssocCtlDisposed;
				}
				if (value != null)
				{
					associatedGrabber.Add(value, this);
					value.HelpRequested += HelpRequestCatched;
					value.Disposed += AssocCtlDisposed;
				}
			}
			myRootCtl = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public static IModeReader ModeReader
	{
		protected get
		{
			if (modeReader == null)
			{
				modeReader = new RegistryModeReader();
			}
			return modeReader;
		}
		set
		{
			modeReader = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public string HelpNamespace
	{
		get
		{
			return helpNamespace;
		}
		set
		{
			if (!string.IsNullOrEmpty(value))
			{
				helpNamespace = value;
			}
			else
			{
				helpNamespace = ControlIdentifier.DEFAULT_NS;
			}
		}
	}

	[Browsable(true)]
	public bool DefinesNamespace => !helpNamespace.Equals(ControlIdentifier.DEFAULT_NS);

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public string NamePrefix
	{
		get
		{
			return namePrefix;
		}
		set
		{
			namePrefix = value;
			if (value == null)
			{
				namePrefix = string.Empty;
			}
		}
	}

	protected override void Dispose(bool disposing)
	{
		try
		{
			if (disposing && components != null)
			{
				components.Dispose();
			}
		}
		finally
		{
			base.Dispose(disposing);
		}
	}

	private void InitializeComponent()
	{
		components = new Container();
	}

	public HelpGrabber()
	{
		InitializeComponent();
	}

	public HelpGrabber(IContainer container)
	{
		container.Add(this);
		InitializeComponent();
	}

	private void ShowEditor()
	{
		List<HelpGrabber> list = new List<HelpGrabber>();
		foreach (HelpGrabber value in associatedGrabber.Values)
		{
			if (!value.HasGrabberAbove())
			{
				list.Add(value);
			}
		}
		foreach (HelpGrabber item in list)
		{
			item.AddParents();
			item.AddChild(item.AssociatedControl);
		}
		new FacadeEnvelope().SingletonInstance.ShowEditor();
	}

	private void ShowControl(Control requestingCtl)
	{
		if (requestingCtl is IContextProvider && ((IContextProvider)requestingCtl).IsContextActive())
		{
			List<ControlIdentifier> list = new List<ControlIdentifier>(ConstructParentsArray(requestingCtl));
			list.Insert(0, GetIdentifierOf(requestingCtl));
			new FacadeEnvelope().SingletonInstance.ShowControl(GetVirtualChildIdentifierOf(requestingCtl), list.ToArray());
		}
		else
		{
			new FacadeEnvelope().SingletonInstance.ShowControl(GetIdentifierOf(requestingCtl), ConstructParentsArray(requestingCtl));
		}
	}

	private void ShowHelp(Control requestingCtl)
	{
		if (requestingCtl is IContextProvider && ((IContextProvider)requestingCtl).IsContextActive())
		{
			List<ControlIdentifier> list = new List<ControlIdentifier>(ConstructParentsArray(requestingCtl));
			list.Insert(0, GetIdentifierOf(requestingCtl));
			new FacadeEnvelope().SingletonInstance.ShowHelp(GetVirtualChildIdentifierOf(requestingCtl), list.ToArray());
		}
		else
		{
			new FacadeEnvelope().SingletonInstance.ShowHelp(GetIdentifierOf(requestingCtl), ConstructParentsArray(requestingCtl));
		}
	}

	private void AddParents()
	{
		foreach (Control item in GetPathTo(AssociatedControl))
		{
			if (item.Parent == null)
			{
				new FacadeEnvelope().SingletonInstance.AddEntry(GetType().FullName, GetIdentifierOf(item), helpRequestCatchable: false, new DefaultCtlHighlighter(item));
			}
			else
			{
				new FacadeEnvelope().SingletonInstance.AddEntry(GetType().FullName, GetIdentifierOf(item), GetIdentifierOf(item.Parent), helpRequestCatchable: false, new DefaultCtlHighlighter(item));
			}
		}
	}

	private void AddChild(Control ctl)
	{
		if (ctl.Parent == null)
		{
			new FacadeEnvelope().SingletonInstance.AddEntry(GetType().FullName, GetIdentifierOf(ctl), helpRequestCatchable: true, new DefaultCtlHighlighter(ctl));
		}
		else
		{
			new FacadeEnvelope().SingletonInstance.AddEntry(GetType().FullName, GetIdentifierOf(ctl), GetIdentifierOf(ctl.Parent), helpRequestCatchable: true, new DefaultCtlHighlighter(ctl));
		}
		if (ctl is IContextProvider && ((IContextProvider)ctl).HasContexts())
		{
			ControlIdentifier identifierOf = GetIdentifierOf(ctl);
			IHelpCoreFacade singletonInstance = new FacadeEnvelope().SingletonInstance;
			ControlIdentifier[] allVirtualChildIdentifiers = GetAllVirtualChildIdentifiers(ctl);
			foreach (ControlIdentifier ctl2 in allVirtualChildIdentifiers)
			{
				singletonInstance.AddEntry(GetType().FullName, ctl2, identifierOf, helpRequestCatchable: true, new DefaultCtlHighlighter(ctl));
			}
		}
		foreach (Control control in ctl.Controls)
		{
			AddChild(control);
		}
	}

	private List<Control> GetPathTo(Control ctl)
	{
		List<Control> list = new List<Control>();
		for (Control parent = ctl.Parent; parent != null; parent = parent.Parent)
		{
			list.Add(parent);
		}
		list.Reverse();
		return list;
	}

	private bool HasGrabberAbove()
	{
		if (AssociatedControl != null)
		{
			for (Control parent = AssociatedControl.Parent; parent != null; parent = parent.Parent)
			{
				if (associatedGrabber.ContainsKey(parent))
				{
					return true;
				}
			}
			return false;
		}
		return true;
	}

	private ControlIdentifier[] ConstructParentsArray(Control requestingCtl)
	{
		Control parent = requestingCtl.Parent;
		List<ControlIdentifier> list = new List<ControlIdentifier>();
		while (parent != null)
		{
			list.Add(GetIdentifierOf(parent));
			parent = parent.Parent;
		}
		return list.ToArray();
	}

	private void HelpRequestCatched(object sender, HelpEventArgs hlpevent)
	{
		Control control = (Control)sender;
		while (control is ContainerControl && ((ContainerControl)control).ActiveControl != null)
		{
			control = ((ContainerControl)control).ActiveControl;
		}
		switch (ModeReader.HelpMode)
		{
		case HelpModes.ShowControl:
			ShowControl(control);
			break;
		case HelpModes.ShowEditor:
			ShowEditor();
			break;
		default:
			ShowHelp(control);
			break;
		}
		hlpevent.Handled = true;
	}

	private void AssocCtlDisposed(object sender, EventArgs e)
	{
		AssociatedControl = null;
	}

	private ControlIdentifier GetIdentifierOf(Control curCtl)
	{
		ControlIdentifier result = default(ControlIdentifier);
		result.Name = GetControlName(curCtl);
		result.HelpNamespace = GetHelpNamespace(curCtl);
		result.GrabberPrefix = GetGrabberPrefix(curCtl);
		result.Type = curCtl.GetType().FullName;
		return result;
	}

	private ControlIdentifier GetVirtualChildIdentifierOf(Control curCtl)
	{
		IContextProvider contextProvider = (IContextProvider)curCtl;
		ControlIdentifier identifierOf = GetIdentifierOf(curCtl);
		ControlIdentifier result = default(ControlIdentifier);
		result.Name = identifierOf.Name + "." + contextProvider.GetActiveContext();
		result.HelpNamespace = identifierOf.HelpNamespace;
		result.GrabberPrefix = identifierOf.GrabberPrefix;
		result.Type = identifierOf.Type;
		return result;
	}

	private ControlIdentifier[] GetAllVirtualChildIdentifiers(Control curCtl)
	{
		IContextProvider contextProvider = (IContextProvider)curCtl;
		ControlIdentifier identifierOf = GetIdentifierOf(curCtl);
		List<ControlIdentifier> list = new List<ControlIdentifier>();
		string[] contexts = contextProvider.GetContexts();
		ControlIdentifier item = default(ControlIdentifier);
		foreach (string text in contexts)
		{
			item.Name = identifierOf.Name + "." + text;
			item.HelpNamespace = identifierOf.HelpNamespace;
			item.GrabberPrefix = identifierOf.GrabberPrefix;
			item.Type = identifierOf.Type;
			list.Add(item);
		}
		return list.ToArray();
	}

	private string GetGrabberPrefix(Control curCtl)
	{
		for (Control control = curCtl; control != null; control = control.Parent)
		{
			if (associatedGrabber.ContainsKey(control))
			{
				return associatedGrabber[control].NamePrefix;
			}
		}
		return string.Empty;
	}

	private string GetHelpNamespace(Control root)
	{
		string dEFAULT_NS = ControlIdentifier.DEFAULT_NS;
		Control control = root;
		while (control != null && dEFAULT_NS.Equals(ControlIdentifier.DEFAULT_NS))
		{
			if (associatedGrabber.ContainsKey(control))
			{
				dEFAULT_NS = associatedGrabber[control].HelpNamespace;
			}
			control = control.Parent;
		}
		return dEFAULT_NS;
	}

	private string GetControlName(Control ctl)
	{
		string text = string.Empty;
		if (ctl != null)
		{
			Control parent = ctl.Parent;
			Control key = ctl;
			while (parent != null && (!associatedGrabber.ContainsKey(key) || !associatedGrabber[key].DefinesNamespace))
			{
				text = parent.Name + "." + text;
				key = parent;
				parent = parent.Parent;
			}
			text += ctl.Name;
		}
		if (string.IsNullOrEmpty(text))
		{
			Logger.LogError("Unable to compute the name of the passed control. Maybe the property 'Name' isn't set or the control is null");
			throw new ArgumentException("Unable to compute the name of the passed control. Maybe the property 'Name' isn't set or the control is null");
		}
		return text;
	}

	public bool ShouldSerializeAssociatedControl()
	{
		return true;
	}

	public bool ShouldSerializeHelpNamespace()
	{
		return DefinesNamespace;
	}
}
