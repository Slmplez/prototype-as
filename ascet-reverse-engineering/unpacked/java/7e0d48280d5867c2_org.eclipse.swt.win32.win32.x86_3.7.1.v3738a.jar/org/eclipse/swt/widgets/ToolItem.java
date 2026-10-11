/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TBBUTTONINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;

public class ToolItem
extends Item {
    ToolBar parent;
    Control control;
    String toolTipText;
    Image disabledImage;
    Image hotImage;
    Image disabledImage2;
    int id;
    short cx;

    public ToolItem(ToolBar parent, int style) {
        super(parent, ToolItem.checkStyle(style));
        this.parent = parent;
        parent.createItem(this, parent.getItemCount());
    }

    public ToolItem(ToolBar parent, int style, int index) {
        super(parent, ToolItem.checkStyle(style));
        this.parent = parent;
        parent.createItem(this, index);
    }

    public void addSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(13, typedListener);
        this.addListener(14, typedListener);
    }

    static int checkStyle(int style) {
        return ToolItem.checkBits(style, 8, 32, 16, 2, 4, 0);
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    void click(boolean dropDown) {
        int hwnd = this.parent.handle;
        if (OS.GetKeyState(1) < 0) {
            return;
        }
        int index = OS.SendMessage(hwnd, 1049, this.id, 0);
        RECT rect = new RECT();
        OS.SendMessage(hwnd, 1053, index, rect);
        int hotIndex = OS.SendMessage(hwnd, 1095, 0, 0);
        int y = rect.top + (rect.bottom - rect.top) / 2;
        int lParam = OS.MAKELPARAM(dropDown ? rect.right - 1 : rect.left, y);
        this.parent.ignoreMouse = true;
        OS.SendMessage(hwnd, 513, 0, lParam);
        OS.SendMessage(hwnd, 514, 0, lParam);
        this.parent.ignoreMouse = false;
        if (hotIndex != -1) {
            OS.SendMessage(hwnd, 1096, hotIndex, 0);
        }
    }

    Widget[] computeTabList() {
        if (this.isTabGroup() && this.getEnabled()) {
            if ((this.style & 2) != 0) {
                if (this.control != null) {
                    return this.control.computeTabList();
                }
            } else {
                return new Widget[]{this};
            }
        }
        return new Widget[0];
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    public Rectangle getBounds() {
        this.checkWidget();
        int hwnd = this.parent.handle;
        int index = OS.SendMessage(hwnd, 1049, this.id, 0);
        RECT rect = new RECT();
        OS.SendMessage(hwnd, 1053, index, rect);
        int width = rect.right - rect.left;
        int height = rect.bottom - rect.top;
        return new Rectangle(rect.left, rect.top, width, height);
    }

    public Control getControl() {
        this.checkWidget();
        return this.control;
    }

    public Image getDisabledImage() {
        this.checkWidget();
        return this.disabledImage;
    }

    public boolean getEnabled() {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return (this.state & 8) == 0;
        }
        int hwnd = this.parent.handle;
        int fsState = OS.SendMessage(hwnd, 1042, this.id, 0);
        return (fsState & 4) != 0;
    }

    public Image getHotImage() {
        this.checkWidget();
        return this.hotImage;
    }

    public ToolBar getParent() {
        this.checkWidget();
        return this.parent;
    }

    public boolean getSelection() {
        this.checkWidget();
        if ((this.style & 0x30) == 0) {
            return false;
        }
        int hwnd = this.parent.handle;
        int fsState = OS.SendMessage(hwnd, 1042, this.id, 0);
        return (fsState & 1) != 0;
    }

    public String getToolTipText() {
        this.checkWidget();
        return this.toolTipText;
    }

    public int getWidth() {
        this.checkWidget();
        int hwnd = this.parent.handle;
        int index = OS.SendMessage(hwnd, 1049, this.id, 0);
        RECT rect = new RECT();
        OS.SendMessage(hwnd, 1053, index, rect);
        return rect.right - rect.left;
    }

    public boolean isEnabled() {
        this.checkWidget();
        return this.getEnabled() && this.parent.isEnabled();
    }

    boolean isTabGroup() {
        ToolItem[] tabList = this.parent._getTabItemList();
        if (tabList != null) {
            int i = 0;
            while (i < tabList.length) {
                if (tabList[i] == this) {
                    return true;
                }
                ++i;
            }
        }
        if ((this.style & 2) != 0) {
            return true;
        }
        int index = this.parent.indexOf(this);
        if (index == 0) {
            return true;
        }
        ToolItem previous = this.parent.getItem(index - 1);
        return (previous.getStyle() & 2) != 0;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.releaseImages();
        this.control = null;
        this.toolTipText = null;
        this.hotImage = null;
        this.disabledImage = null;
        if (this.disabledImage2 != null) {
            this.disabledImage2.dispose();
        }
        this.disabledImage2 = null;
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
        this.id = -1;
    }

    void releaseImages() {
        TBBUTTONINFO info = new TBBUTTONINFO();
        info.cbSize = TBBUTTONINFO.sizeof;
        info.dwMask = 9;
        int hwnd = this.parent.handle;
        OS.SendMessage(hwnd, OS.TB_GETBUTTONINFO, this.id, info);
        if ((info.fsStyle & 1) == 0 && info.iImage != -2) {
            ImageList imageList = this.parent.getImageList();
            ImageList hotImageList = this.parent.getHotImageList();
            ImageList disabledImageList = this.parent.getDisabledImageList();
            if (imageList != null) {
                imageList.put(info.iImage, null);
            }
            if (hotImageList != null) {
                hotImageList.put(info.iImage, null);
            }
            if (disabledImageList != null) {
                disabledImageList.put(info.iImage, null);
            }
        }
    }

    public void removeSelectionListener(SelectionListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(13, listener);
        this.eventTable.unhook(14, listener);
    }

    void resizeControl() {
        if (this.control != null && !this.control.isDisposed()) {
            Rectangle itemRect = this.getBounds();
            this.control.setSize(itemRect.width, itemRect.height);
            Rectangle rect = this.control.getBounds();
            rect.x = itemRect.x + (itemRect.width - rect.width) / 2;
            rect.y = itemRect.y + (itemRect.height - rect.height) / 2;
            this.control.setLocation(rect.x, rect.y);
        }
    }

    void selectRadio() {
        int index = 0;
        ToolItem[] items = this.parent.getItems();
        while (index < items.length && items[index] != this) {
            ++index;
        }
        int i = index - 1;
        while (i >= 0 && items[i].setRadioSelection(false)) {
            --i;
        }
        int j = index + 1;
        while (j < items.length && items[j].setRadioSelection(false)) {
            ++j;
        }
        this.setSelection(true);
    }

    public void setControl(Control control) {
        this.checkWidget();
        if (control != null) {
            if (control.isDisposed()) {
                this.error(5);
            }
            if (control.parent != this.parent) {
                this.error(32);
            }
        }
        if ((this.style & 2) == 0) {
            return;
        }
        this.control = control;
        if ((this.parent.style & 0x240) != 0) {
            boolean changed = false;
            int hwnd = this.parent.handle;
            TBBUTTONINFO info = new TBBUTTONINFO();
            info.cbSize = TBBUTTONINFO.sizeof;
            info.dwMask = 12;
            OS.SendMessage(hwnd, OS.TB_GETBUTTONINFO, this.id, info);
            if (control == null) {
                if ((info.fsStyle & 1) == 0) {
                    changed = true;
                    info.fsStyle = (byte)(info.fsStyle & 0xFFFFFFBF);
                    info.fsStyle = (byte)(info.fsStyle | 1);
                    info.fsState = (this.state & 8) != 0 ? (byte)(info.fsState & 0xFFFFFFFB) : (byte)(info.fsState | 4);
                }
            } else if ((info.fsStyle & 1) != 0) {
                changed = true;
                info.fsStyle = (byte)(info.fsStyle & 0xFFFFFFFE);
                info.fsStyle = (byte)(info.fsStyle | 0x40);
                info.fsState = (byte)(info.fsState & 0xFFFFFFFB);
                info.dwMask |= 1;
                info.iImage = -2;
            }
            if (changed) {
                OS.SendMessage(hwnd, OS.TB_SETBUTTONINFO, this.id, info);
                if (OS.SendMessage(hwnd, 1064, 0, 0) > 1) {
                    OS.InvalidateRect(hwnd, null, true);
                }
            }
        }
        this.resizeControl();
    }

    public void setEnabled(boolean enabled) {
        this.checkWidget();
        int hwnd = this.parent.handle;
        int fsState = OS.SendMessage(hwnd, 1042, this.id, 0);
        if ((fsState & 4) != 0 == enabled) {
            return;
        }
        if (enabled) {
            fsState |= 4;
            this.state &= 0xFFFFFFF7;
        } else {
            fsState &= 0xFFFFFFFB;
            this.state |= 8;
        }
        OS.SendMessage(hwnd, 1041, this.id, fsState);
        if ((this.style & 2) == 0 && this.image != null) {
            this.updateImages(enabled && this.parent.getEnabled());
        }
    }

    public void setDisabledImage(Image image) {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return;
        }
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        this.disabledImage = image;
        this.updateImages(this.getEnabled() && this.parent.getEnabled());
    }

    public void setHotImage(Image image) {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return;
        }
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        this.hotImage = image;
        this.updateImages(this.getEnabled() && this.parent.getEnabled());
    }

    public void setImage(Image image) {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return;
        }
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        super.setImage(image);
        this.updateImages(this.getEnabled() && this.parent.getEnabled());
    }

    boolean setRadioSelection(boolean value) {
        if ((this.style & 0x10) == 0) {
            return false;
        }
        if (this.getSelection() != value) {
            this.setSelection(value);
            this.sendSelectionEvent(13);
        }
        return true;
    }

    public void setSelection(boolean selected) {
        this.checkWidget();
        if ((this.style & 0x30) == 0) {
            return;
        }
        int hwnd = this.parent.handle;
        int fsState = OS.SendMessage(hwnd, 1042, this.id, 0);
        if ((fsState & 1) != 0 == selected) {
            return;
        }
        fsState = selected ? (fsState |= 1) : (fsState &= 0xFFFFFFFE);
        OS.SendMessage(hwnd, 1041, this.id, fsState);
        if (!((this.style & 0x30) == 0 || this.getEnabled() && this.parent.getEnabled())) {
            this.updateImages(false);
        }
    }

    boolean setTabItemFocus() {
        if (this.parent.setTabItemFocus()) {
            int hwnd = this.parent.handle;
            int index = OS.SendMessage(hwnd, 1049, this.id, 0);
            OS.SendMessage(hwnd, 1096, index, 0);
            return true;
        }
        return false;
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if ((this.style & 2) != 0) {
            return;
        }
        if (string.equals(this.text)) {
            return;
        }
        super.setText(string);
        int hwnd = this.parent.handle;
        TBBUTTONINFO info = new TBBUTTONINFO();
        info.cbSize = TBBUTTONINFO.sizeof;
        info.dwMask = 10;
        info.fsStyle = (byte)(this.widgetStyle() | 0x10);
        int hHeap = OS.GetProcessHeap();
        int pszText = 0;
        if (string.length() != 0) {
            info.fsStyle = (byte)(info.fsStyle | 0x40);
            TCHAR buffer = new TCHAR(this.parent.getCodePage(), string, true);
            int byteCount = buffer.length() * TCHAR.sizeof;
            pszText = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(pszText, buffer, byteCount);
            info.pszText = pszText;
        }
        OS.SendMessage(hwnd, OS.TB_SETBUTTONINFO, this.id, info);
        if (pszText != 0) {
            OS.HeapFree(hHeap, 0, pszText);
        }
        this.parent.setDropDownItems(false);
        int hFont = OS.SendMessage(hwnd, 49, 0, 0);
        OS.SendMessage(hwnd, 48, hFont, 0);
        this.parent.setDropDownItems(true);
        this.parent.layoutItems();
    }

    public void setToolTipText(String string) {
        this.checkWidget();
        this.toolTipText = string;
    }

    public void setWidth(int width) {
        this.checkWidget();
        if ((this.style & 2) == 0) {
            return;
        }
        if (width < 0) {
            return;
        }
        int hwnd = this.parent.handle;
        TBBUTTONINFO info = new TBBUTTONINFO();
        info.cbSize = TBBUTTONINFO.sizeof;
        info.dwMask = 64;
        info.cx = this.cx = (short)width;
        OS.SendMessage(hwnd, OS.TB_SETBUTTONINFO, this.id, info);
        this.parent.layoutItems();
    }

    void updateImages(boolean enabled) {
        if ((this.style & 2) != 0) {
            return;
        }
        int hwnd = this.parent.handle;
        TBBUTTONINFO info = new TBBUTTONINFO();
        info.cbSize = TBBUTTONINFO.sizeof;
        info.dwMask = 1;
        OS.SendMessage(hwnd, OS.TB_GETBUTTONINFO, this.id, info);
        if (info.iImage == -2 && this.image == null) {
            return;
        }
        ImageList imageList = this.parent.getImageList();
        ImageList hotImageList = this.parent.getHotImageList();
        ImageList disabledImageList = this.parent.getDisabledImageList();
        if (info.iImage == -2) {
            Rectangle bounds = this.image.getBounds();
            int listStyle = this.parent.style & 0x4000000;
            if (imageList == null) {
                imageList = this.display.getImageListToolBar(listStyle, bounds.width, bounds.height);
            }
            if (disabledImageList == null) {
                disabledImageList = this.display.getImageListToolBarDisabled(listStyle, bounds.width, bounds.height);
            }
            if (hotImageList == null) {
                hotImageList = this.display.getImageListToolBarHot(listStyle, bounds.width, bounds.height);
            }
            Image disabled = this.disabledImage;
            if (this.disabledImage == null) {
                if (this.disabledImage2 != null) {
                    this.disabledImage2.dispose();
                }
                this.disabledImage2 = null;
                disabled = this.image;
                if (!enabled) {
                    disabled = this.disabledImage2 = new Image((Device)this.display, this.image, 1);
                }
            }
            Image image2 = this.image;
            Image hot = this.hotImage;
            if ((this.style & 0x30) != 0 && !enabled) {
                image2 = hot = disabled;
            }
            info.iImage = imageList.add(image2);
            disabledImageList.add(disabled);
            hotImageList.add(hot != null ? hot : image2);
            this.parent.setImageList(imageList);
            this.parent.setDisabledImageList(disabledImageList);
            this.parent.setHotImageList(hotImageList);
        } else {
            Image disabled = null;
            if (disabledImageList != null) {
                if (this.image != null) {
                    if (this.disabledImage2 != null) {
                        this.disabledImage2.dispose();
                    }
                    this.disabledImage2 = null;
                    disabled = this.disabledImage;
                    if (this.disabledImage == null) {
                        disabled = this.image;
                        if (!enabled) {
                            disabled = this.disabledImage2 = new Image((Device)this.display, this.image, 1);
                        }
                    }
                }
                disabledImageList.put(info.iImage, disabled);
            }
            Image image2 = this.image;
            Image hot = this.hotImage;
            if ((this.style & 0x30) != 0 && !enabled) {
                image2 = hot = disabled;
            }
            if (imageList != null) {
                imageList.put(info.iImage, image2);
            }
            if (hotImageList != null) {
                hotImageList.put(info.iImage, hot != null ? hot : image2);
            }
            if (this.image == null) {
                info.iImage = -2;
            }
        }
        info.dwMask |= 0x40;
        info.cx = 0;
        OS.SendMessage(hwnd, OS.TB_SETBUTTONINFO, this.id, info);
        int hFont = OS.SendMessage(hwnd, 49, 0, 0);
        OS.SendMessage(hwnd, 48, hFont, 0);
        this.parent.layoutItems();
    }

    int widgetStyle() {
        if ((this.style & 4) != 0) {
            return 8;
        }
        if ((this.style & 8) != 0) {
            return 0;
        }
        if ((this.style & 0x20) != 0) {
            return 2;
        }
        if ((this.style & 0x10) != 0) {
            return 2;
        }
        if ((this.style & 2) != 0) {
            return 1;
        }
        return 0;
    }

    LRESULT wmCommandChild(int wParam, int lParam) {
        if ((this.style & 0x10) != 0 && (this.parent.getStyle() & 0x400000) == 0) {
            this.selectRadio();
        }
        this.sendSelectionEvent(13);
        return null;
    }
}

