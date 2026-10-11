/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.dnd;

import org.eclipse.swt.dnd.DND;
import org.eclipse.swt.dnd.DNDEvent;
import org.eclipse.swt.dnd.DNDListener;
import org.eclipse.swt.dnd.DropTargetEffect;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.TableDropTargetEffect;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.dnd.TransferData;
import org.eclipse.swt.dnd.TreeDropTargetEffect;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.FORMATETC;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IDataObject;
import org.eclipse.swt.internal.ole.win32.IEnumFORMATETC;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.POINT;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Table;
import org.eclipse.swt.widgets.Tree;
import org.eclipse.swt.widgets.Widget;

public class DropTarget
extends Widget {
    Control control;
    Listener controlListener;
    Transfer[] transferAgents = new Transfer[0];
    DropTargetEffect dropEffect;
    TransferData selectedDataType;
    int selectedOperation;
    int keyOperation = -1;
    IDataObject iDataObject;
    COMObject iDropTarget;
    int refCount;
    static final String DEFAULT_DROP_TARGET_EFFECT = "DEFAULT_DROP_TARGET_EFFECT";
    static /* synthetic */ Class class$0;

    public DropTarget(Control control, int style) {
        super(control, DropTarget.checkStyle(style));
        this.control = control;
        if (control.getData("DropTarget") != null) {
            DND.error(2001);
        }
        control.setData("DropTarget", this);
        this.createCOMInterfaces();
        this.AddRef();
        if (COM.CoLockObjectExternal(this.iDropTarget.getAddress(), true, true) != 0) {
            DND.error(2001);
        }
        if (COM.RegisterDragDrop(control.handle, this.iDropTarget.getAddress()) != 0) {
            DND.error(2001);
        }
        this.controlListener = new Listener(){

            public void handleEvent(Event event) {
                if (!DropTarget.this.isDisposed()) {
                    DropTarget.this.dispose();
                }
            }
        };
        control.addListener(12, this.controlListener);
        this.addListener(12, new Listener(){

            public void handleEvent(Event event) {
                DropTarget.this.onDispose();
            }
        });
        Object effect = control.getData(DEFAULT_DROP_TARGET_EFFECT);
        if (effect instanceof DropTargetEffect) {
            this.dropEffect = (DropTargetEffect)effect;
        } else if (control instanceof Table) {
            this.dropEffect = new TableDropTargetEffect((Table)control);
        } else if (control instanceof Tree) {
            this.dropEffect = new TreeDropTargetEffect((Tree)control);
        }
    }

    static int checkStyle(int style) {
        if (style == 0) {
            return 2;
        }
        return style;
    }

    public void addDropListener(DropTargetListener listener) {
        if (listener == null) {
            DND.error(4);
        }
        DNDListener typedListener = new DNDListener(listener);
        typedListener.dndWidget = this;
        this.addListener(2002, typedListener);
        this.addListener(2003, typedListener);
        this.addListener(2004, typedListener);
        this.addListener(2005, typedListener);
        this.addListener(2006, typedListener);
        this.addListener(2007, typedListener);
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    protected void checkSubclass() {
        String validName;
        String name = this.getClass().getName();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.dnd.DropTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (!(validName = clazz.getName()).equals(name)) {
            DND.error(43);
        }
    }

    void createCOMInterfaces() {
        boolean is32 = C.PTR_SIZEOF == 4;
        int[] nArray = new int[7];
        nArray[0] = 2;
        nArray[3] = is32 ? 5 : 4;
        nArray[4] = is32 ? 4 : 3;
        nArray[6] = is32 ? 5 : 4;
        this.iDropTarget = new COMObject(nArray){

            public int method0(int[] args) {
                return DropTarget.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return DropTarget.this.AddRef();
            }

            public int method2(int[] args) {
                return DropTarget.this.Release();
            }

            public int method3(int[] args) {
                if (args.length == 5) {
                    return DropTarget.this.DragEnter(args[0], args[1], args[2], args[3], args[4]);
                }
                return DropTarget.this.DragEnter_64(args[0], args[1], args[2], args[3]);
            }

            public int method4(int[] args) {
                if (args.length == 4) {
                    return DropTarget.this.DragOver(args[0], args[1], args[2], args[3]);
                }
                return DropTarget.this.DragOver_64(args[0], args[1], args[2]);
            }

            public int method5(int[] args) {
                return DropTarget.this.DragLeave();
            }

            public int method6(int[] args) {
                if (args.length == 5) {
                    return DropTarget.this.Drop(args[0], args[1], args[2], args[3], args[4]);
                }
                return DropTarget.this.Drop_64(args[0], args[1], args[2], args[3]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.iDropTarget != null) {
            this.iDropTarget.dispose();
        }
        this.iDropTarget = null;
    }

    int DragEnter_64(int pDataObject, int grfKeyState, long pt, int pdwEffect) {
        POINT point = new POINT();
        OS.MoveMemory(point, new long[]{pt}, 8);
        return this.DragEnter(pDataObject, grfKeyState, point.x, point.y, pdwEffect);
    }

    int DragEnter(int pDataObject, int grfKeyState, int pt_x, int pt_y, int pdwEffect) {
        this.selectedDataType = null;
        this.selectedOperation = 0;
        if (this.iDataObject != null) {
            this.iDataObject.Release();
        }
        this.iDataObject = null;
        DNDEvent event = new DNDEvent();
        if (!this.setEventData(event, pDataObject, grfKeyState, pt_x, pt_y, pdwEffect)) {
            OS.MoveMemory(pdwEffect, new int[1], 4);
            return 1;
        }
        this.iDataObject = new IDataObject(pDataObject);
        this.iDataObject.AddRef();
        int allowedOperations = event.operations;
        TransferData[] allowedDataTypes = new TransferData[event.dataTypes.length];
        System.arraycopy(event.dataTypes, 0, allowedDataTypes, 0, allowedDataTypes.length);
        this.notifyListeners(2002, event);
        this.refresh();
        if (event.detail == 16) {
            event.detail = (allowedOperations & 2) != 0 ? 2 : 0;
        }
        this.selectedDataType = null;
        int i = 0;
        while (i < allowedDataTypes.length) {
            if (TransferData.sameType(allowedDataTypes[i], event.dataType)) {
                this.selectedDataType = allowedDataTypes[i];
                break;
            }
            ++i;
        }
        this.selectedOperation = 0;
        if (this.selectedDataType != null && (allowedOperations & event.detail) != 0) {
            this.selectedOperation = event.detail;
        }
        OS.MoveMemory(pdwEffect, new int[]{this.opToOs(this.selectedOperation)}, 4);
        return 0;
    }

    int DragLeave() {
        this.keyOperation = -1;
        if (this.iDataObject == null) {
            return 1;
        }
        DNDEvent event = new DNDEvent();
        event.widget = this;
        event.time = OS.GetMessageTime();
        event.detail = 0;
        this.notifyListeners(2003, event);
        this.refresh();
        this.iDataObject.Release();
        this.iDataObject = null;
        return 0;
    }

    int DragOver_64(int grfKeyState, long pt, int pdwEffect) {
        POINT point = new POINT();
        OS.MoveMemory(point, new long[]{pt}, 8);
        return this.DragOver(grfKeyState, point.x, point.y, pdwEffect);
    }

    int DragOver(int grfKeyState, int pt_x, int pt_y, int pdwEffect) {
        if (this.iDataObject == null) {
            return 1;
        }
        int oldKeyOperation = this.keyOperation;
        DNDEvent event = new DNDEvent();
        if (!this.setEventData(event, this.iDataObject.getAddress(), grfKeyState, pt_x, pt_y, pdwEffect)) {
            this.keyOperation = -1;
            OS.MoveMemory(pdwEffect, new int[1], 4);
            return 1;
        }
        int allowedOperations = event.operations;
        TransferData[] allowedDataTypes = new TransferData[event.dataTypes.length];
        System.arraycopy(event.dataTypes, 0, allowedDataTypes, 0, allowedDataTypes.length);
        if (this.keyOperation == oldKeyOperation) {
            event.type = 2004;
            event.dataType = this.selectedDataType;
            event.detail = this.selectedOperation;
        } else {
            event.type = 2005;
            event.dataType = this.selectedDataType;
        }
        this.notifyListeners(event.type, event);
        this.refresh();
        if (event.detail == 16) {
            event.detail = (allowedOperations & 2) != 0 ? 2 : 0;
        }
        this.selectedDataType = null;
        int i = 0;
        while (i < allowedDataTypes.length) {
            if (TransferData.sameType(allowedDataTypes[i], event.dataType)) {
                this.selectedDataType = allowedDataTypes[i];
                break;
            }
            ++i;
        }
        this.selectedOperation = 0;
        if (this.selectedDataType != null && (allowedOperations & event.detail) == event.detail) {
            this.selectedOperation = event.detail;
        }
        OS.MoveMemory(pdwEffect, new int[]{this.opToOs(this.selectedOperation)}, 4);
        return 0;
    }

    int Drop_64(int pDataObject, int grfKeyState, long pt, int pdwEffect) {
        POINT point = new POINT();
        OS.MoveMemory(point, new long[]{pt}, 8);
        return this.Drop(pDataObject, grfKeyState, point.x, point.y, pdwEffect);
    }

    int Drop(int pDataObject, int grfKeyState, int pt_x, int pt_y, int pdwEffect) {
        DNDEvent event = new DNDEvent();
        event.widget = this;
        event.time = OS.GetMessageTime();
        if (this.dropEffect != null) {
            event.item = this.dropEffect.getItem(pt_x, pt_y);
        }
        event.detail = 0;
        this.notifyListeners(2003, event);
        this.refresh();
        event = new DNDEvent();
        if (!this.setEventData(event, pDataObject, grfKeyState, pt_x, pt_y, pdwEffect)) {
            this.keyOperation = -1;
            OS.MoveMemory(pdwEffect, new int[1], 4);
            return 1;
        }
        this.keyOperation = -1;
        int allowedOperations = event.operations;
        TransferData[] allowedDataTypes = new TransferData[event.dataTypes.length];
        System.arraycopy(event.dataTypes, 0, allowedDataTypes, 0, allowedDataTypes.length);
        event.dataType = this.selectedDataType;
        event.detail = this.selectedOperation;
        this.notifyListeners(2007, event);
        this.refresh();
        this.selectedDataType = null;
        int i = 0;
        while (i < allowedDataTypes.length) {
            if (TransferData.sameType(allowedDataTypes[i], event.dataType)) {
                this.selectedDataType = allowedDataTypes[i];
                break;
            }
            ++i;
        }
        this.selectedOperation = 0;
        if (this.selectedDataType != null && (allowedOperations & event.detail) == event.detail) {
            this.selectedOperation = event.detail;
        }
        if (this.selectedOperation == 0) {
            OS.MoveMemory(pdwEffect, new int[1], 4);
            return 0;
        }
        Object object = null;
        int i2 = 0;
        while (i2 < this.transferAgents.length) {
            Transfer transfer = this.transferAgents[i2];
            if (transfer != null && transfer.isSupportedType(this.selectedDataType)) {
                object = transfer.nativeToJava(this.selectedDataType);
                break;
            }
            ++i2;
        }
        if (object == null) {
            this.selectedOperation = 0;
        }
        event.detail = this.selectedOperation;
        event.dataType = this.selectedDataType;
        event.data = object;
        OS.ImageList_DragShowNolock(false);
        try {
            this.notifyListeners(2006, event);
        }
        finally {
            OS.ImageList_DragShowNolock(true);
        }
        this.refresh();
        this.selectedOperation = 0;
        if ((allowedOperations & event.detail) == event.detail) {
            this.selectedOperation = event.detail;
        }
        OS.MoveMemory(pdwEffect, new int[]{this.opToOs(this.selectedOperation)}, 4);
        return 0;
    }

    public Control getControl() {
        return this.control;
    }

    public DropTargetListener[] getDropListeners() {
        Listener[] listeners = this.getListeners(2002);
        int length = listeners.length;
        DropTargetListener[] dropListeners = new DropTargetListener[length];
        int count = 0;
        int i = 0;
        while (i < length) {
            Listener listener = listeners[i];
            if (listener instanceof DNDListener) {
                dropListeners[count] = (DropTargetListener)((DNDListener)listener).getEventListener();
                ++count;
            }
            ++i;
        }
        if (count == length) {
            return dropListeners;
        }
        DropTargetListener[] result = new DropTargetListener[count];
        System.arraycopy(dropListeners, 0, result, 0, count);
        return result;
    }

    public DropTargetEffect getDropTargetEffect() {
        return this.dropEffect;
    }

    int getOperationFromKeyState(int grfKeyState) {
        boolean alt;
        boolean ctrl = (grfKeyState & 8) != 0;
        boolean shift = (grfKeyState & 4) != 0;
        boolean bl = alt = (grfKeyState & 0x20) != 0;
        if (alt) {
            if (ctrl || shift) {
                return 16;
            }
            return 4;
        }
        if (ctrl && shift) {
            return 4;
        }
        if (ctrl) {
            return 1;
        }
        if (shift) {
            return 2;
        }
        return 16;
    }

    public Transfer[] getTransfer() {
        return this.transferAgents;
    }

    void onDispose() {
        if (this.control == null) {
            return;
        }
        COM.RevokeDragDrop(this.control.handle);
        if (this.controlListener != null) {
            this.control.removeListener(12, this.controlListener);
        }
        this.controlListener = null;
        this.control.setData("DropTarget", null);
        this.transferAgents = null;
        this.control = null;
        COM.CoLockObjectExternal(this.iDropTarget.getAddress(), false, true);
        this.Release();
        if (this.iDataObject != null) {
            this.iDataObject.Release();
        }
        this.iDataObject = null;
        if (COM.FreeUnusedLibraries) {
            COM.CoFreeUnusedLibraries();
        }
    }

    int opToOs(int operation) {
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

    int osToOp(int osOperation) {
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

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown) || COM.IsEqualGUID(guid, COM.IIDIDropTarget)) {
            COM.MoveMemory(ppvObject, new int[]{this.iDropTarget.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
            if (COM.FreeUnusedLibraries) {
                COM.CoFreeUnusedLibraries();
            }
        }
        return this.refCount;
    }

    void refresh() {
        if (this.control == null || this.control.isDisposed()) {
            return;
        }
        int handle = this.control.handle;
        RECT lpRect = new RECT();
        if (OS.GetUpdateRect(handle, lpRect, false)) {
            OS.ImageList_DragShowNolock(false);
            OS.RedrawWindow(handle, lpRect, 0, 257);
            OS.ImageList_DragShowNolock(true);
        }
    }

    public void removeDropListener(DropTargetListener listener) {
        if (listener == null) {
            DND.error(4);
        }
        this.removeListener(2002, listener);
        this.removeListener(2003, listener);
        this.removeListener(2004, listener);
        this.removeListener(2005, listener);
        this.removeListener(2006, listener);
        this.removeListener(2007, listener);
    }

    public void setDropTargetEffect(DropTargetEffect effect) {
        this.dropEffect = effect;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    boolean setEventData(DNDEvent event, int pDataObject, int grfKeyState, int pt_x, int pt_y, int pdwEffect) {
        int operation;
        if (pDataObject == 0) return false;
        if (pdwEffect == 0) {
            return false;
        }
        int style = this.getStyle();
        int[] operations = new int[1];
        OS.MoveMemory(operations, pdwEffect, 4);
        operations[0] = this.osToOp(operations[0]) & style;
        if (operations[0] == 0) {
            return false;
        }
        this.keyOperation = operation = this.getOperationFromKeyState(grfKeyState);
        if (operation == 16) {
            if ((style & 0x10) == 0) {
                operation = (operations[0] & 2) != 0 ? 2 : 0;
            }
        } else if ((operation & operations[0]) == 0) {
            operation = 0;
        }
        TransferData[] dataTypes = new TransferData[]{};
        IDataObject dataObject = new IDataObject(pDataObject);
        dataObject.AddRef();
        try {
            int[] address = new int[1];
            if (dataObject.EnumFormatEtc(1, address) != 0) {
                return false;
            }
            IEnumFORMATETC enumFormatetc = new IEnumFORMATETC(address[0]);
            try {
                int rgelt = OS.GlobalAlloc(64, FORMATETC.sizeof);
                try {
                    int[] pceltFetched = new int[1];
                    enumFormatetc.Reset();
                    block10: while (enumFormatetc.Next(1, rgelt, pceltFetched) == 0 && pceltFetched[0] == 1) {
                        TransferData transferData = new TransferData();
                        transferData.formatetc = new FORMATETC();
                        COM.MoveMemory(transferData.formatetc, rgelt, FORMATETC.sizeof);
                        transferData.type = transferData.formatetc.cfFormat;
                        transferData.pIDataObject = pDataObject;
                        int i = 0;
                        while (i < this.transferAgents.length) {
                            Transfer transfer = this.transferAgents[i];
                            if (transfer != null && transfer.isSupportedType(transferData)) {
                                TransferData[] newDataTypes = new TransferData[dataTypes.length + 1];
                                System.arraycopy(dataTypes, 0, newDataTypes, 0, dataTypes.length);
                                newDataTypes[dataTypes.length] = transferData;
                                dataTypes = newDataTypes;
                                continue block10;
                            }
                            ++i;
                        }
                    }
                }
                finally {
                    OS.GlobalFree(rgelt);
                }
            }
            finally {
                enumFormatetc.Release();
            }
        }
        finally {
            dataObject.Release();
        }
        if (dataTypes.length == 0) {
            return false;
        }
        event.widget = this;
        event.x = pt_x;
        event.y = pt_y;
        event.time = OS.GetMessageTime();
        event.feedback = 1;
        event.dataTypes = dataTypes;
        event.dataType = dataTypes[0];
        if (this.dropEffect != null) {
            event.item = this.dropEffect.getItem(pt_x, pt_y);
        }
        event.operations = operations[0];
        event.detail = operation;
        return true;
    }

    public void setTransfer(Transfer[] transferAgents) {
        if (transferAgents == null) {
            DND.error(4);
        }
        this.transferAgents = transferAgents;
    }
}

