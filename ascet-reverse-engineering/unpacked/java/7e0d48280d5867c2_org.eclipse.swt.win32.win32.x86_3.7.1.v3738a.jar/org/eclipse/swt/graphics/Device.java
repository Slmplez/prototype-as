/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Cursor;
import org.eclipse.swt.graphics.DeviceData;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Path;
import org.eclipse.swt.graphics.Pattern;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.graphics.Region;
import org.eclipse.swt.graphics.TextLayout;
import org.eclipse.swt.graphics.Transform;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.gdip.Gdip;
import org.eclipse.swt.internal.gdip.GdiplusStartupInput;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.internal.win32.TEXTMETRIC;
import org.eclipse.swt.internal.win32.TEXTMETRICA;
import org.eclipse.swt.internal.win32.TEXTMETRICW;

public abstract class Device
implements Drawable {
    public static boolean DEBUG;
    boolean debug = DEBUG;
    boolean tracking = DEBUG;
    Error[] errors;
    Object[] objects;
    Object trackingLock;
    public int hPalette = 0;
    int[] colorRefCount;
    Font systemFont;
    int nFonts = 256;
    LOGFONT[] logFonts;
    TEXTMETRIC metrics;
    int[] pixels;
    int[] scripts;
    int[] gdipToken;
    int fontCollection;
    String[] loadedFonts;
    boolean disposed;
    protected static Device CurrentDevice;
    protected static Runnable DeviceFinder;
    static /* synthetic */ Class class$0;

    static {
        try {
            Class.forName("org.eclipse.swt.widgets.Display");
        }
        catch (ClassNotFoundException classNotFoundException) {}
    }

    static synchronized Device getDevice() {
        if (DeviceFinder != null) {
            DeviceFinder.run();
        }
        Device device = CurrentDevice;
        CurrentDevice = null;
        return device;
    }

    public Device() {
        this(null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Device(DeviceData data) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (data != null) {
                this.debug = data.debug;
                this.tracking = data.tracking;
            }
            if (this.tracking) {
                this.errors = new Error[128];
                this.objects = new Object[128];
                this.trackingLock = new Object();
            }
            this.create(data);
            this.init();
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    void addFont(String font) {
        if (this.loadedFonts == null) {
            this.loadedFonts = new String[4];
        }
        int length = this.loadedFonts.length;
        int i = 0;
        while (i < length) {
            if (font.equals(this.loadedFonts[i])) {
                return;
            }
            ++i;
        }
        int index = 0;
        while (index < length) {
            if (this.loadedFonts[index] == null) break;
            ++index;
        }
        if (index == length) {
            String[] temp = new String[length + 4];
            System.arraycopy(this.loadedFonts, 0, temp, 0, length);
            this.loadedFonts = temp;
        }
        this.loadedFonts[index] = font;
    }

    protected void checkDevice() {
        if (this.disposed) {
            SWT.error(45);
        }
    }

    void checkGDIP() {
        if (this.gdipToken != null) {
            return;
        }
        int oldErrorMode = 0;
        if (!OS.IsWinCE) {
            oldErrorMode = OS.SetErrorMode(1);
        }
        try {
            try {
                int[] token = new int[1];
                GdiplusStartupInput input = new GdiplusStartupInput();
                input.GdiplusVersion = 1;
                if (Gdip.GdiplusStartup(token, input, 0) == 0) {
                    this.gdipToken = token;
                    if (this.loadedFonts != null) {
                        this.fontCollection = Gdip.PrivateFontCollection_new();
                        if (this.fontCollection == 0) {
                            SWT.error(2);
                        }
                        int i = 0;
                        while (i < this.loadedFonts.length) {
                            String path = this.loadedFonts[i];
                            if (path == null) break;
                            int length = path.length();
                            char[] buffer = new char[length + 1];
                            path.getChars(0, length, buffer, 0);
                            Gdip.PrivateFontCollection_AddFontFile(this.fontCollection, buffer);
                            ++i;
                        }
                        this.loadedFonts = null;
                    }
                }
            }
            catch (Throwable t) {
                SWT.error(16, t, " [GDI+ is required]");
                if (!OS.IsWinCE) {
                    OS.SetErrorMode(oldErrorMode);
                }
            }
        }
        finally {
            if (!OS.IsWinCE) {
                OS.SetErrorMode(oldErrorMode);
            }
        }
    }

    protected void create(DeviceData data) {
    }

    int computePixels(float height) {
        int hDC = this.internal_new_GC(null);
        int pixels = -((int)(0.5f + height * (float)OS.GetDeviceCaps(hDC, 90) / 72.0f));
        this.internal_dispose_GC(hDC, null);
        return pixels;
    }

    float computePoints(LOGFONT logFont, int hFont) {
        int hDC = this.internal_new_GC(null);
        int logPixelsY = OS.GetDeviceCaps(hDC, 90);
        int pixels = 0;
        if (logFont.lfHeight > 0) {
            int oldFont = OS.SelectObject(hDC, hFont);
            TEXTMETRIC lptm = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
            OS.GetTextMetrics(hDC, lptm);
            OS.SelectObject(hDC, oldFont);
            pixels = logFont.lfHeight - lptm.tmInternalLeading;
        } else {
            pixels = -logFont.lfHeight;
        }
        this.internal_dispose_GC(hDC, null);
        return (float)pixels * 72.0f / (float)logPixelsY;
    }

    protected void destroy() {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void dispose() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            if (this.isDisposed()) {
                // ** MonitorExit[var1_1] (shouldn't be in output)
                return;
            }
            this.checkDevice();
            this.release();
            this.destroy();
            this.disposed = true;
            if (this.tracking) {
                Object object = this.trackingLock;
                synchronized (object) {
                    this.printErrors();
                    this.objects = null;
                    this.errors = null;
                    this.trackingLock = null;
                }
            }
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void dispose_Object(Object object) {
        Object object2 = this.trackingLock;
        synchronized (object2) {
            int i = 0;
            while (i < this.objects.length) {
                if (this.objects[i] == object) {
                    this.objects[i] = null;
                    this.errors[i] = null;
                    return;
                }
                ++i;
            }
        }
    }

    int EnumFontFamProc(int lpelfe, int lpntme, int FontType, int lParam) {
        boolean scalable;
        boolean isScalable = (FontType & 1) == 0;
        boolean bl = scalable = lParam == 1;
        if (isScalable == scalable) {
            LOGFONT logFont;
            if (this.nFonts == this.logFonts.length) {
                LOGFONT[] newLogFonts = new LOGFONT[this.logFonts.length + 128];
                System.arraycopy(this.logFonts, 0, newLogFonts, 0, this.nFonts);
                this.logFonts = newLogFonts;
                int[] newPixels = new int[newLogFonts.length];
                System.arraycopy(this.pixels, 0, newPixels, 0, this.nFonts);
                this.pixels = newPixels;
            }
            if ((logFont = this.logFonts[this.nFonts]) == null) {
                logFont = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
            }
            OS.MoveMemory(logFont, lpelfe, LOGFONT.sizeof);
            this.logFonts[this.nFonts] = logFont;
            if (logFont.lfHeight > 0) {
                OS.MoveMemory(this.metrics, lpntme, TEXTMETRIC.sizeof);
                this.pixels[this.nFonts] = logFont.lfHeight - this.metrics.tmInternalLeading;
            } else {
                this.pixels[this.nFonts] = -logFont.lfHeight;
            }
            ++this.nFonts;
        }
        return 1;
    }

    public Rectangle getBounds() {
        this.checkDevice();
        int hDC = this.internal_new_GC(null);
        int width = OS.GetDeviceCaps(hDC, 8);
        int height = OS.GetDeviceCaps(hDC, 10);
        this.internal_dispose_GC(hDC, null);
        return new Rectangle(0, 0, width, height);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public DeviceData getDeviceData() {
        this.checkDevice();
        DeviceData data = new DeviceData();
        data.debug = this.debug;
        data.tracking = this.tracking;
        if (this.tracking) {
            Object object = this.trackingLock;
            synchronized (object) {
                int count = 0;
                int length = this.objects.length;
                int i = 0;
                while (i < length) {
                    if (this.objects[i] != null) {
                        ++count;
                    }
                    ++i;
                }
                int index = 0;
                data.objects = new Object[count];
                data.errors = new Error[count];
                int i2 = 0;
                while (i2 < length) {
                    if (this.objects[i2] != null) {
                        data.objects[index] = this.objects[i2];
                        data.errors[index] = this.errors[i2];
                        ++index;
                    }
                    ++i2;
                }
            }
        } else {
            data.objects = new Object[0];
            data.errors = new Error[0];
        }
        return data;
    }

    public Rectangle getClientArea() {
        return this.getBounds();
    }

    public int getDepth() {
        this.checkDevice();
        int hDC = this.internal_new_GC(null);
        int bits = OS.GetDeviceCaps(hDC, 12);
        int planes = OS.GetDeviceCaps(hDC, 14);
        this.internal_dispose_GC(hDC, null);
        return bits * planes;
    }

    public Point getDPI() {
        this.checkDevice();
        int hDC = this.internal_new_GC(null);
        int dpiX = OS.GetDeviceCaps(hDC, 88);
        int dpiY = OS.GetDeviceCaps(hDC, 90);
        this.internal_dispose_GC(hDC, null);
        return new Point(dpiX, dpiY);
    }

    public FontData[] getFontList(String faceName, boolean scalable) {
        this.checkDevice();
        Callback callback = new Callback(this, "EnumFontFamProc", 4);
        int lpEnumFontFamProc = callback.getAddress();
        if (lpEnumFontFamProc == 0) {
            SWT.error(3);
        }
        this.metrics = OS.IsUnicode ? new TEXTMETRICW() : new TEXTMETRICA();
        this.pixels = new int[this.nFonts];
        this.logFonts = new LOGFONT[this.nFonts];
        int i = 0;
        while (i < this.logFonts.length) {
            this.logFonts[i] = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
            ++i;
        }
        this.nFonts = 0;
        int offset = 0;
        int hDC = this.internal_new_GC(null);
        if (faceName == null) {
            OS.EnumFontFamilies(hDC, null, lpEnumFontFamProc, scalable ? 1 : 0);
            offset = this.nFonts;
            int i2 = 0;
            while (i2 < offset) {
                LOGFONT lf = this.logFonts[i2];
                if (OS.IsUnicode) {
                    OS.EnumFontFamiliesW(hDC, ((LOGFONTW)lf).lfFaceName, lpEnumFontFamProc, scalable ? 1 : 0);
                } else {
                    OS.EnumFontFamiliesA(hDC, ((LOGFONTA)lf).lfFaceName, lpEnumFontFamProc, scalable ? 1 : 0);
                }
                ++i2;
            }
        } else {
            TCHAR lpFaceName = new TCHAR(0, faceName, true);
            OS.EnumFontFamilies(hDC, lpFaceName, lpEnumFontFamProc, scalable ? 1 : 0);
        }
        int logPixelsY = OS.GetDeviceCaps(hDC, 90);
        this.internal_dispose_GC(hDC, null);
        int count = 0;
        FontData[] result = new FontData[this.nFonts - offset];
        int i3 = offset;
        while (i3 < this.nFonts) {
            FontData fd = FontData.win32_new(this.logFonts[i3], (float)this.pixels[i3] * 72.0f / (float)logPixelsY);
            int j = 0;
            while (j < count) {
                if (fd.equals(result[j])) break;
                ++j;
            }
            if (j == count) {
                result[count++] = fd;
            }
            ++i3;
        }
        if (count != result.length) {
            FontData[] newResult = new FontData[count];
            System.arraycopy(result, 0, newResult, 0, count);
            result = newResult;
        }
        callback.dispose();
        this.logFonts = null;
        this.pixels = null;
        this.metrics = null;
        return result;
    }

    String getLastError() {
        int error = OS.GetLastError();
        if (error == 0) {
            return "";
        }
        return " [GetLastError=0x" + Integer.toHexString(error) + "]";
    }

    String getLastErrorText() {
        int error = OS.GetLastError();
        if (error == 0) {
            return "";
        }
        int dwFlags = 4864;
        int[] buffer = new int[1];
        int length = OS.FormatMessage(dwFlags, 0, error, 1024, buffer, 0, 0);
        if (length == 0) {
            return " [GetLastError=0x" + Integer.toHexString(error) + "]";
        }
        TCHAR buffer1 = new TCHAR(0, length);
        OS.MoveMemory(buffer1, buffer[0], length * TCHAR.sizeof);
        if (buffer[0] != 0) {
            OS.LocalFree(buffer[0]);
        }
        return buffer1.toString(0, length);
    }

    public Color getSystemColor(int id) {
        this.checkDevice();
        int pixel = 0;
        switch (id) {
            case 1: {
                pixel = 0xFFFFFF;
                break;
            }
            case 2: {
                pixel = 0;
                break;
            }
            case 3: {
                pixel = 255;
                break;
            }
            case 4: {
                pixel = 128;
                break;
            }
            case 5: {
                pixel = 65280;
                break;
            }
            case 6: {
                pixel = 32768;
                break;
            }
            case 7: {
                pixel = 65535;
                break;
            }
            case 8: {
                pixel = 32896;
                break;
            }
            case 9: {
                pixel = 0xFF0000;
                break;
            }
            case 10: {
                pixel = 0x800000;
                break;
            }
            case 11: {
                pixel = 0xFF00FF;
                break;
            }
            case 12: {
                pixel = 0x800080;
                break;
            }
            case 13: {
                pixel = 0xFFFF00;
                break;
            }
            case 14: {
                pixel = 0x808000;
                break;
            }
            case 15: {
                pixel = 0xC0C0C0;
                break;
            }
            case 16: {
                pixel = 0x808080;
            }
        }
        return Color.win32_new(this, pixel);
    }

    public Font getSystemFont() {
        this.checkDevice();
        int hFont = OS.GetStockObject(13);
        return Font.win32_new(this, hFont);
    }

    public boolean getWarnings() {
        this.checkDevice();
        return false;
    }

    protected void init() {
        if (this.debug && !OS.IsWinCE) {
            OS.GdiSetBatchLimit(1);
        }
        this.systemFont = this.getSystemFont();
        if (!OS.IsWinCE) {
            int[] ppSp = new int[1];
            int[] piNumScripts = new int[1];
            OS.ScriptGetProperties(ppSp, piNumScripts);
            this.scripts = new int[piNumScripts[0]];
            OS.MoveMemory(this.scripts, ppSp[0], this.scripts.length * OS.PTR_SIZEOF);
        }
        int hDC = this.internal_new_GC(null);
        int rc = OS.GetDeviceCaps(hDC, 38);
        int bits = OS.GetDeviceCaps(hDC, 12);
        int planes = OS.GetDeviceCaps(hDC, 14);
        if ((rc & 0x100) == 0 || (bits *= planes) != 8) {
            this.internal_dispose_GC(hDC, null);
            return;
        }
        int numReserved = OS.GetDeviceCaps(hDC, 106);
        int numEntries = OS.GetDeviceCaps(hDC, 104);
        if (OS.IsWinCE && numReserved == 0 && numEntries >= 20) {
            numReserved = 20;
        }
        this.colorRefCount = new int[numEntries];
        byte[] logPalette = new byte[4 + 4 * numEntries];
        logPalette[0] = 0;
        logPalette[1] = 3;
        logPalette[2] = 0;
        logPalette[3] = 1;
        byte[] lppe = new byte[4 * numEntries];
        OS.GetSystemPaletteEntries(hDC, 0, numEntries, lppe);
        System.arraycopy(lppe, 0, logPalette, 4, 4 * numEntries);
        int i = 0;
        while (i < numReserved / 2) {
            this.colorRefCount[i] = 1;
            this.colorRefCount[numEntries - 1 - i] = 1;
            ++i;
        }
        this.internal_dispose_GC(hDC, null);
        this.hPalette = OS.CreatePalette(logPalette);
    }

    public abstract int internal_new_GC(GCData var1);

    public abstract void internal_dispose_GC(int var1, GCData var2);

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isDisposed() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Device");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        Class<?> clazz2 = clazz;
        synchronized (clazz) {
            // ** MonitorExit[var1_1] (shouldn't be in output)
            return this.disposed;
        }
    }

    public boolean loadFont(String path) {
        this.checkDevice();
        if (path == null) {
            SWT.error(4);
        }
        if (OS.IsWinNT && OS.WIN32_VERSION >= OS.VERSION(4, 10)) {
            boolean loaded;
            TCHAR lpszFilename = new TCHAR(0, path, true);
            boolean bl = loaded = OS.AddFontResourceEx(lpszFilename, 16, 0) != 0;
            if (loaded) {
                if (this.gdipToken != null) {
                    if (this.fontCollection == 0) {
                        this.fontCollection = Gdip.PrivateFontCollection_new();
                        if (this.fontCollection == 0) {
                            SWT.error(2);
                        }
                    }
                    int length = path.length();
                    char[] buffer = new char[length + 1];
                    path.getChars(0, length, buffer, 0);
                    Gdip.PrivateFontCollection_AddFontFile(this.fontCollection, buffer);
                } else {
                    this.addFont(path);
                }
            }
            return loaded;
        }
        return false;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void new_Object(Object object) {
        Object object2 = this.trackingLock;
        synchronized (object2) {
            int i = 0;
            while (i < this.objects.length) {
                if (this.objects[i] == null) {
                    this.objects[i] = object;
                    this.errors[i] = new Error();
                    return;
                }
                ++i;
            }
            Object[] newObjects = new Object[this.objects.length + 128];
            System.arraycopy(this.objects, 0, newObjects, 0, this.objects.length);
            newObjects[this.objects.length] = object;
            this.objects = newObjects;
            Error[] newErrors = new Error[this.errors.length + 128];
            System.arraycopy(this.errors, 0, newErrors, 0, this.errors.length);
            newErrors[this.errors.length] = new Error();
            this.errors = newErrors;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void printErrors() {
        if (!DEBUG) {
            return;
        }
        if (this.tracking) {
            Object object = this.trackingLock;
            synchronized (object) {
                if (this.objects == null || this.errors == null) {
                    return;
                }
                int objectCount = 0;
                int colors = 0;
                int cursors = 0;
                int fonts = 0;
                int gcs = 0;
                int images = 0;
                int paths = 0;
                int patterns = 0;
                int regions = 0;
                int textLayouts = 0;
                int transforms = 0;
                int i = 0;
                while (i < this.objects.length) {
                    Object object2 = this.objects[i];
                    if (object2 != null) {
                        ++objectCount;
                        if (object2 instanceof Color) {
                            ++colors;
                        }
                        if (object2 instanceof Cursor) {
                            ++cursors;
                        }
                        if (object2 instanceof Font) {
                            ++fonts;
                        }
                        if (object2 instanceof GC) {
                            ++gcs;
                        }
                        if (object2 instanceof Image) {
                            ++images;
                        }
                        if (object2 instanceof Path) {
                            ++paths;
                        }
                        if (object2 instanceof Pattern) {
                            ++patterns;
                        }
                        if (object2 instanceof Region) {
                            ++regions;
                        }
                        if (object2 instanceof TextLayout) {
                            ++textLayouts;
                        }
                        if (object2 instanceof Transform) {
                            ++transforms;
                        }
                    }
                    ++i;
                }
                if (objectCount != 0) {
                    String string = "Summary: ";
                    if (colors != 0) {
                        string = String.valueOf(string) + colors + " Color(s), ";
                    }
                    if (cursors != 0) {
                        string = String.valueOf(string) + cursors + " Cursor(s), ";
                    }
                    if (fonts != 0) {
                        string = String.valueOf(string) + fonts + " Font(s), ";
                    }
                    if (gcs != 0) {
                        string = String.valueOf(string) + gcs + " GC(s), ";
                    }
                    if (images != 0) {
                        string = String.valueOf(string) + images + " Image(s), ";
                    }
                    if (paths != 0) {
                        string = String.valueOf(string) + paths + " Path(s), ";
                    }
                    if (patterns != 0) {
                        string = String.valueOf(string) + patterns + " Pattern(s), ";
                    }
                    if (regions != 0) {
                        string = String.valueOf(string) + regions + " Region(s), ";
                    }
                    if (textLayouts != 0) {
                        string = String.valueOf(string) + textLayouts + " TextLayout(s), ";
                    }
                    if (transforms != 0) {
                        string = String.valueOf(string) + transforms + " Transforms(s), ";
                    }
                    if (string.length() != 0) {
                        string = string.substring(0, string.length() - 2);
                        System.err.println(string);
                    }
                    int i2 = 0;
                    while (i2 < this.errors.length) {
                        if (this.errors[i2] != null) {
                            this.errors[i2].printStackTrace(System.err);
                        }
                        ++i2;
                    }
                }
            }
        }
    }

    protected void release() {
        if (this.gdipToken != null) {
            if (this.fontCollection != 0) {
                Gdip.PrivateFontCollection_delete(this.fontCollection);
            }
            this.fontCollection = 0;
            Gdip.GdiplusShutdown(this.gdipToken[0]);
        }
        this.gdipToken = null;
        this.scripts = null;
        if (this.hPalette != 0) {
            OS.DeleteObject(this.hPalette);
        }
        this.hPalette = 0;
        this.colorRefCount = null;
        this.logFonts = null;
        this.nFonts = 0;
    }

    public void setWarnings(boolean warnings) {
        this.checkDevice();
    }
}

