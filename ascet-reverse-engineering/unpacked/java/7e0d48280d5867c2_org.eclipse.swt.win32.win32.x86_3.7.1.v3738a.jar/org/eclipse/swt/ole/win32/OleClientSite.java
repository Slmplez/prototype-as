/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.ole.win32;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.ole.win32.CAUUID;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IDispatch;
import org.eclipse.swt.internal.ole.win32.IMoniker;
import org.eclipse.swt.internal.ole.win32.IOleCommandTarget;
import org.eclipse.swt.internal.ole.win32.IOleDocument;
import org.eclipse.swt.internal.ole.win32.IOleDocumentView;
import org.eclipse.swt.internal.ole.win32.IOleInPlaceObject;
import org.eclipse.swt.internal.ole.win32.IOleLink;
import org.eclipse.swt.internal.ole.win32.IOleObject;
import org.eclipse.swt.internal.ole.win32.IPersist;
import org.eclipse.swt.internal.ole.win32.IPersistFile;
import org.eclipse.swt.internal.ole.win32.IPersistStorage;
import org.eclipse.swt.internal.ole.win32.ISpecifyPropertyPages;
import org.eclipse.swt.internal.ole.win32.IStorage;
import org.eclipse.swt.internal.ole.win32.IStream;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.IViewObject2;
import org.eclipse.swt.internal.ole.win32.OLECMD;
import org.eclipse.swt.internal.ole.win32.OLEINPLACEFRAMEINFO;
import org.eclipse.swt.internal.ole.win32.VARIANT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.RECT;
import org.eclipse.swt.internal.win32.SIZE;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.OleFrame;
import org.eclipse.swt.ole.win32.Variant;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;

