using System;
using System.Collections;

namespace Syncfusion.ComponentModel;

public class OperationFeedbackListener : NonFinalizeDisposable
{
	private ArrayList providers = new ArrayList();

	private int delay = 250;

	private bool progressFired;

	public int Delay
	{
		get
		{
			return delay;
		}
		set
		{
			delay = value;
		}
	}

	public event OperationFeedbackEventHandler Progress;

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnWireEvents();
		}
		base.Dispose(disposing);
	}

	private void UnWireEvents()
	{
		foreach (WeakReference provider in providers)
		{
			if (provider.Target is IOperationFeedbackProvider operationFeedbackProvider)
			{
				operationFeedbackProvider.OperationFeedback -= ProviderProgress;
			}
		}
		providers.Clear();
		providers = null;
	}

	public void AddProvider(IOperationFeedbackProvider provider)
	{
		if (provider == null)
		{
			throw new ArgumentNullException("provider");
		}
		provider.OperationFeedback += ProviderProgress;
		providers.Add(new WeakReference(provider));
	}

	public void RemoveProvider(IOperationFeedbackProvider provider)
	{
		if (provider == null)
		{
			throw new ArgumentNullException("provider");
		}
		provider.OperationFeedback -= ProviderProgress;
		for (int i = 0; i < providers.Count; i++)
		{
			WeakReference weakReference = providers[i] as WeakReference;
			if (weakReference.Target == provider)
			{
				providers.RemoveAt(i);
				break;
			}
		}
	}

	private void ProviderProgress(object sender, OperationFeedbackEventArgs e)
	{
		if (e.Ticks > Delay || progressFired)
		{
			OnProgress(e);
			progressFired = true;
		}
		if (e.Milestone == OperationMilestone.Finished)
		{
			progressFired = false;
		}
	}

	protected virtual void OnProgress(OperationFeedbackEventArgs e)
	{
		if (this.Progress != null)
		{
			this.Progress(this, e);
		}
	}
}
