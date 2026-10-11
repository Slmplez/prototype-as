/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.printing;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.win32.DEVMODE;
import org.eclipse.swt.internal.win32.DEVMODEA;
import org.eclipse.swt.internal.win32.DEVMODEW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.PRINTDLG;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.printing.Printer;
import org.eclipse.swt.printing.PrinterData;
import org.eclipse.swt.widgets.Dialog;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

public class PrintDialog
extends Dialog {
    static final TCHAR DialogClass = new TCHAR(0, OS.IsWinCE ? "Dialog" : "#32770", true);
    PrinterData printerData = new PrinterData();
    static /* synthetic */ Class class$0;

    public PrintDialog(Shell parent) {
        this(parent, 32768);
    }

    public PrintDialog(Shell parent, int style) {
        super(parent, PrintDialog.checkStyle(parent, style));
        this.checkSubclass();
    }

    static int checkBits(int style, int int0, int int1, int int2, int int3, int int4, int int5) {
        int mask = int0 | int1 | int2 | int3 | int4 | int5;
        if ((style & mask) == 0) {
            style |= int0;
        }
        if ((style & int0) != 0) {
            style = style & ~mask | int0;
        }
        if ((style & int1) != 0) {
            style = style & ~mask | int1;
        }
        if ((style & int2) != 0) {
            style = style & ~mask | int2;
        }
        if ((style & int3) != 0) {
            style = style & ~mask | int3;
        }
        if ((style & int4) != 0) {
            style = style & ~mask | int4;
        }
        if ((style & int5) != 0) {
            style = style & ~mask | int5;
        }
        return style;
    }

    static int checkStyle(Shell parent, int style) {
        int mask = 229376;
        if ((style & 0x10000000) != 0 && ((style &= 0xEFFFFFFF) & mask) == 0) {
            style |= parent == null ? 65536 : 32768;
        }
        if ((style & mask) == 0) {
            style |= 0x10000;
        }
        if (((style &= 0xF7FFFFFF) & 0x6000000) == 0 && parent != null) {
            if ((parent.getStyle() & 0x2000000) != 0) {
                style |= 0x2000000;
            }
            if ((parent.getStyle() & 0x4000000) != 0) {
                style |= 0x4000000;
            }
        }
        return PrintDialog.checkBits(style, 0x2000000, 0x4000000, 0, 0, 0, 0);
    }

    public void setPrinterData(PrinterData data) {
        if (data == null) {
            data = new PrinterData();
        }
        this.printerData = data;
    }

    public PrinterData getPrinterData() {
        return this.printerData;
    }

    public int getScope() {
        return this.printerData.scope;
    }

    public void setScope(int scope) {
        this.printerData.scope = scope;
    }

    public int getStartPage() {
        return this.printerData.startPage;
    }

    public void setStartPage(int startPage) {
        this.printerData.startPage = startPage;
    }

    public int getEndPage() {
        return this.printerData.endPage;
    }

    public void setEndPage(int endPage) {
        this.printerData.endPage = endPage;
    }

    public boolean getPrintToFile() {
        return this.printerData.printToFile;
    }

    public void setPrintToFile(boolean printToFile) {
        this.printerData.printToFile = printToFile;
    }

    protected void checkSubclass() {
        String validName;
        String name = this.getClass().getName();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.printing.PrintDialog");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!(validName = clazz.getName()).equals(name)) {
            SWT.error(43);
        }
    }

    public PrinterData open() {
        int parentOrientation;
        int dialogOrientation;
        Shell parent = this.getParent();
        int style = this.getStyle();
        int hwndOwner = parent.handle;
        int hwndParent = parent.handle;
        boolean enabled = false;
        if (!OS.IsWinCE && OS.WIN32_VERSION >= OS.VERSION(4, 10) && (dialogOrientation = style & 0x6000000) != (parentOrientation = parent.getStyle() & 0x6000000)) {
            int exStyle = 0x100000;
            if (dialogOrientation == 0x4000000) {
                exStyle |= 0x400000;
            }
            hwndOwner = OS.CreateWindowEx(exStyle, DialogClass, null, 0, Integer.MIN_VALUE, 0, Integer.MIN_VALUE, 0, hwndParent, 0, OS.GetModuleHandle(null), null);
            enabled = OS.IsWindowEnabled(hwndParent);
            if (enabled) {
                OS.EnableWindow(hwndParent, false);
            }
        }
        PrinterData data = null;
        PRINTDLG pd = new PRINTDLG();
        pd.lStructSize = PRINTDLG.sizeof;
        pd.hwndOwner = hwndOwner;
        boolean success = false;
        if (this.printerData.name != null) {
            PrinterData[] printerList = Printer.getPrinterList();
            if (printerList.length > 0) {
                int p = 0;
                while (p < printerList.length) {
                    if (printerList[p].name.equals(this.printerData.name)) {
                        success = true;
                        break;
                    }
                    ++p;
                }
            }
            if (success) {
                TCHAR buffer = new TCHAR(0, this.printerData.name, true);
                int size = buffer.length() * TCHAR.sizeof;
                short[] offsets = new short[4];
                int offsetsSize = offsets.length * 2;
                offsets[1] = (short)offsets.length;
                int hMem = OS.GlobalAlloc(66, offsetsSize + size);
                int ptr = OS.GlobalLock(hMem);
                OS.MoveMemory(ptr, offsets, offsetsSize);
                OS.MoveMemory(ptr + offsetsSize, buffer, size);
                OS.GlobalUnlock(hMem);
                pd.hDevNames = hMem;
            }
        }
        if (!success) {
            pd.Flags = 1024;
            success = OS.PrintDlg(pd);
            if (success && pd.hDevNames != 0) {
                OS.GlobalFree(pd.hDevNames);
                pd.hDevNames = 0;
            }
        }
        if (success) {
            int i;
            int hMem;
            int ptr;
            byte[] devmodeData = this.printerData.otherData;
            if (devmodeData != null && devmodeData.length != 0) {
                int hMem2 = OS.GlobalAlloc(66, devmodeData.length);
                ptr = OS.GlobalLock(hMem2);
                OS.MoveMemory(ptr, devmodeData, devmodeData.length);
                OS.GlobalUnlock(hMem2);
                if (pd.hDevMode != 0) {
                    OS.GlobalFree(pd.hDevMode);
                }
                pd.hDevMode = hMem2;
            }
            if ((hMem = pd.hDevMode) == 0) {
                pd.hDevMode = hMem = OS.GlobalAlloc(66, DEVMODE.sizeof);
            }
            ptr = OS.GlobalLock(hMem);
            DEVMODE devmode = OS.IsUnicode ? new DEVMODEW() : new DEVMODEA();
            OS.MoveMemory(devmode, ptr, OS.IsUnicode ? OS.DEVMODEW_sizeof() : OS.DEVMODEA_sizeof());
            if (this.printerData.name != null) {
                int max = Math.min(this.printerData.name.length(), 31);
                if (OS.IsUnicode) {
                    int i2 = 0;
                    while (i2 < max) {
                        devmode.dmDeviceName[i2] = this.printerData.name.charAt(i2);
                        ++i2;
                    }
                } else {
                    byte[] bytes = this.printerData.name.getBytes();
                    i = 0;
                    while (i < max) {
                        ((DEVMODEA)devmode).dmDeviceName[i] = bytes[i];
                        ++i;
                    }
                }
            }
            devmode.dmFields |= 1;
            devmode.dmOrientation = (short)(this.printerData.orientation == 1 ? 1 : 2);
            if (this.printerData.copyCount != 1) {
                devmode.dmFields |= 0x100;
                devmode.dmCopies = (short)this.printerData.copyCount;
            }
            if (this.printerData.collate) {
                devmode.dmFields |= 0x8000;
                devmode.dmCollate = 1;
            }
            if (this.printerData.duplex != -1) {
                devmode.dmFields |= 0x1000;
                switch (this.printerData.duplex) {
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
            OS.MoveMemory(ptr, devmode, OS.IsUnicode ? OS.DEVMODEW_sizeof() : OS.DEVMODEA_sizeof());
            OS.GlobalUnlock(hMem);
            pd.Flags = 262144;
            if (this.printerData.printToFile) {
                pd.Flags |= 0x20;
            }
            switch (this.printerData.scope) {
                case 1: {
                    pd.Flags |= 2;
                    break;
                }
                case 2: {
                    pd.Flags |= 1;
                    break;
                }
                default: {
                    pd.Flags |= 0;
                }
            }
            pd.nMinPage = 1;
            pd.nMaxPage = (short)-1;
            pd.nFromPage = (short)Math.min(65535, Math.max(1, this.printerData.startPage));
            pd.nToPage = (short)Math.min(65535, Math.max(1, this.printerData.endPage));
            Display display = parent.getDisplay();
            Shell[] shells = display.getShells();
            if ((this.getStyle() & 0x30000) != 0) {
                i = 0;
                while (i < shells.length) {
                    if (shells[i].isEnabled() && shells[i] != parent) {
                        shells[i].setEnabled(false);
                    } else {
                        shells[i] = null;
                    }
                    ++i;
                }
            }
            String key = "org.eclipse.swt.internal.win32.runMessagesInIdle";
            Object oldValue = display.getData(key);
            display.setData(key, new Boolean(true));
            success = OS.PrintDlg(pd);
            display.setData(key, oldValue);
            if ((this.getStyle() & 0x30000) != 0) {
                int i3 = 0;
                while (i3 < shells.length) {
                    if (shells[i3] != null && !shells[i3].isDisposed()) {
                        shells[i3].setEnabled(true);
                    }
                    ++i3;
                }
            }
            if (success) {
                hMem = pd.hDevNames;
                int size = OS.GlobalSize(hMem) / TCHAR.sizeof * TCHAR.sizeof;
                ptr = OS.GlobalLock(hMem);
                short[] offsets = new short[4];
                OS.MoveMemory(offsets, ptr, 2 * offsets.length);
                TCHAR buffer = new TCHAR(0, size);
                OS.MoveMemory(buffer, ptr, size);
                OS.GlobalUnlock(hMem);
                short driverOffset = offsets[0];
                int i4 = 0;
                while (driverOffset + i4 < size) {
                    if (buffer.tcharAt(driverOffset + i4) == 0) break;
                    ++i4;
                }
                String driver = buffer.toString(driverOffset, i4);
                short deviceOffset = offsets[1];
                i4 = 0;
                while (deviceOffset + i4 < size) {
                    if (buffer.tcharAt(deviceOffset + i4) == 0) break;
                    ++i4;
                }
                String device = buffer.toString(deviceOffset, i4);
                data = new PrinterData(driver, device);
                if ((pd.Flags & 2) != 0) {
                    data.scope = 1;
                    data.startPage = pd.nFromPage & 0xFFFF;
                    data.endPage = pd.nToPage & 0xFFFF;
                } else if ((pd.Flags & 1) != 0) {
                    data.scope = 2;
                }
                boolean bl = data.printToFile = (pd.Flags & 0x20) != 0;
                if (data.printToFile) {
                    data.fileName = this.printerData.fileName;
                }
                data.copyCount = pd.nCopies;
                data.collate = (pd.Flags & 0x10) != 0;
                hMem = pd.hDevMode;
                size = OS.GlobalSize(hMem);
                ptr = OS.GlobalLock(hMem);
                data.otherData = new byte[size];
                OS.MoveMemory(data.otherData, ptr, size);
                devmode = OS.IsUnicode ? new DEVMODEW() : new DEVMODEA();
                OS.MoveMemory(devmode, ptr, OS.IsUnicode ? OS.DEVMODEW_sizeof() : OS.DEVMODEA_sizeof());
                if ((devmode.dmFields & 1) != 0) {
                    short dmOrientation = devmode.dmOrientation;
                    int n = data.orientation = dmOrientation == 2 ? 2 : 1;
                }
                if ((devmode.dmFields & 0x1000) != 0) {
                    short dmDuplex = devmode.dmDuplex;
                    data.duplex = dmDuplex == 1 ? 0 : (dmDuplex == 3 ? 2 : 1);
                }
                OS.GlobalUnlock(hMem);
                this.printerData = data;
            }
        }
        if (pd.hDevNames != 0) {
            OS.GlobalFree(pd.hDevNames);
            pd.hDevNames = 0;
        }
        if (pd.hDevMode != 0) {
            OS.GlobalFree(pd.hDevMode);
            pd.hDevMode = 0;
        }
        if (hwndParent != hwndOwner) {
            if (enabled) {
                OS.EnableWindow(hwndParent, true);
            }
            OS.SetActiveWindow(hwndParent);
            OS.DestroyWindow(hwndOwner);
        }
        return data;
    }
}