public class OleClientSite
extends Composite {
    private COMObject iUnknown;
    COMObject iOleClientSite;
    private COMObject iAdviseSink;
    private COMObject iOleInPlaceSite;
    private COMObject iOleDocumentSite;
    protected GUID appClsid;
    private GUID objClsid;
    private int refCount;
    protected OleFrame frame;
    protected IUnknown objIUnknown;
    protected IOleObject objIOleObject;
    protected IViewObject2 objIViewObject2;
    protected IOleInPlaceObject objIOleInPlaceObject;
    protected IOleCommandTarget objIOleCommandTarget;
    protected IOleDocumentView objDocumentView;
    protected IStorage tempStorage;
    private int aspect;
    private int type;
    private boolean isStatic;
    boolean isActivated;
    private RECT borderWidths = new RECT();
    private RECT indent = new RECT();
    private boolean inUpdate = false;
    private boolean inInit = true;
    private boolean inDispose = false;
    private static final String WORDPROGID = "Word.Document";
    private Listener listener;
    static final int STATE_NONE = 0;
    static final int STATE_RUNNING = 1;
    static final int STATE_INPLACEACTIVE = 2;
    static final int STATE_UIACTIVE = 3;
    static final int STATE_ACTIVE = 4;
    int state = 0;

    protected OleClientSite(Composite parent, int style) {
        super(parent, style);
        this.createCOMInterfaces();
        while (parent != null) {
            if (parent instanceof OleFrame) {
                this.frame = (OleFrame)parent;
                break;
            }
            parent = parent.getParent();
        }
        if (this.frame == null) {
            OLE.error(5);
        }
        this.frame.AddRef();
        this.aspect = 1;
        this.type = 1;
        this.isStatic = false;
        this.listener = new Listener(){

            public void handleEvent(Event e) {
                switch (e.type) {
                    case 10: 
                    case 11: {
                        OleClientSite.this.onResize(e);
                        break;
                    }
                    case 12: {
                        OleClientSite.this.onDispose(e);
                        break;
                    }
                    case 15: {
                        OleClientSite.this.onFocusIn(e);
                        break;
                    }
                    case 16: {
                        OleClientSite.this.onFocusOut(e);
                        break;
                    }
                    case 9: {
                        OleClientSite.this.onPaint(e);
                        break;
                    }
                    case 31: {
                        OleClientSite.this.onTraverse(e);
                        break;
                    }
                    case 1: {
                        break;
                    }
                    case 26: {
                        OleClientSite.this.isActivated = true;
                        break;
                    }
                    case 27: {
                        OleClientSite.this.isActivated = false;
                        break;
                    }
                    default: {
                        OLE.error(20);
                    }
                }
            }
        };
        this.frame.addListener(11, this.listener);
        this.frame.addListener(10, this.listener);
        this.addListener(12, this.listener);
        this.addListener(15, this.listener);
        this.addListener(16, this.listener);
        this.addListener(9, this.listener);
        this.addListener(31, this.listener);
        this.addListener(1, this.listener);
        this.addListener(26, this.listener);
        this.addListener(27, this.listener);
    }

    public OleClientSite(Composite parent, int style, File file) {
        this(parent, style);
        try {
            String progID;
            if (file == null || file.isDirectory() || !file.exists()) {
                OLE.error(5);
            }
            GUID fileClsid = new GUID();
            char[] fileName = (String.valueOf(file.getAbsolutePath()) + "\u0000").toCharArray();
            int result = COM.GetClassFile(fileName, fileClsid);
            if (result != 0) {
                OLE.error(1004, result);
            }
            if ((progID = this.getProgID(fileClsid)) == null) {
                OLE.error(1004, result);
            }
            this.appClsid = fileClsid;
            this.OleCreate(this.appClsid, fileClsid, fileName, file);
        }
        catch (SWTException e) {
            this.dispose();
            this.disposeCOMInterfaces();
            throw e;
        }
    }

    public OleClientSite(Composite parent, int style, String progId) {
        this(parent, style);
        try {
            this.appClsid = this.getClassID(progId);
            if (this.appClsid == null) {
                OLE.error(1004);
            }
            this.tempStorage = this.createTempStorage();
            int[] address = new int[1];
            int clientSite = this.isICAClient() ? 0 : this.iOleClientSite.getAddress();
            int result = COM.OleCreate(this.appClsid, COM.IIDIUnknown, 1, null, clientSite, this.tempStorage.getAddress(), address);
            if (result != 0) {
                OLE.error(1001, result);
            }
            this.objIUnknown = new IUnknown(address[0]);
            this.addObjectReferences();
            if (COM.OleRun(this.objIUnknown.getAddress()) == 0) {
                this.state = 1;
            }
        }
        catch (SWTException e) {
            this.dispose();
            this.disposeCOMInterfaces();
            throw e;
        }
    }

    public OleClientSite(Composite parent, int style, String progId, File file) {
        this(parent, style);
        try {
            if (file == null || file.isDirectory() || !file.exists()) {
                OLE.error(5);
            }
            this.appClsid = this.getClassID(progId);
            if (this.appClsid == null) {
                OLE.error(1004);
            }
            char[] fileName = (String.valueOf(file.getAbsolutePath()) + "\u0000").toCharArray();
            GUID fileClsid = new GUID();
            COM.GetClassFile(fileName, fileClsid);
            this.OleCreate(this.appClsid, fileClsid, fileName, file);
        }
        catch (SWTException e) {
            this.dispose();
            this.disposeCOMInterfaces();
            throw e;
        }
    }

    void OleCreate(GUID appClsid, GUID fileClsid, char[] fileName, File file) {
        boolean isOffice2007 = this.isOffice2007(true);
        if (!isOffice2007 && COM.IsEqualGUID(appClsid, fileClsid)) {
            this.tempStorage = this.createTempStorage();
            int[] address = new int[1];
            int result = COM.OleCreateFromFile(appClsid, fileName, COM.IIDIUnknown, 1, null, this.iOleClientSite.getAddress(), this.tempStorage.getAddress(), address);
            if (result != 0) {
                OLE.error(1001, result);
            }
            this.objIUnknown = new IUnknown(address[0]);
        } else {
            int[] ppv;
            int result;
            int[] address;
            int mode;
            IStorage storage = null;
            if (COM.StgIsStorageFile(fileName) == 0) {
                mode = 65552;
                address = new int[1];
                result = COM.StgOpenStorage(fileName, 0, mode, 0, 0, address);
                if (result != 0) {
                    OLE.error(1002, result);
                }
                storage = new IStorage(address[0]);
            } else {
                mode = 4114;
                address = new int[1];
                result = COM.StgCreateDocfile(null, mode | 0x4000000, 0, address);
                if (result != 0) {
                    OLE.error(1002, result);
                }
                storage = new IStorage(address[0]);
                String streamName = "CONTENTS";
                GUID wordGUID = this.getClassID(WORDPROGID);
                if (wordGUID != null && COM.IsEqualGUID(appClsid, wordGUID)) {
                    streamName = "WordDocument";
                }
                if (isOffice2007) {
                    streamName = "Package";
                }
                if ((result = storage.CreateStream(streamName, mode, 0, 0, address = new int[1])) != 0) {
                    storage.Release();
                    OLE.error(1002, result);
                }
                IStream stream = new IStream(address[0]);
                try {
                    FileInputStream fileInput = new FileInputStream(file);
                    int increment = 4096;
                    byte[] buffer = new byte[increment];
                    int count = 0;
                    while ((count = fileInput.read(buffer)) > 0) {
                        int pv = COM.CoTaskMemAlloc(count);
                        OS.MoveMemory(pv, buffer, count);
                        result = stream.Write(pv, count, null);
                        COM.CoTaskMemFree(pv);
                        if (result == 0) continue;
                        fileInput.close();
                        stream.Release();
                        storage.Release();
                        OLE.error(1002, result);
                    }
                    fileInput.close();
                    stream.Commit(0);
                    stream.Release();
                }
                catch (IOException iOException) {
                    stream.Release();
                    storage.Release();
                    OLE.error(1002);
                }
            }
            this.tempStorage = this.createTempStorage();
            int result2 = storage.CopyTo(0, null, null, this.tempStorage.getAddress());
            storage.Release();
            if (result2 != 0) {
                OLE.error(1002, result2);
            }
            if ((result2 = COM.CoCreateInstance(appClsid, 0, 3, COM.IIDIUnknown, ppv = new int[1])) != 0) {
                OLE.error(1001, result2);
            }
            this.objIUnknown = new IUnknown(ppv[0]);
            ppv = new int[1];
            result2 = this.objIUnknown.QueryInterface(COM.IIDIPersistStorage, ppv);
            if (result2 != 0) {
                OLE.error(1001, result2);
            }
            IPersistStorage iPersistStorage = new IPersistStorage(ppv[0]);
            result2 = iPersistStorage.Load(this.tempStorage.getAddress());
            iPersistStorage.Release();
            if (result2 != 0) {
                OLE.error(1001, result2);
            }
        }
        this.addObjectReferences();
        if (COM.OleRun(this.objIUnknown.getAddress()) == 0) {
            this.state = 1;
        }
    }

    protected void addObjectReferences() {
        int result;
        int[] ppvObject = new int[1];
        if (this.objIUnknown.QueryInterface(COM.IIDIPersist, ppvObject) == 0) {
            IPersist objIPersist = new IPersist(ppvObject[0]);
            GUID tempid = new GUID();
            if (objIPersist.GetClassID(tempid) == 0) {
                this.objClsid = tempid;
            }
            objIPersist.Release();
        }
        if ((result = this.objIUnknown.QueryInterface(COM.IIDIViewObject2, ppvObject = new int[1])) != 0) {
            OLE.error(1003, result);
        }
        this.objIViewObject2 = new IViewObject2(ppvObject[0]);
        this.objIViewObject2.SetAdvise(this.aspect, 0, this.iAdviseSink.getAddress());
        ppvObject = new int[1];
        result = this.objIUnknown.QueryInterface(COM.IIDIOleObject, ppvObject);
        if (result != 0) {
            OLE.error(1003, result);
        }
        this.objIOleObject = new IOleObject(ppvObject[0]);
        int[] ppvClientSite = new int[1];
        result = this.objIOleObject.GetClientSite(ppvClientSite);
        if (ppvClientSite[0] == 0) {
            this.objIOleObject.SetClientSite(this.iOleClientSite.getAddress());
        } else {
            this.Release();
        }
        int[] pdwConnection = new int[1];
        this.objIOleObject.Advise(this.iAdviseSink.getAddress(), pdwConnection);
        this.objIOleObject.SetHostNames("main", "main");
        COM.OleSetContainedObject(this.objIUnknown.getAddress(), true);
        ppvObject = new int[1];
        if (this.objIUnknown.QueryInterface(COM.IIDIOleLink, ppvObject) == 0) {
            IOleLink objIOleLink = new IOleLink(ppvObject[0]);
            int[] ppmk = new int[1];
            if (objIOleLink.GetSourceMoniker(ppmk) == 0) {
                IMoniker objIMoniker = new IMoniker(ppmk[0]);
                objIMoniker.Release();
                this.type = 0;
                objIOleLink.BindIfRunning();
            } else {
                this.isStatic = true;
            }
            objIOleLink.Release();
        }
    }

    protected int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    private int CanInPlaceActivate() {
        if (this.aspect == 1 && this.type == 1) {
            return 0;
        }
        return 1;
    }

    private int ContextSensitiveHelp(int fEnterMode) {
        return 0;
    }

    protected void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.iUnknown = new COMObject(nArray){

            public int method0(int[] args) {
                return OleClientSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleClientSite.this.AddRef();
            }

            public int method2(int[] args) {
                return OleClientSite.this.Release();
            }
        };
        int[] nArray2 = new int[9];
        nArray2[0] = 2;
        nArray2[4] = 3;
        nArray2[5] = 1;
        nArray2[7] = 1;
        this.iOleClientSite = new COMObject(nArray2){

            public int method0(int[] args) {
                return OleClientSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleClientSite.this.AddRef();
            }

            public int method2(int[] args) {
                return OleClientSite.this.Release();
            }

            public int method3(int[] args) {
                return OleClientSite.this.SaveObject();
            }

            public int method5(int[] args) {
                return OleClientSite.this.GetContainer(args[0]);
            }

            public int method6(int[] args) {
                return OleClientSite.this.ShowObject();
            }

            public int method7(int[] args) {
                return OleClientSite.this.OnShowWindow(args[0]);
            }
        };
        int[] nArray3 = new int[8];
        nArray3[0] = 2;
        nArray3[3] = 2;
        nArray3[4] = 2;
        nArray3[5] = 1;
        this.iAdviseSink = new COMObject(nArray3){

            public int method0(int[] args) {
                return OleClientSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleClientSite.this.AddRef();
            }

            public int method2(int[] args) {
                return OleClientSite.this.Release();
            }

            public int method3(int[] args) {
                return OleClientSite.this.OnDataChange(args[0], args[1]);
            }

            public int method4(int[] args) {
                return OleClientSite.this.OnViewChange(args[0], args[1]);
            }

            public int method6(int[] args) {
                OleClientSite.this.OnSave();
                return 0;
            }

            public int method7(int[] args) {
                return OleClientSite.this.OnClose();
            }
        };
        int[] nArray4 = new int[15];
        nArray4[0] = 2;
        nArray4[3] = 1;
        nArray4[4] = 1;
        nArray4[8] = 5;
        nArray4[9] = C.PTR_SIZEOF == 4 ? 2 : 1;
        nArray4[10] = 1;
        nArray4[14] = 1;
        this.iOleInPlaceSite = new COMObject(nArray4){

            public int method0(int[] args) {
                return OleClientSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleClientSite.this.AddRef();
            }

            public int method2(int[] args) {
                return OleClientSite.this.Release();
            }

            public int method3(int[] args) {
                return OleClientSite.this.GetWindow(args[0]);
            }

            public int method4(int[] args) {
                return OleClientSite.this.ContextSensitiveHelp(args[0]);
            }

            public int method5(int[] args) {
                return OleClientSite.this.CanInPlaceActivate();
            }

            public int method6(int[] args) {
                return OleClientSite.this.OnInPlaceActivate();
            }

            public int method7(int[] args) {
                return OleClientSite.this.OnUIActivate();
            }

            public int method8(int[] args) {
                return OleClientSite.this.GetWindowContext(args[0], args[1], args[2], args[3], args[4]);
            }

            public int method9(int[] args) {
                if (args.length == 2) {
                    return OleClientSite.this.Scroll(args[0], args[1]);
                }
                return OleClientSite.this.Scroll_64(args[0]);
            }

            public int method10(int[] args) {
                return OleClientSite.this.OnUIDeactivate(args[0]);
            }

            public int method11(int[] args) {
                return OleClientSite.this.OnInPlaceDeactivate();
            }

            public int method14(int[] args) {
                return OleClientSite.this.OnPosRectChange(args[0]);
            }
        };
        int[] nArray5 = new int[4];
        nArray5[0] = 2;
        nArray5[3] = 1;
        this.iOleDocumentSite = new COMObject(nArray5){

            public int method0(int[] args) {
                return OleClientSite.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return OleClientSite.this.AddRef();
            }

            public int method2(int[] args) {
                return OleClientSite.this.Release();
            }

            public int method3(int[] args) {
                return OleClientSite.this.ActivateMe(args[0]);
            }
        };
    }

    protected IStorage createTempStorage() {
        int grfMode = 67108882;
        int[] tempStorage = new int[1];
        int result = COM.StgCreateDocfile(null, grfMode, 0, tempStorage);
        if (result != 0) {
            OLE.error(1000, result);
        }
        return new IStorage(tempStorage[0]);
    }

    public void deactivateInPlaceClient() {
        if (this.objIOleInPlaceObject != null) {
            this.objIOleInPlaceObject.InPlaceDeactivate();
        }
    }

    private void deleteTempStorage() {
        if (this.tempStorage != null) {
            this.tempStorage.Release();
        }
        this.tempStorage = null;
    }

    protected void disposeCOMInterfaces() {
        if (this.iUnknown != null) {
            this.iUnknown.dispose();
        }
        this.iUnknown = null;
        if (this.iOleClientSite != null) {
            this.iOleClientSite.dispose();
        }
        this.iOleClientSite = null;
        if (this.iAdviseSink != null) {
            this.iAdviseSink.dispose();
        }
        this.iAdviseSink = null;
        if (this.iOleInPlaceSite != null) {
            this.iOleInPlaceSite.dispose();
        }
        this.iOleInPlaceSite = null;
        if (this.iOleDocumentSite != null) {
            this.iOleDocumentSite.dispose();
        }
        this.iOleDocumentSite = null;
    }

    public int doVerb(int verb) {
        if (this.state == 0 && COM.OleRun(this.objIUnknown.getAddress()) == 0) {
            this.state = 1;
        }
        if (this.state == 0 || this.isStatic) {
            return -2147467259;
        }
        RECT rect = new RECT();
        OS.GetClientRect(this.handle, rect);
        int result = this.objIOleObject.DoVerb(verb, null, this.iOleClientSite.getAddress(), 0, this.handle, rect);
        if (this.state != 1 && this.inInit) {
            this.updateStorage();
            this.inInit = false;
        }
        return result;
    }

    public int exec(int cmdID, int options, Variant in, Variant out) {
        if (this.objIOleCommandTarget == null) {
            int[] address = new int[1];
            if (this.objIUnknown.QueryInterface(COM.IIDIOleCommandTarget, address) != 0) {
                return 1003;
            }
            this.objIOleCommandTarget = new IOleCommandTarget(address[0]);
        }
        int inAddress = 0;
        if (in != null) {
            inAddress = OS.GlobalAlloc(64, VARIANT.sizeof);
            in.getData(inAddress);
        }
        int outAddress = 0;
        if (out != null) {
            outAddress = OS.GlobalAlloc(64, VARIANT.sizeof);
            out.getData(outAddress);
        }
        int result = this.objIOleCommandTarget.Exec(null, cmdID, options, inAddress, outAddress);
        if (inAddress != 0) {
            COM.VariantClear(inAddress);
            OS.GlobalFree(inAddress);
        }
        if (outAddress != 0) {
            out.setData(outAddress);
            COM.VariantClear(outAddress);
            OS.GlobalFree(outAddress);
        }
        return result;
    }

    IDispatch getAutomationObject() {
        int[] ppvObject = new int[1];
        if (this.objIUnknown.QueryInterface(COM.IIDIDispatch, ppvObject) != 0) {
            return null;
        }
        return new IDispatch(ppvObject[0]);
    }

    protected GUID getClassID(String clientName) {
        int result;
        GUID guid = new GUID();
        char[] buffer = null;
        if (clientName != null) {
            int count = clientName.length();
            buffer = new char[count + 1];
            clientName.getChars(0, count, buffer, 0);
        }
        if (COM.CLSIDFromProgID(buffer, guid) != 0 && (result = COM.CLSIDFromString(buffer, guid)) != 0) {
            return null;
        }
        return guid;
    }

    private int GetContainer(int ppContainer) {
        if (ppContainer != 0) {
            COM.MoveMemory(ppContainer, new int[1], OS.PTR_SIZEOF);
        }
        return -2147467262;
    }

    private SIZE getExtent() {
        SIZE sizel = new SIZE();
        if (this.objIOleObject != null) {
            if (this.objIViewObject2 != null && !COM.OleIsRunning(this.objIOleObject.getAddress())) {
                this.objIViewObject2.GetExtent(this.aspect, -1, null, sizel);
            } else {
                this.objIOleObject.GetExtent(this.aspect, sizel);
            }
        }
        return this.xFormHimetricToPixels(sizel);
    }

    public Rectangle getIndent() {
        return new Rectangle(this.indent.left, this.indent.right, this.indent.top, this.indent.bottom);
    }

    public String getProgramID() {
        return this.getProgID(this.appClsid);
    }

    String getProgID(GUID clsid) {
        int[] lplpszProgID;
        if (clsid != null && COM.ProgIDFromCLSID(clsid, lplpszProgID = new int[1]) == 0) {
            int hMem = lplpszProgID[0];
            int length = OS.GlobalSize(hMem);
            int ptr = OS.GlobalLock(hMem);
            char[] buffer = new char[length];
            COM.MoveMemory(buffer, ptr, length);
            OS.GlobalUnlock(hMem);
            OS.GlobalFree(hMem);
            String result = new String(buffer);
            int index = result.indexOf("\u0000");
            return result.substring(0, index);
        }
        return null;
    }

    int ActivateMe(int pViewToActivate) {
        if (pViewToActivate == 0) {
            int[] ppvObject = new int[1];
            if (this.objIUnknown.QueryInterface(COM.IIDIOleDocument, ppvObject) != 0) {
                return -2147467259;
            }
            IOleDocument objOleDocument = new IOleDocument(ppvObject[0]);
            if (objOleDocument.CreateView(this.iOleInPlaceSite.getAddress(), 0, 0, ppvObject) != 0) {
                return -2147467259;
            }
            objOleDocument.Release();
            this.objDocumentView = new IOleDocumentView(ppvObject[0]);
        } else {
            this.objDocumentView = new IOleDocumentView(pViewToActivate);
            this.objDocumentView.AddRef();
            this.objDocumentView.SetInPlaceSite(this.iOleInPlaceSite.getAddress());
        }
        this.objDocumentView.UIActivate(1);
        RECT rect = this.getRect();
        this.objDocumentView.SetRect(rect);
        this.objDocumentView.Show(1);
        return 0;
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

    RECT getRect() {
        Rectangle area = this.getClientArea();
        RECT rect = new RECT();
        rect.left = area.x;
        rect.top = area.y;
        rect.right = area.x + area.width;
        rect.bottom = area.y + area.height;
        return rect;
    }

    private int GetWindowContext(int ppFrame, int ppDoc, int lprcPosRect, int lprcClipRect, int lpFrameInfo) {
        int hAccel;
        int hwnd;
        int cAccel;
        if (this.frame == null || ppFrame == 0) {
            return -2147467263;
        }
        int iOleInPlaceFrame = this.frame.getIOleInPlaceFrame();
        COM.MoveMemory(ppFrame, new int[]{iOleInPlaceFrame}, OS.PTR_SIZEOF);
        this.frame.AddRef();
        if (ppDoc != 0) {
            COM.MoveMemory(ppDoc, new int[1], OS.PTR_SIZEOF);
        }
        RECT rect = this.getRect();
        if (lprcPosRect != 0) {
            OS.MoveMemory(lprcPosRect, rect, RECT.sizeof);
        }
        if (lprcClipRect != 0) {
            OS.MoveMemory(lprcClipRect, rect, RECT.sizeof);
        }
        OLEINPLACEFRAMEINFO frameInfo = new OLEINPLACEFRAMEINFO();
        frameInfo.cb = OLEINPLACEFRAMEINFO.sizeof;
        frameInfo.fMDIApp = 0;
        frameInfo.hwndFrame = this.frame.handle;
        Shell shell = this.getShell();
        Menu menubar = shell.getMenuBar();
        if (menubar != null && !menubar.isDisposed() && (cAccel = OS.SendMessage(hwnd = shell.handle, 32768, 0, 0)) != 0 && (hAccel = OS.SendMessage(hwnd, 32769, 0, 0)) != 0) {
            frameInfo.cAccelEntries = cAccel;
            frameInfo.haccel = hAccel;
        }
        COM.MoveMemory(lpFrameInfo, frameInfo, OLEINPLACEFRAMEINFO.sizeof);
        return 0;
    }

    boolean isICAClient() {
        return this.getProgramID().startsWith("Citrix.ICAClient");
    }

    public boolean isDirty() {
        int[] address = new int[1];
        if (this.objIOleObject.QueryInterface(COM.IIDIPersistFile, address) != 0) {
            return true;
        }
        IPersistFile permStorage = new IPersistFile(address[0]);
        int result = permStorage.IsDirty();
        permStorage.Release();
        return result != 1;
    }

    public boolean isFocusControl() {
        this.checkWidget();
        int focusHwnd = OS.GetFocus();
        if (this.objIOleInPlaceObject == null) {
            return this.handle == focusHwnd;
        }
        int[] phwnd = new int[1];
        this.objIOleInPlaceObject.GetWindow(phwnd);
        while (focusHwnd != 0) {
            if (phwnd[0] == focusHwnd) {
                return true;
            }
            focusHwnd = OS.GetParent(focusHwnd);
        }
        return false;
    }

    private boolean isOffice2007(boolean program) {
        int lastDot;
        String programID = this.getProgramID();
        if (programID == null) {
            return false;
        }
        if (program && (lastDot = programID.lastIndexOf(46)) != -1) {
            programID = programID.substring(0, lastDot);
            GUID guid = this.getClassID(programID);
            if ((programID = this.getProgID(guid)) == null) {
                return false;
            }
        }
        if (programID.equals("Word.Document.12")) {
            return true;
        }
        if (programID.equals("Excel.Sheet.12")) {
            return true;
        }
        return programID.equals("PowerPoint.Show.12");
    }

    private int OnClose() {
        return 0;
    }

    private int OnDataChange(int pFormatetc, int pStgmed) {
        return 0;
    }

    private void onDispose(Event e) {
        this.inDispose = true;
        this.removeListener(12, this.listener);
        this.removeListener(15, this.listener);
        this.removeListener(16, this.listener);
        this.removeListener(9, this.listener);
        this.removeListener(31, this.listener);
        this.removeListener(1, this.listener);
        if (this.state != 0) {
            this.doVerb(-6);
        }
        this.deactivateInPlaceClient();
        this.releaseObjectInterfaces();
        this.deleteTempStorage();
        this.frame.removeListener(11, this.listener);
        this.frame.removeListener(10, this.listener);
        this.frame.Release();
        this.frame = null;
    }

    void onFocusIn(Event e) {
        int[] ppvObject;
        if (this.inDispose) {
            return;
        }
        if (this.state != 3 && this.objIUnknown.QueryInterface(COM.IIDIOleInPlaceObject, ppvObject = new int[1]) == 0) {
            IOleInPlaceObject objIOleInPlaceObject = new IOleInPlaceObject(ppvObject[0]);
            objIOleInPlaceObject.Release();
            this.doVerb(-1);
        }
        if (this.objIOleInPlaceObject == null) {
            return;
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
    }

    private int OnInPlaceActivate() {
        this.state = 2;
        this.frame.setCurrentDocument(this);
        if (this.objIOleObject == null) {
            return 0;
        }
        int[] ppvObject = new int[1];
        if (this.objIOleObject.QueryInterface(COM.IIDIOleInPlaceObject, ppvObject) == 0) {
            this.objIOleInPlaceObject = new IOleInPlaceObject(ppvObject[0]);
        }
        return 0;
    }

    private int OnInPlaceDeactivate() {
        if (this.objIOleInPlaceObject != null) {
            this.objIOleInPlaceObject.Release();
        }
        this.objIOleInPlaceObject = null;
        this.state = 1;
        this.redraw();
        Shell shell = this.getShell();
        if (this.isFocusControl() || this.frame.isFocusControl()) {
            shell.traverse(16);
        }
        return 0;
    }

    private int OnPosRectChange(int lprcPosRect) {
        Point size = this.getSize();
        this.setExtent(size.x, size.y);
        return 0;
    }

    private void onPaint(Event e) {
        if (this.state == 1 || this.state == 2) {
            SIZE size = this.getExtent();
            Rectangle area = this.getClientArea();
            RECT rect = new RECT();
            if (this.getProgramID().startsWith("Excel.Sheet")) {
                rect.left = area.x;
                rect.right = area.x + area.height * size.cx / size.cy;
                rect.top = area.y;
                rect.bottom = area.y + area.height;
            } else {
                rect.left = area.x;
                rect.right = area.x + size.cx;
                rect.top = area.y;
                rect.bottom = area.y + size.cy;
            }
            int pArea = OS.GlobalAlloc(64, RECT.sizeof);
            OS.MoveMemory(pArea, rect, RECT.sizeof);
            COM.OleDraw(this.objIUnknown.getAddress(), this.aspect, e.gc.handle, pArea);
            OS.GlobalFree(pArea);
        }
    }

    private void onResize(Event e) {
        this.setBounds();
    }

    private void OnSave() {
    }

    private int OnShowWindow(int fShow) {
        return 0;
    }

    private int OnUIActivate() {
        if (this.objIOleInPlaceObject == null) {
            return -2147467259;
        }
        this.state = 3;
        int[] phwnd = new int[1];
        if (this.objIOleInPlaceObject.GetWindow(phwnd) == 0) {
            OS.SetWindowPos(phwnd[0], 0, 0, 0, 0, 0, 3);
        }
        return 0;
    }

    int OnUIDeactivate(int fUndoable) {
        Menu menubar;
        if (this.frame == null || this.frame.isDisposed()) {
            return 0;
        }
        this.state = 2;
        this.frame.SetActiveObject(0, 0);
        this.redraw();
        Shell shell = this.getShell();
        if (this.isFocusControl() || this.frame.isFocusControl()) {
            shell.traverse(16);
        }
        if ((menubar = shell.getMenuBar()) == null || menubar.isDisposed()) {
            return 0;
        }
        int shellHandle = shell.handle;
        OS.SetMenu(shellHandle, menubar.handle);
        return COM.OleSetMenuDescriptor(0, shellHandle, 0, 0, 0);
    }

    private void onTraverse(Event event) {
        switch (event.detail) {
            case 2: 
            case 4: 
            case 8: 
            case 16: 
            case 128: 
            case 256: 
            case 512: {
                event.doit = true;
            }
        }
    }

    private int OnViewChange(int dwAspect, int lindex) {
        return 0;
    }

    protected int QueryInterface(int riid, int ppvObject) {
        String progID;
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.iUnknown.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIAdviseSink)) {
            COM.MoveMemory(ppvObject, new int[]{this.iAdviseSink.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIOleClientSite)) {
            COM.MoveMemory(ppvObject, new int[]{this.iOleClientSite.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIOleInPlaceSite)) {
            COM.MoveMemory(ppvObject, new int[]{this.iOleInPlaceSite.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, COM.IIDIOleDocumentSite) && !(progID = this.getProgramID()).startsWith("PowerPoint")) {
            COM.MoveMemory(ppvObject, new int[]{this.iOleDocumentSite.getAddress()}, OS.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        COM.MoveMemory(ppvObject, new int[1], OS.PTR_SIZEOF);
        return -2147467262;
    }

    public int queryStatus(int cmd) {
        if (this.objIOleCommandTarget == null) {
            int[] address = new int[1];
            if (this.objIUnknown.QueryInterface(COM.IIDIOleCommandTarget, address) != 0) {
                return 0;
            }
            this.objIOleCommandTarget = new IOleCommandTarget(address[0]);
        }
        OLECMD olecmd = new OLECMD();
        olecmd.cmdID = cmd;
        int result = this.objIOleCommandTarget.QueryStatus(null, 1, olecmd, null);
        if (result != 0) {
            return 0;
        }
        return olecmd.cmdf;
    }

    protected int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    protected void releaseObjectInterfaces() {
        if (this.objIOleInPlaceObject != null) {
            this.objIOleInPlaceObject.Release();
        }
        this.objIOleInPlaceObject = null;
        if (this.objIOleObject != null) {
            this.objIOleObject.Close(1);
            this.objIOleObject.Release();
        }
        this.objIOleObject = null;
        if (this.objDocumentView != null) {
            this.objDocumentView.Release();
        }
        this.objDocumentView = null;
        if (this.objIViewObject2 != null) {
            this.objIViewObject2.SetAdvise(this.aspect, 0, 0);
            this.objIViewObject2.Release();
        }
        this.objIViewObject2 = null;
        if (this.objIOleCommandTarget != null) {
            this.objIOleCommandTarget.Release();
        }
        this.objIOleCommandTarget = null;
        if (this.objIUnknown != null) {
            this.objIUnknown.Release();
        }
        this.objIUnknown = null;
        if (COM.FreeUnusedLibraries) {
            COM.CoFreeUnusedLibraries();
        }
    }

    public boolean save(File file, boolean includeOleInfo) {
        if (this.isOffice2007(false)) {
            return this.saveOffice2007(file);
        }
        if (includeOleInfo) {
            return this.saveToStorageFile(file);
        }
        return this.saveToTraditionalFile(file);
    }

    private boolean saveFromContents(int address, File file) {
        boolean success = false;
        IStream tempContents = new IStream(address);
        tempContents.AddRef();
        try {
            FileOutputStream writer = new FileOutputStream(file);
            int increment = 4096;
            int pv = COM.CoTaskMemAlloc(increment);
            int[] pcbWritten = new int[1];
            while (tempContents.Read(pv, increment, pcbWritten) == 0 && pcbWritten[0] > 0) {
                byte[] buffer = new byte[pcbWritten[0]];
                OS.MoveMemory(buffer, pv, pcbWritten[0]);
                writer.write(buffer);
                success = true;
            }
            COM.CoTaskMemFree(pv);
            writer.close();
        }
        catch (IOException iOException) {}
        tempContents.Release();
        return success;
    }

    private boolean saveFromOle10Native(int address, File file) {
        boolean success = false;
        IStream tempContents = new IStream(address);
        tempContents.AddRef();
        int pv = COM.CoTaskMemAlloc(4);
        int[] size = new int[1];
        int rc = tempContents.Read(pv, 4, null);
        OS.MoveMemory(size, pv, 4);
        COM.CoTaskMemFree(pv);
        if (rc == 0 && size[0] > 0) {
            byte[] buffer = new byte[size[0]];
            pv = COM.CoTaskMemAlloc(size[0]);
            rc = tempContents.Read(pv, size[0], null);
            OS.MoveMemory(buffer, pv, size[0]);
            COM.CoTaskMemFree(pv);
            try {
                FileOutputStream writer = new FileOutputStream(file);
                writer.write(buffer);
                writer.close();
                success = true;
            }
            catch (IOException iOException) {}
        }
        tempContents.Release();
        return success;
    }

    private int SaveObject() {
        this.updateStorage();
        return 0;
    }

    private boolean saveOffice2007(File file) {
        int[] address;
        int grfMode;
        if (file == null || file.isDirectory()) {
            return false;
        }
        if (!this.updateStorage()) {
            return false;
        }
        boolean result = false;
        int[] ppv = new int[1];
        IPersistStorage iPersistStorage = null;
        if (this.objIUnknown.QueryInterface(COM.IIDIPersistStorage, ppv) == 0) {
            iPersistStorage = new IPersistStorage(ppv[0]);
            this.tempStorage.AddRef();
            iPersistStorage.HandsOffStorage();
        }
        if (this.tempStorage.OpenStream("Package", 0, grfMode = 16, 0, address = new int[1]) == 0) {
            result = this.saveFromContents(address[0], file);
        }
        if (iPersistStorage != null) {
            iPersistStorage.SaveCompleted(this.tempStorage.getAddress());
            this.tempStorage.Release();
            iPersistStorage.Release();
        }
        return result;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean saveToStorageFile(File file) {
        if (file == null) return false;
        if (file.isDirectory()) {
            return false;
        }
        if (!this.updateStorage()) {
            return false;
        }
        int[] address = new int[1];
        if (this.objIOleObject.QueryInterface(COM.IIDIPersistStorage, address) != 0) {
            return false;
        }
        IPersistStorage permStorage = new IPersistStorage(address[0]);
        try {
            address = new int[1];
            char[] path = (String.valueOf(file.getAbsolutePath()) + "\u0000").toCharArray();
            int mode = 69650;
            int result = COM.StgCreateDocfile(path, mode, 0, address);
            if (result != 0) {
                return false;
            }
            IStorage storage = new IStorage(address[0]);
            try {
                if (COM.OleSave(permStorage.getAddress(), storage.getAddress(), false) != 0) {
                }
                if (storage.Commit(0) == 0) {
                    return true;
                }
            }
            finally {
                storage.Release();
            }
        }
        finally {
            permStorage.Release();
        }
    }

    private boolean saveToTraditionalFile(File file) {
        if (file == null || file.isDirectory()) {
            return false;
        }
        if (!this.updateStorage()) {
            return false;
        }
        int[] address = new int[1];
        if (this.tempStorage.OpenStream("CONTENTS", 0, 16, 0, address) == 0) {
            return this.saveFromContents(address[0], file);
        }
        if (this.tempStorage.OpenStream("\u0001Ole10Native", 0, 16, 0, address) == 0) {
            return this.saveFromOle10Native(address[0], file);
        }
        return false;
    }

    private int Scroll_64(int scrollExtent) {
        return 0;
    }

    private int Scroll(int scrollExtent_cx, int scrollExtent_cy) {
        return 0;
    }

    void setBorderSpace(RECT newBorderwidth) {
        this.borderWidths = newBorderwidth;
        this.setBounds();
    }

    void setBounds() {
        Rectangle area = this.frame.getClientArea();
        this.setBounds(this.borderWidths.left, this.borderWidths.top, area.width - this.borderWidths.left - this.borderWidths.right, area.height - this.borderWidths.top - this.borderWidths.bottom);
        this.setObjectRects();
    }

    private void setExtent(int width, int height) {
        if (this.objIOleObject == null || this.isStatic || this.inUpdate) {
            return;
        }
        SIZE currentExtent = this.getExtent();
        if (width == currentExtent.cx && height == currentExtent.cy) {
            return;
        }
        SIZE newExtent = new SIZE();
        newExtent.cx = width;
        newExtent.cy = height;
        newExtent = this.xFormPixelsToHimetric(newExtent);
        boolean alreadyRunning = COM.OleIsRunning(this.objIOleObject.getAddress());
        if (!alreadyRunning) {
            COM.OleRun(this.objIOleObject.getAddress());
        }
        if (this.objIOleObject.SetExtent(this.aspect, newExtent) == 0) {
            this.inUpdate = true;
            this.objIOleObject.Update();
            this.inUpdate = false;
            if (!alreadyRunning) {
                this.objIOleObject.Close(0);
            }
        }
    }

    public void setIndent(Rectangle newIndent) {
        this.indent = new RECT();
        this.indent.left = newIndent.x;
        this.indent.right = newIndent.width;
        this.indent.top = newIndent.y;
        this.indent.bottom = newIndent.height;
    }

    private void setObjectRects() {
        if (this.objIOleInPlaceObject == null) {
            return;
        }
        RECT rect = this.getRect();
        this.objIOleInPlaceObject.SetObjectRects(rect, rect);
    }

    private int ShowObject() {
        this.setBounds();
        return 0;
    }

    public void showProperties(String title) {
        int[] ppvObject = new int[1];
        if (this.objIUnknown.QueryInterface(COM.IIDISpecifyPropertyPages, ppvObject) != 0) {
            return;
        }
        ISpecifyPropertyPages objISPP = new ISpecifyPropertyPages(ppvObject[0]);
        CAUUID caGUID = new CAUUID();
        int result = objISPP.GetPages(caGUID);
        objISPP.Release();
        if (result != 0) {
            return;
        }
        char[] chTitle = null;
        if (title != null) {
            chTitle = new char[title.length()];
            title.getChars(0, title.length(), chTitle, 0);
        }
        result = COM.OleCreatePropertyFrame(this.frame.handle, 10, 10, chTitle, 1, new int[]{this.objIUnknown.getAddress()}, caGUID.cElems, caGUID.pElems, 2048, 0, 0);
        COM.CoTaskMemFree(caGUID.pElems);
    }

    private boolean updateStorage() {
        if (this.tempStorage == null) {
            return false;
        }
        int[] ppv = new int[1];
        if (this.objIUnknown.QueryInterface(COM.IIDIPersistStorage, ppv) != 0) {
            return false;
        }
        IPersistStorage iPersistStorage = new IPersistStorage(ppv[0]);
        int result = COM.OleSave(iPersistStorage.getAddress(), this.tempStorage.getAddress(), true);
        if (result != 0) {
            COM.WriteClassStg(this.tempStorage.getAddress(), this.objClsid);
            result = iPersistStorage.Save(this.tempStorage.getAddress(), true);
        }
        this.tempStorage.Commit(0);
        result = iPersistStorage.SaveCompleted(0);
        iPersistStorage.Release();
        return true;
    }

    private SIZE xFormHimetricToPixels(SIZE aSize) {
        int hDC = OS.GetDC(0);
        int xppi = OS.GetDeviceCaps(hDC, 88);
        int yppi = OS.GetDeviceCaps(hDC, 90);
        OS.ReleaseDC(0, hDC);
        int cx = Compatibility.round(aSize.cx * xppi, 2540);
        int cy = Compatibility.round(aSize.cy * yppi, 2540);
        SIZE size = new SIZE();
        size.cx = cx;
        size.cy = cy;
        return size;
    }

    private SIZE xFormPixelsToHimetric(SIZE aSize) {
        int hDC = OS.GetDC(0);
        int xppi = OS.GetDeviceCaps(hDC, 88);
        int yppi = OS.GetDeviceCaps(hDC, 90);
        OS.ReleaseDC(0, hDC);
        int cx = Compatibility.round(aSize.cx * 2540, xppi);
        int cy = Compatibility.round(aSize.cy * 2540, yppi);
        SIZE size = new SIZE();
        size.cx = cx;
        size.cy = cy;
        return size;
    }
}

