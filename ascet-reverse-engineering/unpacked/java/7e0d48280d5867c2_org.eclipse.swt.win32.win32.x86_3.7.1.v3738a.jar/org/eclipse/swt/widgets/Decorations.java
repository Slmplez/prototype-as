/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.ACCEL;
import org.eclipse.swt.internal.win32.CREATESTRUCT;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.MENUITEMINFO;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.STARTUPINFO;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.WINDOWPLACEMENT;
import org.eclipse.swt.internal.win32.WINDOWPOS;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Widget;

public class Decorations
extends Canvas {
    Image image;
    Image smallImage;
    Image largeImage;
    Image[] images;
    Menu menuBar;
    Menu[] menus;
    Control savedFocus;
    Button defaultButton;
    Button saveDefault;
    int swFlags;
    int nAccel;
    int hAccel;
    boolean moved;
    boolean resized;
    boolean opened;
    int oldX = Integer.MIN_VALUE;
    int oldY = Integer.MIN_VALUE;
    int oldWidth = Integer.MIN_VALUE;
    int oldHeight = Integer.MIN_VALUE;

    Decorations() {
    }

    public Decorations(Composite parent, int style) {
        super(parent, Decorations.checkStyle(style));
    }

    void _setMaximized(boolean maximized) {
        int n = this.swFlags = maximized ? OS.SW_SHOWMAXIMIZED : OS.SW_RESTORE;
        if (OS.IsWinCE) {
            if (maximized) {
                RECT rect = new RECT();
                OS.SystemParametersInfo(48, 0, rect, 0);
                int width = rect.right - rect.left;
                int height = rect.bottom - rect.top;
                if (OS.IsPPC && this.menuBar != null) {
                    int hwndCB = this.menuBar.hwndCB;
                    RECT rectCB = new RECT();
                    OS.GetWindowRect(hwndCB, rectCB);
                    height -= rectCB.bottom - rectCB.top;
                }
                int flags = 52;
                this.SetWindowPos(this.handle, 0, rect.left, rect.top, width, height, flags);
            }
        } else {
            if (!OS.IsWindowVisible(this.handle)) {
                return;
            }
            if (maximized == OS.IsZoomed(this.handle)) {
                return;
            }
            OS.ShowWindow(this.handle, this.swFlags);
            OS.UpdateWindow(this.handle);
        }
    }

    void _setMinimized(boolean minimized) {
        if (OS.IsWinCE) {
            return;
        }
        int n = this.swFlags = minimized ? 7 : OS.SW_RESTORE;
        if (!OS.IsWindowVisible(this.handle)) {
            return;
        }
        if (minimized == OS.IsIconic(this.handle)) {
            return;
        }
        int flags = this.swFlags;
        if (flags == 7 && this.handle == OS.GetActiveWindow()) {
            flags = 6;
        }
        OS.ShowWindow(this.handle, flags);
        OS.UpdateWindow(this.handle);
    }

    void addMenu(Menu menu) {
        if (this.menus == null) {
            this.menus = new Menu[4];
        }
        int i = 0;
        while (i < this.menus.length) {
            if (this.menus[i] == null) {
                this.menus[i] = menu;
                return;
            }
            ++i;
        }
        Menu[] newMenus = new Menu[this.menus.length + 4];
        newMenus[this.menus.length] = menu;
        System.arraycopy(this.menus, 0, newMenus, 0, this.menus.length);
        this.menus = newMenus;
    }

    void bringToTop() {
        OS.BringWindowToTop(this.handle);
    }

    static int checkStyle(int style) {
        if ((style & 8) != 0) {
            style &= 0xFFFFF30F;
        }
        if (OS.IsWinCE) {
            if ((style & 0x80) != 0) {
                style &= 0xFFFFFF7F;
            }
            if ((style & 0x400) != 0) {
                style &= 0xFFFFFBFF;
            }
            return style;
        }
        if ((style & 0x4C0) != 0) {
            style |= 0x20;
        }
        if ((style & 0x480) != 0) {
            style |= 0x40;
        }
        if ((style & 0x40) != 0) {
            style |= 0x20;
        }
        return style;
    }

    void checkBorder() {
    }

    void checkComposited(Composite parent) {
    }

    void checkOpened() {
        if (!this.opened) {
            this.resized = false;
        }
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        return OS.DefMDIChildProc(hwnd, msg, wParam, lParam);
    }

    void closeWidget() {
        Event event = new Event();
        this.sendEvent(21, event);
        if (event.doit && !this.isDisposed()) {
            this.dispose();
        }
    }

    int compare(ImageData data1, ImageData data2, int width, int height, int depth) {
        int value2;
        int value1 = Math.abs(data1.width - width);
        if (value1 == (value2 = Math.abs(data2.width - width))) {
            int transparent2;
            int transparent1 = data1.getTransparencyType();
            if (transparent1 == (transparent2 = data2.getTransparencyType())) {
                if (data1.depth == data2.depth) {
                    return 0;
                }
                return data1.depth > data2.depth && data1.depth <= depth ? -1 : 1;
            }
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(5, 1)) {
                if (transparent1 == 1) {
                    return -1;
                }
                if (transparent2 == 1) {
                    return 1;
                }
            }
            if (transparent1 == 2) {
                return -1;
            }
            if (transparent2 == 2) {
                return 1;
            }
            if (transparent1 == 4) {
                return -1;
            }
            if (transparent2 == 4) {
                return 1;
            }
            return 0;
        }
        return value1 < value2 ? -1 : 1;
    }

    Widget computeTabGroup() {
        return this;
    }

    Control computeTabRoot() {
        return this;
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkWidget();
        RECT rect = new RECT();
        OS.SetRect(rect, x, y, x + width, y + height);
        int bits1 = OS.GetWindowLong(this.handle, -16);
        int bits2 = OS.GetWindowLong(this.handle, -20);
        boolean hasMenu = OS.IsWinCE ? false : OS.GetMenu(this.handle) != 0;
        OS.AdjustWindowRectEx(rect, bits1, hasMenu, bits2);
        if (this.horizontalBar != null) {
            rect.bottom += OS.GetSystemMetrics(3);
        }
        if (this.verticalBar != null) {
            rect.right += OS.GetSystemMetrics(2);
        }
        if (hasMenu) {
            RECT testRect = new RECT();
            OS.SetRect(testRect, 0, 0, rect.right - rect.left, rect.bottom - rect.top);
            OS.SendMessage(this.handle, 131, 0, testRect);
            while (testRect.bottom - testRect.top < height) {
                if (testRect.bottom - testRect.top == 0) break;
                rect.top -= OS.GetSystemMetrics(15) - OS.GetSystemMetrics(6);
                OS.SetRect(testRect, 0, 0, rect.right - rect.left, rect.bottom - rect.top);
                OS.SendMessage(this.handle, 131, 0, testRect);
            }
        }
        return new Rectangle(rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top);
    }

    void createAccelerators() {
        this.nAccel = 0;
        this.hAccel = 0;
        int maxAccel = 0;
        MenuItem[] items = this.display.items;
        if (this.menuBar == null || items == null) {
            if (!OS.IsPPC) {
                return;
            }
            maxAccel = 1;
        } else {
            maxAccel = OS.IsPPC ? items.length + 1 : items.length;
        }
        ACCEL accel = new ACCEL();
        byte[] buffer1 = new byte[ACCEL.sizeof];
        byte[] buffer2 = new byte[maxAccel * ACCEL.sizeof];
        if (this.menuBar != null && items != null) {
            int i = 0;
            while (i < items.length) {
                MenuItem item = items[i];
                if (item != null && item.accelerator != 0) {
                    Menu menu = item.parent;
                    if (menu.parent == this) {
                        while (menu != null && menu != this.menuBar) {
                            menu = menu.getParentMenu();
                        }
                        if (menu == this.menuBar && item.fillAccel(accel)) {
                            OS.MoveMemory(buffer1, accel, ACCEL.sizeof);
                            System.arraycopy(buffer1, 0, buffer2, this.nAccel * ACCEL.sizeof, ACCEL.sizeof);
                            ++this.nAccel;
                        }
                    }
                }
                ++i;
            }
        }
        if (OS.IsPPC) {
            accel.fVirt = (byte)9;
            accel.key = (short)81;
            accel.cmd = 1;
            OS.MoveMemory(buffer1, accel, ACCEL.sizeof);
            System.arraycopy(buffer1, 0, buffer2, this.nAccel * ACCEL.sizeof, ACCEL.sizeof);
            ++this.nAccel;
        }
        if (this.nAccel != 0) {
            this.hAccel = OS.CreateAcceleratorTable(buffer2, this.nAccel);
        }
    }

    void createHandle() {
        super.createHandle();
        if (this.parent != null || (this.style & 4) != 0) {
            this.setParent();
            this.setSystemMenu();
        }
    }

    void createWidget() {
        super.createWidget();
        this.swFlags = OS.IsWinCE ? OS.SW_SHOWMAXIMIZED : 4;
        this.hAccel = -1;
    }

    void destroyAccelerators() {
        if (this.hAccel != 0 && this.hAccel != -1) {
            OS.DestroyAcceleratorTable(this.hAccel);
        }
        this.hAccel = -1;
    }

    public void dispose() {
        if (this.isDisposed()) {
            return;
        }
        if (!this.isValidThread()) {
            this.error(22);
        }
        if (!(this instanceof Shell)) {
            if (!this.traverseDecorations(true)) {
                Shell shell = this.getShell();
                shell.setFocus();
            }
            this.setVisible(false);
        }
        super.dispose();
    }

    Menu findMenu(int hMenu) {
        if (this.menus == null) {
            return null;
        }
        int i = 0;
        while (i < this.menus.length) {
            Menu menu = this.menus[i];
            if (menu != null && hMenu == menu.handle) {
                return menu;
            }
            ++i;
        }
        return null;
    }

    void fixDecorations(Decorations newDecorations, Control control, Menu[] menus) {
        if (this == newDecorations) {
            return;
        }
        if (control == this.savedFocus) {
            this.savedFocus = null;
        }
        if (control == this.defaultButton) {
            this.defaultButton = null;
        }
        if (control == this.saveDefault) {
            this.saveDefault = null;
        }
        if (menus == null) {
            return;
        }
        Menu menu = control.menu;
        if (menu != null) {
            int index = 0;
            while (index < menus.length) {
                if (menus[index] == menu) {
                    control.setMenu(null);
                    return;
                }
                ++index;
            }
            menu.fixMenus(newDecorations);
            this.destroyAccelerators();
            newDecorations.destroyAccelerators();
        }
    }

    public Rectangle getBounds() {
        this.checkWidget();
        if (!OS.IsWinCE && OS.IsIconic(this.handle)) {
            WINDOWPLACEMENT lpwndpl = new WINDOWPLACEMENT();
            lpwndpl.length = WINDOWPLACEMENT.sizeof;
            OS.GetWindowPlacement(this.handle, lpwndpl);
            int width = lpwndpl.right - lpwndpl.left;
            int height = lpwndpl.bottom - lpwndpl.top;
            return new Rectangle(lpwndpl.left, lpwndpl.top, width, height);
        }
        return super.getBounds();
    }

    public Rectangle getClientArea() {
        this.checkWidget();
        if (OS.IsHPC) {
            Rectangle rect = super.getClientArea();
            if (this.menuBar != null) {
                int hwndCB = this.menuBar.hwndCB;
                int height = OS.CommandBar_Height(hwndCB);
                rect.y += height;
                rect.height = Math.max(0, rect.height - height);
            }
            return rect;
        }
        if (!OS.IsWinCE && OS.IsIconic(this.handle)) {
            WINDOWPLACEMENT lpwndpl = new WINDOWPLACEMENT();
            lpwndpl.length = WINDOWPLACEMENT.sizeof;
            OS.GetWindowPlacement(this.handle, lpwndpl);
            int width = lpwndpl.right - lpwndpl.left;
            int height = lpwndpl.bottom - lpwndpl.top;
            if (this.horizontalBar != null) {
                width -= OS.GetSystemMetrics(3);
            }
            if (this.verticalBar != null) {
                height -= OS.GetSystemMetrics(2);
            }
            RECT rect = new RECT();
            int bits1 = OS.GetWindowLong(this.handle, -16);
            int bits2 = OS.GetWindowLong(this.handle, -20);
            boolean hasMenu = OS.IsWinCE ? false : OS.GetMenu(this.handle) != 0;
            OS.AdjustWindowRectEx(rect, bits1, hasMenu, bits2);
            width = Math.max(0, width - (rect.right - rect.left));
            height = Math.max(0, height - (rect.bottom - rect.top));
            return new Rectangle(0, 0, width, height);
        }
        return super.getClientArea();
    }

    public Button getDefaultButton() {
        this.checkWidget();
        if (this.defaultButton != null && this.defaultButton.isDisposed()) {
            return null;
        }
        return this.defaultButton;
    }

    public Image getImage() {
        this.checkWidget();
        return this.image;
    }

    public Image[] getImages() {
        this.checkWidget();
        if (this.images == null) {
            return new Image[0];
        }
        Image[] result = new Image[this.images.length];
        System.arraycopy(this.images, 0, result, 0, this.images.length);
        return result;
    }

    public Point getLocation() {
        this.checkWidget();
        if (!OS.IsWinCE && OS.IsIconic(this.handle)) {
            WINDOWPLACEMENT lpwndpl = new WINDOWPLACEMENT();
            lpwndpl.length = WINDOWPLACEMENT.sizeof;
            OS.GetWindowPlacement(this.handle, lpwndpl);
            return new Point(lpwndpl.left, lpwndpl.top);
        }
        return super.getLocation();
    }

    public boolean getMaximized() {
        this.checkWidget();
        if (OS.IsWinCE) {
            return this.swFlags == OS.SW_SHOWMAXIMIZED;
        }
        if (OS.IsWindowVisible(this.handle)) {
            return OS.IsZoomed(this.handle);
        }
        return this.swFlags == OS.SW_SHOWMAXIMIZED;
    }

    public Menu getMenuBar() {
        this.checkWidget();
        return this.menuBar;
    }

    public boolean getMinimized() {
        this.checkWidget();
        if (OS.IsWinCE) {
            return false;
        }
        if (OS.IsWindowVisible(this.handle)) {
            return OS.IsIconic(this.handle);
        }
        return this.swFlags == 7;
    }

    String getNameText() {
        return this.getText();
    }

    public Point getSize() {
        this.checkWidget();
        if (!OS.IsWinCE && OS.IsIconic(this.handle)) {
            WINDOWPLACEMENT lpwndpl = new WINDOWPLACEMENT();
            lpwndpl.length = WINDOWPLACEMENT.sizeof;
            OS.GetWindowPlacement(this.handle, lpwndpl);
            int width = lpwndpl.right - lpwndpl.left;
            int height = lpwndpl.bottom - lpwndpl.top;
            return new Point(width, height);
        }
        return super.getSize();
    }

    public String getText() {
        this.checkWidget();
        int length = OS.GetWindowTextLength(this.handle);
        if (length == 0) {
            return "";
        }
        TCHAR buffer = new TCHAR(0, length + 1);
        OS.GetWindowText(this.handle, buffer, length + 1);
        return buffer.toString(0, length);
    }

    public boolean isReparentable() {
        this.checkWidget();
        return false;
    }

    boolean isTabGroup() {
        return true;
    }

    boolean isTabItem() {
        return false;
    }

    Decorations menuShell() {
        return this;
    }

    void releaseChildren(boolean destroy) {
        if (this.menuBar != null) {
            this.menuBar.release(false);
            this.menuBar = null;
        }
        super.releaseChildren(destroy);
        if (this.menus != null) {
            int i = 0;
            while (i < this.menus.length) {
                Menu menu = this.menus[i];
                if (menu != null && !menu.isDisposed()) {
                    menu.dispose();
                }
                ++i;
            }
            this.menus = null;
        }
    }

    void releaseWidget() {
        super.releaseWidget();
        if (this.smallImage != null) {
            this.smallImage.dispose();
        }
        if (this.largeImage != null) {
            this.largeImage.dispose();
        }
        this.image = null;
        this.largeImage = null;
        this.smallImage = null;
        this.images = null;
        this.savedFocus = null;
        this.saveDefault = null;
        this.defaultButton = null;
        if (this.hAccel != 0 && this.hAccel != -1) {
            OS.DestroyAcceleratorTable(this.hAccel);
        }
        this.hAccel = -1;
    }

    void removeMenu(Menu menu) {
        if (this.menus == null) {
            return;
        }
        int i = 0;
        while (i < this.menus.length) {
            if (this.menus[i] == menu) {
                this.menus[i] = null;
                return;
            }
            ++i;
        }
    }

    void reskinChildren(int flags) {
        if (this.menuBar != null) {
            this.menuBar.reskin(flags);
        }
        if (this.menus != null) {
            int i = 0;
            while (i < this.menus.length) {
                Menu menu = this.menus[i];
                if (menu != null) {
                    menu.reskin(flags);
                }
                ++i;
            }
        }
        super.reskinChildren(flags);
    }

    boolean restoreFocus() {
        if (this.display.ignoreRestoreFocus) {
            return true;
        }
        if (this.savedFocus != null && this.savedFocus.isDisposed()) {
            this.savedFocus = null;
        }
        return this.savedFocus != null && this.savedFocus.setSavedFocus();
    }

    void saveFocus() {
        Control control = this.display._getFocusControl();
        if (control != null && control != this && this == control.menuShell()) {
            this.setSavedFocus(control);
        }
    }

    void setBounds(int x, int y, int width, int height, int flags, boolean defer) {
        this.swFlags = 4;
        if (OS.IsWinCE) {
            this.swFlags = OS.SW_RESTORE;
        } else if (OS.IsIconic(this.handle)) {
            this.setPlacement(x, y, width, height, flags);
            return;
        }
        this.forceResize();
        RECT rect = new RECT();
        OS.GetWindowRect(this.handle, rect);
        boolean sameOrigin = true;
        if ((2 & flags) == 0) {
            boolean bl = sameOrigin = rect.left == x && rect.top == y;
            if (!sameOrigin) {
                this.moved = true;
            }
        }
        boolean sameExtent = true;
        if ((1 & flags) == 0) {
            boolean bl = sameExtent = rect.right - rect.left == width && rect.bottom - rect.top == height;
            if (!sameExtent) {
                this.resized = true;
            }
        }
        if (!OS.IsWinCE && OS.IsZoomed(this.handle)) {
            if (sameOrigin && sameExtent) {
                return;
            }
            this.setPlacement(x, y, width, height, flags);
            this._setMaximized(false);
            return;
        }
        super.setBounds(x, y, width, height, flags, defer);
    }

    public void setDefaultButton(Button button) {
        this.checkWidget();
        if (button != null) {
            if (button.isDisposed()) {
                this.error(5);
            }
            if (button.menuShell() != this) {
                this.error(32);
            }
        }
        this.setDefaultButton(button, true);
    }

    void setDefaultButton(Button button, boolean save) {
        if (button == null) {
            if (this.defaultButton == this.saveDefault) {
                if (save) {
                    this.saveDefault = null;
                }
                return;
            }
        } else {
            if ((button.style & 8) == 0) {
                return;
            }
            if (button == this.defaultButton) {
                if (save) {
                    this.saveDefault = this.defaultButton;
                }
                return;
            }
        }
        if (this.defaultButton != null && !this.defaultButton.isDisposed()) {
            this.defaultButton.setDefault(false);
        }
        if ((this.defaultButton = button) == null) {
            this.defaultButton = this.saveDefault;
        }
        if (this.defaultButton != null && !this.defaultButton.isDisposed()) {
            this.defaultButton.setDefault(true);
        }
        if (save) {
            this.saveDefault = this.defaultButton;
        }
        if (this.saveDefault != null && this.saveDefault.isDisposed()) {
            this.saveDefault = null;
        }
    }

    public void setImage(Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        this.image = image;
        this.setImages(image, null);
    }

    void setImages(Image image, Image[] images) {
        if (OS.IsWinCE) {
            return;
        }
        if (this.smallImage != null) {
            this.smallImage.dispose();
        }
        if (this.largeImage != null) {
            this.largeImage.dispose();
        }
        this.largeImage = null;
        this.smallImage = null;
        int hSmallIcon = 0;
        int hLargeIcon = 0;
        Image smallIcon = null;
        Image largeIcon = null;
        if (image != null) {
            smallIcon = largeIcon = image;
        } else if (images != null && images.length > 0) {
            int depth = this.display.getIconDepth();
            ImageData[] datas = null;
            if (images.length > 1) {
                Image[] bestImages = new Image[images.length];
                System.arraycopy(images, 0, bestImages, 0, images.length);
                datas = new ImageData[images.length];
                int i = 0;
                while (i < datas.length) {
                    datas[i] = images[i].getImageData();
                    ++i;
                }
                images = bestImages;
                this.sort(images, datas, OS.GetSystemMetrics(49), OS.GetSystemMetrics(50), depth);
            }
            smallIcon = images[0];
            if (images.length > 1) {
                this.sort(images, datas, OS.GetSystemMetrics(11), OS.GetSystemMetrics(12), depth);
            }
            largeIcon = images[0];
        }
        if (smallIcon != null) {
            switch (smallIcon.type) {
                case 0: {
                    this.smallImage = Display.createIcon(smallIcon);
                    hSmallIcon = this.smallImage.handle;
                    break;
                }
                case 1: {
                    hSmallIcon = smallIcon.handle;
                }
            }
        }
        OS.SendMessage(this.handle, 128, 0, hSmallIcon);
        if (largeIcon != null) {
            switch (largeIcon.type) {
                case 0: {
                    this.largeImage = Display.createIcon(largeIcon);
                    hLargeIcon = this.largeImage.handle;
                    break;
                }
                case 1: {
                    hLargeIcon = largeIcon.handle;
                }
            }
        }
        OS.SendMessage(this.handle, 128, 1, hLargeIcon);
        if (!OS.IsWinCE && hSmallIcon == 0 && hLargeIcon == 0 && (this.style & 0x800) != 0) {
            int flags = 1025;
            OS.RedrawWindow(this.handle, null, 0, flags);
        }
    }

    public void setImages(Image[] images) {
        this.checkWidget();
        if (images == null) {
            this.error(5);
        }
        int i = 0;
        while (i < images.length) {
            if (images[i] == null || images[i].isDisposed()) {
                this.error(5);
            }
            ++i;
        }
        this.images = images;
        this.setImages(null, images);
    }

    public void setMaximized(boolean maximized) {
        this.checkWidget();
        Display.lpStartupInfo = null;
        this._setMaximized(maximized);
    }

    public void setMenuBar(Menu menu) {
        this.checkWidget();
        if (this.menuBar == menu) {
            return;
        }
        if (menu != null) {
            if (menu.isDisposed()) {
                this.error(5);
            }
            if ((menu.style & 2) == 0) {
                this.error(33);
            }
            if (menu.parent != this) {
                this.error(32);
            }
        }
        if (OS.IsWinCE) {
            if (OS.IsHPC) {
                boolean resize;
                boolean bl = resize = this.menuBar != menu;
                if (this.menuBar != null) {
                    OS.CommandBar_Show(this.menuBar.hwndCB, false);
                }
                this.menuBar = menu;
                if (this.menuBar != null) {
                    OS.CommandBar_Show(this.menuBar.hwndCB, true);
                }
                if (resize) {
                    this.sendEvent(11);
                    if (this.isDisposed()) {
                        return;
                    }
                    if (this.layout != null) {
                        this.markLayout(false, false);
                        this.updateLayout(true, false);
                    }
                }
            } else {
                if (OS.IsPPC) {
                    boolean resize;
                    boolean bl = resize = this.getMaximized() && this.menuBar != menu;
                    if (this.menuBar != null) {
                        OS.ShowWindow(this.menuBar.hwndCB, 0);
                    }
                    this.menuBar = menu;
                    if (this.menuBar != null) {
                        OS.ShowWindow(this.menuBar.hwndCB, 5);
                    }
                    if (resize) {
                        this._setMaximized(true);
                    }
                }
                if (OS.IsSP) {
                    if (this.menuBar != null) {
                        OS.ShowWindow(this.menuBar.hwndCB, 0);
                    }
                    this.menuBar = menu;
                    if (this.menuBar != null) {
                        OS.ShowWindow(this.menuBar.hwndCB, 5);
                    }
                }
            }
        } else {
            if (menu != null) {
                this.display.removeBar(menu);
            }
            this.menuBar = menu;
            int hMenu = this.menuBar != null ? this.menuBar.handle : 0;
            OS.SetMenu(this.handle, hMenu);
        }
        this.destroyAccelerators();
    }

    public void setMinimized(boolean minimized) {
        this.checkWidget();
        Display.lpStartupInfo = null;
        this._setMinimized(minimized);
    }

    public void setOrientation(int orientation) {
        super.setOrientation(orientation);
        if (this.menus != null) {
            int i = 0;
            while (i < this.menus.length) {
                Menu menu = this.menus[i];
                if (menu != null && !menu.isDisposed() && (menu.getStyle() & 8) != 0) {
                    menu._setOrientation(menu.getOrientation());
                }
                ++i;
            }
        }
    }

    void setParent() {
        int hwndParent = this.parent.handle;
        this.display.lockActiveWindow = true;
        OS.SetParent(this.handle, hwndParent);
        if (!OS.IsWindowVisible(hwndParent)) {
            OS.ShowWindow(this.handle, 8);
        }
        int bits = OS.GetWindowLong(this.handle, -16);
        OS.SetWindowLong(this.handle, -16, (bits &= 0xBFFFFFFF) | Integer.MIN_VALUE);
        OS.SetWindowLongPtr(this.handle, -12, 0);
        int flags = 19;
        this.SetWindowPos(this.handle, 1, 0, 0, 0, 0, flags);
        this.display.lockActiveWindow = false;
    }

    void setPlacement(int x, int y, int width, int height, int flags) {
        WINDOWPLACEMENT lpwndpl = new WINDOWPLACEMENT();
        lpwndpl.length = WINDOWPLACEMENT.sizeof;
        OS.GetWindowPlacement(this.handle, lpwndpl);
        lpwndpl.showCmd = 8;
        if (OS.IsIconic(this.handle)) {
            lpwndpl.showCmd = 7;
        } else if (OS.IsZoomed(this.handle)) {
            lpwndpl.showCmd = OS.SW_SHOWMAXIMIZED;
        }
        boolean sameOrigin = true;
        if ((flags & 2) == 0) {
            sameOrigin = lpwndpl.left != x || lpwndpl.top != y;
            lpwndpl.right = x + (lpwndpl.right - lpwndpl.left);
            lpwndpl.bottom = y + (lpwndpl.bottom - lpwndpl.top);
            lpwndpl.left = x;
            lpwndpl.top = y;
        }
        boolean sameExtent = true;
        if ((flags & 1) == 0) {
            sameExtent = lpwndpl.right - lpwndpl.left != width || lpwndpl.bottom - lpwndpl.top != height;
            lpwndpl.right = lpwndpl.left + width;
            lpwndpl.bottom = lpwndpl.top + height;
        }
        OS.SetWindowPlacement(this.handle, lpwndpl);
        if (OS.IsIconic(this.handle)) {
            if (sameOrigin) {
                this.moved = true;
                Point location = this.getLocation();
                this.oldX = location.x;
                this.oldY = location.y;
                this.sendEvent(10);
                if (this.isDisposed()) {
                    return;
                }
            }
            if (sameExtent) {
                this.resized = true;
                Rectangle rect = this.getClientArea();
                this.oldWidth = rect.width;
                this.oldHeight = rect.height;
                this.sendEvent(11);
                if (this.isDisposed()) {
                    return;
                }
                if (this.layout != null) {
                    this.markLayout(false, false);
                    this.updateLayout(true, false);
                }
            }
        }
    }

    void setSavedFocus(Control control) {
        this.savedFocus = control;
    }

    void setSystemMenu() {
        if (OS.IsWinCE) {
            return;
        }
        int hMenu = OS.GetSystemMenu(this.handle, false);
        if (hMenu == 0) {
            return;
        }
        int oldCount = OS.GetMenuItemCount(hMenu);
        if ((this.style & 0x10) == 0) {
            OS.DeleteMenu(hMenu, 61440, 0);
        }
        if ((this.style & 0x80) == 0) {
            OS.DeleteMenu(hMenu, 61472, 0);
        }
        if ((this.style & 0x400) == 0) {
            OS.DeleteMenu(hMenu, 61488, 0);
        }
        if ((this.style & 0x480) == 0) {
            OS.DeleteMenu(hMenu, 61728, 0);
        }
        int newCount = OS.GetMenuItemCount(hMenu);
        if ((this.style & 0x40) == 0 || newCount != oldCount) {
            OS.DeleteMenu(hMenu, 61744, 0);
            MENUITEMINFO info = new MENUITEMINFO();
            info.cbSize = MENUITEMINFO.sizeof;
            info.fMask = 2;
            int index = 0;
            while (index < newCount) {
                if (OS.GetMenuItemInfo(hMenu, index, true, info) && info.wID == 61536) break;
                ++index;
            }
            if (index != newCount) {
                OS.DeleteMenu(hMenu, index - 1, 1024);
                if ((this.style & 0x40) == 0) {
                    OS.DeleteMenu(hMenu, 61536, 0);
                }
            }
        }
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        TCHAR buffer = new TCHAR(0, string, true);
        if ((this.state & 0x4000) != 0) {
            int hHeap = OS.GetProcessHeap();
            int byteCount = buffer.length() * TCHAR.sizeof;
            int pszText = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(pszText, buffer, byteCount);
            OS.DefWindowProc(this.handle, 12, 0, pszText);
            if (pszText != 0) {
                OS.HeapFree(hHeap, 0, pszText);
            }
        } else {
            OS.SetWindowText(this.handle, buffer);
        }
    }

    public void setVisible(boolean visible) {
        this.checkWidget();
        if (!this.getDrawing() ? (this.state & 0x10) == 0 == visible : visible == OS.IsWindowVisible(this.handle)) {
            return;
        }
        if (visible) {
            this.sendEvent(22);
            if (this.isDisposed()) {
                return;
            }
            if (OS.IsHPC && this.menuBar != null) {
                int hwndCB = this.menuBar.hwndCB;
                OS.CommandBar_DrawMenuBar(hwndCB, 0);
            }
            if (!this.getDrawing()) {
                this.state &= 0xFFFFFFEF;
            } else {
                if (OS.IsWinCE) {
                    OS.ShowWindow(this.handle, 5);
                } else {
                    STARTUPINFO lpStartUpInfo;
                    if (this.menuBar != null) {
                        this.display.removeBar(this.menuBar);
                        OS.DrawMenuBar(this.handle);
                    }
                    if ((lpStartUpInfo = Display.lpStartupInfo) != null && (lpStartUpInfo.dwFlags & 1) != 0) {
                        OS.ShowWindow(this.handle, lpStartUpInfo.wShowWindow);
                    } else {
                        OS.ShowWindow(this.handle, this.swFlags);
                    }
                }
                if (this.isDisposed()) {
                    return;
                }
                this.opened = true;
                if (!this.moved) {
                    this.moved = true;
                    Point location = this.getLocation();
                    this.oldX = location.x;
                    this.oldY = location.y;
                }
                if (!this.resized) {
                    this.resized = true;
                    Rectangle rect = this.getClientArea();
                    this.oldWidth = rect.width;
                    this.oldHeight = rect.height;
                }
                boolean update = true;
                if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && !OS.IsAppThemed()) {
                    boolean bl = update = !OS.IsHungAppWindow(this.handle);
                }
                if (update) {
                    OS.UpdateWindow(this.handle);
                }
            }
        } else {
            if (!OS.IsWinCE) {
                this.swFlags = OS.IsIconic(this.handle) ? 7 : (OS.IsZoomed(this.handle) ? OS.SW_SHOWMAXIMIZED : 4);
            }
            if (!this.getDrawing()) {
                this.state |= 0x10;
            } else {
                OS.ShowWindow(this.handle, 0);
            }
            if (this.isDisposed()) {
                return;
            }
            this.sendEvent(23);
        }
    }

    void sort(Image[] images, ImageData[] datas, int width, int height, int depth) {
        int length = images.length;
        if (length <= 1) {
            return;
        }
        int gap = length / 2;
        while (gap > 0) {
            int i = gap;
            while (i < length) {
                int j = i - gap;
                while (j >= 0) {
                    if (this.compare(datas[j], datas[j + gap], width, height, depth) >= 0) {
                        Image swap = images[j];
                        images[j] = images[j + gap];
                        images[j + gap] = swap;
                        ImageData swapData = datas[j];
                        datas[j] = datas[j + gap];
                        datas[j + gap] = swapData;
                    }
                    j -= gap;
                }
                ++i;
            }
            gap /= 2;
        }
    }

    boolean translateAccelerator(MSG msg) {
        if (!this.isEnabled() || !this.isActive()) {
            return false;
        }
        if (this.menuBar != null && !this.menuBar.isEnabled()) {
            return false;
        }
        if (this.translateMDIAccelerator(msg) || this.translateMenuAccelerator(msg)) {
            return true;
        }
        Decorations decorations = this.parent.menuShell();
        return decorations.translateAccelerator(msg);
    }

    boolean translateMenuAccelerator(MSG msg) {
        if (this.hAccel == -1) {
            this.createAccelerators();
        }
        return this.hAccel != 0 && OS.TranslateAccelerator(this.handle, this.hAccel, msg) != 0;
    }

    boolean translateMDIAccelerator(MSG msg) {
        if (!(this instanceof Shell)) {
            Shell shell = this.getShell();
            int hwndMDIClient = shell.hwndMDIClient;
            if (hwndMDIClient != 0 && OS.TranslateMDISysAccel(hwndMDIClient, msg)) {
                return true;
            }
            if (msg.message == 256) {
                if (OS.GetKeyState(17) >= 0) {
                    return false;
                }
                switch (msg.wParam) {
                    case 115: {
                        OS.PostMessage(this.handle, 16, 0, 0);
                        return true;
                    }
                    case 117: {
                        if (!this.traverseDecorations(true)) break;
                        return true;
                    }
                }
                return false;
            }
            if (msg.message == 260) {
                switch (msg.wParam) {
                    case 115: {
                        OS.PostMessage(shell.handle, 16, 0, 0);
                        return true;
                    }
                }
                return false;
            }
        }
        return false;
    }

    boolean traverseDecorations(boolean next) {
        Control[] children = this.parent._getChildren();
        int length = children.length;
        int index = 0;
        while (index < length) {
            if (children[index] == this) break;
            ++index;
        }
        int start = index;
        int offset = next ? 1 : -1;
        while ((index = (index + offset + length) % length) != start) {
            Control child = children[index];
            if (child.isDisposed() || !(child instanceof Decorations) || !child.setFocus()) continue;
            return true;
        }
        return false;
    }

    boolean traverseItem(boolean next) {
        return false;
    }

    boolean traverseReturn() {
        if (this.defaultButton == null || this.defaultButton.isDisposed()) {
            return false;
        }
        if (!this.defaultButton.isVisible() || !this.defaultButton.isEnabled()) {
            return false;
        }
        this.defaultButton.click();
        return true;
    }

    CREATESTRUCT widgetCreateStruct() {
        return new CREATESTRUCT();
    }

    int widgetExtStyle() {
        int bits = super.widgetExtStyle() | 0x40;
        bits &= 0xFFFFFDFF;
        if ((this.style & 8) != 0) {
            return bits;
        }
        if (OS.IsPPC && (this.style & 0x40) != 0) {
            bits |= Integer.MIN_VALUE;
        }
        if ((this.style & 0x10) != 0) {
            return bits;
        }
        if ((this.style & 0x800) != 0) {
            bits |= 1;
        }
        return bits;
    }

    int widgetParent() {
        Shell shell = this.getShell();
        return shell.hwndMDIClient();
    }

    int widgetStyle() {
        int bits = super.widgetStyle() & 0xEFFEFFFF;
        bits &= 0xFF7FFFFF;
        if ((this.style & 8) != 0) {
            if (this.parent == null) {
                bits |= 0x80000 | OS.WS_MINIMIZEBOX;
            }
            return bits;
        }
        if ((this.style & 0x20) != 0) {
            bits |= 0xC00000;
        }
        if ((this.style & 0x80) != 0) {
            bits |= OS.WS_MINIMIZEBOX;
        }
        if ((this.style & 0x400) != 0) {
            bits |= OS.WS_MAXIMIZEBOX;
        }
        if ((this.style & 0x10) != 0) {
            if (!OS.IsPPC) {
                bits |= 0x40000;
            }
        } else if ((this.style & 0x800) == 0) {
            bits |= 0x800000;
        }
        if (!OS.IsPPC && !OS.IsSP && (this.style & 0x40) != 0) {
            bits |= 0x80000;
        }
        return bits;
    }

    int windowProc(int hwnd, int msg, int wParam, int lParam) {
        switch (msg) {
            case 32768: 
            case 32769: {
                if (this.hAccel == -1) {
                    this.createAccelerators();
                }
                return msg == 32768 ? this.nAccel : this.hAccel;
            }
        }
        return super.windowProc(hwnd, msg, wParam, lParam);
    }

    LRESULT WM_ACTIVATE(int wParam, int lParam) {
        LRESULT result = super.WM_ACTIVATE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.GetParent(lParam) == this.handle) {
            TCHAR buffer = new TCHAR(0, 128);
            OS.GetClassName(lParam, buffer, buffer.length());
            String className = buffer.toString(0, buffer.strlen());
            if (className.equals("SunAwtWindow")) {
                return LRESULT.ZERO;
            }
        }
        if (OS.LOWORD(wParam) != 0) {
            if (OS.HIWORD(wParam) != 0) {
                return result;
            }
            Control control = this.display.findControl(lParam);
            if ((control == null || control instanceof Shell) && this instanceof Shell) {
                this.sendEvent(26);
                if (this.isDisposed()) {
                    return LRESULT.ZERO;
                }
            }
            if (this.restoreFocus()) {
                return LRESULT.ZERO;
            }
        } else {
            Control control;
            Display display = this.display;
            boolean lockWindow = display.isXMouseActive();
            if (lockWindow) {
                display.lockActiveWindow = true;
            }
            if (((control = display.findControl(lParam)) == null || control instanceof Shell) && this instanceof Shell) {
                this.sendEvent(27);
                if (!this.isDisposed()) {
                    Shell shell = this.getShell();
                    shell.setActiveControl(null);
                }
            }
            if (lockWindow) {
                display.lockActiveWindow = false;
            }
            if (this.isDisposed()) {
                return LRESULT.ZERO;
            }
            this.saveFocus();
        }
        return result;
    }

    LRESULT WM_CLOSE(int wParam, int lParam) {
        LRESULT result = super.WM_CLOSE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.isEnabled() && this.isActive()) {
            this.closeWidget();
        }
        return LRESULT.ZERO;
    }

    LRESULT WM_HOTKEY(int wParam, int lParam) {
        LRESULT result = super.WM_HOTKEY(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.IsSP && OS.HIWORD(lParam) == 27) {
            if ((this.style & 0x40) != 0) {
                OS.PostMessage(this.handle, 16, 0, 0);
            } else {
                OS.SHSendBackToFocusWindow(786, wParam, lParam);
            }
            return LRESULT.ZERO;
        }
        return result;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_KILLFOCUS(wParam, lParam);
        this.saveFocus();
        return result;
    }

    LRESULT WM_MOVE(int wParam, int lParam) {
        if (this.moved) {
            Point location = this.getLocation();
            if (location.x == this.oldX && location.y == this.oldY) {
                return null;
            }
            this.oldX = location.x;
            this.oldY = location.y;
        }
        return super.WM_MOVE(wParam, lParam);
    }

    LRESULT WM_NCACTIVATE(int wParam, int lParam) {
        LRESULT result = super.WM_NCACTIVATE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (wParam == 0) {
            if (this.display.lockActiveWindow) {
                return LRESULT.ZERO;
            }
            Control control = this.display.findControl(lParam);
            if (control != null) {
                Shell shell = this.getShell();
                Decorations decorations = control.menuShell();
                if (decorations.getShell() == shell) {
                    if (this instanceof Shell) {
                        return LRESULT.ONE;
                    }
                    if (this.display.ignoreRestoreFocus && this.display.lastHittest != 1) {
                        result = LRESULT.ONE;
                    }
                }
            }
        }
        if (!(this instanceof Shell)) {
            int hwndShell = this.getShell().handle;
            OS.SendMessage(hwndShell, 134, wParam, lParam);
        }
        return result;
    }

    LRESULT WM_QUERYOPEN(int wParam, int lParam) {
        LRESULT result = super.WM_QUERYOPEN(wParam, lParam);
        if (result != null) {
            return result;
        }
        this.sendEvent(20);
        return result;
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_SETFOCUS(wParam, lParam);
        if (this.isDisposed()) {
            return result;
        }
        if (this.savedFocus != this) {
            this.restoreFocus();
        }
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = null;
        boolean changed = true;
        if (this.resized) {
            int newWidth = 0;
            int newHeight = 0;
            switch (wParam) {
                case 0: 
                case 2: {
                    newWidth = OS.LOWORD(lParam);
                    newHeight = OS.HIWORD(lParam);
                    break;
                }
                case 1: {
                    Rectangle rect = this.getClientArea();
                    newWidth = rect.width;
                    newHeight = rect.height;
                }
            }
            boolean bl = changed = newWidth != this.oldWidth || newHeight != this.oldHeight;
            if (changed) {
                this.oldWidth = newWidth;
                this.oldHeight = newHeight;
            }
        }
        if (changed) {
            result = super.WM_SIZE(wParam, lParam);
            if (this.isDisposed()) {
                return result;
            }
        }
        if (wParam == 1) {
            this.sendEvent(19);
        }
        return result;
    }

    LRESULT WM_SYSCOMMAND(int wParam, int lParam) {
        LRESULT result = super.WM_SYSCOMMAND(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (!(this instanceof Shell)) {
            int cmd = wParam & 0xFFF0;
            switch (cmd) {
                case 61536: {
                    OS.PostMessage(this.handle, 16, 0, 0);
                    return LRESULT.ZERO;
                }
                case 61504: {
                    this.traverseDecorations(true);
                    return LRESULT.ZERO;
                }
            }
        }
        return result;
    }

    LRESULT WM_WINDOWPOSCHANGING(int wParam, int lParam) {
        LRESULT result = super.WM_WINDOWPOSCHANGING(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.display.lockActiveWindow) {
            WINDOWPOS lpwp = new WINDOWPOS();
            OS.MoveMemory(lpwp, lParam, WINDOWPOS.sizeof);
            lpwp.flags |= 4;
            OS.MoveMemory(lParam, lpwp, WINDOWPOS.sizeof);
        }
        return result;
    }
}

