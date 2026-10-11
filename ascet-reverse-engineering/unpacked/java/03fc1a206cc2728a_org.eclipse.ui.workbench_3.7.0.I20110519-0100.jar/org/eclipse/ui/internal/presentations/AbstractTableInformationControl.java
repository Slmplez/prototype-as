/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.viewers.ILabelProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerFilter
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.ModifyEvent
 *  org.eclipse.swt.events.ModifyListener
 *  org.eclipse.swt.events.MouseAdapter
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.SelectionAdapter
 *  org.eclipse.swt.events.SelectionEvent
 *  org.eclipse.swt.events.SelectionListener
 *  org.eclipse.swt.events.TraverseEvent
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.FontMetrics
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Item
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Table
 *  org.eclipse.swt.widgets.TableItem
 *  org.eclipse.swt.widgets.Text
 */
package org.eclipse.ui.internal.presentations;

import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.viewers.ILabelProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerFilter;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.ModifyEvent;
import org.eclipse.swt.events.ModifyListener;
import org.eclipse.swt.events.MouseAdapter;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TraverseEvent;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.FontMetrics;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.misc.StringMatcher;
import org.eclipse.ui.internal.presentations.defaultpresentation.DefaultTabItem;

public abstract class AbstractTableInformationControl {
    private static final int BORDER = 1;
    private static final int RIGHT_MARGIN = 3;
    private Shell fShell;
    protected Composite fComposite;
    private Text fFilterText;
    private TableViewer fTableViewer;
    private StringMatcher fStringMatcher;

