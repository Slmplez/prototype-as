/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

import org.eclipse.swt.SWT;
import org.eclipse.swt.custom.TableTree;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.TableItem;

public class TableTreeItem
extends Item {
    TableItem tableItem;
    TableTree parent;
    TableTreeItem parentItem;
    TableTreeItem[] items = TableTree.EMPTY_ITEMS;
    String[] texts = TableTree.EMPTY_TEXTS;
    Image[] images = TableTree.EMPTY_IMAGES;
    Color background;
    Color foreground;
    Font font;
    boolean expanded;
    boolean checked;
    boolean grayed;

    public TableTreeItem(TableTree parent, int style) {
        this(parent, style, parent.getItemCount());
    }

    public TableTreeItem(TableTree parent, int style, int index) {
        this(parent, null, style, index);
    }

    public TableTreeItem(TableTreeItem parent, int style) {
        this(parent, style, parent.getItemCount());
    }

    public TableTreeItem(TableTreeItem parent, int style, int index) {
        this(parent.getParent(), parent, style, index);
    }

    TableTreeItem(TableTree parent, TableTreeItem parentItem, int style, int index) {
        super(parent, style);
        this.parent = parent;
        this.parentItem = parentItem;
        if (parentItem == null) {
            int tableIndex = parent.addItem(this, index);
            this.tableItem = new TableItem(parent.getTable(), style, tableIndex);
            this.tableItem.setData("TableTreeItemID", this);
            this.addCheck();
            if (parent.sizeImage == null) {
                int itemHeight = parent.getItemHeight();
                parent.sizeImage = new Image((Device)parent.getDisplay(), itemHeight, itemHeight);
                GC gc = new GC(parent.sizeImage);
                gc.setBackground(parent.getBackground());
                gc.fillRectangle(0, 0, itemHeight, itemHeight);
                gc.dispose();
                this.tableItem.setImage(0, parent.sizeImage);
            }
        } else {
            parentItem.addItem(this, index);
        }
    }

    void addCheck() {
        Table table = this.parent.getTable();
        if ((table.getStyle() & 0x20) == 0) {
            return;
        }
        this.tableItem.setChecked(this.checked);
        this.tableItem.setGrayed(this.grayed);
    }

    void addItem(TableTreeItem item, int index) {
        if (item == null) {
            SWT.error(4);
        }
        if (index < 0 || index > this.items.length) {
            SWT.error(5);
        }
        if (this.items.length == 0 && index == 0 && this.tableItem != null) {
            Image image = this.expanded ? this.parent.getMinusImage() : this.parent.getPlusImage();
            this.tableItem.setImage(0, image);
        }
        TableTreeItem[] newItems = new TableTreeItem[this.items.length + 1];
        System.arraycopy(this.items, 0, newItems, 0, index);
        newItems[index] = item;
        System.arraycopy(this.items, index, newItems, index + 1, this.items.length - index);
        this.items = newItems;
        if (this.expanded) {
            item.setVisible(true);
        }
    }

    public Color getBackground() {
        this.checkWidget();
        return this.background == null ? this.parent.getBackground() : this.background;
    }

    public Rectangle getBounds(int index) {
        this.checkWidget();
        if (this.tableItem != null) {
            return this.tableItem.getBounds(index);
        }
        return new Rectangle(0, 0, 0, 0);
    }

    public boolean getChecked() {
        this.checkWidget();
        if (this.tableItem == null) {
            return this.checked;
        }
        return this.tableItem.getChecked();
    }

    public boolean getGrayed() {
        this.checkWidget();
        if (this.tableItem == null) {
            return this.grayed;
        }
        return this.tableItem.getGrayed();
    }

    public boolean getExpanded() {
        return this.expanded;
    }

    public Font getFont() {
        this.checkWidget();
        return this.font == null ? this.parent.getFont() : this.font;
    }

    public Color getForeground() {
        this.checkWidget();
        return this.foreground == null ? this.parent.getForeground() : this.foreground;
    }

    public Image getImage() {
        this.checkWidget();
        return this.getImage(0);
    }

    public Image getImage(int index) {
        if (index > 0 && index < this.images.length) {
            return this.images[index];
        }
        return null;
    }

    int getIndent() {
        if (this.parentItem == null) {
            return 0;
        }
        return this.parentItem.getIndent() + 1;
    }

    public TableTreeItem getItem(int index) {
        this.checkWidget();
        int count = this.items.length;
        if (index < 0 || index >= count) {
            SWT.error(6);
        }
        return this.items[index];
    }

    public int getItemCount() {
        return this.items.length;
    }

    public TableTreeItem[] getItems() {
        TableTreeItem[] newItems = new TableTreeItem[this.items.length];
        System.arraycopy(this.items, 0, newItems, 0, this.items.length);
        return newItems;
    }

    TableTreeItem getItem(TableItem tableItem) {
        if (tableItem == null) {
            return null;
        }
        if (this.tableItem == tableItem) {
            return this;
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

    public TableTree getParent() {
        return this.parent;
    }

    public TableTreeItem getParentItem() {
        return this.parentItem;
    }

    public String getText() {
        this.checkWidget();
        return this.getText(0);
    }

    public String getText(int index) {
        if (index >= 0 && index < this.texts.length) {
            return this.texts[index];
        }
        return null;
    }

    boolean getVisible() {
        return this.tableItem != null;
    }

    public int indexOf(TableTreeItem item) {
        int i = 0;
        while (i < this.items.length) {
            if (this.items[i] == item) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    void expandAll(boolean notify) {
        if (this.items.length == 0) {
            return;
        }
        if (!this.expanded) {
            this.setExpanded(true);
            if (notify) {
                Event event = new Event();
                event.item = this;
                this.parent.notifyListeners(17, event);
            }
        }
        int i = 0;
        while (i < this.items.length) {
            this.items[i].expandAll(notify);
            ++i;
        }
    }

    int expandedIndexOf(TableTreeItem item) {
        int index = 0;
        int i = 0;
        while (i < this.items.length) {
            if (this.items[i] == item) {
                return index;
            }
            if (this.items[i].expanded) {
                index += this.items[i].visibleChildrenCount();
            }
            ++index;
            ++i;
        }
        return -1;
    }

    int visibleChildrenCount() {
        int count = 0;
        int i = 0;
        while (i < this.items.length) {
            if (this.items[i].getVisible()) {
                count += 1 + this.items[i].visibleChildrenCount();
            }
            ++i;
        }
        return count;
    }

    public void dispose() {
        if (this.isDisposed()) {
            return;
        }
        int i = this.items.length - 1;
        while (i >= 0) {
            this.items[i].dispose();
            --i;
        }
        super.dispose();
        if (!this.parent.inDispose) {
            if (this.parentItem != null) {
                this.parentItem.removeItem(this);
            } else {
                this.parent.removeItem(this);
            }
            if (this.tableItem != null) {
                this.tableItem.dispose();
            }
        }
        this.items = null;
        this.parentItem = null;
        this.parent = null;
        this.images = null;
        this.texts = null;
        this.tableItem = null;
        this.foreground = null;
        this.background = null;
        this.font = null;
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
        if (this.items.length == 0 && this.tableItem != null) {
            this.tableItem.setImage(0, null);
        }
    }

    public void setBackground(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        if (this.tableItem != null) {
            this.tableItem.setBackground(color);
        }
        this.background = color;
    }

    public void setChecked(boolean checked) {
        this.checkWidget();
        Table table = this.parent.getTable();
        if ((table.getStyle() & 0x20) == 0) {
            return;
        }
        if (this.tableItem != null) {
            this.tableItem.setChecked(checked);
        }
        this.checked = checked;
    }

    public void setGrayed(boolean grayed) {
        this.checkWidget();
        Table table = this.parent.getTable();
        if ((table.getStyle() & 0x20) == 0) {
            return;
        }
        if (this.tableItem != null) {
            this.tableItem.setGrayed(grayed);
        }
        this.grayed = grayed;
    }

    public void setExpanded(boolean expanded) {
        this.checkWidget();
        if (this.items.length == 0) {
            return;
        }
        if (this.expanded == expanded) {
            return;
        }
        this.expanded = expanded;
        if (this.tableItem == null) {
            return;
        }
        this.parent.setRedraw(false);
        int i = 0;
        while (i < this.items.length) {
            this.items[i].setVisible(expanded);
            ++i;
        }
        Image image = expanded ? this.parent.getMinusImage() : this.parent.getPlusImage();
        this.tableItem.setImage(0, image);
        this.parent.setRedraw(true);
    }

    public void setFont(Font font) {
        this.checkWidget();
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        if (this.tableItem != null) {
            this.tableItem.setFont(font);
        }
        this.font = font;
    }

    public void setForeground(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        if (this.tableItem != null) {
            this.tableItem.setForeground(color);
        }
        this.foreground = color;
    }

    public void setImage(int index, Image image) {
        this.checkWidget();
        int columnCount = Math.max(this.parent.getTable().getColumnCount(), 1);
        if (index <= 0 || index >= columnCount) {
            return;
        }
        if (this.images.length < columnCount) {
            Image[] newImages = new Image[columnCount];
            System.arraycopy(this.images, 0, newImages, 0, this.images.length);
            this.images = newImages;
        }
        this.images[index] = image;
        if (this.tableItem != null) {
            this.tableItem.setImage(index, image);
        }
    }

    public void setImage(Image image) {
        this.setImage(0, image);
    }

    public void setText(int index, String text) {
        this.checkWidget();
        if (text == null) {
            SWT.error(4);
        }
        int columnCount = Math.max(this.parent.getTable().getColumnCount(), 1);
        if (index < 0 || index >= columnCount) {
            return;
        }
        if (this.texts.length < columnCount) {
            String[] newTexts = new String[columnCount];
            System.arraycopy(this.texts, 0, newTexts, 0, this.texts.length);
            this.texts = newTexts;
        }
        this.texts[index] = text;
        if (this.tableItem != null) {
            this.tableItem.setText(index, text);
        }
    }

    public void setText(String string) {
        this.setText(0, string);
    }

    void setVisible(boolean show) {
        if (this.parentItem == null) {
            return;
        }
        if (this.getVisible() == show) {
            return;
        }
        if (show) {
            if (!this.parentItem.getVisible()) {
                return;
            }
            Table table = this.parent.getTable();
            int parentIndex = table.indexOf(this.parentItem.tableItem);
            int index = this.parentItem.expandedIndexOf(this) + parentIndex + 1;
            if (index < 0) {
                return;
            }
            this.tableItem = new TableItem(table, this.getStyle(), index);
            this.tableItem.setData("TableTreeItemID", this);
            this.tableItem.setImageIndent(this.getIndent());
            if (this.background != null) {
                this.tableItem.setBackground(this.background);
            }
            if (this.foreground != null) {
                this.tableItem.setForeground(this.foreground);
            }
            if (this.font != null) {
                this.tableItem.setFont(this.font);
            }
            this.addCheck();
            int columnCount = Math.max(table.getColumnCount(), 1);
            int i = 0;
            while (i < columnCount) {
                if (i < this.texts.length && this.texts[i] != null) {
                    this.setText(i, this.texts[i]);
                }
                if (i < this.images.length && this.images[i] != null) {
                    this.setImage(i, this.images[i]);
                }
                ++i;
            }
            if (this.items.length != 0) {
                if (this.expanded) {
                    this.tableItem.setImage(0, this.parent.getMinusImage());
                    i = 0;
                    int length = this.items.length;
                    while (i < length) {
                        this.items[i].setVisible(true);
                        ++i;
                    }
                } else {
                    this.tableItem.setImage(0, this.parent.getPlusImage());
                }
            }
        } else {
            int i = 0;
            int length = this.items.length;
            while (i < length) {
                this.items[i].setVisible(false);
                ++i;
            }
            this.tableItem.dispose();
            this.tableItem = null;
        }
    }
}

