using System;
using System.ComponentModel;

namespace Syncfusion.Styles;

public abstract class StyleInfoSubObjectBase : StyleInfoBase, IStyleInfoSubObject
{
	private StyleInfoBase owner;

	private StyleInfoProperty sip;

	private StyleInfoSubObjectIdentity sid;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public StyleInfoSubObjectIdentity SubObjectIdentity => identity as StyleInfoSubObjectIdentity;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public StyleInfoProperty Sip => sip;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public object Data => _store;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public StyleInfoBase Owner => owner;

	protected StyleInfoSubObjectBase(StyleInfoStore store)
		: base(null, store)
	{
	}

	protected StyleInfoSubObjectBase(StyleInfoSubObjectIdentity identity, StyleInfoStore store)
		: base(identity, store)
	{
		sid = identity;
		if (sid != null)
		{
			owner = sid.Owner;
			sip = sid.Sip;
			base.CacheValues = owner.CacheValues;
		}
	}

	public override void Dispose()
	{
		owner = null;
		sip = null;
		sid = null;
		base.Dispose();
	}

	protected override void OnStyleChanged(StyleInfoProperty sip)
	{
		base.OnStyleChanged(sip);
		if (owner != null)
		{
			owner.OnSubObjectChanged(this);
		}
	}

	protected override StyleInfoBase IntGetDefaultStyleInfo(StyleInfoProperty sip)
	{
		if (identity != null)
		{
			return identity.GetBaseStyle(this, sip);
		}
		return null;
	}

	public virtual IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return (IStyleInfoSubObject)Activator.CreateInstance(GetType(), newOwner.CreateSubObjectIdentity(sip), _store.Clone());
	}
}
