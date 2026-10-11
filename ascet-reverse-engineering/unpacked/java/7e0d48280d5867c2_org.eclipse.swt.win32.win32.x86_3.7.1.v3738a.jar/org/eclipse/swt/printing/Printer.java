/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.printing;

import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.DeviceData;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.GCData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.win32.DEVMODE;
import org.eclipse.swt.internal.win32.DEVMODEA;
import org.eclipse.swt.internal.win32.DEVMODEW;
import org.eclipse.swt.internal.win32.DOCINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.printing.PrinterData;

public final class Printer
extends Device {
    public int handle;
    PrinterData data;
    boolean isGCCreated = false;
    static TCHAR profile = new TCHAR(0, "PrinterPorts", true);
    static TCHAR appName = new TCHAR(0, "windows", true);
    static TCHAR keyName = new TCHAR(0, "device", true);

    public static PrinterData[] getPrinterList() {
        TCHAR nullBuf = new TCHAR(0, 1);
        int length = 1024;
        TCHAR buf = new TCHAR(0, length);
        int n = OS.GetProfileString(profile, null, nullBuf, buf, length);
        if (n == 0) {
            return new PrinterData[0];
        }
        String[] deviceNames = new String[5];
        int nameCount = 0;
        int index = 0;
        int i = 0;
        while (i < n) {
            if (buf.tcharAt(i) == 0) {
                if (nameCount == deviceNames.length) {
                    String[] newNames = new String[deviceNames.length + 5];
                    System.arraycopy(deviceNames, 0, newNames, 0, deviceNames.length);
                    deviceNames = newNames;
                }
                deviceNames[nameCount] = buf.toString(index, i - index);
                ++nameCount;
                index = i + 1;
            }
            ++i;
        }
        PrinterData[] printerList = new PrinterData[nameCount];
        int p = 0;
        while (p < nameCount) {
            String device = deviceNames[p];
            String driver = "";
            if (OS.GetProfileString(profile, new TCHAR(0, device, true), nullBuf, buf, length) > 0) {
                int commaIndex = 0;
                while (buf.tcharAt(commaIndex) != 44 && commaIndex < length) {
                    ++commaIndex;
                }
                if (commaIndex < length) {
                    driver = buf.toString(0, commaIndex);
                }
            }
            printerList[p] = new PrinterData(driver, device);
            ++p;
        }
        return printerList;
    }

    public static PrinterData getDefaultPrinterData() {
        String deviceName = null;
        TCHAR nullBuf = new TCHAR(0, 1);
        int length = 1024;
        TCHAR buf = new TCHAR(0, length);
        int n = OS.GetProfileString(appName, keyName, nullBuf, buf, length);
        if (n == 0) {
            return null;
        }
        int commaIndex = 0;
        while (buf.tcharAt(commaIndex) != 44 && commaIndex < length) {
            ++commaIndex;
        }
        if (commaIndex < length) {
            deviceName = buf.toString(0, commaIndex);
        }
        if (deviceName == null) {
            return null;
        }
        String driver = "";
        if (OS.GetProfileString(profile, new TCHAR(0, deviceName, true), nullBuf, buf, length) > 0) {
            commaIndex = 0;
            while (buf.tcharAt(commaIndex) != 44 && commaIndex < length) {
                ++commaIndex;
            }
            if (commaIndex < length) {
                driver = buf.toString(0, commaIndex);
            }
        }
        return new PrinterData(driver, deviceName);
    }

    static DeviceData checkNull(PrinterData data) {
        if (data == null) {
            data = new PrinterData();
        }
        if (data.driver == null || data.name == null) {
            PrinterData defaultPrinter = Printer.getDefaultPrinterData();
            if (defaultPrinter == null) {
                SWT.error(2);
            }
            data.driver = defaultPrinter.driver;
            data.name = defaultPrinter.name;
        }
        return data;
    }

    public Printer() {
        this(null);
    }

    public Printer(PrinterData data) {
        super(Printer.checkNull(data));
    }

    protected void create(DeviceData deviceData) {
        this.data = (PrinterData)deviceData;
        TCHAR driver = new TCHAR(0, this.data.driver, true);
        TCHAR device = new TCHAR(0, this.data.name, true);
        int lpInitData = 0;
        byte[] devmodeData = this.data.otherData;
        int hHeap = OS.GetProcessHeap();
        if (devmodeData != null && devmodeData.length != 0) {
            lpInitData = OS.HeapAlloc(hHeap, 8, devmodeData.length);
            OS.MoveMemory(lpInitData, devmodeData, devmodeData.length);
        } else if (!OS.IsWinCE) {
            int[] hPrinter = new int[1];
            OS.OpenPrinter(device, hPrinter, 0);
            if (hPrinter[0] != 0) {
                int rc;
                int dwNeeded = OS.DocumentProperties(0, hPrinter[0], device, 0, 0, 0);
                if (dwNeeded >= 0 && (rc = OS.DocumentProperties(0, hPrinter[0], device, lpInitData = OS.HeapAlloc(hHeap, 8, dwNeeded), 0, 2)) != 1) {
                    OS.HeapFree(hHeap, 0, lpInitData);
                    lpInitData = 0;
                }
                OS.ClosePrinter(hPrinter[0]);
            }
        }
        if (lpInitData != 0) {
            DEVMODE devmode = OS.IsUnicode ? new DEVMODEW() : new DEVMODEA();
            OS.MoveMemory(devmode, lpInitData, DEVMODE.sizeof);
            devmode.dmFields |= 1;
            devmode.dmOrientation = (short)(this.data.orientation == 2 ? 2 : 1);
            if (this.data.copyCount != 1) {
                devmode.dmFields |= 0x100;
                devmode.dmCopies = (short)this.data.copyCount;
            }
            if (this.data.collate) {
                devmode.dmFields |= 0x8000;
                devmode.dmCollate = 1;
            }
            if (this.data.duplex != -1) {
                devmode.dmFields |= 0x1000;
                switch (this.data.duplex) {
                    case 2: {
                        devmode.dmDuplex = (short)3;
                        break;
                    }
                    case 1: {
                        devmode.dmDuplex = (short)2;
                        break;
                    }
                    default: {
                        devmode.dmDuplex = 1;
                    }
                }
            }
            OS.MoveMemory(lpInitData, devmode, DEVMODE.sizeof);
        }
        this.handle = OS.CreateDC(driver, device, 0, lpInitData);
        if (lpInitData != 0) {
            OS.HeapFree(hHeap, 0, lpInitData);
        }
        if (this.handle == 0) {
            SWT.error(2);
        }
    }

    public int internal_new_GC(GCData data) {
        if (this.handle == 0) {
            SWT.error(2);
        }
        if (data != null) {
            int mask;
            if (this.isGCCreated) {
                SWT.error(5);
            }
            if ((data.style & (mask = 0x6000000)) != 0) {
                data.layout = (data.style & 0x4000000) != 0 ? 1 : 0;
            } else {
                data.style |= 0x2000000;
            }
            data.device = this;
            data.font = Font.win32_new(this, OS.GetCurrentObject(this.handle, 6));
            this.isGCCreated = true;
        }
        return this.handle;
    }

    public void internal_dispose_GC(int hDC, GCData data) {
        if (data != null) {
            this.isGCCreated = false;
        }
    }

    public boolean startJob(String jobName) {
        this.checkDevice();
        DOCINFO di = new DOCINFO();
        di.cbSize = DOCINFO.sizeof;
        int hHeap = OS.GetProcessHeap();
        int lpszDocName = 0;
        if (jobName != null && jobName.length() != 0) {
            TCHAR buffer = new TCHAR(0, jobName, true);
            int byteCount = buffer.length() * TCHAR.sizeof;
            lpszDocName = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(lpszDocName, buffer, byteCount);
            di.lpszDocName = lpszDocName;
        }
        int lpszOutput = 0;
        if (this.data.printToFile) {
            if (this.data.fileName == null) {
                this.data.fileName = "FILE:";
            }
            TCHAR buffer = new TCHAR(0, this.data.fileName, true);
            int byteCount = buffer.length() * TCHAR.sizeof;
            lpszOutput = OS.HeapAlloc(hHeap, 8, byteCount);
            OS.MoveMemory(lpszOutput, buffer, byteCount);
            di.lpszOutput = lpszOutput;
        }
        int rc = OS.StartDoc(this.handle, di);
        if (lpszDocName != 0) {
            OS.HeapFree(hHeap, 0, lpszDocName);
        }
        if (lpszOutput != 0) {
            OS.HeapFree(hHeap, 0, lpszOutput);
        }
        return rc > 0;
    }

    public void endJob() {
        this.checkDevice();
        OS.EndDoc(this.handle);
    }

    public void cancelJob() {
        this.checkDevice();
        OS.AbortDoc(this.handle);
    }

    public boolean startPage() {
        this.checkDevice();
        int rc = OS.StartPage(this.handle);
        if (rc <= 0) {
            OS.AbortDoc(this.handle);
        }
        return rc > 0;
    }

    public void endPage() {
        this.checkDevice();
        OS.EndPage(this.handle);
    }

    public Point getDPI() {
        this.checkDevice();
        int dpiX = OS.GetDeviceCaps(this.handle, 88);
        int dpiY = OS.GetDeviceCaps(this.handle, 90);
        return new Point(dpiX, dpiY);
    }

    public Rectangle getBounds() {
        this.checkDevice();
        int width = OS.GetDeviceCaps(this.handle, 110);
        int height = OS.GetDeviceCaps(this.handle, 111);
        return new Rectangle(0, 0, width, height);
    }

    public Rectangle getClientArea() {
        this.checkDevice();
        int width = OS.GetDeviceCaps(this.handle, 8);
        int height = OS.GetDeviceCaps(this.handle, 10);
        return new Rectangle(0, 0, width, height);
    }

    public Rectangle computeTrim(int x, int y, int width, int height) {
        this.checkDevice();
        int printX = -OS.GetDeviceCaps(this.handle, 112);
        int printY = -OS.GetDeviceCaps(this.handle, 113);
        int printWidth = OS.GetDeviceCaps(this.handle, 8);
        int printHeight = OS.GetDeviceCaps(this.handle, 10);
        int paperWidth = OS.GetDeviceCaps(this.handle, 110);
        int paperHeight = OS.GetDeviceCaps(this.handle, 111);
        int hTrim = paperWidth - printWidth;
        int vTrim = paperHeight - printHeight;
        return new Rectangle(x + printX, y + printY, width + hTrim, height + vTrim);
    }

    public PrinterData getPrinterData() {
        return this.data;
    }

    protected void checkDevice() {
        if (this.handle == 0) {
            SWT.error(45);
        }
    }

    protected void release() {
        super.release();
        this.data = null;
    }

    protected void destroy() {
        if (this.handle != 0) {
            OS.DeleteDC(this.handle);
        }
        this.handle = 0;
    }
}