    public AbstractTableInformationControl(Shell parent, int shellStyle, int controlStyle) {
        this.fShell = new Shell(parent, shellStyle);
        Display display = this.fShell.getDisplay();
        this.fShell.setBackground(display.getSystemColor(2));
        this.fComposite = new Composite((Composite)this.fShell, 16);
        GridLayout layout = new GridLayout(1, false);
        this.fComposite.setLayout((Layout)layout);
        this.createFilterText(this.fComposite);
        this.fTableViewer = this.createTableViewer(this.fComposite, controlStyle);
        final Table table = this.fTableViewer.getTable();
        table.addKeyListener(new KeyListener(){

            public void keyPressed(KeyEvent e) {
                switch (e.keyCode) {
                    case 27: {
                        AbstractTableInformationControl.this.dispose();
                        break;
                    }
                    case 127: {
                        AbstractTableInformationControl.this.removeSelectedItems();
                        e.character = '\u0000';
                        e.doit = false;
                        break;
                    }
                    case 0x1000001: {
                        if (table.getSelectionIndex() != 0) break;
                        AbstractTableInformationControl.this.fFilterText.setFocus();
                        break;
                    }
                    case 0x1000002: {
                        if (table.getSelectionIndex() != table.getItemCount() - 1) break;
                        AbstractTableInformationControl.this.fFilterText.setFocus();
                    }
                }
            }

            public void keyReleased(KeyEvent e) {
            }
        });
        table.addSelectionListener(new SelectionListener(){

            public void widgetSelected(SelectionEvent e) {
            }

            public void widgetDefaultSelected(SelectionEvent e) {
                AbstractTableInformationControl.this.gotoSelectedElement();
            }
        });
        final int ignoreEventCount = Platform.getWS().equals("gtk") ? 4 : 1;
        table.addMouseMoveListener(new MouseMoveListener(){
            TableItem fLastItem = null;
            int lastY = 0;
            int itemHeightdiv4;
            int tableHeight;
            Point tableLoc;
            int divCount;
            {
                this.itemHeightdiv4 = table2.getItemHeight() / 4;
                this.tableHeight = table2.getBounds().height;
                this.tableLoc = table2.toDisplay(0, 0);
                this.divCount = 0;
            }

            public void mouseMove(MouseEvent e) {
                if (this.divCount == ignoreEventCount) {
                    this.divCount = 0;
                }
                if (table.equals(e.getSource()) & ++this.divCount == ignoreEventCount) {
                    TableItem o;
                    if (this.fLastItem == null ^ (o = table.getItem(new Point(e.x, e.y))) == null) {
                        table.setCursor(o == null ? null : table.getDisplay().getSystemCursor(21));
                    }
                    if (o instanceof TableItem && this.lastY != e.y) {
                        Item item;
                        this.lastY = e.y;
                        if (!o.equals(this.fLastItem)) {
                            this.fLastItem = o;
                            table.setSelection(new TableItem[]{this.fLastItem});
                        } else if (e.y < this.itemHeightdiv4) {
                            Item item2 = AbstractTableInformationControl.this.fTableViewer.scrollUp(e.x + this.tableLoc.x, e.y + this.tableLoc.y);
                            if (item2 instanceof TableItem) {
                                this.fLastItem = (TableItem)item2;
                                table.setSelection(new TableItem[]{this.fLastItem});
                            }
                        } else if (e.y > this.tableHeight - this.itemHeightdiv4 && (item = AbstractTableInformationControl.this.fTableViewer.scrollDown(e.x + this.tableLoc.x, e.y + this.tableLoc.y)) instanceof TableItem) {
                            this.fLastItem = (TableItem)item;
                            table.setSelection(new TableItem[]{this.fLastItem});
                        }
                    } else if (o == null) {
                        this.fLastItem = null;
                    }
                }
            }
        });
        table.addMouseListener((MouseListener)new MouseAdapter(){

            public void mouseUp(MouseEvent e) {
                TableItem tItem;
                if (table.getSelectionCount() < 1) {
                    return;
                }
                if (e.button == 1 && table.equals(e.getSource())) {
                    TableItem o = table.getItem(new Point(e.x, e.y));
                    TableItem selection = table.getSelection()[0];
                    if (selection.equals(o)) {
                        AbstractTableInformationControl.this.gotoSelectedElement();
                    }
                }
                if (e.button == 3 && (tItem = AbstractTableInformationControl.this.fTableViewer.getTable().getItem(new Point(e.x, e.y))) != null) {
                    Menu menu = new Menu((Control)AbstractTableInformationControl.this.fTableViewer.getTable());
                    MenuItem mItem = new MenuItem(menu, 0);
                    mItem.setText(WorkbenchMessages.PartPane_close);
                    mItem.addSelectionListener((SelectionListener)new SelectionAdapter(this){
                        final /* synthetic */ 4 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void widgetSelected(SelectionEvent selectionEvent) {
                            4.access$0(this.this$1).removeSelectedItems();
                        }
                    });
                    menu.setVisible(true);
                }
            }

            static /* synthetic */ AbstractTableInformationControl access$0(4 var0) {
                return var0.AbstractTableInformationControl.this;
            }
        });
        this.fShell.addTraverseListener(new TraverseListener(){

            public void keyTraversed(TraverseEvent e) {
                switch (e.detail) {
                    case 512: {
                        e.detail = 0;
                        e.doit = true;
                        int n = table.getItemCount();
                        if (n == 0) {
                            return;
                        }
                        int i = table.getSelectionIndex() + 1;
                        if (i >= n) {
                            i = 0;
                        }
                        table.setSelection(i);
                        break;
                    }
                    case 256: {
                        e.detail = 0;
                        e.doit = true;
                        int n = table.getItemCount();
                        if (n == 0) {
                            return;
                        }
                        int i = table.getSelectionIndex() - 1;
                        if (i < 0) {
                            i = n - 1;
                        }
                        table.setSelection(i);
                    }
                }
            }
        });
        int border = (shellStyle & 8) == 0 ? 0 : 1;
        this.fShell.setLayout((Layout)new BorderFillLayout(border));
        this.setInfoSystemColor();
        this.installFilter();
    }

    protected void removeSelectedItems() {
        int selInd = this.fTableViewer.getTable().getSelectionIndex();
        if (this.deleteSelectedElements()) {
            return;
        }
        this.fTableViewer.refresh();
        if (selInd >= this.fTableViewer.getTable().getItemCount()) {
            selInd = this.fTableViewer.getTable().getItemCount() - 1;
        }
        if (selInd >= 0) {
            this.fTableViewer.getTable().setSelection(selInd);
        }
    }

    protected abstract TableViewer createTableViewer(Composite var1, int var2);

    public TableViewer getTableViewer() {
        return this.fTableViewer;
    }

