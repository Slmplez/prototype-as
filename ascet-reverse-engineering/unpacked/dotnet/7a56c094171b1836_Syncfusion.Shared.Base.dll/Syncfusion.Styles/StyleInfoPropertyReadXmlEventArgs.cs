using System.Xml;
using Syncfusion.ComponentModel;

namespace Syncfusion.Styles;

public sealed class StyleInfoPropertyReadXmlEventArgs : SyncfusionHandledEventArgs
{
	private XmlReader reader;

	private StyleInfoStore store;

	private StyleInfoProperty sip;

	public XmlReader Reader => reader;

	public StyleInfoStore Store => store;

	[TraceProperty(true)]
	public StyleInfoProperty Sip => sip;

	public StyleInfoPropertyReadXmlEventArgs(XmlReader reader, StyleInfoStore store, StyleInfoProperty sip)
	{
		this.reader = reader;
		this.store = store;
		this.sip = sip;
	}
}
