/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.widgets;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.internal.win32.BITMAPINFOHEADER;
import org.eclipse.swt.internal.win32.ICONINFO;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICS;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICSA;
import org.eclipse.swt.internal.win32.NONCLIENTMETRICSW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Item;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.TaskBar;

public class TaskItem
extends Item {
    TaskBar parent;
    Shell shell;
    int progress;
    int progressState = -1;
    Image overlayImage;
    String overlayText = "";
    boolean showingText = false;
    Menu menu;
    static final int PROGRESS_MAX = 100;

    TaskItem(TaskBar parent, int style) {
        super(parent, style);
        this.parent = parent;
        parent.createItem(this, -1);
    }

    protected void checkSubclass() {
        if (!this.isValidSubclass()) {
            this.error(43);
        }
    }

    void destroyWidget() {
        this.parent.destroyItem(this);
        this.releaseHandle();
    }

    public Menu getMenu() {
        this.checkWidget();
        return this.menu;
    }

    public Image getOverlayImage() {
        this.checkWidget();
        return this.overlayImage;
    }

    public String getOverlayText() {
        this.checkWidget();
        return this.overlayText;
    }

    public TaskBar getParent() {
        this.checkWidget();
        return this.parent;
    }

    public int getProgress() {
        this.checkWidget();
        return this.progress;
    }

    public int getProgressState() {
        this.checkWidget();
        return this.progressState;
    }

    void recreate() {
        if (this.showingText) {
            if (this.overlayText.length() != 0) {
                this.updateText();
            }
        } else if (this.overlayImage != null) {
            this.updateImage();
        }
        if (this.progress != 0) {
            this.updateProgress();
        }
        if (this.progressState != -1) {
            this.updateProgressState();
        }
    }

    void releaseHandle() {
        super.releaseHandle();
        this.parent = null;
    }

    void releaseWidget() {
        super.releaseWidget();
        this.overlayImage = null;
        this.overlayText = null;
    }

    public void setMenu(Menu menu) {
        this.checkWidget();
        if (menu != null) {
            if (menu.isDisposed()) {
                SWT.error(5);
            }
            if ((menu.style & 8) == 0) {
                this.error(37);
            }
        }
        if (this.shell != null) {
            return;
        }
        this.menu = menu;
        this.parent.setMenu(menu);
    }

    public void setOverlayImage(Image overlayImage) {
        this.checkWidget();
        if (overlayImage != null && overlayImage.isDisposed()) {
            this.error(5);
        }
        if (this.shell == null) {
            return;
        }
        this.overlayImage = overlayImage;
        if (overlayImage != null) {
            this.updateImage();
        } else if (this.overlayText.length() != 0) {
            this.updateText();
        } else {
            int mTaskbarList3 = this.parent.mTaskbarList3;
            int hwnd = this.shell.handle;
            OS.VtblCall(18, mTaskbarList3, hwnd, 0, 0);
        }
    }

    public void setOverlayText(String overlayText) {
        this.checkWidget();
        if (overlayText == null) {
            this.error(4);
        }
        if (this.shell == null) {
            return;
        }
        this.overlayText = overlayText;
        if (overlayText.length() != 0) {
            this.updateText();
        } else if (this.overlayImage != null) {
            this.updateImage();
        } else {
            int mTaskbarList3 = this.parent.mTaskbarList3;
            int hwnd = this.shell.handle;
            OS.VtblCall(18, mTaskbarList3, hwnd, 0, 0);
        }
    }

    public void setProgress(int progress) {
        this.checkWidget();
        if (this.shell == null) {
            return;
        }
        if (this.progress == (progress = Math.max(0, Math.min(progress, 100)))) {
            return;
        }
        this.progress = progress;
        this.updateProgress();
    }

    public void setProgressState(int progressState) {
        this.checkWidget();
        if (this.shell == null) {
            return;
        }
        if (this.progressState == progressState) {
            return;
        }
        this.progressState = progressState;
        this.updateProgressState();
    }

    void setShell(Shell shell) {
        this.shell = shell;
        shell.addListener(12, new Listener(){

            public void handleEvent(Event event) {
                if (TaskItem.this.isDisposed()) {
                    return;
                }
                TaskItem.this.dispose();
            }
        });
    }

    void updateImage() {
        this.showingText = false;
        Image image2 = null;
        int hIcon = 0;
        switch (this.overlayImage.type) {
            case 0: {
                image2 = Display.createIcon(this.overlayImage);
                hIcon = image2.handle;
                break;
            }
            case 1: {
                hIcon = this.overlayImage.handle;
            }
        }
        int mTaskbarList3 = this.parent.mTaskbarList3;
        int hwnd = this.shell.handle;
        OS.VtblCall(18, mTaskbarList3, hwnd, hIcon, 0);
        if (image2 != null) {
            image2.dispose();
        }
    }

    void updateProgress() {
        if (this.progressState == 2) {
            return;
        }
        if (this.progressState == -1) {
            return;
        }
        int mTaskbarList3 = this.parent.mTaskbarList3;
        int hwnd = this.shell.handle;
        OS.VtblCall(9, mTaskbarList3, hwnd, (long)this.progress, 100L);
    }

    void updateProgressState() {
        int tbpFlags = 0;
        switch (this.progressState) {
            case 0: {
                tbpFlags = 2;
                break;
            }
            case 1: {
                tbpFlags = 4;
                break;
            }
            case 4: {
                tbpFlags = 8;
                break;
            }
            case 2: {
                tbpFlags = 1;
            }
        }
        int mTaskbarList3 = this.parent.mTaskbarList3;
        int hwnd = this.shell.handle;
        OS.VtblCall(9, mTaskbarList3, hwnd, (long)this.progress, 100L);
        OS.VtblCall(10, mTaskbarList3, hwnd, tbpFlags);
    }

    void updateText() {
        this.showingText = true;
        int width = 16;
        int height = 16;
        int hdc = OS.GetDC(0);
        BITMAPINFOHEADER bmiHeader = new BITMAPINFOHEADER();
        bmiHeader.biSize = BITMAPINFOHEADER.sizeof;
        bmiHeader.biWidth = width;
        bmiHeader.biHeight = -height;
        bmiHeader.biPlanes = 1;
        bmiHeader.biBitCount = (short)32;
        bmiHeader.biCompression = 0;
        byte[] bmi = new byte[BITMAPINFOHEADER.sizeof];
        OS.MoveMemory(bmi, bmiHeader, BITMAPINFOHEADER.sizeof);
        int[] pBits = new int[1];
        int hBitmap = OS.CreateDIBSection(0, bmi, 0, pBits, 0, 0);
        if (hBitmap == 0) {
            SWT.error(2);
        }
        int dstHdc = OS.CreateCompatibleDC(hdc);
        int oldBitmap = OS.SelectObject(dstHdc, hBitmap);
        int hMask = OS.CreateBitmap(width, height, 1, 1, null);
        if (hMask == 0) {
            SWT.error(2);
        }
        int maskHdc = OS.CreateCompatibleDC(hdc);
        int oldMask = OS.SelectObject(maskHdc, hMask);
        OS.PatBlt(maskHdc, 0, 0, width, height, 16711778);
        int oldBrush = OS.SelectObject(maskHdc, OS.GetStockObject(4));
        OS.RoundRect(maskHdc, 0, 0, width, height, 8, 8);
        OS.SelectObject(maskHdc, oldBrush);
        int brush = OS.CreateSolidBrush(OS.GetSysColor(OS.COLOR_HIGHLIGHT));
        oldBrush = OS.SelectObject(dstHdc, brush);
        OS.RoundRect(dstHdc, 0, 0, width, height, 8, 8);
        OS.SelectObject(dstHdc, oldBrush);
        OS.DeleteObject(brush);
        int uFormat = 2080;
        RECT rect = new RECT();
        TCHAR buffer = new TCHAR(this.shell.getCodePage(), this.overlayText, false);
        int length = buffer.length();
        int hFont = 0;
        int oldHFont = 0;
        NONCLIENTMETRICS info = OS.IsUnicode ? new NONCLIENTMETRICSW() : new NONCLIENTMETRICSA();
        info.cbSize = NONCLIENTMETRICS.sizeof;
        if (OS.SystemParametersInfo(41, 0, info, 0)) {
            LOGFONT logFont = OS.IsUnicode ? info.lfMessageFont : ((NONCLIENTMETRICSA)info).lfMessageFont;
            logFont.lfHeight = -10;
            hFont = OS.CreateFontIndirect(logFont);
            oldHFont = OS.SelectObject(dstHdc, hFont);
            OS.DrawText(dstHdc, buffer, length, rect, uFormat | 0x400);
            if (rect.right > width - 2) {
                OS.SelectObject(dstHdc, oldHFont);
                OS.DeleteObject(hFont);
                logFont.lfHeight = -8;
                hFont = OS.CreateFontIndirect(logFont);
                OS.SelectObject(dstHdc, hFont);
            }
        }
        OS.DrawText(dstHdc, buffer, length, rect, uFormat | 0x400);
        OS.OffsetRect(rect, (width - rect.right) / 2, (height - rect.bottom) / 2);
        int oldBkMode = OS.SetBkMode(dstHdc, 1);
        OS.SetTextColor(dstHdc, OS.GetSysColor(OS.COLOR_HIGHLIGHTTEXT));
        OS.DrawText(dstHdc, buffer, length, rect, uFormat);
        if (hFont != 0) {
            OS.SelectObject(dstHdc, oldHFont);
            OS.DeleteObject(hFont);
        }
        OS.SetBkMode(dstHdc, oldBkMode);
        OS.SelectObject(dstHdc, oldBitmap);
        OS.DeleteDC(dstHdc);
        OS.SelectObject(maskHdc, oldMask);
        OS.DeleteDC(maskHdc);
        OS.ReleaseDC(0, hdc);
        ICONINFO iconInfo = new ICONINFO();
        iconInfo.fIcon = true;
        iconInfo.hbmColor = hBitmap;
        iconInfo.hbmMask = hMask;
        int hIcon = OS.CreateIconIndirect(iconInfo);
        if (hIcon == 0) {
            SWT.error(2);
        }
        OS.DeleteObject(hBitmap);
        OS.DeleteObject(hMask);
        int mTaskbarList3 = this.parent.mTaskbarList3;
        int hwnd = this.shell.handle;
        OS.VtblCall(18, mTaskbarList3, hwnd, hIcon, 0);
        OS.DestroyIcon(hIcon);
    }
}