    protected Text createFilterText(Composite parent) {
        this.fFilterText = new Text(parent, 0);
        GridData data = new GridData();
        GC gc = new GC((Drawable)parent);
        gc.setFont(parent.getFont());
        FontMetrics fontMetrics = gc.getFontMetrics();
        gc.dispose();
        data.heightHint = Dialog.convertHeightInCharsToPixels((FontMetrics)fontMetrics, (int)1);
        data.horizontalAlignment = 4;
        data.verticalAlignment = 1;
        this.fFilterText.setLayoutData((Object)data);
        this.fFilterText.addKeyListener(new KeyListener(){

            public void keyPressed(KeyEvent e) {
                switch (e.keyCode) {
                    case 13: 
                    case 0x1000050: {
                        AbstractTableInformationControl.this.gotoSelectedElement();
                        break;
                    }
                    case 0x1000002: {
                        AbstractTableInformationControl.this.fTableViewer.getTable().setFocus();
                        AbstractTableInformationControl.this.fTableViewer.getTable().setSelection(0);
                        break;
                    }
                    case 0x1000001: {
                        AbstractTableInformationControl.this.fTableViewer.getTable().setFocus();
                        AbstractTableInformationControl.this.fTableViewer.getTable().setSelection(AbstractTableInformationControl.this.fTableViewer.getTable().getItemCount() - 1);
                        break;
                    }
                    case 27: {
                        AbstractTableInformationControl.this.dispose();
                    }
                }
            }

            public void keyReleased(KeyEvent e) {
            }
        });
        Label separator = new Label(parent, 259);
        separator.setLayoutData((Object)new GridData(768));
        return this.fFilterText;
    }

    private void setInfoSystemColor() {
        Display display = this.fShell.getDisplay();
        this.setForegroundColor(display.getSystemColor(28));
        this.setBackgroundColor(display.getSystemColor(29));
    }

    private void installFilter() {
        this.fFilterText.setText("");
        this.fFilterText.addModifyListener(new ModifyListener(){

            public void modifyText(ModifyEvent e) {
                String text = ((Text)e.widget).getText();
                int length = text.length();
                if (length > 0 && text.charAt(length - 1) != '*') {
                    text = String.valueOf(text) + '*';
                }
                AbstractTableInformationControl.this.setMatcherString(text);
            }
        });
    }

    protected void stringMatcherUpdated() {
        this.fTableViewer.getControl().setRedraw(false);
        this.fTableViewer.refresh();
        this.selectFirstMatch();
        this.fTableViewer.getControl().setRedraw(true);
    }

    protected void setMatcherString(String pattern) {
        if (pattern.length() == 0) {
            this.fStringMatcher = null;
        } else {
            boolean ignoreCase = pattern.toLowerCase().equals(pattern);
            this.fStringMatcher = new StringMatcher(pattern, ignoreCase, false);
        }
        this.stringMatcherUpdated();
    }

    protected StringMatcher getMatcher() {
        return this.fStringMatcher;
    }

    protected Object getSelectedElement() {
        return ((IStructuredSelection)this.fTableViewer.getSelection()).getFirstElement();
    }

    protected IStructuredSelection getSelectedElements() {
        return (IStructuredSelection)this.fTableViewer.getSelection();
    }

    protected abstract void gotoSelectedElement();

    protected abstract boolean deleteSelectedElements();

    protected void selectFirstMatch() {
        Table table = this.fTableViewer.getTable();
        Object element = this.findElement(table.getItems());
        if (element != null) {
            this.fTableViewer.setSelection((ISelection)new StructuredSelection(element), true);
        } else {
            this.fTableViewer.setSelection((ISelection)StructuredSelection.EMPTY);
        }
    }

    private Object findElement(TableItem[] items) {
        ILabelProvider labelProvider = (ILabelProvider)this.fTableViewer.getLabelProvider();
        int i = 0;
        while (i < items.length) {
            Object element = items[i].getData();
            if (this.fStringMatcher == null) {
                return element;
            }
            if (element != null) {
                String label = labelProvider.getText(element);
                if (label == null) {
                    return null;
                }
                String prefix = DefaultTabItem.DIRTY_PREFIX;
                if (label.startsWith(prefix)) {
                    label = label.substring(prefix.length());
                }
                if (this.fStringMatcher.match(label)) {
                    return element;
                }
            }
            ++i;
        }
        return null;
    }

    public abstract void setInput(Object var1);

    protected void inputChanged(Object newInput, Object newSelection) {
        int tableHeight;
        this.fFilterText.setText("");
        this.fTableViewer.setInput(newInput);
        this.selectFirstMatch();
        Table viewerTable = this.fTableViewer.getTable();
        Point tableSize = viewerTable.computeSize(-1, -1);
        int tableMaxHeight = this.fComposite.getDisplay().getBounds().height / 2;
        ((GridData)viewerTable.getLayoutData()).heightHint = tableHeight = tableSize.y <= tableMaxHeight ? tableSize.y - viewerTable.getItemHeight() - viewerTable.getItemHeight() / 2 : tableMaxHeight;
        Point fCompSize = this.fComposite.computeSize(-1, -1);
        this.fComposite.setSize(fCompSize);
        this.fComposite.getShell().setSize(fCompSize);
    }

