/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.DISPPARAMS;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IConnectionPoint;
import org.eclipse.swt.internal.ole.win32.IConnectionPointContainer;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.VARIANT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.OleControlSite;
import org.eclipse.swt.ole.win32.OleEvent;
import org.eclipse.swt.ole.win32.OleEventTable;
import org.eclipse.swt.ole.win32.OleListener;
import org.eclipse.swt.ole.win32.Variant;

final class OleEventSink {
    private OleControlSite widget;
    private COMObject iDispatch;
    private int refCount;
    private IUnknown objIUnknown;
    private int eventCookie;
    private GUID eventGuid;
    private OleEventTable eventTable;

    OleEventSink(OleControlSite widget, int iUnknown, GUID riid) {
        this.widget = widget;
        this.eventGuid = riid;
        this.objIUnknown = new IUnknown(iUnknown);
        this.createCOMInterfaces();
    }

    void connect() {
        int[] ppvObject = new int[1];
        if (this.objIUnknown.QueryInterface(COM.IIDIConnectionPointContainer, ppvObject) == 0) {
            IConnectionPointContainer cpc = new IConnectionPointContainer(ppvObject[0]);
            int[] ppCP = new int[1];
            if (cpc.FindConnectionPoint(this.eventGuid, ppCP) == 0) {
                IConnectionPoint cp = new IConnectionPoint(ppCP[0]);
                int[] pCookie = new int[1];
                if (cp.Advise(this.iDispatch.getAddress(), pCookie) == 0) {
                    this.eventCookie = pCookie[0];
                }
                cp.Release();
            }
            cpc.Release();
        }
    }

    void addListener(int eventID, OleListener listener) {
        if (listener == null) {
            OLE.error(4);
        }
        if (this.eventTable == null) {
            this.eventTable = new OleEventTable();
        }
        this.eventTable.hook(eventID, listener);
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    private void createCOMInterfaces() {
        int[] nArray = new int[7];
        nArray[0] = 2;
        nArray[3] = 1;
        nArray[4] = 3;
        nArray[5] = 4;
        nArray[6] = 8;
        this.iDispatch = new COMObject(nArray){

            public int method0(int[] args) {
                return OleEventSink.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleEventSink.this.AddRef();
            }

            public int method2(int[] args) {
                return OleEventSink.this.Release();
            }

            public int method6(int[] args) {
                return OleEventSink.this.Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
            }
        };
    }

    void disconnect() {
        int[] ppvObject;
        if (this.eventCookie != 0 && this.objIUnknown != null && this.objIUnknown.QueryInterface(COM.IIDIConnectionPointContainer, ppvObject = new int[1]) == 0) {
            IConnectionPointContainer cpc = new IConnectionPointContainer(ppvObject[0]);
            if (cpc.FindConnectionPoint(this.eventGuid, ppvObject) == 0) {
                IConnectionPoint cp = new IConnectionPoint(ppvObject[0]);
                if (cp.Unadvise(this.eventCookie) == 0) {
                    this.eventCookie = 0;
                }
                cp.Release();
            }
            cpc.Release();
        }
    }

    private void disposeCOMInterfaces() {
        if (this.iDispatch != null) {
            this.iDispatch.dispose();
        }
        this.iDispatch = null;
    }

    private int Invoke(int dispIdMember, int riid, int lcid, int dwFlags, int pDispParams, int pVarResult, int pExcepInfo, int pArgErr) {
        if (this.eventTable == null || !this.eventTable.hooks(dispIdMember)) {
            return 0;
        }
        Variant[] eventInfo = null;
        if (pDispParams != 0) {
            DISPPARAMS dispParams = new DISPPARAMS();
            COM.MoveMemory(dispParams, pDispParams, DISPPARAMS.sizeof);
            eventInfo = new Variant[dispParams.cArgs];
            int size = VARIANT.sizeof;
            int offset = (dispParams.cArgs - 1) * size;
            int j = 0;
            while (j < dispParams.cArgs) {
                eventInfo[j] = new Variant();
                eventInfo[j].setData(dispParams.rgvarg + offset);
                offset -= size;
                ++j;
            }
        }
        OleEvent event = new OleEvent();
        event.arguments = eventInfo;
        this.notifyListener(dispIdMember, event);
        return 0;
    }

    private void notifyListener(int eventType, OleEvent event) {
        if (event == null) {
            OLE.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        event.type = eventType;
        event.widget = this.widget;
        this.eventTable.sendEvent(event);
    }

    private int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown) || COM.IsEqualGUID(guid, COM.IIDIDispatch) || COM.IsEqualGUID(guid, this.eventGuid)) {
            COM.MoveMemory(ppvObject, new int[]{this.iDispatch.getAddress()}, OS.PTR_SIZEOF);
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

    void removeListener(int eventID, OleListener listener) {
        if (listener == null) {
            OLE.error(4);
        }
        if (this.eventTable == null) {
            return;
        }
        this.eventTable.unhook(eventID, listener);
    }

    boolean hasListeners() {
        return this.eventTable.hasEntries();
    }
}

