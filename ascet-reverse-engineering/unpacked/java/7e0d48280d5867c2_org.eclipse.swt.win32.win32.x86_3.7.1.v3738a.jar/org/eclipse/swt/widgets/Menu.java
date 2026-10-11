/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.MenuListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.MENUBARINFO;
import org.eclipse.swt.internal.win32.MENUINFO;
import org.eclipse.swt.internal.win32.MENUITEMINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SHMENUBARINFO;
import org.eclipse.swt.internal.win32.TBBUTTON;
import org.eclipse.swt.internal.win32.TBBUTTONINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Decorations;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TypedListener;
import org.eclipse.swt.widgets.Widget;

public class Menu
extends Widget {
    public int handle;
    int x;
    int y;
    int hBrush;
    int hwndCB;
    int id0;
    int id1;
    int foreground = -1;
    int background = -1;
    Image backgroundImage;
    boolean hasLocation;
    MenuItem cascade;
    Decorations parent;
    ImageList imageList;
    static final int ID_PPC = 100;
    static final int ID_SPMM = 102;
    static final int ID_SPBM = 103;
    static final int ID_SPMB = 104;
    static final int ID_SPBB = 105;
    static final int ID_SPSOFTKEY0 = 106;
    static final int ID_SPSOFTKEY1 = 107;

    public Menu(Control parent) {
        this(Menu.checkNull(parent).menuShell(), 8);
    }

    public Menu(Decorations parent, int style) {
        this(parent, Menu.checkStyle(style), 0);
    }

    public Menu(Menu parentMenu) {
        this(Menu.checkNull((Menu)parentMenu).parent, 4);
    }

    public Menu(MenuItem parentItem) {
        this(Menu.checkNull((MenuItem)parentItem).parent);
    }

    Menu(Decorations parent, int style, int handle) {
        super(parent, Menu.checkStyle(style));
        this.parent = parent;
        this.handle = handle;
        this.checkOrientation(parent);
        this.createWidget();
    }

    void _setVisible(boolean visible) {
        if ((this.style & 6) != 0) {
            return;
        }
        int hwndParent = this.parent.handle;
        if (visible) {
            boolean success;
            int flags = 0;
            if (OS.GetKeyState(1) >= 0) {
                flags |= 2;
            }
            if ((this.style & 0x4000000) != 0) {
                flags |= 8;
            }
            if ((this.parent.style & 0x8000000) != 0) {
                flags &= 0xFFFFFFF7;
                if ((this.style & 0x2000000) != 0) {
                    flags |= 8;
                }
            }
            int nX = this.x;
            int nY = this.y;
            if (!this.hasLocation) {
                int pos = OS.GetMessagePos();
                nX = OS.GET_X_LPARAM(pos);
                nY = OS.GET_Y_LPARAM(pos);
            }
            if (!(success = OS.TrackPopupMenu(this.handle, flags, nX, nY, 0, hwndParent, null)) && this.GetMenuItemCount(this.handle) == 0) {
                OS.SendMessage(hwndParent, 287, OS.MAKEWPARAM(0, 65535), 0);
            }
        } else {
            OS.SendMessage(hwndParent, 31, 0, 0);
        }
    }

    public void addHelpListener(HelpListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(28, typedListener);
    }

    public void addMenuListener(MenuListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        TypedListener typedListener = new TypedListener(listener);
        this.addListener(23, typedListener);
        this.addListener(22, typedListener);
    }

    static Control checkNull(Control control) {
        if (control == null) {
            SWT.error(4);
        }
        return control;
    }

    static Menu checkNull(Menu menu) {
        if (menu == null) {
            SWT.error(4);
        }
        return menu;
    }

    static MenuItem checkNull(MenuItem item) {
        if (item == null) {
            SWT.error(4);
        }
        return item;
    }

    static int checkStyle(int style) {
        return Menu.checkBits(style, 8, 2, 4, 0, 0, 0);
    }

    void createHandle() {
        if (this.handle != 0) {
            return;
        }
        if ((this.style & 2) != 0) {
            if (OS.IsPPC) {
                int hwndShell = this.parent.handle;
                SHMENUBARINFO mbi = new SHMENUBARINFO();
                mbi.cbSize = SHMENUBARINFO.sizeof;
                mbi.hwndParent = hwndShell;
                mbi.dwFlags = 2;
                mbi.nToolBarId = 100;
                mbi.hInstRes = OS.GetLibraryHandle();
                boolean success = OS.SHCreateMenuBar(mbi);
                this.hwndCB = mbi.hwndMB;
                if (!success) {
                    this.error(2);
                }
                OS.SendMessage(this.hwndCB, 1046, 0, 0);
                return;
            }
            if (OS.IsSP) {
                MenuItem item;
                Menu menu;
                int hMenu;
                int nToolBarId = (this.style & 0x80000) != 0 ? ((this.style & 0x100000) != 0 ? 105 : 103) : ((this.style & 0x100000) != 0 ? 104 : 102);
                SHMENUBARINFO mbi = new SHMENUBARINFO();
                mbi.cbSize = SHMENUBARINFO.sizeof;
                mbi.hwndParent = this.parent.handle;
                mbi.dwFlags = 2;
                mbi.nToolBarId = nToolBarId;
                mbi.hInstRes = OS.GetLibraryHandle();
                if (!OS.SHCreateMenuBar(mbi)) {
                    this.error(2);
                }
                this.hwndCB = mbi.hwndMB;
                OS.ShowWindow(this.hwndCB, 0);
                TBBUTTONINFO info = new TBBUTTONINFO();
                info.cbSize = TBBUTTONINFO.sizeof;
                info.dwMask = 32;
                if (nToolBarId == 102 || nToolBarId == 104) {
                    hMenu = OS.SendMessage(this.hwndCB, 1425, 0, 106);
                    OS.RemoveMenu(hMenu, 0, 1024);
                    menu = new Menu(this.parent, 4, hMenu);
                    item = new MenuItem(this, menu, 64, 0);
                } else {
                    item = new MenuItem(this, null, 8, 0);
                }
                info.idCommand = this.id0 = item.id;
                OS.SendMessage(this.hwndCB, OS.TB_SETBUTTONINFO, 106, info);
                if (nToolBarId == 102 || nToolBarId == 103) {
                    hMenu = OS.SendMessage(this.hwndCB, 1425, 0, 107);
                    OS.RemoveMenu(hMenu, 0, 1024);
                    menu = new Menu(this.parent, 4, hMenu);
                    item = new MenuItem(this, menu, 64, 1);
                } else {
                    item = new MenuItem(this, null, 8, 1);
                }
                info.idCommand = this.id1 = item.id;
                OS.SendMessage(this.hwndCB, OS.TB_SETBUTTONINFO, 107, info);
                int dwMask = 3;
                int lParam = OS.MAKELPARAM(dwMask, dwMask);
                OS.SendMessage(this.hwndCB, 1427, 27, lParam);
                return;
            }
            this.handle = OS.CreateMenu();
            if (this.handle == 0) {
                this.error(2);
            }
            if (OS.IsHPC) {
                int hwndShell = this.parent.handle;
                this.hwndCB = OS.CommandBar_Create(OS.GetModuleHandle(null), hwndShell, 1);
                if (this.hwndCB == 0) {
                    this.error(2);
                }
                OS.CommandBar_Show(this.hwndCB, false);
                OS.CommandBar_InsertMenubarEx(this.hwndCB, 0, this.handle, 0);
                if ((this.parent.style & 0x40) != 0 && (this.parent.style & 0x20) == 0) {
                    OS.CommandBar_AddAdornments(this.hwndCB, 0, 0);
                }
            }
        } else {
            this.handle = OS.CreatePopupMenu();
            if (this.handle == 0) {
                this.error(2);
            }
        }
    }

    void createItem(MenuItem item, int index) {
        int count = this.GetMenuItemCount(this.handle);
        if (index < 0 || index > count) {
            this.error(6);
        }
        this.display.addMenuItem(item);
        boolean success = false;
        if ((OS.IsPPC || OS.IsSP) && this.hwndCB != 0) {
            if (OS.IsSP) {
                return;
            }
            TBBUTTON lpButton = new TBBUTTON();
            lpButton.idCommand = item.id;
            lpButton.fsStyle = (byte)16;
            if ((item.style & 0x40) != 0) {
                lpButton.fsStyle = (byte)(lpButton.fsStyle | 0x88);
            }
            if ((item.style & 2) != 0) {
                lpButton.fsStyle = 1;
            }
            lpButton.fsState = (byte)4;
            lpButton.iBitmap = -2;
            success = OS.SendMessage(this.hwndCB, OS.TB_INSERTBUTTON, index, lpButton) != 0;
        } else if (OS.IsWinCE) {
            int uFlags = 1024;
            TCHAR lpNewItem = null;
            if ((item.style & 2) != 0) {
                uFlags |= 0x800;
            } else {
                lpNewItem = new TCHAR(0, " ", true);
            }
            success = OS.InsertMenu(this.handle, index, uFlags, item.id, lpNewItem);
            if (success) {
                MENUITEMINFO info = new MENUITEMINFO();
                info.cbSize = MENUITEMINFO.sizeof;
                info.fMask = 32;
                info.dwItemData = item.id;
                success = OS.SetMenuItemInfo(this.handle, index, true, info);
            }
        } else {
            int hHeap = OS.GetProcessHeap();
            TCHAR buffer = new TCHAR(0, " ", true);
            int byteCount = buffer.length() * TCHAR.sizeof;
            int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(pszText, buffer, byteCount);
            MENUITEMINFO info = new MENUITEMINFO();
            info.cbSize = MENUITEMINFO.sizeof;
            info.fMask = 50;
            info.wID = item.id;
            info.dwItemData = item.id;
            info.fType = item.widgetStyle();
            info.dwTypeData = pszText;
            success = OS.InsertMenuItem(this.handle, index, true, info);
            if (pszText != 0) {
                OS.HeapFree(hHeap, 0, pszText);
            }
        }
        if (!success) {
            this.display.removeMenuItem(item);
            this.error(14);
        }
        this.redraw();
    }

    void createWidget() {
        this.createHandle();
        this.parent.addMenu(this);
    }

    int defaultBackground() {
        return OS.GetSysColor(OS.COLOR_MENU);
    }

    int defaultForeground() {
        return OS.GetSysColor(OS.COLOR_MENUTEXT);
    }

    void destroyAccelerators() {
        this.parent.destroyAccelerators();
    }

    void destroyItem(MenuItem item) {
        if (OS.IsWinCE) {
            if ((OS.IsPPC || OS.IsSP) && this.hwndCB != 0) {
                int count;
                if (OS.IsSP) {
                    this.redraw();
                    return;
                }
                int index = OS.SendMessage(this.hwndCB, 1049, item.id, 0);
                if (OS.SendMessage(this.hwndCB, 1046, index, 0) == 0) {
                    this.error(15);
                }
                if ((count = OS.SendMessage(this.hwndCB, 1048, 0, 0)) == 0 && this.imageList != null) {
                    OS.SendMessage(this.handle, 1072, 0, 0);
                    this.display.releaseImageList(this.imageList);
                    this.imageList = null;
                }
            } else {
                int index = 0;
                MENUITEMINFO info = new MENUITEMINFO();
                info.cbSize = MENUITEMINFO.sizeof;
                info.fMask = 32;
                while (OS.GetMenuItemInfo(this.handle, index, true, info)) {
                    if (info.dwItemData == item.id) break;
                    ++index;
                }
                if (info.dwItemData != item.id) {
                    this.error(15);
                }
                if (!OS.DeleteMenu(this.handle, index, 1024)) {
                    this.error(15);
                }
            }
        } else if (!OS.DeleteMenu(this.handle, item.id, 0)) {
            this.error(15);
        }
        this.redraw();
    }

    void destroyWidget() {
        MenuItem cascade = this.cascade;
        int hMenu = this.handle;
        int hCB = this.hwndCB;
        this.releaseHandle();
        if (OS.IsWinCE && hCB != 0) {
            OS.CommandBar_Destroy(hCB);
        } else if (cascade != null) {
            if (!OS.IsSP) {
                cascade.setMenu(null, true);
            }
        } else if (hMenu != 0) {
            OS.DestroyMenu(hMenu);
        }
    }

    void fixMenus(Decorations newParent) {
        MenuItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            items[i].fixMenus(newParent);
            ++i;
        }
        this.parent.removeMenu(this);
        newParent.addMenu(this);
        this.parent = newParent;
    }

    Color getBackground() {
        this.checkWidget();
        return Color.win32_new(this.display, this.background != -1 ? this.background : this.defaultBackground());
    }

    Image getBackgroundImage() {
        this.checkWidget();
        return this.backgroundImage;
    }

    Rectangle getBounds() {
        this.checkWidget();
        if (OS.IsWinCE) {
            return new Rectangle(0, 0, 0, 0);
        }
        if ((this.style & 2) != 0) {
            if (this.parent.menuBar != this) {
                return new Rectangle(0, 0, 0, 0);
            }
            int hwndShell = this.parent.handle;
            MENUBARINFO info = new MENUBARINFO();
            info.cbSize = MENUBARINFO.sizeof;
            if (OS.GetMenuBarInfo(hwndShell, -3, 0, info)) {
                int width = info.right - info.left;
                int height = info.bottom - info.top;
                return new Rectangle(info.left, info.top, width, height);
            }
        } else {
            RECT rect2;
            RECT rect1;
            int count = this.GetMenuItemCount(this.handle);
            if (count != 0 && OS.GetMenuItemRect(0, this.handle, 0, rect1 = new RECT()) && OS.GetMenuItemRect(0, this.handle, count - 1, rect2 = new RECT())) {
                int x = rect1.left - 2;
                int y = rect1.top - 2;
                int width = rect2.right - rect2.left + 4;
                int height = rect2.bottom - rect1.top + 4;
                return new Rectangle(x, y, width, height);
            }
        }
        return new Rectangle(0, 0, 0, 0);
    }

    public MenuItem getDefaultItem() {
        this.checkWidget();
        if (OS.IsWinCE) {
            return null;
        }
        int id = OS.GetMenuDefaultItem(this.handle, 0, 1);
        if (id == -1) {
            return null;
        }
        MENUITEMINFO info = new MENUITEMINFO();
        info.cbSize = MENUITEMINFO.sizeof;
        info.fMask = 2;
        if (OS.GetMenuItemInfo(this.handle, id, false, info)) {
            return this.display.getMenuItem(info.wID);
        }
        return null;
    }

    public boolean getEnabled() {
        this.checkWidget();
        return (this.state & 8) == 0;
    }

    Color getForeground() {
        this.checkWidget();
        return Color.win32_new(this.display, this.foreground != -1 ? this.foreground : this.defaultForeground());
    }

    public MenuItem getItem(int index) {
        this.checkWidget();
        int id = 0;
        if ((OS.IsPPC || OS.IsSP) && this.hwndCB != 0) {
            if (OS.IsPPC) {
                TBBUTTON lpButton = new TBBUTTON();
                int result = OS.SendMessage(this.hwndCB, 1047, index, lpButton);
                if (result == 0) {
                    this.error(8);
                }
                id = lpButton.idCommand;
            }
            if (OS.IsSP) {
                if (index < 0 || index > 1) {
                    this.error(8);
                }
                id = index == 0 ? this.id0 : this.id1;
            }
        } else {
            MENUITEMINFO info = new MENUITEMINFO();
            info.cbSize = MENUITEMINFO.sizeof;
            info.fMask = 32;
            if (!OS.GetMenuItemInfo(this.handle, index, true, info)) {
                this.error(6);
            }
            id = info.dwItemData;
        }
        return this.display.getMenuItem(id);
    }

    public int getItemCount() {
        this.checkWidget();
        return this.GetMenuItemCount(this.handle);
    }

    public MenuItem[] getItems() {
        this.checkWidget();
        if ((OS.IsPPC || OS.IsSP) && this.hwndCB != 0) {
            if (OS.IsSP) {
                MenuItem[] result = new MenuItem[]{this.display.getMenuItem(this.id0), this.display.getMenuItem(this.id1)};
                return result;
            }
            int count = OS.SendMessage(this.hwndCB, 1048, 0, 0);
            TBBUTTON lpButton = new TBBUTTON();
            MenuItem[] result = new MenuItem[count];
            int i = 0;
            while (i < count) {
                OS.SendMessage(this.hwndCB, 1047, i, lpButton);
                result[i] = this.display.getMenuItem(lpButton.idCommand);
                ++i;
            }
            return result;
        }
        int index = 0;
        int count = 0;
        int length = OS.IsWinCE ? 4 : OS.GetMenuItemCount(this.handle);
        MenuItem[] items = new MenuItem[length];
        MENUITEMINFO info = new MENUITEMINFO();
        info.cbSize = MENUITEMINFO.sizeof;
        info.fMask = 32;
        while (OS.GetMenuItemInfo(this.handle, index, true, info)) {
            MenuItem item;
            if (count == items.length) {
                MenuItem[] newItems = new MenuItem[count + 4];
                System.arraycopy(items, 0, newItems, 0, count);
                items = newItems;
            }
            if ((item = this.display.getMenuItem(info.dwItemData)) != null) {
                items[count++] = item;
            }
            ++index;
        }
        if (count == items.length) {
            return items;
        }
        MenuItem[] result = new MenuItem[count];
        System.arraycopy(items, 0, result, 0, count);
        return result;
    }

    int GetMenuItemCount(int handle) {
        if (OS.IsWinCE) {
            if ((OS.IsPPC || OS.IsSP) && this.hwndCB != 0) {
                return OS.IsSP ? 2 : OS.SendMessage(this.hwndCB, 1048, 0, 0);
            }
            int count = 0;
            MENUITEMINFO info = new MENUITEMINFO();
            info.cbSize = MENUITEMINFO.sizeof;
            while (OS.GetMenuItemInfo(handle, count, true, info)) {
                ++count;
            }
            return count;
        }
        return OS.GetMenuItemCount(handle);
    }

    String getNameText() {
        String result = "";
        MenuItem[] items = this.getItems();
        int length = items.length;
        if (length > 0) {
            int i = 0;
            while (i < length - 1) {
                result = String.valueOf(result) + items[i].getNameText() + ", ";
                ++i;
            }
            result = String.valueOf(result) + items[length - 1].getNameText();
        }
        return result;
    }

    public int getOrientation() {
        this.checkWidget();
        return this.style & 0x6000000;
    }

    public Decorations getParent() {
        this.checkWidget();
        return this.parent;
    }

    public MenuItem getParentItem() {
        this.checkWidget();
        return this.cascade;
    }

    public Menu getParentMenu() {
        this.checkWidget();
        if (this.cascade != null) {
            return this.cascade.parent;
        }
        return null;
    }

    public Shell getShell() {
        this.checkWidget();
        return this.parent.getShell();
    }

    public boolean getVisible() {
        this.checkWidget();
        if ((this.style & 2) != 0) {
            return this == this.parent.menuShell().menuBar;
        }
        if ((this.style & 8) != 0) {
            Menu[] popups = this.display.popups;
            if (popups == null) {
                return false;
            }
            int i = 0;
            while (i < popups.length) {
                if (popups[i] == this) {
                    return true;
                }
                ++i;
            }
        }
        Shell shell = this.getShell();
        Menu menu = shell.activeMenu;
        while (menu != null && menu != this) {
            menu = menu.getParentMenu();
        }
        return this == menu;
    }

    int imageIndex(Image image) {
        if (this.hwndCB == 0 || image == null) {
            return -2;
        }
        if (this.imageList == null) {
            Rectangle bounds = image.getBounds();
            this.imageList = this.display.getImageList(this.style & 0x4000000, bounds.width, bounds.height);
            int index = this.imageList.add(image);
            int hImageList = this.imageList.getHandle();
            OS.SendMessage(this.hwndCB, 1072, 0, hImageList);
            return index;
        }
        int index = this.imageList.indexOf(image);
        if (index == -1) {
            index = this.imageList.add(image);
        } else {
            this.imageList.put(index, image);
        }
        return index;
    }

    public int indexOf(MenuItem item) {
        this.checkWidget();
        if (item == null) {
            this.error(4);
        }
        if (item.isDisposed()) {
            this.error(5);
        }
        if (item.parent != this) {
            return -1;
        }
        if ((OS.IsPPC || OS.IsSP) && this.hwndCB != 0) {
            if (OS.IsPPC) {
                return OS.SendMessage(this.hwndCB, 1049, item.id, 0);
            }
            if (OS.IsSP) {
                if (item.id == this.id0) {
                    return 0;
                }
                if (item.id == this.id1) {
                    return 1;
                }
                return -1;
            }
        }
        int index = 0;
        MENUITEMINFO info = new MENUITEMINFO();
        info.cbSize = MENUITEMINFO.sizeof;
        info.fMask = 32;
        while (OS.GetMenuItemInfo(this.handle, index, true, info)) {
            if (info.dwItemData == item.id) {
                return index;
            }
            ++index;
        }
        return -1;
    }

    public boolean isEnabled() {
        this.checkWidget();
        Menu parentMenu = this.getParentMenu();
        if (parentMenu == null) {
            return this.getEnabled() && this.parent.isEnabled();
        }
        return this.getEnabled() && parentMenu.isEnabled();
    }

    public boolean isVisible() {
        this.checkWidget();
        return this.getVisible();
    }

    void redraw() {
        if (!this.isVisible()) {
            return;
        }
        if ((this.style & 2) != 0) {
            this.display.addBar(this);
        } else {
            this.update();
        }
    }

    void releaseHandle() {
        super.releaseHandle();
        this.hwndCB = 0;
        this.handle = 0;
        this.cascade = null;
    }

    void releaseChildren(boolean destroy) {
        MenuItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            MenuItem item = items[i];
            if (item != null && !item.isDisposed()) {
                if (OS.IsPPC && this.hwndCB != 0) {
                    item.dispose();
                } else {
                    item.release(false);
                }
            }
            ++i;
        }
        super.releaseChildren(destroy);
    }

    void releaseParent() {
        super.releaseParent();
        if ((this.style & 2) != 0) {
            this.display.removeBar(this);
            if (this == this.parent.menuBar) {
                this.parent.setMenuBar(null);
            }
        } else if ((this.style & 8) != 0) {
            this.display.removePopup(this);
        }
    }

    void releaseWidget() {
        super.releaseWidget();
        this.backgroundImage = null;
        if (this.hBrush == 0) {
            OS.DeleteObject(this.hBrush);
        }
        this.hBrush = 0;
        if (OS.IsPPC && this.hwndCB != 0 && this.imageList != null) {
            OS.SendMessage(this.hwndCB, 1072, 0, 0);
            this.display.releaseToolImageList(this.imageList);
            this.imageList = null;
        }
        if (this.parent != null) {
            this.parent.removeMenu(this);
        }
        this.parent = null;
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

    public void removeMenuListener(MenuListener listener) {
        this.checkWidget();
        if (listener == null) {
            this.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(23, listener);
        this.eventTable.unhook(22, listener);
    }

    void reskinChildren(int flags) {
        MenuItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            MenuItem item = items[i];
            item.reskin(flags);
            ++i;
        }
        super.reskinChildren(flags);
    }

    void setBackground(Color color) {
        this.checkWidget();
        int pixel = -1;
        if (color != null) {
            if (color.isDisposed()) {
                SWT.error(5);
            }
            pixel = color.handle;
        }
        if (pixel == this.background) {
            return;
        }
        this.background = pixel;
        this.updateBackground();
    }

    void setBackgroundImage(Image image) {
        this.checkWidget();
        if (image != null) {
            if (image.isDisposed()) {
                this.error(5);
            }
            if (image.type != 0) {
                this.error(5);
            }
        }
        if (this.backgroundImage == image) {
            return;
        }
        this.backgroundImage = image;
        this.updateBackground();
    }

    void setForeground(Color color) {
        this.checkWidget();
        int pixel = -1;
        if (color != null) {
            if (color.isDisposed()) {
                SWT.error(5);
            }
            pixel = color.handle;
        }
        if (pixel == this.foreground) {
            return;
        }
        this.foreground = pixel;
        this.updateForeground();
    }

    public void setDefaultItem(MenuItem item) {
        this.checkWidget();
        int newID = -1;
        if (item != null) {
            if (item.isDisposed()) {
                this.error(5);
            }
            if (item.parent != this) {
                return;
            }
            newID = item.id;
        }
        if (OS.IsWinCE) {
            return;
        }
        int oldID = OS.GetMenuDefaultItem(this.handle, 0, 1);
        if (newID == oldID) {
            return;
        }
        OS.SetMenuDefaultItem(this.handle, newID, 0);
        this.redraw();
    }

    public void setEnabled(boolean enabled) {
        this.checkWidget();
        this.state &= 0xFFFFFFF7;
        if (!enabled) {
            this.state |= 8;
        }
    }

    public void setLocation(int x, int y) {
        this.checkWidget();
        if ((this.style & 6) != 0) {
            return;
        }
        this.x = x;
        this.y = y;
        this.hasLocation = true;
    }

    public void setLocation(Point location) {
        this.checkWidget();
        if (location == null) {
            SWT.error(4);
        }
        this.setLocation(location.x, location.y);
    }

    public void setOrientation(int orientation) {
        this.checkWidget();
        if ((this.style & 6) != 0) {
            return;
        }
        this._setOrientation(orientation);
    }

    void _setOrientation(int orientation) {
        if (OS.IsWinCE) {
            return;
        }
        if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return;
        }
        int flags = 0x6000000;
        if ((orientation & flags) == 0 || (orientation & flags) == flags) {
            return;
        }
        this.style &= ~flags;
        this.style |= orientation & flags;
        MenuItem[] itms = this.getItems();
        int i = 0;
        while (i < itms.length) {
            itms[i].setOrientation(orientation);
            ++i;
        }
    }

    public void setVisible(boolean visible) {
        this.checkWidget();
        if ((this.style & 6) != 0) {
            return;
        }
        if (visible) {
            this.display.addPopup(this);
        } else {
            this.display.removePopup(this);
            this._setVisible(false);
        }
    }

    void update() {
        if (OS.IsPPC || OS.IsSP) {
            return;
        }
        if (OS.IsHPC) {
            Menu menuBar = this.parent.menuBar;
            if (menuBar != null) {
                Menu menu = this;
                while (menu != null && menu != menuBar) {
                    menu = menu.getParentMenu();
                }
                if (menu == menuBar) {
                    OS.CommandBar_DrawMenuBar(menuBar.hwndCB, 0);
                    OS.CommandBar_Show(menuBar.hwndCB, true);
                }
            }
            return;
        }
        if (OS.IsWinCE) {
            return;
        }
        if ((this.style & 2) != 0) {
            if (this == this.parent.menuBar) {
                OS.DrawMenuBar(this.parent.handle);
            }
            return;
        }
        if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return;
        }
        boolean hasCheck = false;
        boolean hasImage = false;
        MenuItem[] items = this.getItems();
        int i = 0;
        while (i < items.length) {
            MenuItem item = items[i];
            if (item.image != null) {
                hasImage = true;
                if (true && hasCheck) break;
            }
            if ((item.style & 0x30) != 0) {
                hasCheck = true;
                if (true && hasImage) break;
            }
            ++i;
        }
        if (!OS.IsWin95 && OS.WIN32_VERSION < OS.VERSION(6, 0)) {
            MENUITEMINFO info = new MENUITEMINFO();
            info.cbSize = MENUITEMINFO.sizeof;
            info.fMask = 128;
            int i2 = 0;
            while (i2 < items.length) {
                MenuItem item = items[i2];
                if ((this.style & 2) == 0 && (item.image == null || this.foreground != -1)) {
                    info.hbmpItem = hasImage || this.foreground != -1 ? -1 : 0;
                    OS.SetMenuItemInfo(this.handle, item.id, false, info);
                }
                ++i2;
            }
        }
        MENUINFO lpcmi = new MENUINFO();
        lpcmi.cbSize = MENUINFO.sizeof;
        lpcmi.fMask = 16;
        OS.GetMenuInfo(this.handle, lpcmi);
        lpcmi.dwStyle = hasImage && !hasCheck ? (lpcmi.dwStyle |= 0x4000000) : (lpcmi.dwStyle &= 0xFBFFFFFF);
        OS.SetMenuInfo(this.handle, lpcmi);
    }

    void updateBackground() {
        if (this.hBrush == 0) {
            OS.DeleteObject(this.hBrush);
        }
        this.hBrush = 0;
        if (this.backgroundImage != null) {
            this.hBrush = OS.CreatePatternBrush(this.backgroundImage.handle);
        } else if (this.background != -1) {
            this.hBrush = OS.CreateSolidBrush(this.background);
        }
        MENUINFO lpcmi = new MENUINFO();
        lpcmi.cbSize = MENUINFO.sizeof;
        lpcmi.fMask = 2;
        lpcmi.hbrBack = this.hBrush;
        OS.SetMenuInfo(this.handle, lpcmi);
    }

    void updateForeground() {
        if (OS.WIN32_VERSION < OS.VERSION(4, 10)) {
            return;
        }
        MENUITEMINFO info = new MENUITEMINFO();
        info.cbSize = MENUITEMINFO.sizeof;
        int index = 0;
        while (OS.GetMenuItemInfo(this.handle, index, true, info)) {
            info.fMask = 128;
            info.hbmpItem = -1;
            OS.SetMenuItemInfo(this.handle, index, true, info);
            ++index;
        }
        this.redraw();
    }
}

