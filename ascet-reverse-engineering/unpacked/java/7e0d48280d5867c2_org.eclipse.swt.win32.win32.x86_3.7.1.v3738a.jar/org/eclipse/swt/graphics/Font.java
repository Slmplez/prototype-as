/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Resource;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.OS;

public final class Font
extends Resource {
    public int handle;

    Font(Device device) {
        super(device);
    }

    public Font(Device device, FontData fd) {
        super(device);
        this.init(fd);
        this.init();
    }

    public Font(Device device, FontData[] fds) {
        super(device);
        if (fds == null) {
            SWT.error(4);
        }
        if (fds.length == 0) {
            SWT.error(5);
        }
        int i = 0;
        while (i < fds.length) {
            if (fds[i] == null) {
                SWT.error(5);
            }
            ++i;
        }
        this.init(fds[0]);
        this.init();
    }

    public Font(Device device, String name, int height, int style) {
        super(device);
        if (name == null) {
            SWT.error(4);
        }
        this.init(new FontData(name, height, style));
        this.init();
    }

    Font(Device device, String name, float height, int style) {
        super(device);
        if (name == null) {
            SWT.error(4);
        }
        this.init(new FontData(name, height, style));
        this.init();
    }

    void destroy() {
        OS.DeleteObject(this.handle);
        this.handle = 0;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof Font)) {
            return false;
        }
        Font font = (Font)object;
        return this.device == font.device && this.handle == font.handle;
    }

    public FontData[] getFontData() {
        if (this.isDisposed()) {
            SWT.error(44);
        }
        LOGFONT logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
        OS.GetObject(this.handle, LOGFONT.sizeof, logFont);
        return new FontData[]{FontData.win32_new(logFont, this.device.computePoints(logFont, this.handle))};
    }

    public int hashCode() {
        return this.handle;
    }

    void init(FontData fd) {
        if (fd == null) {
            SWT.error(4);
        }
        LOGFONT logFont = fd.data;
        int lfHeight = logFont.lfHeight;
        logFont.lfHeight = this.device.computePixels(fd.height);
        this.handle = OS.CreateFontIndirect(logFont);
        logFont.lfHeight = lfHeight;
        if (this.handle == 0) {
            SWT.error(2);
        }
    }

    public boolean isDisposed() {
        return this.handle == 0;
    }

    public String toString() {
        if (this.isDisposed()) {
            return "Font {*DISPOSED*}";
        }
        return "Font {" + this.handle + "}";
    }

    public static Font win32_new(Device device, int handle) {
        Font font = new Font(device);
        font.handle = handle;
        return font;
    }
}

