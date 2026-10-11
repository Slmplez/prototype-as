using System;
using Syncfusion.ComponentModel;

namespace Syncfusion.Collections;

public sealed class ListPropertyChangedEventArgs : SyncfusionCancelEventArgs
{
	private ListPropertyChangedType listChangedType;

	private int index;

	private object item;

	private string property;

	private object tag;

	[TraceProperty(true)]
	public ListPropertyChangedType Action => listChangedType;

	[TraceProperty(true)]
	public int Index => index;

	[TraceProperty(true)]
	public object Item => item;

	[TraceProperty(true)]
	public string Property => property;

	[TraceProperty(true)]
	public EventArgs Inner => tag as EventArgs;

	public object Tag
	{
		get
		{
			return tag;
		}
		set
		{
			tag = value;
		}
	}

	public ListPropertyChangedEventArgs(ListPropertyChangedType listChangedType, int index, object item, string property)
	{
		this.listChangedType = listChangedType;
		this.index = index;
		this.property = property;
		this.item = item;
	}

	public ListPropertyChangedEventArgs(ListPropertyChangedType listChangedType, int index, object item, string property, object tag)
	{
		this.listChangedType = listChangedType;
		this.index = index;
		this.property = property;
		this.item = item;
		this.tag = tag;
	}
}
