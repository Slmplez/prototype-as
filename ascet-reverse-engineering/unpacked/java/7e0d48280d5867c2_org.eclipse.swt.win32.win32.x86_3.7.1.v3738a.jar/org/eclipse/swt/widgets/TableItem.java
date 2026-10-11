/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.LVITEM;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Table;

public class TableItem
extends Item {
    Table parent;
    String[] strings;
    Image[] images;
    Font font;
    Font[] cellFont;
    boolean checked;
    boolean grayed;
    boolean cached;
    int imageIndent;
    int background = -1;
    int foreground = -1;
    int[] cellBackground;
    int[] cellForeground;

    public TableItem(Table parent, int style) {
        this(parent, style, TableItem.checkNull(parent).getItemCount(), true);
    }

    public TableItem(Table parent, int style, int index) {
        this(parent, style, index, true);
    }

    TableItem(Table parent, int style, int index, boolean create) {
        super(parent, style);
        this.parent = parent;
        if (create) {
            parent.createItem(this, index);
        }
    }

    static Table checkNull(Table control) {
        if (control == null) {
            SWT.error(4);
        }
        return control;
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    void clear() {
        this.text = "";
        this.image = null;
        this.strings = null;
        this.images = null;
        this.imageIndent = 0;
        this.grayed = false;
        this.checked = false;
        this.font = null;
        this.foreground = -1;
        this.background = -1;
        this.cellFont = null;
        this.cellForeground = null;
        this.cellBackground = null;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = false;
        }
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    int fontHandle(int index) {
        if (this.cellFont != null && this.cellFont[index] != null) {
            return this.cellFont[index].handle;
        }
        if (this.font != null) {
            return this.font.handle;
        }
        return -1;
    }

    public Color getBackground() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if (this.background == -1) {
            return this.parent.getBackground();
        }
        return Color.win32_new(this.display, this.background);
    }

    public Color getBackground(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return this.getBackground();
        }
        int pixel = this.cellBackground != null ? this.cellBackground[index] : -1;
        return pixel == -1 ? this.getBackground() : Color.win32_new(this.display, pixel);
    }

    public Rectangle getBounds() {
        int itemIndex;
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((itemIndex = this.parent.indexOf(this)) == -1) {
            return new Rectangle(0, 0, 0, 0);
        }
        RECT rect = this.getBounds(itemIndex, 0, true, false, false);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    public Rectangle getBounds(int index) {
        int itemIndex;
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((itemIndex = this.parent.indexOf(this)) == -1) {
            return new Rectangle(0, 0, 0, 0);
        }
        RECT rect = this.getBounds(itemIndex, index, true, true, true);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    RECT getBounds(int row, int column, boolean getText, boolean getImage, boolean fullText) {
        return this.getBounds(row, column, getText, getImage, fullText, false, 0);
    }

    RECT getBounds(int row, int column, boolean getText, boolean getImage, boolean fullText, boolean fullImage, int hDC) {
        int gridWidth;
        if (!getText && !getImage) {
            return new RECT();
        }
        int columnCount = this.parent.getColumnCount();
        if (column < 0 || column >= Math.max(1, columnCount)) {
            return new RECT();
        }
        if (this.parent.fixScrollWidth) {
            this.parent.setScrollWidth(null, true);
        }
        RECT rect = new RECT();
        int hwnd = this.parent.handle;
        int bits = OS.SendMessage(hwnd, 4151, 0, 0);
        if (column == 0 && (bits & 0x20) == 0) {
            int code;
            if (this.parent.explorerTheme) {
                rect.left = 1;
                this.parent.ignoreCustomDraw = true;
                code = OS.SendMessage(hwnd, 4110, row, rect);
                this.parent.ignoreCustomDraw = false;
                if (code == 0) {
                    return new RECT();
                }
                if (getText) {
                    int width = 0;
                    int hFont = this.fontHandle(column);
                    if (hFont == -1 && hDC == 0) {
                        TCHAR buffer = new TCHAR(this.parent.getCodePage(), this.text, true);
                        width = OS.SendMessage(hwnd, OS.LVM_GETSTRINGWIDTH, 0, buffer);
                    } else {
                        TCHAR buffer = new TCHAR(this.parent.getCodePage(), this.text, false);
                        int textDC = hDC != 0 ? hDC : OS.GetDC(hwnd);
                        int oldFont = -1;
                        if (hDC == 0) {
                            if (hFont == -1) {
                                hFont = OS.SendMessage(hwnd, 49, 0, 0);
                            }
                            oldFont = OS.SelectObject(textDC, hFont);
                        }
                        RECT textRect = new RECT();
                        int flags = 3104;
                        OS.DrawText(textDC, buffer, buffer.length(), textRect, flags);
                        width = textRect.right - textRect.left;
                        if (hDC == 0) {
                            if (oldFont != -1) {
                                OS.SelectObject(textDC, oldFont);
                            }
                            OS.ReleaseDC(hwnd, textDC);
                        }
                    }
                    if (!getImage) {
                        rect.left = rect.right;
                    }
                    rect.right += width + 8;
                }
            } else if (getText) {
                rect.left = 3;
                this.parent.ignoreCustomDraw = true;
                code = OS.SendMessage(hwnd, 4110, row, rect);
                this.parent.ignoreCustomDraw = false;
                if (code == 0) {
                    return new RECT();
                }
                if (!getImage) {
                    RECT iconRect = new RECT();
                    iconRect.left = 1;
                    this.parent.ignoreCustomDraw = true;
                    code = OS.SendMessage(hwnd, 4110, row, iconRect);
                    this.parent.ignoreCustomDraw = false;
                    if (code != 0) {
                        rect.left = iconRect.right;
                    }
                }
            } else {
                rect.left = 1;
                this.parent.ignoreCustomDraw = true;
                code = OS.SendMessage(hwnd, 4110, row, rect);
                this.parent.ignoreCustomDraw = false;
                if (code == 0) {
                    return new RECT();
                }
            }
            if (fullText || fullImage) {
                RECT headerRect = new RECT();
                int hwndHeader = OS.SendMessage(hwnd, 4127, 0, 0);
                OS.SendMessage(hwndHeader, 4615, 0, headerRect);
                OS.MapWindowPoints(hwndHeader, hwnd, headerRect, 2);
                if (getText && fullText) {
                    rect.right = headerRect.right;
                }
                if (getImage && fullImage) {
                    rect.left = headerRect.left;
                }
            }
        } else {
            boolean hasImage = column == 0 && this.image != null || this.images != null && this.images[column] != null;
            rect.top = column;
            if (fullText || fullImage || hDC == 0) {
                RECT iconRect;
                rect.left = getText ? 2 : 1;
                this.parent.ignoreCustomDraw = true;
                int code = OS.SendMessage(hwnd, 4152, row, rect);
                this.parent.ignoreCustomDraw = false;
                if (code == 0) {
                    return new RECT();
                }
                if (column == 0 && getText && getImage) {
                    iconRect = new RECT();
                    iconRect.left = 1;
                    this.parent.ignoreCustomDraw = true;
                    code = OS.SendMessage(hwnd, 4152, row, iconRect);
                    this.parent.ignoreCustomDraw = false;
                    if (code != 0) {
                        rect.left = iconRect.left;
                    }
                }
                if (hasImage) {
                    if (column != 0 && getText && !getImage) {
                        iconRect = new RECT();
                        iconRect.top = column;
                        iconRect.left = 1;
                        if (OS.SendMessage(hwnd, 4152, row, iconRect) != 0) {
                            rect.left = iconRect.right + 2;
                        }
                    }
                } else if (getImage && !getText) {
                    rect.right = rect.left;
                }
                if (column == 0 && fullImage) {
                    RECT headerRect = new RECT();
                    int hwndHeader = OS.SendMessage(hwnd, 4127, 0, 0);
                    OS.SendMessage(hwndHeader, 4615, 0, headerRect);
                    OS.MapWindowPoints(hwndHeader, hwnd, headerRect, 2);
                    rect.left = headerRect.left;
                }
            } else {
                rect.left = 1;
                this.parent.ignoreCustomDraw = true;
                int code = OS.SendMessage(hwnd, 4152, row, rect);
                this.parent.ignoreCustomDraw = false;
                if (code == 0) {
                    return new RECT();
                }
                if (!hasImage) {
                    rect.right = rect.left;
                }
                if (getText) {
                    String string;
                    String string2 = column == 0 ? this.text : (string = this.strings != null ? this.strings[column] : null);
                    if (string != null) {
                        RECT textRect = new RECT();
                        TCHAR buffer = new TCHAR(this.parent.getCodePage(), string, false);
                        int flags = 3104;
                        OS.DrawText(hDC, buffer, buffer.length(), textRect, flags);
                        rect.right += textRect.right - textRect.left + 12 + 2;
                    }
                }
            }
        }
        int n = gridWidth = this.parent.getLinesVisible() ? 1 : 0;
        if (OS.COMCTL32_VERSION >= OS.VERSION(5, 80)) {
            rect.top -= gridWidth;
        }
        if (column != 0) {
            rect.left += gridWidth;
        }
        rect.right = Math.max(rect.right, rect.left);
        rect.top += gridWidth;
        rect.bottom = Math.max(rect.bottom - gridWidth, rect.top);
        return rect;
    }

    public boolean getChecked() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((this.parent.style & 0x20) == 0) {
            return false;
        }
        return this.checked;
    }

    public Font getFont() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        return this.font != null ? this.font : this.parent.getFont();
    }

    public Font getFont(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return this.getFont();
        }
        if (this.cellFont == null || this.cellFont[index] == null) {
            return this.getFont();
        }
        return this.cellFont[index];
    }

    public Color getForeground() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if (this.foreground == -1) {
            return this.parent.getForeground();
        }
        return Color.win32_new(this.display, this.foreground);
    }

    public Color getForeground(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return this.getForeground();
        }
        int pixel = this.cellForeground != null ? this.cellForeground[index] : -1;
        return pixel == -1 ? this.getForeground() : Color.win32_new(this.display, pixel);
    }

    public boolean getGrayed() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((this.parent.style & 0x20) == 0) {
            return false;
        }
        return this.grayed;
    }

    public Image getImage() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        return super.getImage();
    }

    public Image getImage(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if (index == 0) {
            return this.getImage();
        }
        if (this.images != null && index >= 0 && index < this.images.length) {
            return this.images[index];
        }
        return null;
    }

    public Rectangle getImageBounds(int index) {
        int itemIndex;
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((itemIndex = this.parent.indexOf(this)) == -1) {
            return new Rectangle(0, 0, 0, 0);
        }
        RECT rect = this.getBounds(itemIndex, index, false, true, false);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    public int getImageIndent() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        return this.imageIndent;
    }

    String getNameText() {
        if ((this.parent.style & 0x10000000) != 0 && !this.cached) {
            return "*virtual*";
        }
        return super.getNameText();
    }

    public Table getParent() {
        this.checkWidget();
        return this.parent;
    }

    public String getText() {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        return super.getText();
    }

    public String getText(int index) {
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if (index == 0) {
            return this.getText();
        }
        if (this.strings != null && index >= 0 && index < this.strings.length) {
            String string = this.strings[index];
            return string != null ? string : "";
        }
        return "";
    }

    public Rectangle getTextBounds(int index) {
        int itemIndex;
        this.checkWidget();
        if (!this.parent.checkData(this, true)) {
            this.error(24);
        }
        if ((itemIndex = this.parent.indexOf(this)) == -1) {
            return new Rectangle(0, 0, 0, 0);
        }
        RECT rect = this.getBounds(itemIndex, index, true, false, true);
        rect.left += 2;
        if (index != 0) {
            rect.left += 4;
        }
        rect.left = Math.min(rect.left, rect.right);
        rect.right -= 4;
        int width = Math.max(0, rect.right - rect.left);
        int height = Math.max(0, rect.bottom - rect.top);
        return new Rectangle(rect.left, rect.top, width, height);
    }

    void redraw() {
        if (this.parent.currentItem == this || !this.parent.getDrawing()) {
            return;
        }
        int hwnd = this.parent.handle;
        if (!OS.IsWindowVisible(hwnd)) {
            return;
        }
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        OS.SendMessage(hwnd, 4117, index, index);
    }

    void redraw(int column, boolean drawText, boolean drawImage) {
        if (this.parent.currentItem == this || !this.parent.getDrawing()) {
            return;
        }
        int hwnd = this.parent.handle;
        if (!OS.IsWindowVisible(hwnd)) {
            return;
        }
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return;
        }
        RECT rect = this.getBounds(index, column, drawText, drawImage, true);
        OS.InvalidateRect(hwnd, rect, true);
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.strings = null;
        this.images = null;
        this.cellFont = null;
        this.cellForeground = null;
        this.cellBackground = null;
    }

    public void setBackground(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        int pixel = -1;
        if (color != null) {
            this.parent.setCustomDraw(true);
            pixel = color.handle;
        }
        if (this.background == pixel) {
            return;
        }
        this.background = pixel;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw();
    }

    public void setBackground(int index, Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        int pixel = -1;
        if (color != null) {
            this.parent.setCustomDraw(true);
            pixel = color.handle;
        }
        if (this.cellBackground == null) {
            this.cellBackground = new int[count];
            int i = 0;
            while (i < count) {
                this.cellBackground[i] = -1;
                ++i;
            }
        }
        if (this.cellBackground[index] == pixel) {
            return;
        }
        this.cellBackground[index] = pixel;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw(index, true, true);
    }

    public void setChecked(boolean checked) {
        this.checkWidget();
        if ((this.parent.style & 0x20) == 0) {
            return;
        }
        if (this.checked == checked) {
            return;
        }
        this.setChecked(checked, false);
    }

    void setChecked(boolean checked, boolean notify) {
        this.checked = checked;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        if (notify) {
            Event event = new Event();
            event.item = this;
            event.detail = 32;
            this.parent.sendSelectionEvent(13, event, false);
        }
        this.redraw();
    }

    public void setFont(Font font) {
        int itemIndex;
        Font oldFont;
        this.checkWidget();
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        if ((oldFont = this.font) == font) {
            return;
        }
        this.font = font;
        if (oldFont != null && oldFont.equals(font)) {
            return;
        }
        if (font != null) {
            this.parent.setCustomDraw(true);
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        if ((this.parent.style & 0x10000000) == 0 && this.cached && (itemIndex = this.parent.indexOf(this)) != -1) {
            int hwnd = this.parent.handle;
            LVITEM lvItem = new LVITEM();
            lvItem.mask = 1;
            lvItem.iItem = itemIndex;
            lvItem.pszText = -1;
            OS.SendMessage(hwnd, OS.LVM_SETITEM, 0, lvItem);
            this.cached = false;
        }
        this.parent.setScrollWidth(this, false);
        this.redraw();
    }

    public void setFont(int index, Font font) {
        Font oldFont;
        this.checkWidget();
        if (font != null && font.isDisposed()) {
            SWT.error(5);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        if (this.cellFont == null) {
            if (font == null) {
                return;
            }
            this.cellFont = new Font[count];
        }
        if ((oldFont = this.cellFont[index]) == font) {
            return;
        }
        this.cellFont[index] = font;
        if (oldFont != null && oldFont.equals(font)) {
            return;
        }
        if (font != null) {
            this.parent.setCustomDraw(true);
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        if (index == 0) {
            int itemIndex;
            if ((this.parent.style & 0x10000000) == 0 && this.cached && (itemIndex = this.parent.indexOf(this)) != -1) {
                int hwnd = this.parent.handle;
                LVITEM lvItem = new LVITEM();
                lvItem.mask = 1;
                lvItem.iItem = itemIndex;
                lvItem.pszText = -1;
                OS.SendMessage(hwnd, OS.LVM_SETITEM, 0, lvItem);
                this.cached = false;
            }
            this.parent.setScrollWidth(this, false);
        }
        this.redraw(index, true, false);
    }

    public void setForeground(Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        int pixel = -1;
        if (color != null) {
            this.parent.setCustomDraw(true);
            pixel = color.handle;
        }
        if (this.foreground == pixel) {
            return;
        }
        this.foreground = pixel;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw();
    }

    public void setForeground(int index, Color color) {
        this.checkWidget();
        if (color != null && color.isDisposed()) {
            SWT.error(5);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        int pixel = -1;
        if (color != null) {
            this.parent.setCustomDraw(true);
            pixel = color.handle;
        }
        if (this.cellForeground == null) {
            this.cellForeground = new int[count];
            int i = 0;
            while (i < count) {
                this.cellForeground[i] = -1;
                ++i;
            }
        }
        if (this.cellForeground[index] == pixel) {
            return;
        }
        this.cellForeground[index] = pixel;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw(index, true, false);
    }

    public void setGrayed(boolean grayed) {
        this.checkWidget();
        if ((this.parent.style & 0x20) == 0) {
            return;
        }
        if (this.grayed == grayed) {
            return;
        }
        this.grayed = grayed;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.redraw();
    }

    public void setImage(Image[] images) {
        this.checkWidget();
        if (images == null) {
            this.error(4);
        }
        int i = 0;
        while (i < images.length) {
            this.setImage(i, images[i]);
            ++i;
        }
    }

    public void setImage(int index, Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        Image oldImage = null;
        if (index == 0) {
            if (image != null && image.type == 1 && image.equals(this.image)) {
                return;
            }
            oldImage = this.image;
            super.setImage(image);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        if (this.images == null && index != 0) {
            this.images = new Image[count];
            this.images[0] = image;
        }
        if (this.images != null) {
            if (image != null && image.type == 1 && image.equals(this.images[index])) {
                return;
            }
            oldImage = this.images[index];
            this.images[index] = image;
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        this.parent.imageIndex(image, index);
        if (index == 0) {
            this.parent.setScrollWidth(this, false);
        }
        boolean drawText = image == null && oldImage != null || image != null && oldImage == null;
        this.redraw(index, drawText, true);
    }

    public void setImage(Image image) {
        this.checkWidget();
        this.setImage(0, image);
    }

    public void setImageIndent(int indent) {
        this.checkWidget();
        if (indent < 0) {
            return;
        }
        if (this.imageIndent == indent) {
            return;
        }
        this.imageIndent = indent;
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        } else {
            int index = this.parent.indexOf(this);
            if (index != -1) {
                int hwnd = this.parent.handle;
                LVITEM lvItem = new LVITEM();
                lvItem.mask = 16;
                lvItem.iItem = index;
                lvItem.iIndent = indent;
                OS.SendMessage(hwnd, OS.LVM_SETITEM, 0, lvItem);
            }
        }
        this.parent.setScrollWidth(this, false);
        this.redraw();
    }

    public void setText(String[] strings) {
        this.checkWidget();
        if (strings == null) {
            this.error(4);
        }
        int i = 0;
        while (i < strings.length) {
            String string = strings[i];
            if (string != null) {
                this.setText(i, string);
            }
            ++i;
        }
    }

    public void setText(int index, String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if (index == 0) {
            if (string.equals(this.text)) {
                return;
            }
            super.setText(string);
        }
        int count = Math.max(1, this.parent.getColumnCount());
        if (index < 0 || index > count - 1) {
            return;
        }
        if (this.strings == null && index != 0) {
            this.strings = new String[count];
            this.strings[0] = this.text;
        }
        if (this.strings != null) {
            if (string.equals(this.strings[index])) {
                return;
            }
            this.strings[index] = string;
        }
        if ((this.parent.style & 0x10000000) != 0) {
            this.cached = true;
        }
        if (index == 0) {
            int itemIndex;
            if ((this.parent.style & 0x10000000) == 0 && this.cached && (itemIndex = this.parent.indexOf(this)) != -1) {
                int hwnd = this.parent.handle;
                LVITEM lvItem = new LVITEM();
                lvItem.mask = 1;
                lvItem.iItem = itemIndex;
                lvItem.pszText = -1;
                OS.SendMessage(hwnd, OS.LVM_SETITEM, 0, lvItem);
                this.cached = false;
            }
            this.parent.setScrollWidth(this, false);
        }
        this.redraw(index, true, false);
    }

    public void setText(String string) {
        this.checkWidget();
        this.setText(0, string);
    }
}

