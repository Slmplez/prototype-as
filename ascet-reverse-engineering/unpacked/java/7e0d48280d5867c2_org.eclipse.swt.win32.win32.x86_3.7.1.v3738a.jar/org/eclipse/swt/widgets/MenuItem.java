/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.ArmListener;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.ACCEL;
import org.eclipse.swt.internal.win32.DRAWITEMSTRUCT;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MEASUREITEMSTRUCT;
import org.eclipse.swt.internal.win32.MENUBARINFO;
import org.eclipse.swt.internal.win32.MENUINFO;
import org.eclipse.swt.internal.win32.MENUITEMINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TBBUTTONINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.TypedListener;

public class MenuItem
extends Item {
    Menu parent;
    Menu menu;
    int hBitmap;
    int id;
    int accelerator;
    int userId;
    static final int MARGIN_WIDTH = OS.IsWin95 ? 2 : 1;
    static final int MARGIN_HEIGHT = OS.IsWin95 ? 2 : 1;

    public MenuItem(Menu parent, int style) {
        super(parent, MenuItem.checkStyle(style));
        this.parent = parent;
        parent.createItem(this, parent.getItemCount());
    }

    public MenuItem(Menu parent, int style, int index) {
        super(parent, MenuItem.checkStyle(style));
        this.parent = parent;
        parent.createItem(this, index);
    }

    MenuItem(Menu parent, Menu menu, int style, int index) {
        super(parent, MenuItem.checkStyle(style));
        this.parent = parent;
        this.menu = menu;
        if (menu != null) {
            menu.cascade = this;
        }
        this.display.addMenuItem(this);
    }

    public void addArmListener(ArmListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(30, typedListener);
    }

    public void addHelpListener(HelpListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(28, typedListener);
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

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    static int checkStyle(int style) {
        return MenuItem.checkBits(style, 8, 32, 16, 2, 64, 0);
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    boolean fillAccel(ACCEL accel) {
        accel.fVirt = 0;
        accel.key = 0;
        accel.cmd = 0;
        if (this.accelerator == 0 || !this.getEnabled()) {
            return false;
        }
        if ((this.accelerator & 0x400000) != 0) {
            return false;
        }
        boolean fVirt = true;
        int key = this.accelerator & 0x100FFFF;
        int vKey = Display.untranslateKey(key);
        if (vKey != 0) {
            key = vKey;
        } else {
            switch (key) {
                case 27: {
                    key = 27;
                    break;
                }
                case 127: {
                    key = 46;
                    break;
                }
                default: {
                    key = Display.wcsToMbcs((char)key);
                    if (key == 0) {
                        return false;
                    }
                    if (OS.IsWinCE) {
                        key = OS.CharUpper((short)key);
                        break;
                    }
                    vKey = OS.VkKeyScan((short)key) & 0xFF;
                    if (vKey == -1) {
                        fVirt = false;
                        break;
                    }
                    key = vKey;
                }
            }
        }
        accel.key = (short)key;
        accel.cmd = (short)this.id;
        accel.fVirt = (byte)(fVirt ? 1 : 0);
        if ((this.accelerator & 0x10000) != 0) {
            accel.fVirt = (byte)(accel.fVirt | 0x10);
        }
        if ((this.accelerator & 0x20000) != 0) {
            accel.fVirt = (byte)(accel.fVirt | 4);
        }
        if ((this.accelerator & 0x40000) != 0) {
            accel.fVirt = (byte)(accel.fVirt | 8);
        }
        return true;
    }

    void fixMenus(Decorations newParent) {
        if (this.menu != null) {
            this.menu.fixMenus(newParent);
        }
    }

    public int getAccelerator() {
        this.checkWidget();
        return this.accelerator;
    }

    Rectangle getBounds() {
        this.checkWidget();
        if (OS.IsWinCE) {
            return new Rectangle(0, 0, 0, 0);
        }
        int index = this.parent.indexOf(this);
        if (index == -1) {
            return new Rectangle(0, 0, 0, 0);
        }
        if ((this.parent.style & 2) != 0) {
            Decorations shell = this.parent.parent;
            if (shell.menuBar != this.parent) {
                return new Rectangle(0, 0, 0, 0);
            }
            int hwndShell = shell.handle;
            MENUBARINFO info1 = new MENUBARINFO();
            info1.cbSize = MENUBARINFO.sizeof;
            if (!OS.GetMenuBarInfo(hwndShell, -3, 1, info1)) {
                return new Rectangle(0, 0, 0, 0);
            }
            MENUBARINFO info2 = new MENUBARINFO();
            info2.cbSize = MENUBARINFO.sizeof;
            if (!OS.GetMenuBarInfo(hwndShell, -3, index + 1, info2)) {
                return new Rectangle(0, 0, 0, 0);
            }
            int x = info2.left - info1.left;
            int y = info2.top - info1.top;
            int width = info2.right - info2.left;
            int height = info2.bottom - info2.top;
            return new Rectangle(x, y, width, height);
        }
        int hMenu = this.parent.handle;
        RECT rect1 = new RECT();
        if (!OS.GetMenuItemRect(0, hMenu, 0, rect1)) {
            return new Rectangle(0, 0, 0, 0);
        }
        RECT rect2 = new RECT();
        if (!OS.GetMenuItemRect(0, hMenu, index, rect2)) {
            return new Rectangle(0, 0, 0, 0);
        }
        int x = rect2.left - rect1.left + 2;
        int y = rect2.top - rect1.top + 2;
        int width = rect2.right - rect2.left;
        int height = rect2.bottom - rect2.top;
        return new Rectangle(x, y, width, height);
    }

    public boolean getEnabled() {
        boolean success;
        this.checkWidget();
        if ((OS.IsPPC || OS.IsSP) && this.parent.hwndCB != 0) {
            int hwndCB = this.parent.hwndCB;
            TBBUTTONINFO info = new TBBUTTONINFO();
            info.cbSize = TBBUTTONINFO.sizeof;
            info.dwMask = 4;
            OS.SendMessage(hwndCB, OS.TB_GETBUTTONINFO, this.id, info);
            return (info.fsState & 4) != 0;
        }
        if ((this.style & 2) != 0) {
            return (this.state & 8) == 0;
        }
        int hMenu = this.parent.handle;
        MENUITEMINFO info = new MENUITEMINFO();
        info.cbSize = MENUITEMINFO.sizeof;
        info.fMask = 1;
        if (OS.IsWinCE) {
            int index = this.parent.indexOf(this);
            if (index == -1) {
                this.error(31);
            }
            success = OS.GetMenuItemInfo(hMenu, index, true, info);
        } else {
            success = OS.GetMenuItemInfo(hMenu, this.id, false, info);
        }
        if (!success) {
            this.error(31);
        }
        return (info.fState & 3) == 0;
    }

    public int getID() {
        this.checkWidget();
        return this.userId;
    }

    public Menu getMenu() {
        this.checkWidget();
        return this.menu;
    }

    String getNameText() {
        if ((this.style & 2) != 0) {
            return "|";
        }
        return super.getNameText();
    }

    public Menu getParent() {
        this.checkWidget();
        return this.parent;
    }

    public boolean getSelection() {
        this.checkWidget();
        if ((this.style & 0x30) == 0) {
            return false;
        }
        if ((OS.IsPPC || OS.IsSP) && this.parent.hwndCB != 0) {
            return false;
        }
        int hMenu = this.parent.handle;
        MENUITEMINFO info = new MENUITEMINFO();
        info.cbSize = MENUITEMINFO.sizeof;
        info.fMask = 1;
        boolean success = OS.GetMenuItemInfo(hMenu, this.id, false, info);
        if (!success) {
            this.error(9);
        }
        return (info.fState & 8) != 0;
    }

    public boolean isEnabled() {
        return this.getEnabled() && this.parent.isEnabled();
    }

    void releaseChildren(boolean destroy) {
        if (this.menu != null) {
            this.menu.release(false);
            this.menu = null;
        }
        super.releaseChildren(destroy);
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
        this.id = -1;
    }

    void releaseParent() {
        super.releaseParent();
        if (this.menu != null) {
            this.menu.dispose();
        }
        this.menu = null;
    }

    void releaseWidget() {
        super.releaseWidget();
        if (this.hBitmap != 0) {
            OS.DeleteObject(this.hBitmap);
        }
        this.hBitmap = 0;
        if (this.accelerator != 0) {
            this.parent.destroyAccelerators();
        }
        this.accelerator = 0;
        this.display.removeMenuItem(this);
    }

    public void removeArmListener(ArmListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(30, listener);
    }

    public void removeHelpListener(HelpListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(28, listener);
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

    void reskinChildren(int flags) {
        if (this.menu != null) {
            this.menu.reskin(flags);
        }
        super.reskinChildren(flags);
    }

    void selectRadio() {
        int index = 0;
        MenuItem[] items = this.parent.getItems();
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

    public void setAccelerator(int accelerator) {
        this.checkWidget();
        if (this.accelerator == accelerator) {
            return;
        }
        this.accelerator = accelerator;
        this.parent.destroyAccelerators();
    }

    public void setEnabled(boolean enabled) {
        this.checkWidget();
        if ((OS.IsPPC || OS.IsSP) && this.parent.hwndCB != 0) {
            int hwndCB = this.parent.hwndCB;
            TBBUTTONINFO info = new TBBUTTONINFO();
            info.cbSize = TBBUTTONINFO.sizeof;
            info.dwMask = 4;
            OS.SendMessage(hwndCB, OS.TB_GETBUTTONINFO, this.id, info);
            info.fsState = (byte)(info.fsState & 0xFFFFFFFB);
            if (enabled) {
                info.fsState = (byte)(info.fsState | 4);
            }
            OS.SendMessage(hwndCB, OS.TB_SETBUTTONINFO, this.id, info);
        } else {
            if ((this.style & 2) != 0) {
                this.state = enabled ? (this.state &= 0xFFFFFFF7) : (this.state |= 8);
            }
            int hMenu = this.parent.handle;
            if (OS.IsWinCE) {
                int index = this.parent.indexOf(this);
                if (index == -1) {
                    return;
                }
                int uEnable = 0x400 | (enabled ? 0 : 1);
                OS.EnableMenuItem(hMenu, index, uEnable);
            } else {
                MENUITEMINFO info = new MENUITEMINFO();
                info.cbSize = MENUITEMINFO.sizeof;
                info.fMask = 1;
                boolean success = OS.GetMenuItemInfo(hMenu, this.id, false, info);
                if (!success) {
                    this.error(30);
                }
                int bits = 3;
                if (enabled) {
                    if ((info.fState & bits) == 0) {
                        return;
                    }
                    info.fState &= ~bits;
                } else {
                    if ((info.fState & bits) == bits) {
                        return;
                    }
                    info.fState |= bits;
                }
                success = OS.SetMenuItemInfo(hMenu, this.id, false, info);
                if (!success) {
                    if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                        boolean bl = success = this.id == OS.GetMenuDefaultItem(hMenu, 0, 1);
                    }
                    if (!success) {
                        this.error(30);
                    }
                }
            }
        }
        this.parent.destroyAccelerators();
        this.parent.redraw();
    }

    public void setID(int id) {
        this.checkWidget();
        if (id < 0) {
            this.error(5);
        }
        this.userId = id;
    }

    public void setImage(Image image) {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return;
        }
        super.setImage(image);
        if (OS.IsWinCE) {
            if ((OS.IsPPC || OS.IsSP) && this.parent.hwndCB != 0) {
                int hwndCB = this.parent.hwndCB;
                TBBUTTONINFO info = new TBBUTTONINFO();
                info.cbSize = TBBUTTONINFO.sizeof;
                info.dwMask = 1;
                info.iImage = this.parent.imageIndex(image);
                OS.SendMessage(hwndCB, OS.TB_SETBUTTONINFO, this.id, info);
            }
            return;
        }
        if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return;
        }
        MENUITEMINFO info = new MENUITEMINFO();
        info.cbSize = MENUITEMINFO.sizeof;
        info.fMask = 128;
        if (this.parent.foreground != -1) {
            info.hbmpItem = -1;
        } else if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && OS.IsAppThemed()) {
            if (this.hBitmap != 0) {
                OS.DeleteObject(this.hBitmap);
            }
            this.hBitmap = image != null ? Display.create32bitDIB(image) : 0;
            info.hbmpItem = this.hBitmap;
        } else {
            info.hbmpItem = image != null ? -1 : 0;
        }
        int hMenu = this.parent.handle;
        OS.SetMenuItemInfo(hMenu, this.id, false, info);
        this.parent.redraw();
    }

    public void setMenu(Menu menu) {
        this.checkWidget();
        if ((this.style & 0x40) == 0) {
            this.error(27);
        }
        if (menu != null) {
            if (menu.isDisposed()) {
                this.error(5);
            }
            if ((menu.style & 4) == 0) {
                this.error(21);
            }
            if (menu.parent != this.parent.parent) {
                this.error(32);
            }
        }
        this.setMenu(menu, false);
    }

    void setMenu(Menu menu, boolean dispose) {
        Menu oldMenu = this.menu;
        if (oldMenu == menu) {
            return;
        }
        if (oldMenu != null) {
            oldMenu.cascade = null;
        }
        this.menu = menu;
        if ((OS.IsPPC || OS.IsSP) && this.parent.hwndCB != 0) {
            if (OS.IsPPC) {
                int hwndCB = this.parent.hwndCB;
                int hMenu = menu == null ? 0 : menu.handle;
                OS.SendMessage(hwndCB, 1424, this.id, hMenu);
            }
            if (OS.IsSP) {
                this.error(29);
            }
        } else {
            int hMenu = this.parent.handle;
            MENUITEMINFO info = new MENUITEMINFO();
            info.cbSize = MENUITEMINFO.sizeof;
            info.fMask = 32;
            int index = 0;
            while (OS.GetMenuItemInfo(hMenu, index, true, info)) {
                if (info.dwItemData == this.id) break;
                ++index;
            }
            if (info.dwItemData != this.id) {
                return;
            }
            int cch = 128;
            int hHeap = OS.GetProcessHeap();
            int byteCount = cch * TCHAR.sizeof;
            int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
            info.fMask = 35;
            info.fMask = !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) ? (info.fMask |= 0xC0) : (info.fMask |= 0x10);
            info.dwTypeData = pszText;
            info.cch = cch;
            boolean success = OS.GetMenuItemInfo(hMenu, index, true, info);
            if (menu != null) {
                menu.cascade = this;
                info.fMask |= 4;
                info.hSubMenu = menu.handle;
            }
            if (OS.IsWinCE) {
                TCHAR lpNewItem;
                OS.RemoveMenu(hMenu, index, 1024);
                int uIDNewItem = this.id;
                int uFlags = 1024;
                if (menu != null) {
                    uFlags |= 0x10;
                    uIDNewItem = menu.handle;
                }
                if (success = OS.InsertMenu(hMenu, index, uFlags, uIDNewItem, lpNewItem = new TCHAR(0, " ", true))) {
                    info.fMask = 48;
                    success = OS.SetMenuItemInfo(hMenu, index, true, info);
                    if ((info.fState & 3) != 0) {
                        OS.EnableMenuItem(hMenu, index, 1025);
                    }
                    if ((info.fState & 8) != 0) {
                        OS.CheckMenuItem(hMenu, index, 1032);
                    }
                }
            } else if (dispose || oldMenu == null) {
                success = OS.SetMenuItemInfo(hMenu, index, true, info);
            } else {
                OS.RemoveMenu(hMenu, index, 1024);
                success = OS.InsertMenuItem(hMenu, index, true, info);
            }
            if (pszText != 0) {
                OS.HeapFree(hHeap, 0, pszText);
            }
            if (!success) {
                this.error(29);
            }
        }
        this.parent.destroyAccelerators();
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

    void setOrientation(int orientation) {
        int hMenu = this.parent.handle;
        MENUITEMINFO info = new MENUITEMINFO();
        info.cbSize = MENUITEMINFO.sizeof;
        info.fMask = 256;
        info.fType = this.widgetStyle();
        OS.SetMenuItemInfo(hMenu, this.id, false, info);
        if (this.menu != null) {
            this.menu._setOrientation(orientation);
        }
    }

    public void setSelection(boolean selected) {
        this.checkWidget();
        if ((this.style & 0x30) == 0) {
            return;
        }
        if ((OS.IsPPC || OS.IsSP) && this.parent.hwndCB != 0) {
            return;
        }
        int hMenu = this.parent.handle;
        if (OS.IsWinCE) {
            int index = this.parent.indexOf(this);
            if (index == -1) {
                return;
            }
            int uCheck = 0x400 | (selected ? 8 : 0);
            OS.CheckMenuItem(hMenu, index, uCheck);
        } else {
            MENUITEMINFO info = new MENUITEMINFO();
            info.cbSize = MENUITEMINFO.sizeof;
            info.fMask = 1;
            boolean success = OS.GetMenuItemInfo(hMenu, this.id, false, info);
            if (!success) {
                this.error(28);
            }
            info.fState &= 0xFFFFFFF7;
            if (selected) {
                info.fState |= 8;
            }
            if (!(success = OS.SetMenuItemInfo(hMenu, this.id, false, info))) {
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0)) {
                    boolean bl = success = this.id == OS.GetMenuDefaultItem(hMenu, 0, 1);
                }
                if (!success) {
                    this.error(28);
                }
            }
        }
        this.parent.redraw();
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if ((this.style & 2) != 0) {
            return;
        }
        if (this.text.equals(string)) {
            return;
        }
        super.setText(string);
        int hHeap = OS.GetProcessHeap();
        int pszText = 0;
        boolean success = false;
        if ((OS.IsPPC || OS.IsSP) && this.parent.hwndCB != 0) {
            if (string.indexOf(38) != -1) {
                int length = string.length();
                char[] text = new char[length];
                string.getChars(0, length, text, 0);
                int i = 0;
                int j = 0;
                i = 0;
                while (i < length) {
                    if (text[i] != '&') {
                        text[j++] = text[i];
                    }
                    ++i;
                }
                if (j < i) {
                    string = new String(text, 0, j);
                }
            }
            TCHAR buffer = new TCHAR(0, string, true);
            int byteCount = buffer.length() * TCHAR.sizeof;
            pszText = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(pszText, buffer, byteCount);
            int hwndCB = this.parent.hwndCB;
            TBBUTTONINFO info2 = new TBBUTTONINFO();
            info2.cbSize = TBBUTTONINFO.sizeof;
            info2.dwMask = 2;
            info2.pszText = pszText;
            success = OS.SendMessage(hwndCB, OS.TB_SETBUTTONINFO, this.id, info2) != 0;
        } else {
            MENUITEMINFO info = new MENUITEMINFO();
            info.cbSize = MENUITEMINFO.sizeof;
            int hMenu = this.parent.handle;
            TCHAR buffer = new TCHAR(0, string, true);
            int byteCount = buffer.length() * TCHAR.sizeof;
            pszText = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(pszText, buffer, byteCount);
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
                info.fMask = 64;
            } else {
                info.fMask = 16;
                info.fType = this.widgetStyle();
            }
            info.dwTypeData = pszText;
            success = OS.SetMenuItemInfo(hMenu, this.id, false, info);
        }
        if (pszText != 0) {
            OS.HeapFree(hHeap, 0, pszText);
        }
        if (!success) {
            this.error(13);
        }
        this.parent.redraw();
    }

    int widgetStyle() {
        int bits = 0;
        Decorations shell = this.parent.parent;
        if ((shell.style & 0x8000000) != 0) {
            if ((this.parent.style & 0x2000000) != 0) {
                bits |= 0x6000;
            }
        } else if ((this.parent.style & 0x4000000) != 0) {
            bits |= 0x6000;
        }
        if ((this.style & 2) != 0) {
            return bits | 0x800;
        }
        if ((this.style & 0x10) != 0) {
            return bits | 0x200;
        }
        return bits;
    }

    LRESULT wmCommandChild(int wParam, int lParam) {
        if ((this.style & 0x20) != 0) {
            this.setSelection(!this.getSelection());
        } else if ((this.style & 0x10) != 0) {
            if ((this.parent.getStyle() & 0x400000) != 0) {
                this.setSelection(!this.getSelection());
            } else {
                this.selectRadio();
            }
        }
        this.sendSelectionEvent(13);
        return null;
    }

    LRESULT wmDrawChild(int wParam, int lParam) {
        DRAWITEMSTRUCT struct = new DRAWITEMSTRUCT();
        OS.MoveMemory(struct, lParam, DRAWITEMSTRUCT.sizeof);
        if (this.image != null) {
            GCData data = new GCData();
            data.device = this.display;
            GC gc = GC.win32_new(struct.hDC, data);
            int x = (this.parent.style & 2) != 0 ? MARGIN_WIDTH * 2 : struct.left;
            Image image = this.getEnabled() ? this.image : new Image((Device)this.display, this.image, 1);
            gc.drawImage(image, x, struct.top + MARGIN_HEIGHT);
            if (this.image != image) {
                image.dispose();
            }
            gc.dispose();
        }
        if (this.parent.foreground != -1) {
            OS.SetTextColor(struct.hDC, this.parent.foreground);
        }
        return null;
    }

    LRESULT wmMeasureChild(int wParam, int lParam) {
        MEASUREITEMSTRUCT struct = new MEASUREITEMSTRUCT();
        OS.MoveMemory(struct, lParam, MEASUREITEMSTRUCT.sizeof);
        int width = 0;
        int height = 0;
        if (this.image != null) {
            Rectangle rect = this.image.getBounds();
            width = rect.width;
            height = rect.height;
        } else {
            MENUINFO lpcmi = new MENUINFO();
            lpcmi.cbSize = MENUINFO.sizeof;
            lpcmi.fMask = 16;
            int hMenu = this.parent.handle;
            OS.GetMenuInfo(hMenu, lpcmi);
            if ((lpcmi.dwStyle & 0x4000000) == 0) {
                MenuItem[] items = this.parent.getItems();
                int i = 0;
                while (i < items.length) {
                    MenuItem item = items[i];
                    if (item.image != null) {
                        Rectangle rect = item.image.getBounds();
                        width = Math.max(width, rect.width);
                    }
                    ++i;
                }
            }
        }
        if (width != 0 || height != 0) {
            struct.itemWidth = width + MARGIN_WIDTH * 2;
            struct.itemHeight = height + MARGIN_HEIGHT * 2;
            OS.MoveMemory(lParam, struct, MEASUREITEMSTRUCT.sizeof);
        }
        return null;
    }
}

