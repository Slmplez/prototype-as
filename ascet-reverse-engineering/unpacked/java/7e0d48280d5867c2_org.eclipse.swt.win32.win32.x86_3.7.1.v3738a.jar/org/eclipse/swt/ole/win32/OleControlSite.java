/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.ole.win32;

import java.io.File;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTError;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.CONTROLINFO;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IClassFactory2;
import org.eclipse.swt.internal.ole.win32.IOleControl;
import org.eclipse.swt.internal.ole.win32.IPersistStorage;
import org.eclipse.swt.internal.ole.win32.IProvideClassInfo;
import org.eclipse.swt.internal.ole.win32.IProvideClassInfo2;
import org.eclipse.swt.internal.ole.win32.ITypeInfo;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.LICINFO;
import org.eclipse.swt.internal.ole.win32.TYPEATTR;
import org.eclipse.swt.internal.win32.GUITHREADINFO;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.OleAutomation;
import org.eclipse.swt.ole.win32.OleClientSite;
import org.eclipse.swt.ole.win32.OleEventSink;
import org.eclipse.swt.ole.win32.OleListener;
import org.eclipse.swt.ole.win32.OlePropertyChangeSink;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;

public class OleControlSite
extends OleClientSite {
    private COMObject iOleControlSite;
    private COMObject iDispatch;
    private OlePropertyChangeSink olePropertyChangeSink;
    private OleEventSink[] oleEventSink = new OleEventSink[0];
    private GUID[] oleEventSinkGUID = new GUID[0];
    private int[] oleEventSinkIUnknown = new int[0];
    private CONTROLINFO currentControlInfo;
    private int[] sitePropertyIds = new int[0];
    private Variant[] sitePropertyValues = new Variant[0];
    private Font font;
    static int SWT_RESTORECARET;
    static final String SHELL_PROG_ID = "Shell.Explorer";

    public OleControlSite(Composite parent, int style, File file) {
        super(parent, style, file);
        this.setSiteProperty(-709, new Variant(true));
        this.setSiteProperty(-710, new Variant(false));
    }

    public OleControlSite(Composite parent, int style, String progId) {
        super(parent, style);
        try {
            int licinfo;
            this.appClsid = this.getClassID(progId);
            if (this.appClsid == null) {
                OLE.error(1004);
            }
            if ((licinfo = this.getLicenseInfo(this.appClsid)) == 0) {
                this.tempStorage = this.createTempStorage();
                int[] address = new int[1];
                int clientSite = this.isICAClient() ? 0 : this.iOleClientSite.getAddress();
                int result = COM.OleCreate(this.appClsid, COM.IIDIUnknown, 1, null, clientSite, this.tempStorage.getAddress(), address);
                if (result != 0) {
                    OLE.error(1001, result);
                }
                this.objIUnknown = new IUnknown(address[0]);
            } else {
                int[] ppvObject = new int[1];
                try {
                    int result = COM.CoGetClassObject(this.appClsid, 3, 0, COM.IIDIClassFactory2, ppvObject);
                    if (result != 0) {
                        OLE.error(1005, result);
                    }
                    IClassFactory2 classFactory = new IClassFactory2(ppvObject[0]);
                    ppvObject = new int[1];
                    result = classFactory.CreateInstanceLic(0, 0, COM.IIDIUnknown, licinfo, ppvObject);
                    classFactory.Release();
                    if (result != 0) {
                        OLE.error(1006, result);
                    }
                }
                finally {
                    COM.SysFreeString(licinfo);
                }
                this.objIUnknown = new IUnknown(ppvObject[0]);
                ppvObject = new int[1];
                if (this.objIUnknown.QueryInterface(COM.IIDIPersistStorage, ppvObject) == 0) {
                    IPersistStorage persist = new IPersistStorage(ppvObject[0]);
                    this.tempStorage = this.createTempStorage();
                    persist.InitNew(this.tempStorage.getAddress());
                    persist.Release();
                }
            }
            this.addObjectReferences();
            this.setSiteProperty(-709, new Variant(true));
            this.setSiteProperty(-710, new Variant(false));
            if (COM.OleRun(this.objIUnknown.getAddress()) == 0) {
                this.state = 1;
            }
        }
        catch (SWTError e) {
            this.dispose();
            this.disposeCOMInterfaces();
            throw e;
        }
    }

    public OleControlSite(Composite parent, int style, String progId, File file) {
        super(parent, style, progId, file);
        this.setSiteProperty(-709, new Variant(true));
        this.setSiteProperty(-710, new Variant(false));
    }

    public void addEventListener(int eventID, OleListener listener) {
        GUID riid;
        if (listener == null) {
            OLE.error(4);
        }
        if ((riid = OleControlSite.getDefaultEventSinkGUID(this.objIUnknown)) != null) {
            this.addEventListener(this.objIUnknown.getAddress(), riid, eventID, listener);
        }
    }

    static GUID getDefaultEventSinkGUID(IUnknown unknown) {
        int[] ppvObject = new int[1];
        if (unknown.QueryInterface(COM.IIDIProvideClassInfo2, ppvObject) == 0) {
            IProvideClassInfo2 pci2 = new IProvideClassInfo2(ppvObject[0]);
            GUID riid = new GUID();
            int result = pci2.GetGUID(1, riid);
            pci2.Release();
            if (result == 0) {
                return riid;
            }
        }
        if (unknown.QueryInterface(COM.IIDIProvideClassInfo, ppvObject) == 0) {
            IProvideClassInfo pci = new IProvideClassInfo(ppvObject[0]);
            int[] ppTI = new int[1];
            int[] ppEI = new int[1];
            int result = pci.GetClassInfo(ppTI);
            pci.Release();
            if (result == 0 && ppTI[0] != 0) {
                ITypeInfo classInfo = new ITypeInfo(ppTI[0]);
                int[] ppTypeAttr = new int[1];
                result = classInfo.GetTypeAttr(ppTypeAttr);
                if (result == 0 && ppTypeAttr[0] != 0) {
                    TYPEATTR typeAttribute = new TYPEATTR();
                    COM.MoveMemory(typeAttribute, ppTypeAttr[0], TYPEATTR.sizeof);
                    classInfo.ReleaseTypeAttr(ppTypeAttr[0]);
                    int implMask = 7;
                    int implBits = 3;
                    int i = 0;
                    while (i < typeAttribute.cImplTypes) {
                        int[] pRefType;
                        int[] pImplTypeFlags = new int[1];
                        if (classInfo.GetImplTypeFlags(i, pImplTypeFlags) == 0 && (pImplTypeFlags[0] & implMask) == implBits && classInfo.GetRefTypeOfImplType(i, pRefType = new int[1]) == 0) {
                            classInfo.GetRefTypeInfo(pRefType[0], ppEI);
                        }
                        ++i;
                    }
                }
                classInfo.Release();
                if (ppEI[0] != 0) {
                    ITypeInfo eventInfo = new ITypeInfo(ppEI[0]);
                    ppTypeAttr = new int[1];
                    result = eventInfo.GetTypeAttr(ppTypeAttr);
                    GUID riid = null;
                    if (result == 0 && ppTypeAttr[0] != 0) {
                        riid = new GUID();
                        COM.MoveMemory(riid, ppTypeAttr[0], GUID.sizeof);
                        eventInfo.ReleaseTypeAttr(ppTypeAttr[0]);
                    }
                    eventInfo.Release();
                    return riid;
                }
            }
        }
        return null;
    }

    public void addEventListener(OleAutomation automation, int eventID, OleListener listener) {
        int address;
        IUnknown unknown;
        GUID riid;
        if (listener == null || automation == null) {
            OLE.error(4);
        }
        if ((riid = OleControlSite.getDefaultEventSinkGUID(unknown = new IUnknown(address = automation.getAddress()))) != null) {
            this.addEventListener(address, riid, eventID, listener);
        }
    }

    public void addEventListener(OleAutomation automation, String eventSinkId, int eventID, OleListener listener) {
        GUID guid;
        int address;
        if (listener == null || automation == null || eventSinkId == null) {
            OLE.error(4);
        }
        if ((address = automation.getAddress()) == 0) {
            return;
        }
        char[] buffer = (String.valueOf(eventSinkId) + "\u0000").toCharArray();
        if (COM.IIDFromString(buffer, guid = new GUID()) != 0) {
            return;
        }
        this.addEventListener(address, guid, eventID, listener);
    }

    void addEventListener(int iunknown, GUID guid, int eventID, OleListener listener) {
        if (listener == null || iunknown == 0 || guid == null) {
            OLE.error(4);
        }
        int index = -1;
        int i = 0;
        while (i < this.oleEventSinkGUID.length) {
            if (COM.IsEqualGUID(this.oleEventSinkGUID[i], guid) && iunknown == this.oleEventSinkIUnknown[i]) {
                index = i;
                break;
            }
            ++i;
        }
        if (index != -1) {
            this.oleEventSink[index].addListener(eventID, listener);
        } else {
            int oldLength = this.oleEventSink.length;
            OleEventSink[] newOleEventSink = new OleEventSink[oldLength + 1];
            GUID[] newOleEventSinkGUID = new GUID[oldLength + 1];
            int[] newOleEventSinkIUnknown = new int[oldLength + 1];
            System.arraycopy(this.oleEventSink, 0, newOleEventSink, 0, oldLength);
            System.arraycopy(this.oleEventSinkGUID, 0, newOleEventSinkGUID, 0, oldLength);
            System.arraycopy(this.oleEventSinkIUnknown, 0, newOleEventSinkIUnknown, 0, oldLength);
            this.oleEventSink = newOleEventSink;
            this.oleEventSinkGUID = newOleEventSinkGUID;
            this.oleEventSinkIUnknown = newOleEventSinkIUnknown;
            this.oleEventSink[oldLength] = new OleEventSink(this, iunknown, guid);
            this.oleEventSinkGUID[oldLength] = guid;
            this.oleEventSinkIUnknown[oldLength] = iunknown;
            this.oleEventSink[oldLength].AddRef();
            this.oleEventSink[oldLength].connect();
            this.oleEventSink[oldLength].addListener(eventID, listener);
        }
    }

    protected void addObjectReferences() {
        super.addObjectReferences();
        this.connectPropertyChangeSink();
        int[] ppvObject = new int[1];
        if (this.objIUnknown.QueryInterface(COM.IIDIOleControl, ppvObject) == 0) {
            IOleControl objIOleControl = new IOleControl(ppvObject[0]);
            this.currentControlInfo = new CONTROLINFO();
            objIOleControl.GetControlInfo(this.currentControlInfo);
            objIOleControl.Release();
        }
    }

    public void addPropertyListener(int propertyID, OleListener listener) {
        if (listener == null) {
            SWT.error(4);
        }
        this.olePropertyChangeSink.addListener(propertyID, listener);
    }

    private void connectPropertyChangeSink() {
        this.olePropertyChangeSink = new OlePropertyChangeSink(this);
        this.olePropertyChangeSink.AddRef();
        this.olePropertyChangeSink.connect(this.objIUnknown);
    }

    protected void createCOMInterfaces() {
        super.createCOMInterfaces();
        int[] nArray = new int[10];
        nArray[0] = 2;
        nArray[4] = 1;
        nArray[5] = 1;
        nArray[6] = 3;
        nArray[7] = 2;
        nArray[8] = 1;
        this.iOleControlSite = new COMObject(nArray){

            public int method0(int[] args) {
                return OleControlSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleControlSite.this.AddRef();
            }

            public int method2(int[] args) {
                return OleControlSite.this.Release();
            }

            public int method3(int[] args) {
                return OleControlSite.this.OnControlInfoChanged();
            }

            public int method8(int[] args) {
                return OleControlSite.this.OnFocus(args[0]);
            }
        };
        int[] nArray2 = new int[7];
        nArray2[0] = 2;
        nArray2[3] = 1;
        nArray2[4] = 3;
        nArray2[5] = 5;
        nArray2[6] = 8;
        this.iDispatch = new COMObject(nArray2){

            public int method0(int[] args) {
                return OleControlSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleControlSite.this.AddRef();
            }

            public int method2(int[] args) {
                return OleControlSite.this.Release();
            }

            public int method6(int[] args) {
                return OleControlSite.this.Invoke(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
            }
        };
    }

    private void disconnectEventSinks() {
        int i = 0;
        while (i < this.oleEventSink.length) {
            OleEventSink sink = this.oleEventSink[i];
            sink.disconnect();
            sink.Release();
            ++i;
        }
        this.oleEventSink = new OleEventSink[0];
        this.oleEventSinkGUID = new GUID[0];
        this.oleEventSinkIUnknown = new int[0];
    }

    private void disconnectPropertyChangeSink() {
        if (this.olePropertyChangeSink != null) {
            this.olePropertyChangeSink.disconnect(this.objIUnknown);
            this.olePropertyChangeSink.Release();
        }
        this.olePropertyChangeSink = null;
    }

    protected void disposeCOMInterfaces() {
        super.disposeCOMInterfaces();
        if (this.iOleControlSite != null) {
            this.iOleControlSite.dispose();
        }
        this.iOleControlSite = null;
        if (this.iDispatch != null) {
            this.iDispatch.dispose();
        }
        this.iDispatch = null;
    }

    public Color getBackground() {
        if (this.objIUnknown != null) {
            OleAutomation oleObject = new OleAutomation(this);
            Variant varBackColor = oleObject.getProperty(-501);
            oleObject.dispose();
            if (varBackColor != null) {
                int[] colorRef = new int[1];
                if (COM.OleTranslateColor(varBackColor.getInt(), this.getDisplay().hPalette, colorRef) == 0) {
                    return Color.win32_new(this.getDisplay(), colorRef[0]);
                }
            }
        }
        return super.getBackground();
    }

    public Font getFont() {
        if (this.font != null && !this.font.isDisposed()) {
            return this.font;
        }
        if (this.objIUnknown != null) {
            OleAutomation oleObject = new OleAutomation(this);
            Variant varDispFont = oleObject.getProperty(-512);
            oleObject.dispose();
            if (varDispFont != null) {
                OleAutomation iDispFont = varDispFont.getAutomation();
                Variant lfFaceName = iDispFont.getProperty(0);
                Variant lfHeight = iDispFont.getProperty(2);
                Variant lfItalic = iDispFont.getProperty(4);
                Variant lfBold = iDispFont.getProperty(3);
                iDispFont.dispose();
                if (lfFaceName != null && lfHeight != null && lfItalic != null && lfBold != null) {
                    int style = 3 * lfBold.getInt() + 2 * lfItalic.getInt();
                    this.font = new Font((Device)this.getShell().getDisplay(), lfFaceName.getString(), lfHeight.getInt(), style);
                    return this.font;
                }
            }
        }
        return super.getFont();
    }

    public Color getForeground() {
        if (this.objIUnknown != null) {
            OleAutomation oleObject = new OleAutomation(this);
            Variant varForeColor = oleObject.getProperty(-513);
            oleObject.dispose();
            if (varForeColor != null) {
                int[] colorRef = new int[1];
                if (COM.OleTranslateColor(varForeColor.getInt(), this.getDisplay().hPalette, colorRef) == 0) {
                    return Color.win32_new(this.getDisplay(), colorRef[0]);
                }
            }
        }
        return super.getForeground();
    }

    protected int getLicenseInfo(GUID clsid) {
        int[] ppvObject = new int[1];
        if (COM.CoGetClassObject(clsid, 3, 0, COM.IIDIClassFactory, ppvObject) != 0) {
            return 0;
        }
        int result = 0;
        IUnknown unknown = new IUnknown(ppvObject[0]);
        if (unknown.QueryInterface(COM.IIDIClassFactory2, ppvObject) == 0) {
            IClassFactory2 classFactory = new IClassFactory2(ppvObject[0]);
            LICINFO licinfo = new LICINFO();
            if (classFactory.GetLicInfo(licinfo) == 0) {
                int[] pBstrKey = new int[1];
                if (licinfo != null && licinfo.fRuntimeKeyAvail && classFactory.RequestLicKey(0, pBstrKey) == 0) {
                    result = pBstrKey[0];
                }
            }
            classFactory.Release();
        }
        unknown.Release();
        return result;
    }

    public Variant getSiteProperty(int dispId) {
        int i = 0;
        while (i < this.sitePropertyIds.length) {
            if (this.sitePropertyIds[i] == dispId) {
                return this.sitePropertyValues[i];
            }
            ++i;
        }
        return null;
    }

    protected int GetWindow(int phwnd) {
        if (phwnd == 0) {
            return -2147024809;
        }
        if (this.frame == null) {
            COM.MoveMemory(phwnd, new int[1], OS.PTR_SIZEOF);
            return -2147467263;
        }
        COM.MoveMemory(phwnd, new int[]{this.handle}, OS.PTR_SIZEOF);
        return 0;
    }

    private int Invoke(int dispIdMember, int riid, int lcid, int dwFlags, int pDispParams, int pVarResult, int pExcepInfo, int pArgErr) {
        if (pVarResult == 0 || dwFlags != 2) {
            if (pExcepInfo != 0) {
                COM.MoveMemory(pExcepInfo, new int[1], OS.PTR_SIZEOF);
            }
            if (pArgErr != 0) {
                COM.MoveMemory(pArgErr, new int[1], 4);
            }
            return -2147352573;
        }
        Variant result = this.getSiteProperty(dispIdMember);
        if (result != null) {
            if (pVarResult != 0) {
                result.getData(pVarResult);
            }
            return 0;
        }
        switch (dispIdMember) {
            case -714: 
            case -712: 
            case -711: {
                if (pVarResult != 0) {
                    COM.MoveMemory(pVarResult, new int[1], OS.PTR_SIZEOF);
                }
                if (pExcepInfo != 0) {
                    COM.MoveMemory(pExcepInfo, new int[1], OS.PTR_SIZEOF);
                }
                if (pArgErr != 0) {
                    COM.MoveMemory(pArgErr, new int[1], 4);
                }
                return 1;
            }
            case -5502: 
            case -5501: 
            case -706: 
            case -705: 
            case -704: 
            case -703: 
            case -701: {
                if (pVarResult != 0) {
                    COM.MoveMemory(pVarResult, new int[1], OS.PTR_SIZEOF);
                }
                if (pExcepInfo != 0) {
                    COM.MoveMemory(pExcepInfo, new int[1], OS.PTR_SIZEOF);
                }
                if (pArgErr != 0) {
                    COM.MoveMemory(pArgErr, new int[1], 4);
                }
                return -2147467263;
            }
        }
        if (pVarResult != 0) {
            COM.MoveMemory(pVarResult, new int[1], OS.PTR_SIZEOF);
        }
        if (pExcepInfo != 0) {
            COM.MoveMemory(pExcepInfo, new int[1], OS.PTR_SIZEOF);
        }
        if (pArgErr != 0) {
            COM.MoveMemory(pArgErr, new int[1], 4);
        }
        return -2147352573;
    }

    private int OnControlInfoChanged() {
        int[] ppvObject = new int[1];
        if (this.objIUnknown.QueryInterface(COM.IIDIOleControl, ppvObject) == 0) {
            IOleControl objIOleControl = new IOleControl(ppvObject[0]);
            this.currentControlInfo = new CONTROLINFO();
            objIOleControl.GetControlInfo(this.currentControlInfo);
            objIOleControl.Release();
        }
        return 0;
    }

    protected int OnUIDeactivate(int fUndoable) {
        return super.OnUIDeactivate(fUndoable);
    }

    void onFocusIn(Event e) {
        String progID = this.getProgramID();
        if (progID == null) {
            return;
        }
        if (!progID.startsWith(SHELL_PROG_ID)) {
            super.onFocusIn(e);
            return;
        }
        if (this.objIOleInPlaceObject == null) {
            return;
        }
        if (!this.isActivated) {
            this.doVerb(-4);
        }
        if (this.isFocusControl()) {
            return;
        }
        int[] phwnd = new int[1];
        this.objIOleInPlaceObject.GetWindow(phwnd);
        if (phwnd[0] == 0) {
            return;
        }
        OS.SetFocus(phwnd[0]);
    }

    void onFocusOut(Event e) {
        if (this.objIOleInPlaceObject == null) {
            return;
        }
        String progID = this.getProgramID();
        if (progID == null) {
            return;
        }
        if (!progID.startsWith(SHELL_PROG_ID)) {
            super.onFocusOut(e);
            return;
        }
        if (this.isFocusControl()) {
            return;
        }
        int threadId = OS.GetCurrentThreadId();
        GUITHREADINFO lpgui1 = new GUITHREADINFO();
        lpgui1.cbSize = GUITHREADINFO.sizeof;
        OS.GetGUIThreadInfo(threadId, lpgui1);
        this.objIOleInPlaceObject.UIDeactivate();
        if (lpgui1.hwndCaret != 0) {
            GUITHREADINFO lpgui2 = new GUITHREADINFO();
            lpgui2.cbSize = GUITHREADINFO.sizeof;
            OS.GetGUIThreadInfo(threadId, lpgui2);
            if (lpgui2.hwndCaret == 0 && lpgui1.hwndCaret == OS.GetFocus()) {
                if (SWT_RESTORECARET == 0) {
                    SWT_RESTORECARET = OS.RegisterWindowMessage(new TCHAR(0, "SWT_RESTORECARET", true));
                }
                if (OS.SendMessage(lpgui1.hwndCaret, SWT_RESTORECARET, 0, 0) == 0) {
                    int width = lpgui1.right - lpgui1.left;
                    int height = lpgui1.bottom - lpgui1.top;
                    OS.CreateCaret(lpgui1.hwndCaret, 0, width, height);
                    OS.SetCaretPos(lpgui1.left, lpgui1.top);
                    OS.ShowCaret(lpgui1.hwndCaret);
                }
            }
        }
    }

    private int OnFocus(int fGotFocus) {
        return 0;
    }

    protected int QueryInterface(int riid, int ppvObject) {
        int result = super.QueryInterface(riid, ppvObject);
        if (result == 0) {
            return result;
        }
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIOleControlSite)) {
            COM.MoveMemory(ppvObject, new int[]{this.iOleControlSite.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIDispatch)) {
            COM.MoveMemory(ppvObject, new int[]{this.iDispatch.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    protected int Release() {
        int result = super.Release();
        if (result == 0) {
            int i = 0;
            while (i < this.sitePropertyIds.length) {
                this.sitePropertyValues[i].dispose();
                ++i;
            }
            this.sitePropertyIds = new int[0];
            this.sitePropertyValues = new Variant[0];
        }
        return result;
    }

    protected void releaseObjectInterfaces() {
        this.disconnectEventSinks();
        this.disconnectPropertyChangeSink();
        super.releaseObjectInterfaces();
    }

    public void removeEventListener(int eventID, OleListener listener) {
        GUID riid;
        this.checkWidget();
        if (listener == null) {
            SWT.error(4);
        }
        if ((riid = OleControlSite.getDefaultEventSinkGUID(this.objIUnknown)) != null) {
            this.removeEventListener(this.objIUnknown.getAddress(), riid, eventID, listener);
        }
    }

    public void removeEventListener(OleAutomation automation, GUID guid, int eventID, OleListener listener) {
        this.checkWidget();
        if (automation == null || listener == null || guid == null) {
            SWT.error(4);
        }
        this.removeEventListener(automation.getAddress(), guid, eventID, listener);
    }

    public void removeEventListener(OleAutomation automation, int eventID, OleListener listener) {
        int address;
        IUnknown unknown;
        GUID riid;
        this.checkWidget();
        if (automation == null || listener == null) {
            SWT.error(4);
        }
        if ((riid = OleControlSite.getDefaultEventSinkGUID(unknown = new IUnknown(address = automation.getAddress()))) != null) {
            this.removeEventListener(address, riid, eventID, listener);
        }
    }

    void removeEventListener(int iunknown, GUID guid, int eventID, OleListener listener) {
        if (listener == null || guid == null) {
            SWT.error(4);
        }
        int i = 0;
        while (i < this.oleEventSink.length) {
            if (COM.IsEqualGUID(this.oleEventSinkGUID[i], guid) && iunknown == this.oleEventSinkIUnknown[i]) {
                this.oleEventSink[i].removeListener(eventID, listener);
                if (!this.oleEventSink[i].hasListeners()) {
                    this.oleEventSink[i].disconnect();
                    this.oleEventSink[i].Release();
                    int oldLength = this.oleEventSink.length;
                    if (oldLength == 1) {
                        this.oleEventSink = new OleEventSink[0];
                        this.oleEventSinkGUID = new GUID[0];
                        this.oleEventSinkIUnknown = new int[0];
                    } else {
                        OleEventSink[] newOleEventSink = new OleEventSink[oldLength - 1];
                        System.arraycopy(this.oleEventSink, 0, newOleEventSink, 0, i);
                        System.arraycopy(this.oleEventSink, i + 1, newOleEventSink, i, oldLength - i - 1);
                        this.oleEventSink = newOleEventSink;
                        GUID[] newOleEventSinkGUID = new GUID[oldLength - 1];
                        System.arraycopy(this.oleEventSinkGUID, 0, newOleEventSinkGUID, 0, i);
                        System.arraycopy(this.oleEventSinkGUID, i + 1, newOleEventSinkGUID, i, oldLength - i - 1);
                        this.oleEventSinkGUID = newOleEventSinkGUID;
                        int[] newOleEventSinkIUnknown = new int[oldLength - 1];
                        System.arraycopy(this.oleEventSinkIUnknown, 0, newOleEventSinkIUnknown, 0, i);
                        System.arraycopy(this.oleEventSinkIUnknown, i + 1, newOleEventSinkIUnknown, i, oldLength - i - 1);
                        this.oleEventSinkIUnknown = newOleEventSinkIUnknown;
                    }
                }
                return;
            }
            ++i;
        }
    }

    public void removePropertyListener(int propertyID, OleListener listener) {
        if (listener == null) {
            SWT.error(4);
        }
        this.olePropertyChangeSink.removeListener(propertyID, listener);
    }

    public void setBackground(Color color) {
        super.setBackground(color);
        if (this.objIUnknown != null) {
            OleAutomation oleObject = new OleAutomation(this);
            oleObject.setProperty(-501, new Variant(color.handle));
            oleObject.dispose();
        }
    }

    public void setFont(Font font) {
        super.setFont(font);
        if (this.objIUnknown != null) {
            OleAutomation oleObject = new OleAutomation(this);
            Variant varDispFont = oleObject.getProperty(-512);
            oleObject.dispose();
            if (varDispFont != null) {
                OleAutomation iDispFont = varDispFont.getAutomation();
                FontData[] fdata = font.getFontData();
                iDispFont.setProperty(0, new Variant(fdata[0].getName()));
                iDispFont.setProperty(2, new Variant(fdata[0].getHeight()));
                iDispFont.setProperty(4, new Variant(fdata[0].getStyle() & 2));
                iDispFont.setProperty(3, new Variant(fdata[0].getStyle() & 1));
                iDispFont.dispose();
            }
        }
        this.font = font;
    }

    public void setForeground(Color color) {
        super.setForeground(color);
        if (this.objIUnknown != null) {
            OleAutomation oleObject = new OleAutomation(this);
            oleObject.setProperty(-513, new Variant(color.handle));
            oleObject.dispose();
        }
    }

    public void setSiteProperty(int dispId, Variant value) {
        int i = 0;
        while (i < this.sitePropertyIds.length) {
            if (this.sitePropertyIds[i] == dispId) {
                if (this.sitePropertyValues[i] != null) {
                    this.sitePropertyValues[i].dispose();
                }
                if (value != null) {
                    this.sitePropertyValues[i] = value;
                } else {
                    int oldLength = this.sitePropertyIds.length;
                    int[] newSitePropertyIds = new int[oldLength - 1];
                    Variant[] newSitePropertyValues = new Variant[oldLength - 1];
                    System.arraycopy(this.sitePropertyIds, 0, newSitePropertyIds, 0, i);
                    System.arraycopy(this.sitePropertyIds, i + 1, newSitePropertyIds, i, oldLength - i - 1);
                    System.arraycopy(this.sitePropertyValues, 0, newSitePropertyValues, 0, i);
                    System.arraycopy(this.sitePropertyValues, i + 1, newSitePropertyValues, i, oldLength - i - 1);
                    this.sitePropertyIds = newSitePropertyIds;
                    this.sitePropertyValues = newSitePropertyValues;
                }
                return;
            }
            ++i;
        }
        int oldLength = this.sitePropertyIds.length;
        int[] newSitePropertyIds = new int[oldLength + 1];
        Variant[] newSitePropertyValues = new Variant[oldLength + 1];
        System.arraycopy(this.sitePropertyIds, 0, newSitePropertyIds, 0, oldLength);
        System.arraycopy(this.sitePropertyValues, 0, newSitePropertyValues, 0, oldLength);
        newSitePropertyIds[oldLength] = dispId;
        newSitePropertyValues[oldLength] = value;
        this.sitePropertyIds = newSitePropertyIds;
        this.sitePropertyValues = newSitePropertyValues;
    }
}

