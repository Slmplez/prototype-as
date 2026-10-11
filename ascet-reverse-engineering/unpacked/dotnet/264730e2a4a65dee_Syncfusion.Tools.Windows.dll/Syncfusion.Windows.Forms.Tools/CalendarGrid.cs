using System;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools;

public class CalendarGrid
{
	private const int DEF_OFFSET = 1;

	private int m_offset;

	private GridControlBase m_grid;

	private CalendarModel m_model;

	private CalendarCurrentCell m_currentCell;

	protected internal int ColumnOffset
	{
		get
		{
			return m_offset;
		}
		set
		{
			if (value != m_offset)
			{
				m_offset = value;
				m_model.ColumnOffset = value;
				CurrentCell.ColumnOffset = value;
			}
		}
	}

	public GridControlBase GridControl => m_grid;

	public DockStyle Dock
	{
		get
		{
			return m_grid.Dock;
		}
		set
		{
			m_grid.Dock = value;
		}
	}

	public bool ForceCurrentCellMoveTo
	{
		get
		{
			return m_grid.ForceCurrentCellMoveTo;
		}
		set
		{
			m_grid.ForceCurrentCellMoveTo = value;
		}
	}

	public MouseControllerDispatcher MouseControllerDispatcher => m_grid.MouseControllerDispatcher;

	public GridScrollbarMode VScrollBehavior
	{
		get
		{
			return m_grid.VScrollBehavior;
		}
		set
		{
			m_grid.VScrollBehavior = value;
		}
	}

	public GridScrollbarMode HScrollBehavior
	{
		get
		{
			return m_grid.HScrollBehavior;
		}
		set
		{
			m_grid.HScrollBehavior = value;
		}
	}

	public bool ThemesEnabled
	{
		get
		{
			return m_grid.ThemesEnabled;
		}
		set
		{
			m_grid.ThemesEnabled = value;
		}
	}

	public CalendarModel Model
	{
		get
		{
			return m_model;
		}
		set
		{
			m_model = value;
			ColumnOffset = value.ColumnOffset;
			GridControl.Model = value.GridModel;
		}
	}

	public Color BackColor
	{
		get
		{
			return m_grid.BackColor;
		}
		set
		{
			m_grid.BackColor = value;
		}
	}

	public Image BackgroundImage
	{
		get
		{
			return m_grid.BackgroundImage;
		}
		set
		{
			m_grid.BackgroundImage = value;
		}
	}

	public ImageLayout BackgroundImageLayout
	{
		get
		{
			return m_grid.BackgroundImageLayout;
		}
		set
		{
			m_grid.BackgroundImageLayout = value;
		}
	}

	public ContextMenu ContextMenu
	{
		get
		{
			return m_grid.ContextMenu;
		}
		set
		{
			m_grid.ContextMenu = value;
		}
	}

	public CalendarCurrentCell CurrentCell
	{
		get
		{
			if (m_currentCell == null)
			{
				m_currentCell = new CalendarCurrentCell(m_grid.CurrentCell);
			}
			return m_currentCell;
		}
	}

	public int DefaultColWidth
	{
		get
		{
			return m_grid.DefaultColWidth;
		}
		set
		{
			m_grid.DefaultColWidth = value;
		}
	}

	public int DefaultRowHeight
	{
		get
		{
			return m_grid.DefaultRowHeight;
		}
		set
		{
			m_grid.DefaultRowHeight = value;
		}
	}

	public event MouseEventHandler MouseDown;

	public event EventHandler Click;

	public event GridDrawCellEventHandler CellDrawn;

	public event GridCellClickEventHandler CellClick;

	public event GridCellMouseEventHandler CellMouseDown;

	public event GridCurrentCellMovingEventHandler CurrentCellMoving;

	public event KeyEventHandler KeyUp;

	public event GridMoveCurrentCellDirectionEventHandler MoveCurrentCellDirection
	{
		add
		{
			m_grid.MoveCurrentCellDirection += value;
		}
		remove
		{
			m_grid.MoveCurrentCellDirection -= value;
		}
	}

