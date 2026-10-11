/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.dnd.DNDListener;
import org.eclipse.swt.dnd.DragSourceEffect;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.OleEnumFORMATETC;
import org.eclipse.swt.dnd.TableDragSourceEffect;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.TreeDragSourceEffect;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.internal.ImageList;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.STGMEDIUM;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.Widget;

public class DragSource
extends Widget {
    Control control;
    Listener controlListener;
    Transfer[] transferAgents = new Transfer[0];
    DragSourceEffect dragEffect;
    Composite topControl;
    int hwndDrag;
    COMObject iDropSource;
    COMObject iDataObject;
    int refCount;
    int dataEffect = 0;
    static final String DEFAULT_DRAG_SOURCE_EFFECT = "DEFAULT_DRAG_SOURCE_EFFECT";
    static final int CFSTR_PERFORMEDDROPEFFECT = Transfer.registerType("Performed DropEffect");
    static final TCHAR WindowClass = new TCHAR(0, "#32770", true);
    static /* synthetic */ Class class$0;

    public DragSource(Control control, int style) {
        super(control, DragSource.checkStyle(style));
        this.control = control;
        if (control.getData("DragSource") != null) {
            DND.error(2000);
        }
        control.setData("DragSource", this);
        this.createCOMInterfaces();
        this.AddRef();
        this.controlListener = new Listener(){

            public void handleEvent(Event event) {
                if (event.type == 12 && !DragSource.this.isDisposed()) {
                    DragSource.this.dispose();
                }
                if (event.type == 29 && !DragSource.this.isDisposed()) {
                    DragSource.this.drag(event);
                }
            }
        };
        control.addListener(12, this.controlListener);
        control.addListener(29, this.controlListener);
        this.addListener(12, new Listener(){

            public void handleEvent(Event e) {
                DragSource.this.onDispose();
            }
        });
        Object effect = control.getData(DEFAULT_DRAG_SOURCE_EFFECT);
        if (effect instanceof DragSourceEffect) {
            this.dragEffect = (DragSourceEffect)effect;
        } else if (control instanceof Tree) {
            this.dragEffect = new TreeDragSourceEffect((Tree)control);
        } else if (control instanceof Table) {
            this.dragEffect = new TableDragSourceEffect((Table)control);
        }
    }

    static int checkStyle(int style) {
        if (style == 0) {
            return 2;
        }
        return style;
    }

    public void addDragListener(DragSourceListener listener) {
        if (listener == null) {
            DND.error(4);
        }
        DNDListener typedListener = new DNDListener(listener);
        typedListener.dndWidget = this;
        this.addListener(2008, typedListener);
        this.addListener(2001, typedListener);
        this.addListener(2000, typedListener);
    }

    private int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    private void createCOMInterfaces() {
        int[] nArray = new int[5];
        nArray[0] = 2;
        nArray[3] = 2;
        nArray[4] = 1;
        this.iDropSource = new COMObject(nArray){

            public int method0(int[] args) {
                return DragSource.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return DragSource.this.AddRef();
            }

            public int method2(int[] args) {
                return DragSource.this.Release();
            }

            public int method3(int[] args) {
                return DragSource.this.QueryContinueDrag(args[0], args[1]);
            }

            public int method4(int[] args) {
                return DragSource.this.GiveFeedback(args[0]);
            }
        };
        int[] nArray2 = new int[12];
        nArray2[0] = 2;
        nArray2[3] = 2;
        nArray2[4] = 2;
        nArray2[5] = 1;
        nArray2[6] = 2;
        nArray2[7] = 3;
        nArray2[8] = 2;
        nArray2[9] = 4;
        nArray2[10] = 1;
        nArray2[11] = 1;
        this.iDataObject = new COMObject(nArray2){

            public int method0(int[] args) {
                return DragSource.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return DragSource.this.AddRef();
            }

            public int method2(int[] args) {
                return DragSource.this.Release();
            }

            public int method3(int[] args) {
                return DragSource.this.GetData(args[0], args[1]);
            }

            public int method5(int[] args) {
                return DragSource.this.QueryGetData(args[0]);
            }

            public int method7(int[] args) {
                return DragSource.this.SetData(args[0], args[1], args[2]);
            }

            public int method8(int[] args) {
                return DragSource.this.EnumFormatEtc(args[0], args[1]);
            }
        };
    }

    protected void checkSubclass() {
        String validName;
        String name = this.getClass().getName();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.dnd.DragSource");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!(validName = clazz.getName()).equals(name)) {
            DND.error(43);
        }
    }

    private void disposeCOMInterfaces() {
        if (this.iDropSource != null) {
            this.iDropSource.dispose();
        }
        this.iDropSource = null;
        if (this.iDataObject != null) {
            this.iDataObject.dispose();
        }
        this.iDataObject = null;
    }

    private void drag(Event dragEvent) {
        DNDEvent event = new DNDEvent();
        event.widget = this;
        event.x = dragEvent.x;
        event.y = dragEvent.y;
        event.time = OS.GetMessageTime();
        event.doit = true;
        this.notifyListeners(2008, event);
        if (!event.doit || this.transferAgents == null || this.transferAgents.length == 0) {
            return;
        }
        int[] pdwEffect = new int[1];
        int operations = this.opToOs(this.getStyle());
        Display display = this.control.getDisplay();
        String key = "org.eclipse.swt.internal.win32.runMessagesInIdle";
        Object oldValue = display.getData(key);
        display.setData(key, new Boolean(true));
        ImageList imagelist = null;
        Image image = event.image;
        this.hwndDrag = 0;
        this.topControl = null;
        if (image != null) {
            imagelist = new ImageList(0);
            imagelist.add(image);
            this.topControl = this.control.getShell();
            int offsetX = event.offsetX;
            this.hwndDrag = this.topControl.handle;
            if ((this.topControl.getStyle() & 0x4000000) != 0) {
                offsetX = image.getBounds().width - offsetX;
                RECT rect = new RECT();
                OS.GetClientRect(this.topControl.handle, rect);
                this.hwndDrag = OS.CreateWindowEx(0x100020, WindowClass, null, 0x44000000, 0, 0, rect.right - rect.left, rect.bottom - rect.top, this.topControl.handle, 0, OS.GetModuleHandle(null), null);
                OS.ShowWindow(this.hwndDrag, 5);
            }
            OS.ImageList_BeginDrag(imagelist.getHandle(), 0, offsetX, event.offsetY);
            if (OS.IsWinCE) {
                OS.UpdateWindow(this.topControl.handle);
            } else {
                int flags = 384;
                OS.RedrawWindow(this.topControl.handle, null, 0, flags);
            }
            POINT pt = new POINT();
            pt.x = dragEvent.x;
            pt.y = dragEvent.y;
            OS.MapWindowPoints(this.control.handle, 0, pt, 1);
            RECT rect = new RECT();
            OS.GetWindowRect(this.hwndDrag, rect);
            OS.ImageList_DragEnter(this.hwndDrag, pt.x - rect.left, pt.y - rect.top);
        }
        int result = 262401;
        try {
            result = COM.DoDragDrop(this.iDataObject.getAddress(), this.iDropSource.getAddress(), operations, pdwEffect);
        }
        finally {
            if (this.hwndDrag != 0) {
                OS.ImageList_DragLeave(this.hwndDrag);
                OS.ImageList_EndDrag();
                imagelist.dispose();
                if (this.hwndDrag != this.topControl.handle) {
                    OS.DestroyWindow(this.hwndDrag);
                }
                this.hwndDrag = 0;
                this.topControl = null;
            }
            display.setData(key, oldValue);
        }
        int operation = this.osToOp(pdwEffect[0]);
        if (this.dataEffect == 2) {
            operation = operation == 0 || operation == 1 ? 8 : 2;
        } else if (this.dataEffect != 0) {
            operation = this.dataEffect;
        }
        event = new DNDEvent();
        event.widget = this;
        event.time = OS.GetMessageTime();
        event.doit = result == 262400;
        event.detail = operation;
        this.notifyListeners(2000, event);
        this.dataEffect = 0;
    }

    private int EnumFormatEtc(int dwDirection, int ppenumFormatetc) {
        if (dwDirection == 2) {
            return -2147467263;
        }
        TransferData[] allowedDataTypes = new TransferData[]{};
        int i = 0;
        while (i < this.transferAgents.length) {
            Transfer transferAgent = this.transferAgents[i];
            if (transferAgent != null) {
                TransferData[] formats = transferAgent.getSupportedTypes();
                TransferData[] newAllowedDataTypes = new TransferData[allowedDataTypes.length + formats.length];
                System.arraycopy(allowedDataTypes, 0, newAllowedDataTypes, 0, allowedDataTypes.length);
                System.arraycopy(formats, 0, newAllowedDataTypes, allowedDataTypes.length, formats.length);
                allowedDataTypes = newAllowedDataTypes;
            }
            ++i;
        }
        OleEnumFORMATETC enumFORMATETC = new OleEnumFORMATETC();
        enumFORMATETC.AddRef();
        FORMATETC[] formats = new FORMATETC[allowedDataTypes.length];
        int i2 = 0;
        while (i2 < formats.length) {
            formats[i2] = allowedDataTypes[i2].formatetc;
            ++i2;
        }
        enumFORMATETC.setFormats(formats);
        OS.MoveMemory(ppenumFormatetc, new int[]{enumFORMATETC.getAddress()}, OS.PTR_SIZEOF);
        return 0;
    }

    public Control getControl() {
        return this.control;
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
        DNDEvent event = new DNDEvent();
        event.widget = this;
        event.time = OS.GetMessageTime();
        event.dataType = transferData;
        this.notifyListeners(2001, event);
        if (!event.doit) {
            return -2147467259;
        }
        Transfer transfer = null;
        int i = 0;
        while (i < this.transferAgents.length) {
            Transfer transferAgent = this.transferAgents[i];
            if (transferAgent != null && transferAgent.isSupportedType(transferData)) {
                transfer = transferAgent;
                break;
            }
            ++i;
        }
        if (transfer == null) {
            return -2147221404;
        }
        transfer.javaToNative(event.data, transferData);
        if (transferData.result != 0) {
            return transferData.result;
        }
        COM.MoveMemory(pmedium, transferData.stgmedium, STGMEDIUM.sizeof);
        return transferData.result;
    }

    public DragSourceListener[] getDragListeners() {
        Listener[] listeners = this.getListeners(2008);
        int length = listeners.length;
        DragSourceListener[] dragListeners = new DragSourceListener[length];
        int count = 0;
        int i = 0;
        while (i < length) {
            Listener listener = listeners[i];
            if (listener instanceof DNDListener) {
                dragListeners[count] = (DragSourceListener)((DNDListener)listener).getEventListener();
                ++count;
            }
            ++i;
        }
        if (count == length) {
            return dragListeners;
        }
        DragSourceListener[] result = new DragSourceListener[count];
        System.arraycopy(dragListeners, 0, result, 0, count);
        return result;
    }

    public DragSourceEffect getDragSourceEffect() {
        return this.dragEffect;
    }

    public Transfer[] getTransfer() {
        return this.transferAgents;
    }

    private int GiveFeedback(int dwEffect) {
        return 262402;
    }

    private int QueryContinueDrag(int fEscapePressed, int grfKeyState) {
        if (this.topControl != null && this.topControl.isDisposed()) {
            return 262401;
        }
        if (fEscapePressed != 0) {
            if (this.hwndDrag != 0) {
                OS.ImageList_DragLeave(this.hwndDrag);
            }
            return 262401;
        }
        int mask = 19;
        if ((grfKeyState & mask) == 0) {
            if (this.hwndDrag != 0) {
                OS.ImageList_DragLeave(this.hwndDrag);
            }
            return 262400;
        }
        if (this.hwndDrag != 0) {
            POINT pt = new POINT();
            OS.GetCursorPos(pt);
            RECT rect = new RECT();
            OS.GetWindowRect(this.hwndDrag, rect);
            OS.ImageList_DragMove(pt.x - rect.left, pt.y - rect.top);
        }
        return 0;
    }

    private void onDispose() {
        if (this.control == null) {
            return;
        }
        this.Release();
        if (this.controlListener != null) {
            this.control.removeListener(12, this.controlListener);
            this.control.removeListener(29, this.controlListener);
        }
        this.controlListener = null;
        this.control.setData("DragSource", null);
        this.control = null;
        this.transferAgents = null;
    }

    private int opToOs(int operation) {
        int osOperation = 0;
        if ((operation & 1) != 0) {
            osOperation |= 1;
        }
        if ((operation & 4) != 0) {
            osOperation |= 4;
        }
        if ((operation & 2) != 0) {
            osOperation |= 2;
        }
        return osOperation;
    }

    private int osToOp(int osOperation) {
        int operation = 0;
        if ((osOperation & 1) != 0) {
            operation |= 1;
        }
        if ((osOperation & 4) != 0) {
            operation |= 4;
        }
        if ((osOperation & 2) != 0) {
            operation |= 2;
        }
        return operation;
    }

    private int QueryGetData(int pFormatetc) {
        if (this.transferAgents == null) {
            return -2147467259;
        }
        TransferData transferData = new TransferData();
        transferData.formatetc = new FORMATETC();
        COM.MoveMemory(transferData.formatetc, pFormatetc, FORMATETC.sizeof);
        transferData.type = transferData.formatetc.cfFormat;
        int i = 0;
        while (i < this.transferAgents.length) {
            Transfer transfer = this.transferAgents[i];
            if (transfer != null && transfer.isSupportedType(transferData)) {
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
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown) || COM.IsEqualGUID(guid, COM.IIDIDropSource)) {
            OS.MoveMemory(ppvObject, new int[]{this.iDropSource.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIDataObject)) {
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
            this.disposeCOMInterfaces();
            if (COM.FreeUnusedLibraries) {
                COM.CoFreeUnusedLibraries();
            }
        }
        return this.refCount;
    }

    public void removeDragListener(DragSourceListener listener) {
        if (listener == null) {
            DND.error(4);
        }
        this.removeListener(2008, listener);
        this.removeListener(2001, listener);
        this.removeListener(2000, listener);
    }

    private int SetData(int pFormatetc, int pmedium, int fRelease) {
        if (pFormatetc == 0 || pmedium == 0) {
            return -2147024809;
        }
        FORMATETC formatetc = new FORMATETC();
        COM.MoveMemory(formatetc, pFormatetc, FORMATETC.sizeof);
        if (formatetc.cfFormat == CFSTR_PERFORMEDDROPEFFECT && formatetc.tymed == 1) {
            STGMEDIUM stgmedium = new STGMEDIUM();
            COM.MoveMemory(stgmedium, pmedium, STGMEDIUM.sizeof);
            int[] ptrEffect = new int[1];
            OS.MoveMemory(ptrEffect, stgmedium.unionField, OS.PTR_SIZEOF);
            int[] effect = new int[1];
            OS.MoveMemory(effect, ptrEffect[0], 4);
            this.dataEffect = this.osToOp(effect[0]);
        }
        if (fRelease == 1) {
            COM.ReleaseStgMedium(pmedium);
        }
        return 0;
    }

    public void setDragSourceEffect(DragSourceEffect effect) {
        this.dragEffect = effect;
    }

    public void setTransfer(Transfer[] transferAgents) {
        this.transferAgents = transferAgents;
    }
}

