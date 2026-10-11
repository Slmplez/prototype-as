/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.TableTreeItem;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.events.TreeListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;
import org.eclipse.swt.widgets.TypedListener;

public class TableTree
extends Composite {
    Table table;
    TableTreeItem[] items = EMPTY_ITEMS;
    Image plusImage;
    Image minusImage;
    Image sizeImage;
    Listener listener;
    boolean inDispose = false;
    static final TableTreeItem[] EMPTY_ITEMS = new TableTreeItem[0];
    static final String[] EMPTY_TEXTS = new String[0];
    static final Image[] EMPTY_IMAGES = new Image[0];
    static final String ITEMID = "TableTreeItemID";

    public TableTree(Composite parent, int style) {
        super(parent, TableTree.checkStyle(style));
        this.table = new Table(this, style);
        Listener tableListener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 3: {
                        TableTree.this.onMouseDown(e);
                        break;
                    }
                    case 13: {
                        TableTree.this.onSelection(e);
                        break;
                    }
                    case 14: {
                        TableTree.this.onSelection(e);
                        break;
                    }
                    case 1: {
                        TableTree.this.onKeyDown(e);
                    }
                }
            }
        };
        int[] tableEvents = new int[]{3, 13, 14, 1};
        int i = 0;
        while (i < tableEvents.length) {
            this.table.addListener(tableEvents[i], tableListener);
            ++i;
        }
        this.listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 12: {
                        TableTree.this.onDispose(e);
                        break;
                    }
                    case 11: {
                        TableTree.this.onResize(e);
                        break;
                    }
                    case 15: {
                        TableTree.this.onFocusIn(e);
                    }
                }
            }
        };
        int[] events = new int[]{12, 11, 15};
        int i2 = 0;
        while (i2 < events.length) {
            this.addListener(events[i2], this.listener);
            ++i2;
        }
    }

    int addItem(TableTreeItem item, int index) {
        if (index < 0 || index > this.items.length) {
            SWT.error(5);
        }
        TableTreeItem[] newItems = new TableTreeItem[this.items.length + 1];
        System.arraycopy(this.items, 0, newItems, 0, index);
        newItems[index] = item;
        System.arraycopy(this.items, index, newItems, index + 1, this.items.length - index);
        this.items = newItems;
        if (index == this.items.length - 1) {
            return this.table.getItemCount();
        }
        return this.table.indexOf(this.items[index + 1].tableItem);
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(13, typedListener);
        this.addListener(14, typedListener);
    }

    public void addTreeListener(TreeListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(17, typedListener);
        this.addListener(18, typedListener);
    }

    private static int checkStyle(int style) {
        int mask = 0x6000000;
        return style &= mask;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        return this.table.computeSize(wHint, hHint, changed);
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        return this.table.computeTrim(x, y, width, height);
    }

    public void deselectAll() {
        this.checkWidget();
        this.table.deselectAll();
    }

    void expandItem(TableTreeItem item) {
        if (item == null) {
            return;
        }
        this.expandItem(item.parentItem);
        if (!item.getVisible()) {
            item.setVisible(true);
        }
        if (!item.expanded && item.items.length > 0) {
            item.setExpanded(true);
            Event event = new Event();
            event.item = item;
            this.notifyListeners(17, event);
        }
    }

    public Color getBackground() {
        return this.table.getBackground();
    }

    public Rectangle getClientArea() {
        return this.table.getClientArea();
    }

    public Color getForeground() {
        return this.table.getForeground();
    }

    public Font getFont() {
        return this.table.getFont();
    }

    public int getItemCount() {
        return this.items.length;
    }

    public int getItemHeight() {
        this.checkWidget();
        return this.table.getItemHeight();
    }

    public TableTreeItem[] getItems() {
        TableTreeItem[] newItems = new TableTreeItem[this.items.length];
        System.arraycopy(this.items, 0, newItems, 0, this.items.length);
        return newItems;
    }

    public TableTreeItem[] getSelection() {
        this.checkWidget();
        TableItem[] selection = this.table.getSelection();
        TableTreeItem[] result = new TableTreeItem[selection.length];
        int i = 0;
        while (i < selection.length) {
            result[i] = (TableTreeItem)selection[i].getData(ITEMID);
            ++i;
        }
        return result;
    }

    public int getSelectionCount() {
        this.checkWidget();
        return this.table.getSelectionCount();
    }

    public int getStyle() {
        this.checkWidget();
        return this.table.getStyle();
    }

    public Table getTable() {
        return this.table;
    }

    void createImages() {
        int itemHeight = this.sizeImage.getBounds().height;
        int indent = Math.min(6, (itemHeight - 9) / 2);
        indent = Math.max(0, indent);
        int size = Math.max(10, itemHeight - 2 * indent);
        size = (size + 1) / 2 * 2;
        int midpoint = indent + size / 2;
        Color foreground = this.getForeground();
        Color plusMinus = this.getDisplay().getSystemColor(18);
        Color background = this.getBackground();
        PaletteData palette = new PaletteData(new RGB[]{foreground.getRGB(), background.getRGB(), plusMinus.getRGB()});
        ImageData imageData = new ImageData(itemHeight, itemHeight, 4, palette);
        imageData.transparentPixel = 1;
        this.plusImage = new Image((Device)this.getDisplay(), imageData);
        GC gc = new GC(this.plusImage);
        gc.setBackground(background);
        gc.fillRectangle(0, 0, itemHeight, itemHeight);
        gc.setForeground(plusMinus);
        gc.drawRectangle(indent, indent, size, size);
        gc.setForeground(foreground);
        gc.drawLine(midpoint, indent + 2, midpoint, indent + size - 2);
        gc.drawLine(indent + 2, midpoint, indent + size - 2, midpoint);
        gc.dispose();
        palette = new PaletteData(new RGB[]{foreground.getRGB(), background.getRGB(), plusMinus.getRGB()});
        imageData = new ImageData(itemHeight, itemHeight, 4, palette);
        imageData.transparentPixel = 1;
        this.minusImage = new Image((Device)this.getDisplay(), imageData);
        gc = new GC(this.minusImage);
        gc.setBackground(background);
        gc.fillRectangle(0, 0, itemHeight, itemHeight);
        gc.setForeground(plusMinus);
        gc.drawRectangle(indent, indent, size, size);
        gc.setForeground(foreground);
        gc.drawLine(indent + 2, midpoint, indent + size - 2, midpoint);
        gc.dispose();
    }

    Image getPlusImage() {
        if (this.plusImage == null) {
            this.createImages();
        }
        return this.plusImage;
    }

    Image getMinusImage() {
        if (this.minusImage == null) {
            this.createImages();
        }
        return this.minusImage;
    }

    public int indexOf(TableTreeItem item) {
        int i = 0;
        while (i < this.items.length) {
            if (item == this.items[i]) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    void onDispose(Event e) {
        this.removeListener(12, this.listener);
        this.notifyListeners(12, e);
        e.type = 0;
        this.inDispose = true;
        int i = 0;
        while (i < this.items.length) {
            this.items[i].dispose();
            ++i;
        }
        this.inDispose = false;
        if (this.plusImage != null) {
            this.plusImage.dispose();
        }
        if (this.minusImage != null) {
            this.minusImage.dispose();
        }
        if (this.sizeImage != null) {
            this.sizeImage.dispose();
        }
        this.sizeImage = null;
        this.minusImage = null;
        this.plusImage = null;
    }

    void onResize(Event e) {
        Point size = this.getSize();
        this.table.setBounds(0, 0, size.x, size.y);
    }

    void onSelection(Event e) {
        Event event = new Event();
        TableItem tableItem = (TableItem)e.item;
        TableTreeItem item = this.getItem(tableItem);
        event.item = item;
        if (e.type == 13 && e.detail == 32 && item != null) {
            event.detail = 32;
            item.checked = tableItem.getChecked();
        }
        this.notifyListeners(e.type, event);
    }

    public TableTreeItem getItem(int index) {
        this.checkWidget();
        int count = this.items.length;
        if (index < 0 || index >= count) {
            SWT.error(6);
        }
        return this.items[index];
    }

    public TableTreeItem getItem(Point point) {
        this.checkWidget();
        TableItem item = this.table.getItem(point);
        if (item == null) {
            return null;
        }
        return this.getItem(item);
    }

    TableTreeItem getItem(TableItem tableItem) {
        if (tableItem == null) {
            return null;
        }
        int i = 0;
        while (i < this.items.length) {
            TableTreeItem item = this.items[i].getItem(tableItem);
            if (item != null) {
                return item;
            }
            ++i;
        }
        return null;
    }

    void onFocusIn(Event e) {
        this.table.setFocus();
    }

    void onKeyDown(Event e) {
        TableTreeItem[] selection = this.getSelection();
        if (selection.length == 0) {
            return;
        }
        TableTreeItem item = selection[0];
        int type = 0;
        if (e.keyCode == 0x1000004 || e.keyCode == 0x1000003) {
            int trailKey;
            int n = trailKey = (this.getStyle() & 0x8000000) != 0 ? 0x1000003 : 0x1000004;
            if (e.keyCode == trailKey) {
                if (item.getItemCount() == 0) {
                    return;
                }
                if (item.getExpanded()) {
                    TableTreeItem newSelection = item.getItems()[0];
                    this.table.setSelection(new TableItem[]{newSelection.tableItem});
                    this.showItem(newSelection);
                    type = 13;
                } else {
                    item.setExpanded(true);
                    type = 17;
                }
            } else if (item.getExpanded()) {
                item.setExpanded(false);
                type = 18;
            } else {
                TableTreeItem parent = item.getParentItem();
                if (parent != null) {
                    int index = parent.indexOf(item);
                    if (index != 0) {
                        return;
                    }
                    this.table.setSelection(new TableItem[]{parent.tableItem});
                    type = 13;
                }
            }
        }
        if (e.character == '*') {
            item.expandAll(true);
        }
        if (e.character == '-' && item.getExpanded()) {
            item.setExpanded(false);
            type = 18;
        }
        if (e.character == '+' && item.getItemCount() > 0 && !item.getExpanded()) {
            item.setExpanded(true);
            type = 17;
        }
        if (type == 0) {
            return;
        }
        Event event = new Event();
        event.item = item;
        this.notifyListeners(type, event);
    }

    void onMouseDown(Event event) {
        TableItem[] items = this.table.getItems();
        int i = 0;
        while (i < items.length) {
            Rectangle rect = items[i].getImageBounds(0);
            if (rect.contains(event.x, event.y)) {
                TableTreeItem item = (TableTreeItem)items[i].getData(ITEMID);
                event = new Event();
                event.item = item;
                item.setExpanded(!item.getExpanded());
                if (item.getExpanded()) {
                    this.notifyListeners(17, event);
                } else {
                    this.notifyListeners(18, event);
                }
                return;
            }
            ++i;
        }
    }

    public void removeAll() {
        this.checkWidget();
        this.setRedraw(false);
        int i = this.items.length - 1;
        while (i >= 0) {
            this.items[i].dispose();
            --i;
        }
        this.items = EMPTY_ITEMS;
        this.setRedraw(true);
    }

    void removeItem(TableTreeItem item) {
        int index = 0;
        while (index < this.items.length && this.items[index] != item) {
            ++index;
        }
        if (index == this.items.length) {
            return;
        }
        TableTreeItem[] newItems = new TableTreeItem[this.items.length - 1];
        System.arraycopy(this.items, 0, newItems, 0, index);
        System.arraycopy(this.items, index + 1, newItems, index, this.items.length - index - 1);
        this.items = newItems;
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(13, listener);
        this.removeListener(14, listener);
    }

    public void removeTreeListener(TreeListener listener) {
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        this.removeListener(17, listener);
        this.removeListener(18, listener);
    }

    public void selectAll() {
        this.checkWidget();
        this.table.selectAll();
    }

    public void setBackground(Color color) {
        super.setBackground(color);
        this.table.setBackground(color);
        if (this.sizeImage != null) {
            GC gc = new GC(this.sizeImage);
            gc.setBackground(this.getBackground());
            Rectangle size = this.sizeImage.getBounds();
            gc.fillRectangle(size);
            gc.dispose();
        }
    }

    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        this.table.setEnabled(enabled);
    }

    public void setFont(Font font) {
        super.setFont(font);
        this.table.setFont(font);
    }

    public void setForeground(Color color) {
        super.setForeground(color);
        this.table.setForeground(color);
    }

    public void setMenu(Menu menu) {
        super.setMenu(menu);
        this.table.setMenu(menu);
    }

    public void setSelection(TableTreeItem[] items) {
        int length;
        this.checkWidget();
        if (items == null) {
            SWT.error(4);
        }
        if ((length = items.length) == 0 || (this.table.getStyle() & 4) != 0 && length > 1) {
            this.deselectAll();
            return;
        }
        TableItem[] tableItems = new TableItem[length];
        int i = 0;
        while (i < length) {
            if (items[i] == null) {
                SWT.error(4);
            }
            if (!items[i].getVisible()) {
                this.expandItem(items[i]);
            }
            tableItems[i] = items[i].tableItem;
            ++i;
        }
        this.table.setSelection(tableItems);
    }

    public void setToolTipText(String string) {
        super.setToolTipText(string);
        this.table.setToolTipText(string);
    }

    public void showItem(TableTreeItem item) {
        this.checkWidget();
        if (item == null) {
            SWT.error(4);
        }
        if (!item.getVisible()) {
            this.expandItem(item);
        }
        TableItem tableItem = item.tableItem;
        this.table.showItem(tableItem);
    }

    public void showSelection() {
        this.checkWidget();
        this.table.showSelection();
    }
}

