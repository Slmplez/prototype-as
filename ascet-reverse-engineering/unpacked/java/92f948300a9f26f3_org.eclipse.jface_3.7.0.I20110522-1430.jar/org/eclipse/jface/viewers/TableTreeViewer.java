/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.custom.TableTree
 *  org.eclipse.swt.custom.TableTreeEditor
 *  org.eclipse.swt.custom.TableTreeItem
 *  org.eclipse.swt.events.FocusAdapter
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.TreeListener
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Widget
 */
package org.eclipse.jface.viewers;

import java.util.List;
import org.eclipse.jface.viewers.AbstractTreeViewer;
import org.eclipse.jface.viewers.CellEditor;
import org.eclipse.jface.viewers.ColumnViewer;
import org.eclipse.jface.viewers.DoubleClickEvent;
import org.eclipse.jface.viewers.IBaseLabelProvider;
import org.eclipse.jface.viewers.ICellEditorListener;
import org.eclipse.jface.viewers.ICellModifier;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.OpenEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerLabel;
import org.eclipse.swt.custom.TableTree;
import org.eclipse.swt.custom.TableTreeEditor;
import org.eclipse.swt.custom.TableTreeItem;
import org.eclipse.swt.events.FocusAdapter;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Widget;

public class TableTreeViewer
extends AbstractTreeViewer {
    private TableTreeEditorImpl tableEditorImpl;
    private TableTree tableTree;
    private TableTreeEditor tableTreeEditor;

    public TableTreeViewer(TableTree tree) {
        this.tableTree = tree;
        this.hookControl((Control)tree);
        this.tableTreeEditor = new TableTreeEditor(this.tableTree);
        this.tableEditorImpl = new TableTreeEditorImpl(this);
    }

    public TableTreeViewer(Composite parent) {
        this(parent, 2818);
    }

    public TableTreeViewer(Composite parent, int style) {
        this(new TableTree(parent, style));
    }

    protected void addTreeListener(Control c, TreeListener listener) {
        ((TableTree)c).addTreeListener(listener);
    }

    public void cancelEditing() {
        this.tableEditorImpl.cancelEditing();
    }

    protected void doUpdateItem(Item item, Object element) {
        IBaseLabelProvider prov = this.getLabelProvider();
        ITableLabelProvider tprov = null;
        if (prov instanceof ITableLabelProvider) {
            tprov = (ITableLabelProvider)prov;
        }
        int columnCount = this.tableTree.getTable().getColumnCount();
        TableTreeItem ti = (TableTreeItem)item;
        int column = 0;
        while (column < columnCount || column == 0) {
            String text = "";
            Image image = null;
            if (tprov != null) {
                text = tprov.getColumnText(element, column);
                image = tprov.getColumnImage(element, column);
            } else if (column == 0) {
                ViewerLabel updateLabel = new ViewerLabel(item.getText(), item.getImage());
                this.buildLabel(updateLabel, element);
                if (item.isDisposed()) {
                    this.unmapElement(element, (Widget)item);
                    return;
                }
                text = updateLabel.getText();
                image = updateLabel.getImage();
            }
            if (text == null) {
                text = "";
            }
            ti.setText(column, text);
            if (ti.getImage(column) != image) {
                ti.setImage(column, image);
            }
            this.getColorAndFontCollector().setFontsAndColors(element);
            this.getColorAndFontCollector().applyFontsAndColors(ti);
            ++column;
        }
    }

    public void editElement(Object element, int column) {
        this.tableEditorImpl.editElement(element, column);
    }

    public CellEditor[] getCellEditors() {
        return this.tableEditorImpl.getCellEditors();
    }

    public ICellModifier getCellModifier() {
        return this.tableEditorImpl.getCellModifier();
    }

    protected Item[] getChildren(Widget o) {
        if (o instanceof TableTreeItem) {
            return ((TableTreeItem)o).getItems();
        }
        if (o instanceof TableTree) {
            return ((TableTree)o).getItems();
        }
        return null;
    }

    protected Item getChild(Widget widget, int index) {
        if (widget instanceof TableTreeItem) {
            return ((TableTreeItem)widget).getItem(index);
        }
        if (widget instanceof TableTree) {
            return ((TableTree)widget).getItem(index);
        }
        return null;
    }

    public Object[] getColumnProperties() {
        return this.tableEditorImpl.getColumnProperties();
    }

    public Control getControl() {
        return this.tableTree;
    }

    public Object getElementAt(int index) {
        TableTreeItem i = this.tableTree.getItems()[index];
        if (i != null) {
            return i.getData();
        }
        return null;
    }

    protected boolean getExpanded(Item item) {
        return ((TableTreeItem)item).getExpanded();
    }

    protected Item getItemAt(Point p) {
        return this.getTableTree().getTable().getItem(p);
    }

    protected int getItemCount(Control widget) {
        return ((TableTree)widget).getItemCount();
    }

    protected int getItemCount(Item item) {
        return ((TableTreeItem)item).getItemCount();
    }

    protected Item[] getItems(Item item) {
        return ((TableTreeItem)item).getItems();
    }

    public IBaseLabelProvider getLabelProvider() {
        return super.getLabelProvider();
    }

    protected Item getParentItem(Item item) {
        return ((TableTreeItem)item).getParentItem();
    }

    protected Item[] getSelection(Control widget) {
        return ((TableTree)widget).getSelection();
    }

    public TableTree getTableTree() {
        return this.tableTree;
    }

    protected void hookControl(Control control) {
        super.hookControl(control);
        this.tableTree.getTable().addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseDown(MouseEvent e) {
                TableItem[] items = TableTreeViewer.this.tableTree.getTable().getItems();
                int i = 0;
                while (i < items.length) {
                    Rectangle rect = items[i].getImageBounds(0);
                    if (rect.contains(e.x, e.y)) {
                        return;
                    }
                    ++i;
                }
                TableTreeViewer.this.tableEditorImpl.handleMouseDown(e);
            }
        });
    }

    public boolean isCellEditorActive() {
        return this.tableEditorImpl.isCellEditorActive();
    }

    protected Item newItem(Widget parent, int flags, int ix) {
        TableTreeItem item = ix >= 0 ? (parent instanceof TableTreeItem ? new TableTreeItem((TableTreeItem)parent, flags, ix) : new TableTreeItem((TableTree)parent, flags, ix)) : (parent instanceof TableTreeItem ? new TableTreeItem((TableTreeItem)parent, flags) : new TableTreeItem((TableTree)parent, flags));
        return item;
    }

    protected void removeAll(Control widget) {
        ((TableTree)widget).removeAll();
    }

    public void setCellEditors(CellEditor[] editors) {
        this.tableEditorImpl.setCellEditors(editors);
    }

    public void setCellModifier(ICellModifier modifier) {
        this.tableEditorImpl.setCellModifier(modifier);
    }

    public void setColumnProperties(String[] columnProperties) {
        this.tableEditorImpl.setColumnProperties(columnProperties);
    }

    protected void setExpanded(Item node, boolean expand) {
        ((TableTreeItem)node).setExpanded(expand);
    }

    protected void setSelection(List items) {
        TableTreeItem[] newItems = new TableTreeItem[items.size()];
        items.toArray(newItems);
        this.getTableTree().setSelection(newItems);
    }

    protected void showItem(Item item) {
        this.getTableTree().showItem((TableTreeItem)item);
    }

    class TableTreeEditorImpl {
        private CellEditor cellEditor;
        private CellEditor[] cellEditors;
        private ICellModifier cellModifier;
        private String[] columnProperties;
        private Item tableItem;
        private int columnNumber;
        private ICellEditorListener cellEditorListener;
        private FocusListener focusListener;
        private MouseListener mouseListener;
        private int doubleClickExpirationTime;
        private ColumnViewer viewer;

        private TableTreeEditorImpl(ColumnViewer viewer) {
            this.viewer = viewer;
            this.initCellEditorListener();
        }

        public ColumnViewer getViewer() {
            return this.viewer;
        }

        private void activateCellEditor() {
            String property;
            Object element;
            if (this.cellEditors != null && this.cellEditors[this.columnNumber] != null && this.cellModifier != null && this.cellModifier.canModify(element = this.tableItem.getData(), property = this.columnProperties[this.columnNumber])) {
                this.cellEditor = this.cellEditors[this.columnNumber];
                this.cellEditor.addListener(this.cellEditorListener);
                Object value = this.cellModifier.getValue(element, property);
                this.cellEditor.setValue(value);
                Control control = this.cellEditor.getControl();
                this.cellEditor.activate();
                if (control == null) {
                    return;
                }
                this.setLayoutData(this.cellEditor.getLayoutData());
                this.setEditor(control, this.tableItem, this.columnNumber);
                this.cellEditor.setFocus();
                if (this.focusListener == null) {
                    this.focusListener = new FocusAdapter(this){
                        final /* synthetic */ TableTreeEditorImpl this$1;
                        {
                            this.this$1 = tableTreeEditorImpl;
                        }

                        public void focusLost(FocusEvent e) {
                            this.this$1.applyEditorValue();
                        }
                    };
                }
                control.addFocusListener(this.focusListener);
                this.mouseListener = new MouseAdapter(this, control){
                    final /* synthetic */ TableTreeEditorImpl this$1;
                    private final /* synthetic */ Control val$control;
                    {
                        this.this$1 = tableTreeEditorImpl;
                        this.val$control = control;
                    }

                    public void mouseDown(MouseEvent e) {
                        if (e.time <= TableTreeEditorImpl.access$0(this.this$1)) {
                            this.val$control.removeMouseListener(TableTreeEditorImpl.access$1(this.this$1));
                            this.this$1.cancelEditing();
                            this.this$1.handleDoubleClickEvent();
                        } else if (TableTreeEditorImpl.access$1(this.this$1) != null) {
                            this.val$control.removeMouseListener(TableTreeEditorImpl.access$1(this.this$1));
                        }
                    }
                };
                control.addMouseListener(this.mouseListener);
            }
        }

        private void activateCellEditor(MouseEvent event) {
            int columnToEdit;
            if (this.tableItem == null || this.tableItem.isDisposed()) {
                return;
            }
            int columns = this.getColumnCount();
            if (columns == 0) {
                columnToEdit = 0;
            } else {
                columnToEdit = -1;
                int i = 0;
                while (i < columns) {
                    Rectangle bounds = this.getBounds(this.tableItem, i);
                    if (bounds.contains(event.x, event.y)) {
                        columnToEdit = i;
                        break;
                    }
                    ++i;
                }
                if (columnToEdit == -1) {
                    return;
                }
            }
            this.columnNumber = columnToEdit;
            this.activateCellEditor();
        }

        public void applyEditorValue() {
            CellEditor c = this.cellEditor;
            if (c != null) {
                this.cellEditor = null;
                Item t = this.tableItem;
                if (t != null && !t.isDisposed()) {
                    this.saveEditorValue(c, t);
                }
                this.setEditor(null, null, 0);
                c.removeListener(this.cellEditorListener);
                Control control = c.getControl();
                if (control != null) {
                    if (this.mouseListener != null) {
                        control.removeMouseListener(this.mouseListener);
                    }
                    if (this.focusListener != null) {
                        control.removeFocusListener(this.focusListener);
                    }
                }
                c.deactivate();
            }
        }

        public void cancelEditing() {
            if (this.cellEditor != null) {
                this.setEditor(null, null, 0);
                this.cellEditor.removeListener(this.cellEditorListener);
                CellEditor oldEditor = this.cellEditor;
                this.cellEditor = null;
                oldEditor.deactivate();
            }
        }

        public void editElement(Object element, int column) {
            if (this.cellEditor != null) {
                this.applyEditorValue();
            }
            this.setSelection(new StructuredSelection(element), true);
            Item[] selection = this.getSelection();
            if (selection.length != 1) {
                return;
            }
            this.tableItem = selection[0];
            this.showSelection();
            this.columnNumber = column;
            this.activateCellEditor();
        }

        public CellEditor[] getCellEditors() {
            return this.cellEditors;
        }

        public ICellModifier getCellModifier() {
            return this.cellModifier;
        }

        public Object[] getColumnProperties() {
            return this.columnProperties;
        }

        public void handleMouseDown(MouseEvent event) {
            if (event.button != 1) {
                return;
            }
            if (this.cellEditor != null) {
                this.applyEditorValue();
            }
            this.doubleClickExpirationTime = event.time + Display.getCurrent().getDoubleClickTime();
            Item[] items = this.getSelection();
            if (items.length != 1) {
                this.tableItem = null;
                return;
            }
            this.tableItem = items[0];
            this.activateCellEditor(event);
        }

        private void initCellEditorListener() {
            this.cellEditorListener = new ICellEditorListener(this){
                final /* synthetic */ TableTreeEditorImpl this$1;
                {
                    this.this$1 = tableTreeEditorImpl;
                }

                public void editorValueChanged(boolean oldValidState, boolean newValidState) {
                }

                public void cancelEditor() {
                    this.this$1.cancelEditing();
                }

                public void applyEditorValue() {
                    this.this$1.applyEditorValue();
                }
            };
        }

        public boolean isCellEditorActive() {
            return this.cellEditor != null;
        }

        private void saveEditorValue(CellEditor cellEditor, Item tableItem) {
            if (this.cellModifier != null) {
                cellEditor.isValueValid();
            }
            String property = null;
            if (this.columnProperties != null && this.columnNumber < this.columnProperties.length) {
                property = this.columnProperties[this.columnNumber];
            }
            this.cellModifier.modify(tableItem, property, cellEditor.getValue());
        }

        public void setCellEditors(CellEditor[] editors) {
            this.cellEditors = editors;
        }

        public void setCellModifier(ICellModifier modifier) {
            this.cellModifier = modifier;
        }

        public void setColumnProperties(String[] columnProperties) {
            this.columnProperties = columnProperties;
        }

        Rectangle getBounds(Item item, int columnNumber) {
            return ((TableTreeItem)item).getBounds(columnNumber);
        }

        int getColumnCount() {
            return TableTreeViewer.this.getTableTree().getTable().getColumnCount();
        }

        Item[] getSelection() {
            return TableTreeViewer.this.getTableTree().getSelection();
        }

        void setEditor(Control w, Item item, int columnNumber) {
            TableTreeViewer.this.tableTreeEditor.setEditor(w, (TableTreeItem)item, columnNumber);
        }

        void setSelection(StructuredSelection selection, boolean b) {
            TableTreeViewer.this.setSelection(selection, b);
        }

        void showSelection() {
            TableTreeViewer.this.getTableTree().showSelection();
        }

        void setLayoutData(CellEditor.LayoutData layoutData) {
            ((TableTreeViewer)TableTreeViewer.this).tableTreeEditor.horizontalAlignment = layoutData.horizontalAlignment;
            ((TableTreeViewer)TableTreeViewer.this).tableTreeEditor.grabHorizontal = layoutData.grabHorizontal;
            ((TableTreeViewer)TableTreeViewer.this).tableTreeEditor.minimumWidth = layoutData.minimumWidth;
        }

        void handleDoubleClickEvent() {
            ColumnViewer viewer = this.getViewer();
            TableTreeViewer.this.fireDoubleClick(new DoubleClickEvent(viewer, ((Viewer)viewer).getSelection()));
            TableTreeViewer.this.fireOpen(new OpenEvent(viewer, ((Viewer)viewer).getSelection()));
        }

        static /* synthetic */ int access$0(TableTreeEditorImpl tableTreeEditorImpl) {
            return tableTreeEditorImpl.doubleClickExpirationTime;
        }

        static /* synthetic */ MouseListener access$1(TableTreeEditorImpl tableTreeEditorImpl) {
            return tableTreeEditorImpl.mouseListener;
        }
    }
}

