/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.win32.BITMAP;
import org.eclipse.swt.internal.win32.BUTTON_IMAGELIST;
import org.eclipse.swt.internal.win32.DRAWITEMSTRUCT;
import org.eclipse.swt.internal.win32.LRESULT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SIZE;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;
import org.eclipse.swt.internal.win32.WNDCLASS;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.TypedListener;

public class Button
extends Control {
    String text = "";
    String message = "";
    Image image;
    Image image2;
    Image disabledImage;
    ImageList imageList;
    boolean ignoreMouse;
    boolean grayed;
    static final int MARGIN = 4;
    static final int CHECK_WIDTH;
    static final int CHECK_HEIGHT;
    static final int ICON_WIDTH = 128;
    static final int ICON_HEIGHT = 128;
    static boolean COMMAND_LINK;
    static final int ButtonProc;
    static final TCHAR ButtonClass;

    static {
        COMMAND_LINK = false;
        ButtonClass = new TCHAR(0, "BUTTON", true);
        int hBitmap = OS.LoadBitmap(0, 32759);
        if (hBitmap == 0) {
            CHECK_WIDTH = OS.GetSystemMetrics(OS.IsWinCE ? 49 : 2);
            CHECK_HEIGHT = OS.GetSystemMetrics(OS.IsWinCE ? 50 : 20);
        } else {
            BITMAP bitmap = new BITMAP();
            OS.GetObject(hBitmap, BITMAP.sizeof, bitmap);
            OS.DeleteObject(hBitmap);
            CHECK_WIDTH = bitmap.bmWidth / 4;
            CHECK_HEIGHT = bitmap.bmHeight / 3;
        }
        WNDCLASS lpWndClass = new WNDCLASS();
        OS.GetClassInfo(0, ButtonClass, lpWndClass);
        ButtonProc = lpWndClass.lpfnWndProc;
    }

    public Button(Composite parent, int style) {
        super(parent, Button.checkStyle(style));
    }

    void _setImage(Image image) {
        if ((this.style & 0x400000) != 0) {
            return;
        }
        if (OS.COMCTL32_MAJOR >= 6) {
            if (this.imageList != null) {
                this.imageList.dispose();
            }
            this.imageList = null;
            if (image != null) {
                int oldBits;
                this.imageList = new ImageList(this.style & 0x4000000);
                if (OS.IsWindowEnabled(this.handle)) {
                    this.imageList.add(image);
                } else {
                    if (this.disabledImage != null) {
                        this.disabledImage.dispose();
                    }
                    this.disabledImage = new Image((Device)this.display, image, 1);
                    this.imageList.add(this.disabledImage);
                }
                BUTTON_IMAGELIST buttonImageList = new BUTTON_IMAGELIST();
                buttonImageList.himl = this.imageList.getHandle();
                int newBits = oldBits = OS.GetWindowLong(this.handle, -16);
                newBits &= 0xFFFFFCFF;
                if ((this.style & 0x4000) != 0) {
                    newBits |= 0x100;
                }
                if ((this.style & 0x1000000) != 0) {
                    newBits |= 0x300;
                }
                if ((this.style & 0x20000) != 0) {
                    newBits |= 0x200;
                }
                if (this.text.length() == 0) {
                    if ((this.style & 0x4000) != 0) {
                        buttonImageList.uAlign = 0;
                    }
                    if ((this.style & 0x1000000) != 0) {
                        buttonImageList.uAlign = 4;
                    }
                    if ((this.style & 0x20000) != 0) {
                        buttonImageList.uAlign = 1;
                    }
                } else {
                    buttonImageList.uAlign = 0;
                    buttonImageList.margin_left = this.computeLeftMargin();
                    buttonImageList.margin_right = 4;
                    newBits &= 0xFFFFFCFF;
                    newBits |= 0x100;
                }
                if (newBits != oldBits) {
                    OS.SetWindowLong(this.handle, -16, newBits);
                    OS.InvalidateRect(this.handle, null, true);
                }
                OS.SendMessage(this.handle, 5634, 0, buttonImageList);
            } else {
                OS.SendMessage(this.handle, 5634, 0, 0);
            }
            OS.InvalidateRect(this.handle, null, true);
        } else {
            int newBits;
            if (this.image2 != null) {
                this.image2.dispose();
            }
            this.image2 = null;
            int hImage = 0;
            int imageBits = 0;
            int fImageType = 0;
            if (image != null) {
                Rectangle rect;
                switch (image.type) {
                    case 0: {
                        rect = image.getBounds();
                        ImageData data = image.getImageData();
                        switch (data.getTransparencyType()) {
                            case 4: {
                                if (rect.width <= 128 && rect.height <= 128) {
                                    this.image2 = new Image((Device)this.display, data, data.getTransparencyMask());
                                    hImage = this.image2.handle;
                                    imageBits = 64;
                                    fImageType = 1;
                                    break;
                                }
                            }
                            case 1: {
                                this.image2 = new Image((Device)this.display, rect.width, rect.height);
                                GC gc = new GC(this.image2);
                                gc.setBackground(this.getBackground());
                                gc.fillRectangle(rect);
                                gc.drawImage(image, 0, 0);
                                gc.dispose();
                                hImage = this.image2.handle;
                                imageBits = 128;
                                fImageType = 0;
                                break;
                            }
                            case 0: {
                                hImage = image.handle;
                                imageBits = 128;
                                fImageType = 0;
                            }
                        }
                        break;
                    }
                    case 1: {
                        hImage = image.handle;
                        imageBits = 64;
                        fImageType = 1;
                    }
                }
                if ((this.style & 0x4000000) != 0 && !OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
                    rect = image.getBounds();
                    int hDC = OS.GetDC(this.handle);
                    int dstHdc = OS.CreateCompatibleDC(hDC);
                    int hBitmap = OS.CreateCompatibleBitmap(hDC, rect.width, rect.height);
                    int oldBitmap = OS.SelectObject(dstHdc, hBitmap);
                    OS.SetLayout(dstHdc, 1);
                    if (fImageType == 0) {
                        int srcHdc = OS.CreateCompatibleDC(hDC);
                        int oldSrcBitmap = OS.SelectObject(srcHdc, hImage);
                        OS.SetLayout(dstHdc, 0);
                        OS.BitBlt(dstHdc, 0, 0, rect.width, rect.height, srcHdc, 0, 0, 0xCC0020);
                        OS.SelectObject(srcHdc, oldSrcBitmap);
                        OS.DeleteDC(srcHdc);
                    } else {
                        Control control = this.findBackgroundControl();
                        if (control == null) {
                            control = this;
                        }
                        int newBrush = OS.CreateSolidBrush(control.getBackgroundPixel());
                        int oldBrush = OS.SelectObject(dstHdc, newBrush);
                        OS.PatBlt(dstHdc, 0, 0, rect.width, rect.height, 15728673);
                        OS.DrawIconEx(dstHdc, 0, 0, hImage, 0, 0, 0, 0, 3);
                        OS.SelectObject(dstHdc, oldBrush);
                        OS.DeleteObject(newBrush);
                    }
                    OS.SelectObject(dstHdc, oldBitmap);
                    OS.DeleteDC(dstHdc);
                    OS.ReleaseDC(this.handle, hDC);
                    if (this.image2 != null) {
                        this.image2.dispose();
                    }
                    this.image2 = Image.win32_new(this.display, 0, hBitmap);
                    imageBits = 128;
                    fImageType = 0;
                    hImage = hBitmap;
                }
            }
            int oldBits = newBits = OS.GetWindowLong(this.handle, -16);
            newBits &= 0xFFFFFF3F;
            if ((newBits |= imageBits) != oldBits) {
                OS.SetWindowLong(this.handle, -16, newBits);
            }
            OS.SendMessage(this.handle, 247, fImageType, hImage);
        }
    }

    void _setText(String text) {
        int oldBits;
        int newBits = oldBits = OS.GetWindowLong(this.handle, -16);
        if (OS.COMCTL32_MAJOR >= 6) {
            newBits &= 0xFFFFFCFF;
            if ((this.style & 0x4000) != 0) {
                newBits |= 0x100;
            }
            if ((this.style & 0x1000000) != 0) {
                newBits |= 0x300;
            }
            if ((this.style & 0x20000) != 0) {
                newBits |= 0x200;
            }
            if (this.imageList != null) {
                BUTTON_IMAGELIST buttonImageList = new BUTTON_IMAGELIST();
                buttonImageList.himl = this.imageList.getHandle();
                if (text.length() == 0) {
                    if ((this.style & 0x4000) != 0) {
                        buttonImageList.uAlign = 0;
                    }
                    if ((this.style & 0x1000000) != 0) {
                        buttonImageList.uAlign = 4;
                    }
                    if ((this.style & 0x20000) != 0) {
                        buttonImageList.uAlign = 1;
                    }
                } else {
                    buttonImageList.uAlign = 0;
                    buttonImageList.margin_left = this.computeLeftMargin();
                    buttonImageList.margin_right = 4;
                    newBits &= 0xFFFFFCFF;
                    newBits |= 0x100;
                }
                OS.SendMessage(this.handle, 5634, 0, buttonImageList);
            }
        } else {
            newBits &= 0xFFFFFF3F;
        }
        if (newBits != oldBits) {
            OS.SetWindowLong(this.handle, -16, newBits);
            OS.InvalidateRect(this.handle, null, true);
        }
        if (!((this.style & 0x4000000) == 0 || OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed())) {
            text = OS.IsWindowEnabled(this.handle) ? text : " " + text + " ";
        }
        TCHAR buffer = new TCHAR(this.getCodePage(), text, true);
        OS.SetWindowText(this.handle, buffer);
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

    int callWindowProc(int hwnd, int msg, int wParam, int lParam) {
        if (this.handle == 0) {
            return 0;
        }
        return OS.CallWindowProc(ButtonProc, hwnd, msg, wParam, lParam);
    }

    static int checkStyle(int style) {
        if (((style = Button.checkBits(style, 8, 4, 32, 16, 2, COMMAND_LINK ? 0x400000 : 0)) & 0xA) != 0) {
            return Button.checkBits(style, 0x1000000, 16384, 131072, 0, 0, 0);
        }
        if ((style & 0x30) != 0) {
            return Button.checkBits(style, 16384, 131072, 0x1000000, 0, 0, 0);
        }
        if ((style & 4) != 0) {
            return Button.checkBits(style |= 0x80000, 128, 1024, 16384, 131072, 0, 0);
        }
        return style;
    }

    void click() {
        this.ignoreMouse = true;
        OS.SendMessage(this.handle, 245, 0, 0);
        this.ignoreMouse = false;
    }

    int computeLeftMargin() {
        if (OS.COMCTL32_MAJOR < 6) {
            return 4;
        }
        if ((this.style & 0xA) == 0) {
            return 4;
        }
        int margin = 0;
        if (this.image != null && this.text.length() != 0) {
            Rectangle bounds = this.image.getBounds();
            margin += bounds.width + 8;
            int oldFont = 0;
            int hDC = OS.GetDC(this.handle);
            int newFont = OS.SendMessage(this.handle, 49, 0, 0);
            if (newFont != 0) {
                oldFont = OS.SelectObject(hDC, newFont);
            }
            TCHAR buffer = new TCHAR(this.getCodePage(), this.text, true);
            RECT rect = new RECT();
            int flags = 1056;
            OS.DrawText(hDC, buffer, -1, rect, flags);
            margin += rect.right - rect.left;
            if (newFont != 0) {
                OS.SelectObject(hDC, oldFont);
            }
            OS.ReleaseDC(this.handle, hDC);
            OS.GetClientRect(this.handle, rect);
            margin = Math.max(4, (rect.right - rect.left - margin) / 2);
        }
        return margin;
    }

    public Point computeSize(int wHint, int hHint, boolean changed) {
        this.checkWidget();
        int width = 0;
        int height = 0;
        int border = this.getBorderWidth();
        if ((this.style & 4) != 0) {
            if ((this.style & 0x480) != 0) {
                width += OS.GetSystemMetrics(2);
                height += OS.GetSystemMetrics(20);
            } else {
                width += OS.GetSystemMetrics(21);
                height += OS.GetSystemMetrics(3);
            }
        } else if ((this.style & 0x400000) != 0) {
            SIZE size = new SIZE();
            if (wHint != -1) {
                size.cx = wHint;
                OS.SendMessage(this.handle, 5633, 0, size);
                width = size.cx;
                height = size.cy;
            } else {
                OS.SendMessage(this.handle, 5633, 0, size);
                width = size.cy;
                height = size.cy;
                size.cy = 0;
                while (size.cy != height) {
                    size.cx = width++;
                    size.cy = 0;
                    OS.SendMessage(this.handle, 5633, 0, size);
                }
            }
        } else {
            int extra = 0;
            boolean hasImage = this.image != null;
            boolean hasText = true;
            if (OS.COMCTL32_MAJOR < 6 && (this.style & 8) == 0) {
                int bits = OS.GetWindowLong(this.handle, -16);
                boolean bl = hasImage = (bits & 0xC0) != 0;
                if (hasImage) {
                    hasText = false;
                }
            }
            if (hasImage && this.image != null) {
                Rectangle rect = this.image.getBounds();
                width = rect.width;
                if (hasText && this.text.length() != 0) {
                    width += 8;
                }
                height = rect.height;
                extra = 8;
            }
            if (hasText) {
                int oldFont = 0;
                int hDC = OS.GetDC(this.handle);
                int newFont = OS.SendMessage(this.handle, 49, 0, 0);
                if (newFont != 0) {
                    oldFont = OS.SelectObject(hDC, newFont);
                }
                TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
                OS.GetTextMetrics(hDC, lptm);
                int length = this.text.length();
                if (length == 0) {
                    height = Math.max(height, lptm.tmHeight);
                } else {
                    extra = Math.max(8, lptm.tmAveCharWidth);
                    TCHAR buffer = new TCHAR(this.getCodePage(), this.text, true);
                    RECT rect = new RECT();
                    int flags = 1056;
                    if ((this.style & 0x40) != 0 && wHint != -1) {
                        flags = 1040;
                        rect.right = wHint - width - 2 * border;
                        rect.right = (this.style & 0x30) != 0 ? (rect.right -= CHECK_WIDTH + 3) : (rect.right -= 6);
                        if (OS.COMCTL32_MAJOR < 6 || !OS.IsAppThemed()) {
                            rect.right -= 2;
                            if ((this.style & 0x30) != 0) {
                                rect.right -= 2;
                            }
                        }
                    }
                    OS.DrawText(hDC, buffer, -1, rect, flags);
                    width += rect.right - rect.left;
                    height = Math.max(height, rect.bottom - rect.top);
                }
                if (newFont != 0) {
                    OS.SelectObject(hDC, oldFont);
                }
                OS.ReleaseDC(this.handle, hDC);
            }
            if ((this.style & 0x30) != 0) {
                width += CHECK_WIDTH + extra;
                height = Math.max(height, CHECK_HEIGHT + 3);
            }
            if ((this.style & 0xA) != 0) {
                width += 12;
                height += 10;
            }
        }
        if (wHint != -1) {
            width = wHint;
        }
        if (hHint != -1) {
            height = hHint;
        }
        return new Point(width += border * 2, height += border * 2);
    }

    void createHandle() {
        this.parent.state |= 0x100000;
        super.createHandle();
        this.parent.state &= 0xFFEFFFFF;
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            if (!OS.IsWinCE && OS.WIN32_VERSION < OS.VERSION(6, 0)) {
                this.state |= 0x100;
            } else if ((this.style & 0xA) == 0) {
                this.state |= 0x100;
            }
        }
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && (this.style & 0x10) != 0) {
            this.state |= 0x200;
        }
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed() && !OS.IsWinCE && OS.WIN32_VERSION < OS.VERSION(6, 0) && (this.style & 0xA) != 0) {
            this.state |= 0x200;
        }
    }

    int defaultBackground() {
        if ((this.style & 0xA) != 0) {
            return OS.GetSysColor(OS.COLOR_BTNFACE);
        }
        return super.defaultBackground();
    }

    int defaultForeground() {
        return OS.GetSysColor(OS.COLOR_BTNTEXT);
    }

    void enableWidget(boolean enabled) {
        super.enableWidget(enabled);
        if (!((this.style & 0x4000000) == 0 || OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed())) {
            boolean hasImage;
            int bits = OS.GetWindowLong(this.handle, -16);
            boolean bl = hasImage = (bits & 0xC0) != 0;
            if (!hasImage) {
                String string = enabled ? this.text : " " + this.text + " ";
                TCHAR buffer = new TCHAR(this.getCodePage(), string, true);
                OS.SetWindowText(this.handle, buffer);
            }
        }
        this.updateImageList();
    }

    public int getAlignment() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            if ((this.style & 0x80) != 0) {
                return 128;
            }
            if ((this.style & 0x400) != 0) {
                return 1024;
            }
            if ((this.style & 0x4000) != 0) {
                return 16384;
            }
            if ((this.style & 0x20000) != 0) {
                return 131072;
            }
            return 128;
        }
        if ((this.style & 0x4000) != 0) {
            return 16384;
        }
        if ((this.style & 0x1000000) != 0) {
            return 0x1000000;
        }
        if ((this.style & 0x20000) != 0) {
            return 131072;
        }
        return 16384;
    }

    boolean getDefault() {
        if ((this.style & 8) == 0) {
            return false;
        }
        int bits = OS.GetWindowLong(this.handle, -16);
        return (bits & 1) != 0;
    }

    public boolean getGrayed() {
        this.checkWidget();
        if ((this.style & 0x20) == 0) {
            return false;
        }
        return this.grayed;
    }

    public Image getImage() {
        this.checkWidget();
        return this.image;
    }

    String getMessage() {
        this.checkWidget();
        return this.message;
    }

    String getNameText() {
        return this.getText();
    }

    public boolean getSelection() {
        this.checkWidget();
        if ((this.style & 0x32) == 0) {
            return false;
        }
        int flags = OS.SendMessage(this.handle, 240, 0, 0);
        return flags != 0;
    }

    public String getText() {
        this.checkWidget();
        if ((this.style & 4) != 0) {
            return "";
        }
        return this.text;
    }

    boolean isTabItem() {
        if ((this.style & 8) != 0) {
            return this.isTabGroup();
        }
        return super.isTabItem();
    }

    boolean mnemonicHit(char ch) {
        if (!this.setFocus()) {
            return false;
        }
        if ((this.style & 0x10) == 0) {
            this.click();
        }
        return true;
    }

    boolean mnemonicMatch(char key) {
        char mnemonic = this.findMnemonic(this.getText());
        if (mnemonic == '\u0000') {
            return false;
        }
        return Character.toUpperCase(key) == Character.toUpperCase(mnemonic);
    }

    void releaseWidget() {
        super.releaseWidget();
        if (this.imageList != null) {
            this.imageList.dispose();
        }
        this.imageList = null;
        if (this.disabledImage != null) {
            this.disabledImage.dispose();
        }
        this.disabledImage = null;
        if (this.image2 != null) {
            this.image2.dispose();
        }
        this.image2 = null;
        this.text = null;
        this.image = null;
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

    void selectRadio() {
        Control[] children = this.parent._getChildren();
        int i = 0;
        while (i < children.length) {
            Control child = children[i];
            if (this != child) {
                child.setRadioSelection(false);
            }
            ++i;
        }
        this.setSelection(true);
    }

    public void setAlignment(int alignment) {
        int oldBits;
        this.checkWidget();
        if ((this.style & 4) != 0) {
            if ((this.style & 0x24480) == 0) {
                return;
            }
            this.style &= 0xFFFDBB7F;
            this.style |= alignment & 0x24480;
            OS.InvalidateRect(this.handle, null, true);
            return;
        }
        if ((alignment & 0x1024000) == 0) {
            return;
        }
        this.style &= 0xFEFDBFFF;
        this.style |= alignment & 0x1024000;
        int newBits = oldBits = OS.GetWindowLong(this.handle, -16);
        newBits &= 0xFFFFFCFF;
        if ((this.style & 0x4000) != 0) {
            newBits |= 0x100;
        }
        if ((this.style & 0x1000000) != 0) {
            newBits |= 0x300;
        }
        if ((this.style & 0x20000) != 0) {
            newBits |= 0x200;
        }
        if (OS.COMCTL32_MAJOR >= 6 && this.imageList != null) {
            BUTTON_IMAGELIST buttonImageList = new BUTTON_IMAGELIST();
            buttonImageList.himl = this.imageList.getHandle();
            if (this.text.length() == 0) {
                if ((this.style & 0x4000) != 0) {
                    buttonImageList.uAlign = 0;
                }
                if ((this.style & 0x1000000) != 0) {
                    buttonImageList.uAlign = 4;
                }
                if ((this.style & 0x20000) != 0) {
                    buttonImageList.uAlign = 1;
                }
            } else {
                buttonImageList.uAlign = 0;
                buttonImageList.margin_left = this.computeLeftMargin();
                buttonImageList.margin_right = 4;
                newBits &= 0xFFFFFCFF;
                newBits |= 0x100;
            }
            OS.SendMessage(this.handle, 5634, 0, buttonImageList);
        }
        if (newBits != oldBits) {
            OS.SetWindowLong(this.handle, -16, newBits);
            OS.InvalidateRect(this.handle, null, true);
        }
    }

    void setDefault(boolean value) {
        if ((this.style & 8) == 0) {
            return;
        }
        int hwndShell = this.menuShell().handle;
        int bits = OS.GetWindowLong(this.handle, -16);
        if (value) {
            bits |= 1;
            OS.SendMessage(hwndShell, 1025, this.handle, 0);
        } else {
            bits &= 0xFFFFFFFE;
            OS.SendMessage(hwndShell, 1025, 0, 0);
        }
        OS.SendMessage(this.handle, 244, bits, 1);
    }

    public boolean setFocus() {
        this.checkWidget();
        if ((this.style & 0x10) != 0 && !this.getSelection() && this.display.fixFocus) {
            return false;
        }
        return super.setFocus();
    }

    public void setImage(Image image) {
        this.checkWidget();
        if (image != null && image.isDisposed()) {
            this.error(5);
        }
        if ((this.style & 4) != 0) {
            return;
        }
        this.image = image;
        this._setImage(image);
    }

    public void setGrayed(boolean grayed) {
        this.checkWidget();
        if ((this.style & 0x20) == 0) {
            return;
        }
        this.grayed = grayed;
        int flags = OS.SendMessage(this.handle, 240, 0, 0);
        if (grayed) {
            if (flags == 1) {
                this.updateSelection(2);
            }
        } else if (flags == 2) {
            this.updateSelection(1);
        }
    }

    void setMessage(String message) {
        this.checkWidget();
        if (message == null) {
            this.error(4);
        }
        this.message = message;
        if (OS.COMCTL32_VERSION >= OS.VERSION(6, 1) && (this.style & 0x400000) != 0) {
            int length = message.length();
            char[] chars = new char[length + 1];
            message.getChars(0, length, chars, 0);
            OS.SendMessage(this.handle, 5641, 0, chars);
        }
    }

    boolean setRadioFocus(boolean tabbing) {
        if ((this.style & 0x10) == 0 || !this.getSelection()) {
            return false;
        }
        return tabbing ? this.setTabItemFocus() : this.setFocus();
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

    boolean setSavedFocus() {
        if ((this.style & 0x10) != 0 && !this.getSelection()) {
            return false;
        }
        return super.setSavedFocus();
    }

    public void setSelection(boolean selected) {
        int flags;
        this.checkWidget();
        if ((this.style & 0x32) == 0) {
            return;
        }
        int n = flags = selected ? 1 : 0;
        if ((this.style & 0x20) != 0 && selected && this.grayed) {
            flags = 2;
        }
        this.updateSelection(flags);
    }

    public void setText(String string) {
        this.checkWidget();
        if (string == null) {
            this.error(4);
        }
        if ((this.style & 4) != 0) {
            return;
        }
        this.text = string;
        this._setText(string);
    }

    void updateImageList() {
        if (OS.COMCTL32_MAJOR >= 6 && this.imageList != null) {
            BUTTON_IMAGELIST buttonImageList = new BUTTON_IMAGELIST();
            OS.SendMessage(this.handle, 5635, 0, buttonImageList);
            if (this.imageList != null) {
                this.imageList.dispose();
            }
            this.imageList = new ImageList(this.style & 0x4000000);
            if (OS.IsWindowEnabled(this.handle)) {
                this.imageList.add(this.image);
            } else {
                if (this.disabledImage != null) {
                    this.disabledImage.dispose();
                }
                this.disabledImage = new Image((Device)this.display, this.image, 1);
                this.imageList.add(this.disabledImage);
            }
            buttonImageList.himl = this.imageList.getHandle();
            OS.SendMessage(this.handle, 5634, 0, buttonImageList);
            OS.InvalidateRect(this.handle, null, true);
        }
    }

    void updateOrientation() {
        super.updateOrientation();
        this.updateImageList();
    }

    void updateSelection(int flags) {
        if (flags != OS.SendMessage(this.handle, 240, 0, 0)) {
            int bits = OS.GetWindowLong(this.handle, -16);
            if ((this.style & 0x20) != 0) {
                if (flags == 2) {
                    bits &= 0xFFFFFFFD;
                    bits |= 5;
                } else {
                    bits |= 2;
                    bits &= 0xFFFFFFFA;
                }
                if (bits != OS.GetWindowLong(this.handle, -16)) {
                    OS.SetWindowLong(this.handle, -16, bits);
                }
            }
            OS.SendMessage(this.handle, 241, flags, 0);
            if (bits != OS.GetWindowLong(this.handle, -16)) {
                OS.SetWindowLong(this.handle, -16, bits);
            }
        }
    }

    int widgetStyle() {
        int bits = super.widgetStyle();
        if ((this.style & 0x800000) != 0) {
            bits |= 0x8000;
        }
        if ((this.style & 4) != 0) {
            return bits | 0xB;
        }
        if ((this.style & 0x4000) != 0) {
            bits |= 0x100;
        }
        if ((this.style & 0x1000000) != 0) {
            bits |= 0x300;
        }
        if ((this.style & 0x20000) != 0) {
            bits |= 0x200;
        }
        if ((this.style & 0x40) != 0) {
            bits |= 0x2000;
        }
        if ((this.style & 8) != 0) {
            return bits | 0x10000;
        }
        if ((this.style & 0x20) != 0) {
            return bits | 2 | 0x10000;
        }
        if ((this.style & 0x10) != 0) {
            return bits | 4;
        }
        if ((this.style & 2) != 0) {
            return bits | 0x1000 | 2 | 0x10000;
        }
        if ((this.style & 0x400000) != 0) {
            return bits | 0xE | 0x10000;
        }
        return bits | 0x10000;
    }

    TCHAR windowClass() {
        return ButtonClass;
    }

    int windowProc() {
        return ButtonProc;
    }

    LRESULT WM_ERASEBKGND(int wParam, int lParam) {
        LRESULT result = super.WM_ERASEBKGND(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR < 6 && (this.style & 0x30) != 0 && this.findImageControl() != null) {
            this.drawBackground(wParam);
            return LRESULT.ONE;
        }
        return result;
    }

    LRESULT WM_GETDLGCODE(int wParam, int lParam) {
        LRESULT result = super.WM_GETDLGCODE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if ((this.style & 4) != 0) {
            return new LRESULT(256);
        }
        return result;
    }

    LRESULT WM_KILLFOCUS(int wParam, int lParam) {
        LRESULT result = super.WM_KILLFOCUS(wParam, lParam);
        if ((this.style & 8) != 0 && this.getDefault()) {
            this.menuShell().setDefaultButton(null, false);
        }
        return result;
    }

    LRESULT WM_LBUTTONDOWN(int wParam, int lParam) {
        if (this.ignoreMouse) {
            return null;
        }
        return super.WM_LBUTTONDOWN(wParam, lParam);
    }

    LRESULT WM_LBUTTONUP(int wParam, int lParam) {
        if (this.ignoreMouse) {
            return null;
        }
        return super.WM_LBUTTONUP(wParam, lParam);
    }

    LRESULT WM_SETFOCUS(int wParam, int lParam) {
        int bits = 0;
        if ((this.style & 0x10) != 0) {
            bits = OS.GetWindowLong(this.handle, -16);
        }
        LRESULT result = super.WM_SETFOCUS(wParam, lParam);
        if ((this.style & 0x10) != 0) {
            OS.SetWindowLong(this.handle, -16, bits);
        }
        if ((this.style & 8) != 0) {
            this.menuShell().setDefaultButton(this, false);
        }
        return result;
    }

    LRESULT WM_SIZE(int wParam, int lParam) {
        LRESULT result = super.WM_SIZE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (OS.COMCTL32_MAJOR >= 6 && (this.style & 0xA) != 0 && this.imageList != null && this.text.length() != 0) {
            BUTTON_IMAGELIST buttonImageList = new BUTTON_IMAGELIST();
            OS.SendMessage(this.handle, 5635, 0, buttonImageList);
            buttonImageList.uAlign = 0;
            buttonImageList.margin_left = this.computeLeftMargin();
            buttonImageList.margin_right = 4;
            OS.SendMessage(this.handle, 5634, 0, buttonImageList);
        }
        return result;
    }

    LRESULT WM_SYSCOLORCHANGE(int wParam, int lParam) {
        LRESULT result = super.WM_SYSCOLORCHANGE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (this.image2 != null) {
            this._setImage(this.image);
        }
        return result;
    }

    LRESULT WM_UPDATEUISTATE(int wParam, int lParam) {
        LRESULT result = super.WM_UPDATEUISTATE(wParam, lParam);
        if (result != null) {
            return result;
        }
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && (this.style & 0x32) != 0) {
            boolean redraw;
            boolean bl = redraw = this.findImageControl() != null;
            if (!redraw) {
                if ((this.state & 0x100) != 0 && OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
                    boolean bl2 = redraw = this.findThemeControl() != null;
                }
                if (!redraw) {
                    boolean bl3 = redraw = this.findBackgroundControl() != null;
                }
            }
            if (redraw) {
                OS.InvalidateRect(this.handle, null, false);
                int code = OS.DefWindowProc(this.handle, 296, wParam, lParam);
                return new LRESULT(code);
            }
        }
        if ((this.style & 0xA) != 0 && (this.hooks(9) || this.filters(9))) {
            OS.InvalidateRect(this.handle, null, true);
        }
        return result;
    }

    LRESULT wmCommandChild(int wParam, int lParam) {
        int code = OS.HIWORD(wParam);
        switch (code) {
            case 0: 
            case 5: {
                if ((this.style & 0x22) != 0) {
                    this.setSelection(!this.getSelection());
                } else if ((this.style & 0x10) != 0) {
                    if ((this.parent.getStyle() & 0x400000) != 0) {
                        this.setSelection(!this.getSelection());
                    } else {
                        this.selectRadio();
                    }
                }
                this.sendSelectionEvent(13);
            }
        }
        return super.wmCommandChild(wParam, lParam);
    }

    LRESULT wmColorChild(int wParam, int lParam) {
        LRESULT result = super.wmColorChild(wParam, lParam);
        if (OS.COMCTL32_MAJOR < 6 && (this.style & 0x30) != 0 && this.findImageControl() != null) {
            OS.SetBkMode(wParam, 1);
            return new LRESULT(OS.GetStockObject(5));
        }
        return result;
    }

    LRESULT wmDrawChild(int wParam, int lParam) {
        if ((this.style & 4) == 0) {
            return super.wmDrawChild(wParam, lParam);
        }
        DRAWITEMSTRUCT struct = new DRAWITEMSTRUCT();
        OS.MoveMemory(struct, lParam, DRAWITEMSTRUCT.sizeof);
        RECT rect = new RECT();
        OS.SetRect(rect, struct.left, struct.top, struct.right, struct.bottom);
        if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed()) {
            int iStateId = 9;
            switch (this.style & 0x24480) {
                case 128: {
                    iStateId = 1;
                    break;
                }
                case 1024: {
                    iStateId = 5;
                    break;
                }
                case 16384: {
                    iStateId = 9;
                    break;
                }
                case 131072: {
                    iStateId = 13;
                }
            }
            if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(6, 0) && (this.style & 0x8000000) != 0 && (this.style & 0x24000) != 0) {
                int n = iStateId = iStateId == 13 ? 9 : 13;
            }
            if (!this.getEnabled()) {
                iStateId += 3;
            }
            if ((struct.itemState & 1) != 0) {
                iStateId += 2;
            }
            OS.DrawThemeBackground(this.display.hScrollBarTheme(), struct.hDC, 1, iStateId, rect, null);
        } else {
            int uState = 2;
            switch (this.style & 0x24480) {
                case 128: {
                    uState = 0;
                    break;
                }
                case 1024: {
                    uState = 1;
                    break;
                }
                case 16384: {
                    uState = 2;
                    break;
                }
                case 131072: {
                    uState = 3;
                }
            }
            if (!this.getEnabled()) {
                uState |= 0x100;
            }
            if ((this.style & 0x800000) == 0x800000) {
                uState |= 0x4000;
            }
            if ((struct.itemState & 1) != 0) {
                uState |= 0x200;
            }
            OS.DrawFrameControl(struct.hDC, rect, 3, uState);
        }
        return null;
    }
}