    public void setVisible(boolean visible) {
        this.fShell.setVisible(visible);
    }

    public void dispose() {
        if (this.fShell != null) {
            if (!this.fShell.isDisposed()) {
                this.fShell.dispose();
            }
            this.fShell = null;
            this.fTableViewer = null;
            this.fComposite = null;
            this.fFilterText = null;
        }
    }

    public boolean hasContents() {
        return this.fTableViewer != null && this.fTableViewer.getInput() != null;
    }

    public void setSizeConstraints(int maxWidth, int maxHeight) {
    }

    public Point computeSizeHint() {
        return this.fShell.computeSize(-1, -1);
    }

    public void setLocation(Point location) {
        Rectangle trim = this.fShell.computeTrim(0, 0, 0, 0);
        Point textLocation = this.fComposite.getLocation();
        location.x += trim.x - textLocation.x;
        location.y += trim.y - textLocation.y;
        this.fShell.setLocation(location);
    }

    public void setSize(int width, int height) {
        this.fShell.setSize(width, height);
    }

    public void addDisposeListener(DisposeListener listener) {
        this.fShell.addDisposeListener(listener);
    }

    public void removeDisposeListener(DisposeListener listener) {
        this.fShell.removeDisposeListener(listener);
    }

    public void setForegroundColor(Color foreground) {
        this.fTableViewer.getTable().setForeground(foreground);
        this.fFilterText.setForeground(foreground);
        this.fComposite.setForeground(foreground);
    }

    public void setBackgroundColor(Color background) {
        this.fTableViewer.getTable().setBackground(background);
        this.fFilterText.setBackground(background);
        this.fComposite.setBackground(background);
    }

    public boolean isFocusControl() {
        return this.fTableViewer.getControl().isFocusControl() || this.fFilterText.isFocusControl();
    }

    public void setFocus() {
        this.fShell.forceFocus();
        this.fFilterText.setFocus();
    }

    public void addFocusListener(FocusListener listener) {
        this.fShell.addFocusListener(listener);
    }

    public void removeFocusListener(FocusListener listener) {
        this.fShell.removeFocusListener(listener);
    }

    private static class BorderFillLayout
    extends Layout {
        final int fBorderSize;

        public BorderFillLayout(int borderSize) {
            if (borderSize < 0) {
                throw new IllegalArgumentException();
            }
            this.fBorderSize = borderSize;
        }

        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            Control[] children = composite.getChildren();
            Point minSize = new Point(0, 0);
            if (children != null) {
                int i = 0;
                while (i < children.length) {
                    Point size = children[i].computeSize(wHint, hHint, flushCache);
                    minSize.x = Math.max(minSize.x, size.x);
                    minSize.y = Math.max(minSize.y, size.y);
                    ++i;
                }
            }
            minSize.x += this.fBorderSize * 2 + 3;
            minSize.y += this.fBorderSize * 2;
            return minSize;
        }

        protected void layout(Composite composite, boolean flushCache) {
            Control[] children = composite.getChildren();
            Point minSize = new Point(composite.getClientArea().width, composite.getClientArea().height);
            if (children != null) {
                int i = 0;
                while (i < children.length) {
                    Control child = children[i];
                    child.setSize(minSize.x - this.fBorderSize * 2, minSize.y - this.fBorderSize * 2);
                    child.setLocation(this.fBorderSize, this.fBorderSize);
                    ++i;
                }
            }
        }
    }

    protected class NamePatternFilter
    extends ViewerFilter {
        public boolean select(Viewer viewer, Object parentElement, Object element) {
            StringMatcher matcher = AbstractTableInformationControl.this.getMatcher();
            if (matcher == null || !(viewer instanceof TableViewer)) {
                return true;
            }
            TableViewer tableViewer = (TableViewer)viewer;
            String matchName = ((ILabelProvider)tableViewer.getLabelProvider()).getText(element);
            if (matchName == null) {
                return false;
            }
            String prefix = DefaultTabItem.DIRTY_PREFIX;
            if (matchName.startsWith(prefix)) {
                matchName = matchName.substring(prefix.length());
            }
            return matchName != null && matcher.match(matchName);
        }
    }
}

