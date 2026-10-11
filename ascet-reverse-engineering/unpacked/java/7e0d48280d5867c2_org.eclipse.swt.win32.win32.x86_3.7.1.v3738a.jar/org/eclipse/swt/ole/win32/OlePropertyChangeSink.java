/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IConnectionPoint;
import org.eclipse.swt.internal.ole.win32.IConnectionPointContainer;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.OleControlSite;
import org.eclipse.swt.ole.win32.OleEvent;
import org.eclipse.swt.ole.win32.OleEventTable;
import org.eclipse.swt.ole.win32.OleListener;

final class OlePropertyChangeSink {
    private OleControlSite controlSite;
    private COMObject iUnknown;
    private COMObject iPropertyNotifySink;
    private int refCount;
    private int propertyCookie;
    private OleEventTable eventTable;

    OlePropertyChangeSink(OleControlSite controlSite) {
        this.controlSite = controlSite;
        this.createCOMInterfaces();
    }

    void addListener(int propertyID, OleListener listener) {
        if (listener == null) {
            OLE.error(4);
        }
        if (this.eventTable == null) {
            this.eventTable = new OleEventTable();
        }
        this.eventTable.hook(propertyID, listener);
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void connect(IUnknown objIUnknown) {
        int[] ppvObject = new int[1];
        if (objIUnknown.QueryInterface(COM.IIDIConnectionPointContainer, ppvObject) == 0) {
            IConnectionPointContainer cpc = new IConnectionPointContainer(ppvObject[0]);
            if (cpc.FindConnectionPoint(COM.IIDIPropertyNotifySink, ppvObject) == 0) {
                IConnectionPoint cp = new IConnectionPoint(ppvObject[0]);
                int[] cookie = new int[1];
                if (cp.Advise(this.iPropertyNotifySink.getAddress(), cookie) == 0) {
                    this.propertyCookie = cookie[0];
                }
                cp.Release();
            }
            cpc.Release();
        }
    }

    private void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.iUnknown = new COMObject(nArray){

            public int method0(int[] args) {
                return OlePropertyChangeSink.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OlePropertyChangeSink.this.AddRef();
            }

            public int method2(int[] args) {
                return OlePropertyChangeSink.this.Release();
            }
        };
        int[] nArray2 = new int[5];
        nArray2[0] = 2;
        nArray2[3] = 1;
        nArray2[4] = 1;
        this.iPropertyNotifySink = new COMObject(nArray2){

            public int method0(int[] args) {
                return OlePropertyChangeSink.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OlePropertyChangeSink.this.AddRef();
            }

            public int method2(int[] args) {
                return OlePropertyChangeSink.this.Release();
            }

            public int method3(int[] args) {
                return OlePropertyChangeSink.this.OnChanged(args[0]);
            }

            public int method4(int[] args) {
                return OlePropertyChangeSink.this.OnRequestEdit(args[0]);
            }
        };
    }

    void disconnect(IUnknown objIUnknown) {
        int[] ppvObject;
        if (this.propertyCookie != 0 && objIUnknown != null && objIUnknown.QueryInterface(COM.IIDIConnectionPointContainer, ppvObject = new int[1]) == 0) {
            IConnectionPointContainer cpc = new IConnectionPointContainer(ppvObject[0]);
            if (cpc.FindConnectionPoint(COM.IIDIPropertyNotifySink, ppvObject) == 0) {
                IConnectionPoint cp = new IConnectionPoint(ppvObject[0]);
                if (cp.Unadvise(this.propertyCookie) == 0) {
                    this.propertyCookie = 0;
                }
                cp.Release();
            }
            cpc.Release();
        }
    }

    private void disposeCOMInterfaces() {
        if (this.iUnknown != null) {
            this.iUnknown.dispose();
        }
        this.iUnknown = null;
        if (this.iPropertyNotifySink != null) {
            this.iPropertyNotifySink.dispose();
        }
        this.iPropertyNotifySink = null;
    }

    private void notifyListener(int eventType, OleEvent event) {
        if (event == null) {
            OLE.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        event.type = eventType;
        event.widget = this.controlSite;
        this.eventTable.sendEvent(event);
    }

    private int OnChanged(int dispID) {
        if (this.eventTable == null || !this.eventTable.hooks(dispID)) {
            return 0;
        }
        OleEvent event = new OleEvent();
        event.detail = 1;
        this.notifyListener(dispID, event);
        return 0;
    }

    private int OnRequestEdit(int dispID) {
        if (this.eventTable == null || !this.eventTable.hooks(dispID)) {
            return 0;
        }
        OleEvent event = new OleEvent();
        event.doit = true;
        event.detail = 0;
        this.notifyListener(dispID, event);
        return event.doit ? 0 : 1;
    }

    private int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.iUnknown.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIPropertyNotifySink)) {
            COM.MoveMemory(ppvObject, new int[]{this.iPropertyNotifySink.getAddress()}, OS.PTR_SIZEOF);
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
        }
        return this.refCount;
    }

    void removeListener(int propertyID, OleListener listener) {
        if (listener == null) {
            OLE.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(propertyID, listener);
    }
}

