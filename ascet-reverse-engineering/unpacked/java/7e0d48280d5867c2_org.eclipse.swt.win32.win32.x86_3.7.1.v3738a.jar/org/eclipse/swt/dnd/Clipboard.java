/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.OleEnumFORMATETC;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IDataObject;
import org.eclipse.swt.internal.ole.win32.IEnumFORMATETC;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;
import org.eclipse.swt.internal.win32.MSG;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Display;

public class Clipboard {
    private static final int RETRY_LIMIT = 10;
    private Display display;
    private COMObject iDataObject;
    private int refCount;
    private Transfer[] transferAgents = new Transfer[0];
    private Object[] data = new Object[0];
    private int CFSTR_PREFERREDDROPEFFECT;
    static /* synthetic */ Class class$0;

    public Clipboard(Display display) {
        this.checkSubclass();
        if (display == null && (display = Display.getCurrent()) == null) {
            display = Display.getDefault();
        }
        if (display.getThread() != Thread.currentThread()) {
            DND.error(22);
        }
        this.display = display;
        TCHAR chFormatName = new TCHAR(0, "Preferred DropEffect", true);
        this.CFSTR_PREFERREDDROPEFFECT = OS.RegisterClipboardFormat(chFormatName);
        this.createCOMInterfaces();
        this.AddRef();
    }