	public CalendarGrid()
	{
		InitializeGrid();
	}

	protected void InitializeGrid()
	{
		m_grid = new GridControl();
		m_grid.MouseDown += M_grid_MouseDown;
		m_grid.Click += M_grid_Click;
		m_grid.CellDrawn += M_grid_CellDrawn;
		m_grid.CellClick += M_grid_CellClick;
		m_grid.CellMouseDown += M_grid_CellMouseDown;
		m_grid.CurrentCellMoving += M_grid_CurrentCellMoving;
		m_grid.KeyUp += M_grid_KeyUp;
	}

	public void BringToFront()
	{
		m_grid.BringToFront();
	}

	public void Invalidate()
	{
		m_grid.Invalidate();
	}

	public void Refresh()
	{
		m_grid.Refresh();
	}

	public void RefreshRange(GridRangeInfo range)
	{
		GridRangeInfo range2 = range.OffsetRange(0, ColumnOffset);
		m_grid.RefreshRange(range2);
	}

	public void RefreshRange(GridRangeInfo range, bool forceRefreshCurrentCell)
	{
		GridRangeInfo range2 = range.OffsetRange(0, ColumnOffset);
		m_grid.RefreshRange(range2, forceRefreshCurrentCell);
	}

	public void SetRowHeight(int from, int last, int value)
	{
		m_grid.SetRowHeight(from, last, value);
	}

	protected virtual void OnOffset()
	{
		m_model.ColumnOffset = m_offset;
		CurrentCell.ColumnOffset = m_offset;
	}

	private void M_grid_Click(object sender, EventArgs e)
	{
		if (this.Click != null)
		{
			this.Click(sender, e);
		}
	}

	private void M_grid_MouseDown(object sender, MouseEventArgs e)
	{
		if (this.MouseDown != null)
		{
			this.MouseDown(sender, e);
		}
	}

	private void M_grid_CellDrawn(object sender, GridDrawCellEventArgs e)
	{
		if (this.CellDrawn != null)
		{
			GridDrawCellEventArgs e2 = new GridDrawCellEventArgs(e.Graphics, e.Renderer, e.Bounds, e.RowIndex, e.ColIndex - ColumnOffset, e.Style, e.IsBackgroundErased);
			e2.Cancel = e.Cancel;
			this.CellDrawn(sender, e2);
			e.Cancel = e2.Cancel;
		}
	}

	private void M_grid_CellClick(object sender, GridCellClickEventArgs e)
	{
		if (this.CellClick != null)
		{
			GridCellClickEventArgs e2 = new GridCellClickEventArgs(e.RowIndex, e.ColIndex - ColumnOffset, e.MouseEventArgs, e.IsOverImage);
			e2.Cancel = e.Cancel;
			this.CellClick(sender, e2);
			e.Cancel = e2.Cancel;
		}
	}

	private void M_grid_CellMouseDown(object sender, GridCellMouseEventArgs e)
	{
		if (this.CellMouseDown != null)
		{
			GridCellMouseEventArgs e2 = new GridCellMouseEventArgs(e.RowIndex, e.ColIndex - ColumnOffset, e.CellButton, e.MouseEventArgs);
			e2.Cancel = e.Cancel;
			this.CellMouseDown(sender, e2);
			e.Cancel = e2.Cancel;
		}
	}

	private void M_grid_CurrentCellMoving(object sender, GridCurrentCellMovingEventArgs e)
	{
		if (this.CurrentCellMoving != null)
		{
			GridCurrentCellMovingEventArgs e2 = new GridCurrentCellMovingEventArgs(e.RowIndex, e.ColIndex, e.Options);
			e2.Cancel = e.Cancel;
			this.CurrentCellMoving(sender, e2);
			e.Cancel = e2.Cancel;
		}
	}

	private void M_grid_KeyUp(object sender, KeyEventArgs e)
	{
		if (this.KeyUp != null)
		{
			this.KeyUp(sender, e);
		}
	}
}
