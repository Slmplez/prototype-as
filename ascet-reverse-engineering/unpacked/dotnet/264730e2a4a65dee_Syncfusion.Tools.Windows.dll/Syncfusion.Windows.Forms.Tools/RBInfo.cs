using System;

namespace Syncfusion.Windows.Forms.Tools;

internal class RBInfo : IComparable
{
	private int ntabIndex;

	private RadioButtonAdv mradioButton;

	public int TabIndex => ntabIndex;

	public RadioButtonAdv Control => mradioButton;

	public RBInfo(int ntabIndex, RadioButtonAdv ctrl)
	{
		this.ntabIndex = ntabIndex;
		mradioButton = ctrl;
	}

	public int CompareTo(object x)
	{
		if (!(x is RBInfo))
		{
			throw new ArgumentException("object is not a RBInfo");
		}
		RBInfo rBInfo = x as RBInfo;
		return TabIndex.CompareTo(rBInfo.TabIndex);
	}
}