    protected void checkSubclass() {
        String validName;
        String name = this.getClass().getName();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.dnd.Clipboard");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!(validName = clazz.getName()).equals(name)) {
            DND.error(43);
        }
    }

    protected void checkWidget() {
        Display display = this.display;
        if (display == null) {
            DND.error(24);
        }
        if (display.getThread() != Thread.currentThread()) {
            DND.error(22);
        }
        if (display.isDisposed()) {
            DND.error(24);
        }
    }

    public void clearContents() {
        this.clearContents(1);
    }

    public void clearContents(int clipboards) {
        this.checkWidget();
        if ((clipboards & 1) != 0 && COM.OleIsCurrentClipboard(this.iDataObject.getAddress()) == 0) {
            COM.OleSetClipboard(0);
        }
    }

    public void dispose() {
        if (this.isDisposed()) {
            return;
        }
        if (this.display.getThread() != Thread.currentThread()) {
            DND.error(22);
        }
        if (COM.OleIsCurrentClipboard(this.iDataObject.getAddress()) == 0) {
            COM.OleFlushClipboard();
        }
        this.Release();
        this.display = null;
    }

    public Object getContents(Transfer transfer) {
        return this.getContents(transfer, 1);
    }

    public Object getContents(Transfer transfer, int clipboards) {
        this.checkWidget();
        if (transfer == null) {
            DND.error(4);
        }
        if ((clipboards & 1) == 0) {
            return null;
        }
        int[] ppv = new int[1];
        int retryCount = 0;
        int result = COM.OleGetClipboard(ppv);
        while (result != 0 && retryCount++ < 10) {
            try {
                Thread.sleep(50L);
            }
            catch (Throwable throwable) {}
            MSG msg = new MSG();
            OS.PeekMessage(msg, 0, 0, 0, 2);
            result = COM.OleGetClipboard(ppv);
        }
        if (result != 0) {
            return null;
        }
        IDataObject dataObject = new IDataObject(ppv[0]);
        try {
            TransferData[] allowed = transfer.getSupportedTypes();
            int i = 0;
            while (i < allowed.length) {
                if (dataObject.QueryGetData(allowed[i].formatetc) == 0) {
                    TransferData data = allowed[i];
                    data.pIDataObject = ppv[0];
                    Object object = transfer.nativeToJava(data);
                    return object;
                }
                ++i;
            }
        }
        finally {
            dataObject.Release();
        }
        return null;
    }

    public boolean isDisposed() {
        return this.display == null;
    }

    public void setContents(Object[] data, Transfer[] dataTypes) {
        this.setContents(data, dataTypes, 1);
    }

    public void setContents(Object[] data, Transfer[] dataTypes, int clipboards) {
        this.checkWidget();
        if (data == null || dataTypes == null || data.length != dataTypes.length || data.length == 0) {
            DND.error(5);
        }
        int i = 0;
        while (i < data.length) {
            if (data[i] == null || dataTypes[i] == null || !dataTypes[i].validate(data[i])) {
                DND.error(5);
            }
            ++i;
        }
        if ((clipboards & 1) == 0) {
            return;
        }
        this.data = data;
        this.transferAgents = dataTypes;
        int result = COM.OleSetClipboard(this.iDataObject.getAddress());
        int retryCount = 0;
        while (result != 0 && retryCount++ < 10) {
            try {
                Thread.sleep(50L);
            }
            catch (Throwable throwable) {}
            MSG msg = new MSG();
            OS.PeekMessage(msg, 0, 0, 0, 2);
            result = COM.OleSetClipboard(this.iDataObject.getAddress());
        }
        if (result != 0) {
            DND.error(2002);
        }
    }

    private int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    private void createCOMInterfaces() {
        int[] nArray = new int[12];
        nArray[0] = 2;
        nArray[3] = 2;
        nArray[4] = 2;
        nArray[5] = 1;
        nArray[6] = 2;
        nArray[7] = 3;
        nArray[8] = 2;
        nArray[9] = 4;
        nArray[10] = 1;
        nArray[11] = 1;
        this.iDataObject = new COMObject(nArray){

            public int method0(int[] args) {
                return Clipboard.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Clipboard.this.AddRef();
            }

            public int method2(int[] args) {
                return Clipboard.this.Release();
            }

            public int method3(int[] args) {
                return Clipboard.this.GetData(args[0], args[1]);
            }

            public int method5(int[] args) {
                return Clipboard.this.QueryGetData(args[0]);
            }

            public int method8(int[] args) {
                return Clipboard.this.EnumFormatEtc(args[0], args[1]);
            }
        };
    }

    private void disposeCOMInterfaces() {
        if (this.iDataObject != null) {
            this.iDataObject.dispose();
        }
        this.iDataObject = null;
    }

    private int EnumFormatEtc(int dwDirection, int ppenumFormatetc) {
        Object[] formats;
        if (dwDirection == 2) {
            return -2147467263;
        }
        TransferData[] allowedDataTypes = new TransferData[]{};
        int i = 0;
        while (i < this.transferAgents.length) {
            formats = this.transferAgents[i].getSupportedTypes();
            TransferData[] newAllowedDataTypes = new TransferData[allowedDataTypes.length + formats.length];
            System.arraycopy(allowedDataTypes, 0, newAllowedDataTypes, 0, allowedDataTypes.length);
            System.arraycopy(formats, 0, newAllowedDataTypes, allowedDataTypes.length, formats.length);
            allowedDataTypes = newAllowedDataTypes;
            ++i;
        }
        OleEnumFORMATETC enumFORMATETC = new OleEnumFORMATETC();
        enumFORMATETC.AddRef();
        formats = new FORMATETC[allowedDataTypes.length + 1];
        int i2 = 0;
        while (i2 < allowedDataTypes.length) {
            formats[i2] = allowedDataTypes[i2].formatetc;
            ++i2;
        }
        FORMATETC dropeffect = new FORMATETC();
        dropeffect.cfFormat = this.CFSTR_PREFERREDDROPEFFECT;
        dropeffect.dwAspect = 1;
        dropeffect.lindex = -1;
        dropeffect.tymed = 1;
        formats[formats.length - 1] = dropeffect;
        enumFORMATETC.setFormats((FORMATETC[])formats);
        OS.MoveMemory(ppenumFormatetc, new int[]{enumFORMATETC.getAddress()}, OS.PTR_SIZEOF);
        return 0;
    }

    private int GetData(int pFormatetc, int pmedium) {
        if (pFormatetc == 0 || pmedium == 0) {
            return -2147024809;
        }
        if (this.QueryGetData(pFormatetc) != 0) {
            return -2147221404;
        }
        TransferData transferData = new TransferData();
        transferData.formatetc = new FORMATETC();
        COM.MoveMemory(transferData.formatetc, pFormatetc, FORMATETC.sizeof);
        transferData.type = transferData.formatetc.cfFormat;
        transferData.stgmedium = new STGMEDIUM();
        transferData.result = -2147467259;
        if (transferData.type == this.CFSTR_PREFERREDDROPEFFECT) {
            STGMEDIUM stgmedium = new STGMEDIUM();
            stgmedium.tymed = 1;
            stgmedium.unionField = OS.GlobalAlloc(64, 4);
            OS.MoveMemory(stgmedium.unionField, new int[]{1}, 4);
            stgmedium.pUnkForRelease = 0;
            COM.MoveMemory(pmedium, stgmedium, STGMEDIUM.sizeof);
            return 0;
        }
        int transferIndex = -1;
        int i = 0;
        while (i < this.transferAgents.length) {
            if (this.transferAgents[i].isSupportedType(transferData)) {
                transferIndex = i;
                break;
            }
            ++i;
        }
        if (transferIndex == -1) {
            return -2147221404;
        }
        this.transferAgents[transferIndex].javaToNative(this.data[transferIndex], transferData);
        COM.MoveMemory(pmedium, transferData.stgmedium, STGMEDIUM.sizeof);
        return transferData.result;
    }

    private int QueryGetData(int pFormatetc) {
        if (this.transferAgents == null) {
            return -2147467259;
        }
        TransferData transferData = new TransferData();
        transferData.formatetc = new FORMATETC();
        COM.MoveMemory(transferData.formatetc, pFormatetc, FORMATETC.sizeof);
        transferData.type = transferData.formatetc.cfFormat;
        if (transferData.type == this.CFSTR_PREFERREDDROPEFFECT) {
            return 0;
        }
        int i = 0;
        while (i < this.transferAgents.length) {
            if (this.transferAgents[i].isSupportedType(transferData)) {
                return 0;
            }
            ++i;
        }
        return -2147221404;
    }

    private int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown) || COM.IsEqualGUID(guid, COM.IIDIDataObject)) {
            OS.MoveMemory(ppvObject, new int[]{this.iDataObject.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        OS.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    private int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.data = new Object[0];
            this.transferAgents = new Transfer[0];
            this.disposeCOMInterfaces();
            if (COM.FreeUnusedLibraries) {
                COM.CoFreeUnusedLibraries();
            }
        }
        return this.refCount;
    }

    public TransferData[] getAvailableTypes() {
        return this.getAvailableTypes(1);
    }

    public TransferData[] getAvailableTypes(int clipboards) {
        this.checkWidget();
        if ((clipboards & 1) == 0) {
            return new TransferData[0];
        }
        FORMATETC[] types = this._getAvailableTypes();
        TransferData[] data = new TransferData[types.length];
        int i = 0;
        while (i < types.length) {
            data[i] = new TransferData();
            data[i].type = types[i].cfFormat;
            data[i].formatetc = types[i];
            ++i;
        }
        return data;
    }

    public String[] getAvailableTypeNames() {
        this.checkWidget();
        FORMATETC[] types = this._getAvailableTypes();
        String[] names = new String[types.length];
        int maxSize = 128;
        int i = 0;
        while (i < types.length) {
            TCHAR buffer = new TCHAR(0, maxSize);
            int size = OS.GetClipboardFormatName(types[i].cfFormat, buffer, maxSize);
            if (size != 0) {
                names[i] = buffer.toString(0, size);
            } else {
                switch (types[i].cfFormat) {
                    case 15: {
                        names[i] = "CF_HDROP";
                        break;
                    }
                    case 1: {
                        names[i] = "CF_TEXT";
                        break;
                    }
                    case 2: {
                        names[i] = "CF_BITMAP";
                        break;
                    }
                    case 3: {
                        names[i] = "CF_METAFILEPICT";
                        break;
                    }
                    case 4: {
                        names[i] = "CF_SYLK";
                        break;
                    }
                    case 5: {
                        names[i] = "CF_DIF";
                        break;
                    }
                    case 6: {
                        names[i] = "CF_TIFF";
                        break;
                    }
                    case 7: {
                        names[i] = "CF_OEMTEXT";
                        break;
                    }
                    case 8: {
                        names[i] = "CF_DIB";
                        break;
                    }
                    case 9: {
                        names[i] = "CF_PALETTE";
                        break;
                    }
                    case 10: {
                        names[i] = "CF_PENDATA";
                        break;
                    }
                    case 11: {
                        names[i] = "CF_RIFF";
                        break;
                    }
                    case 12: {
                        names[i] = "CF_WAVE";
                        break;
                    }
                    case 13: {
                        names[i] = "CF_UNICODETEXT";
                        break;
                    }
                    case 14: {
                        names[i] = "CF_ENHMETAFILE";
                        break;
                    }
                    case 16: {
                        names[i] = "CF_LOCALE";
                        break;
                    }
                    case 17: {
                        names[i] = "CF_MAX";
                        break;
                    }
                    default: {
                        names[i] = "UNKNOWN";
                    }
                }
            }
            ++i;
        }
        return names;
    }

    private FORMATETC[] _getAvailableTypes() {
        FORMATETC[] types = new FORMATETC[]{};
        int[] ppv = new int[1];
        if (COM.OleGetClipboard(ppv) != 0) {
            return types;
        }
        IDataObject dataObject = new IDataObject(ppv[0]);
        int[] ppFormatetc = new int[1];
        int rc = dataObject.EnumFormatEtc(1, ppFormatetc);
        dataObject.Release();
        if (rc != 0) {
            return types;
        }
        IEnumFORMATETC enumFormatetc = new IEnumFORMATETC(ppFormatetc[0]);
        int rgelt = OS.GlobalAlloc(64, FORMATETC.sizeof);
        int[] pceltFetched = new int[1];
        enumFormatetc.Reset();
        while (enumFormatetc.Next(1, rgelt, pceltFetched) == 0 && pceltFetched[0] == 1) {
            FORMATETC formatetc = new FORMATETC();
            COM.MoveMemory(formatetc, rgelt, FORMATETC.sizeof);
            FORMATETC[] newTypes = new FORMATETC[types.length + 1];
            System.arraycopy(types, 0, newTypes, 0, types.length);
            newTypes[types.length] = formatetc;
            types = newTypes;
        }
        OS.GlobalFree(rgelt);
        enumFormatetc.Release();
        return types;
    }
}

