using System;
using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Tools.Navigation.Layouting;
using Syncfusion.Windows.Forms.Tools.Navigation.Rendering;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

internal class Visualizer : Component
{
	private NavigationView _navView;

	private VisualStyles _style;

	private ILayouter _layouter;

	private IAreasStateCache _states;

	private IRenderer _rendrer;

	public VisualStyles Style
	{
		get
		{
			return _style;
		}
		set
		{
			if (_style != value)
			{
				_style = value;
				OnStyleChanged();
			}
		}
	}

	public ILayouter Layouter => _layouter;

	public IAreasStateCache States => _states;

	public IRenderer Renderer => _rendrer;

	public Visualizer(NavigationView navigationView, VisualStyles style)
	{
		_navView = navigationView;
		_style = style;
		OnStyleChanged();
	}

	public void RenderControl(Graphics graphics)
	{
		_rendrer.RenderControl(_navView, graphics, _layouter, _states);
	}

	public LayoutInfo HitTest(Point point)
	{
		return Layouter.HitTest(point);
	}

	public void UpdateLayout()
	{
		UpdateLayout(invalidate: true);
	}

	public void UpdateLayout(bool invalidate)
	{
		if (!_navView.Initializing && _navView.IsHandleCreated)
		{
			if (_navView != null)
			{
				_layouter.UpdateLayout(_navView);
			}
			UpdateHistoryButtonsState(invalidate: false);
			if (invalidate)
			{
				_navView.Invalidate();
			}
		}
	}

	public void UpdateHistoryButtonsState(bool invalidate)
	{
		if (_navView.ShowHistoryButtons)
		{
			if (_navView.HistoryEnabled && _navView.HistoryManager != null)
			{
				bool canUndo = _navView.HistoryManager.CanUndo;
				bool canRedo = _navView.HistoryManager.CanRedo;
				bool flag = (canUndo || canRedo) && _navView.HistoryManager is HistoryManager;
				SetState(HitTestAreas.HistoryBackButton, (!canUndo) ? AreaStates.Disabled : AreaStates.Default);
				SetState(HitTestAreas.HistoryForwardButton, (!canRedo) ? AreaStates.Disabled : AreaStates.Default);
				SetState(HitTestAreas.HistoryDropDownButton, (!flag) ? AreaStates.Disabled : AreaStates.Default);
			}
			else
			{
				SetState(HitTestAreas.HistoryBackButton, AreaStates.Disabled);
				SetState(HitTestAreas.HistoryForwardButton, AreaStates.Disabled);
				SetState(HitTestAreas.HistoryDropDownButton, AreaStates.Disabled);
			}
		}
		if (invalidate)
		{
			_navView.Invalidate();
		}
	}

	public AreaStates GetState(HitTestAreas area)
	{
		AreaStates result = AreaStates.Default;
		LayoutInfo layout = _layouter.GetLayout(area);
		if (layout != null)
		{
			result = _states.GetAreaState(layout);
		}
		return result;
	}

	public void SetState(HitTestAreas area, AreaStates state)
	{
		LayoutInfo layout = _layouter.GetLayout(area);
		if (layout != null)
		{
			_states.SetAreaState(layout, state);
		}
	}

	private void OnStyleChanged()
	{
		DisposeRenderer();
		if (_layouter == null)
		{
			_layouter = new LayouterBase();
			_states = (IAreasStateCache)_layouter;
		}
		switch (_style)
		{
		case VisualStyles.Office2007:
			_rendrer = new Office2007Render();
			break;
		case VisualStyles.Vista:
			_rendrer = new VistaRender();
			break;
		}
		UpdateLayout();
	}

	private void DisposeRenderer()
	{
		if (_rendrer != null)
		{
			IDisposable rendrer = _rendrer;
			rendrer.Dispose();
			_rendrer = null;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			DisposeRenderer();
			if (_layouter == null)
			{
				_layouter.Dispose();
				_layouter = null;
			}
			_navView = null;
			_states = null;
		}
		base.Dispose(disposing);
	}
}
