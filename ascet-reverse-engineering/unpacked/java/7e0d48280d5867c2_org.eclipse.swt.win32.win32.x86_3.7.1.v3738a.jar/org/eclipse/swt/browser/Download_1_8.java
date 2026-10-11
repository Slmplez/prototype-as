/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsICancelable;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDownload_1_8;
import org.eclipse.swt.internal.mozilla.nsIProgressDialog_1_8;
import org.eclipse.swt.internal.mozilla.nsISupports;
import org.eclipse.swt.internal.mozilla.nsIURI;
import org.eclipse.swt.internal.mozilla.nsIWebProgressListener;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Shell;

class Download_1_8 {
    XPCOMObject supports;
    XPCOMObject download;
    XPCOMObject progressDialog;
    XPCOMObject webProgressListener;
    nsICancelable cancelable;
    int refCount = 0;
    Shell shell;
    Label status;
    Button cancel;
    static final boolean is32 = C.PTR_SIZEOF == 4;

    Download_1_8() {
        this.createCOMInterfaces();
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.supports = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return Download_1_8.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Download_1_8.this.AddRef();
            }

            public int method2(int[] args) {
                return Download_1_8.this.Release();
            }
        };
        int[] nArray2 = new int[20];
        nArray2[0] = 2;
        nArray2[3] = 4;
        nArray2[4] = 6;
        nArray2[5] = 3;
        nArray2[6] = 4;
        nArray2[7] = 3;
        nArray2[8] = is32 ? 10 : 6;
        nArray2[9] = is32 ? 8 : 7;
        nArray2[10] = 1;
        nArray2[11] = 1;
        nArray2[12] = 1;
        nArray2[13] = 1;
        nArray2[14] = 1;
        nArray2[15] = 1;
        nArray2[16] = 1;
        nArray2[17] = 1;
        nArray2[18] = 1;
        nArray2[19] = 1;
        this.download = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return Download_1_8.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Download_1_8.this.AddRef();
            }

            public int method2(int[] args) {
                return Download_1_8.this.Release();
            }

            public int method3(int[] args) {
                return Download_1_8.this.OnStateChange(args[0], args[1], args[2], args[3]);
            }

            public int method4(int[] args) {
                return Download_1_8.this.OnProgressChange(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method5(int[] args) {
                return Download_1_8.this.OnLocationChange(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return Download_1_8.this.OnStatusChange(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return Download_1_8.this.OnSecurityChange(args[0], args[1], args[2]);
            }

            public int method8(int[] args) {
                if (args.length == 10) {
                    return Download_1_8.this.OnProgressChange64_32(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]);
                }
                return Download_1_8.this.OnProgressChange64(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method9(int[] args) {
                if (args.length == 8) {
                    return Download_1_8.this.Init_32(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
                }
                return Download_1_8.this.Init(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method10(int[] args) {
                return Download_1_8.this.GetTargetFile(args[0]);
            }

            public int method11(int[] args) {
                return Download_1_8.this.GetPercentComplete(args[0]);
            }

            public int method12(int[] args) {
                return Download_1_8.this.GetAmountTransferred(args[0]);
            }

            public int method13(int[] args) {
                return Download_1_8.this.GetSize(args[0]);
            }

            public int method14(int[] args) {
                return Download_1_8.this.GetSource(args[0]);
            }

            public int method15(int[] args) {
                return Download_1_8.this.GetTarget(args[0]);
            }

            public int method16(int[] args) {
                return Download_1_8.this.GetCancelable(args[0]);
            }

            public int method17(int[] args) {
                return Download_1_8.this.GetDisplayName(args[0]);
            }

            public int method18(int[] args) {
                return Download_1_8.this.GetStartTime(args[0]);
            }

            public int method19(int[] args) {
                return Download_1_8.this.GetMIMEInfo(args[0]);
            }
        };
        int[] nArray3 = new int[27];
        nArray3[0] = 2;
        nArray3[3] = 4;
        nArray3[4] = 6;
        nArray3[5] = 3;
        nArray3[6] = 4;
        nArray3[7] = 3;
        nArray3[8] = is32 ? 10 : 6;
        nArray3[9] = is32 ? 8 : 7;
        nArray3[10] = 1;
        nArray3[11] = 1;
        nArray3[12] = 1;
        nArray3[13] = 1;
        nArray3[14] = 1;
        nArray3[15] = 1;
        nArray3[16] = 1;
        nArray3[17] = 1;
        nArray3[18] = 1;
        nArray3[19] = 1;
        nArray3[20] = 1;
        nArray3[21] = 1;
        nArray3[22] = 1;
        nArray3[23] = 1;
        nArray3[24] = 1;
        nArray3[25] = 1;
        nArray3[26] = 1;
        this.progressDialog = new XPCOMObject(nArray3){

            public int method0(int[] args) {
                return Download_1_8.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Download_1_8.this.AddRef();
            }

            public int method2(int[] args) {
                return Download_1_8.this.Release();
            }

            public int method3(int[] args) {
                return Download_1_8.this.OnStateChange(args[0], args[1], args[2], args[3]);
            }

            public int method4(int[] args) {
                return Download_1_8.this.OnProgressChange(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method5(int[] args) {
                return Download_1_8.this.OnLocationChange(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return Download_1_8.this.OnStatusChange(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return Download_1_8.this.OnSecurityChange(args[0], args[1], args[2]);
            }

            public int method8(int[] args) {
                if (args.length == 10) {
                    return Download_1_8.this.OnProgressChange64_32(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9]);
                }
                return Download_1_8.this.OnProgressChange64(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method9(int[] args) {
                if (args.length == 8) {
                    return Download_1_8.this.Init_32(args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7]);
                }
                return Download_1_8.this.Init(args[0], args[1], args[2], args[3], args[4], args[5], args[6]);
            }

            public int method10(int[] args) {
                return Download_1_8.this.GetTargetFile(args[0]);
            }

            public int method11(int[] args) {
                return Download_1_8.this.GetPercentComplete(args[0]);
            }

            public int method12(int[] args) {
                return Download_1_8.this.GetAmountTransferred(args[0]);
            }

            public int method13(int[] args) {
                return Download_1_8.this.GetSize(args[0]);
            }

            public int method14(int[] args) {
                return Download_1_8.this.GetSource(args[0]);
            }

            public int method15(int[] args) {
                return Download_1_8.this.GetTarget(args[0]);
            }

            public int method16(int[] args) {
                return Download_1_8.this.GetCancelable(args[0]);
            }

            public int method17(int[] args) {
                return Download_1_8.this.GetDisplayName(args[0]);
            }

            public int method18(int[] args) {
                return Download_1_8.this.GetStartTime(args[0]);
            }

            public int method19(int[] args) {
                return Download_1_8.this.GetMIMEInfo(args[0]);
            }

            public int method20(int[] args) {
                return Download_1_8.this.Open(args[0]);
            }

            public int method21(int[] args) {
                return Download_1_8.this.GetCancelDownloadOnClose(args[0]);
            }

            public int method22(int[] args) {
                return Download_1_8.this.SetCancelDownloadOnClose(args[0]);
            }

            public int method23(int[] args) {
                return Download_1_8.this.GetObserver(args[0]);
            }

            public int method24(int[] args) {
                return Download_1_8.this.SetObserver(args[0]);
            }

            public int method25(int[] args) {
                return Download_1_8.this.GetDialog(args[0]);
            }

            public int method26(int[] args) {
                return Download_1_8.this.SetDialog(args[0]);
            }
        };
        int[] nArray4 = new int[8];
        nArray4[0] = 2;
        nArray4[3] = 4;
        nArray4[4] = 6;
        nArray4[5] = 3;
        nArray4[6] = 4;
        nArray4[7] = 3;
        this.webProgressListener = new XPCOMObject(nArray4){

            public int method0(int[] args) {
                return Download_1_8.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return Download_1_8.this.AddRef();
            }

            public int method2(int[] args) {
                return Download_1_8.this.Release();
            }

            public int method3(int[] args) {
                return Download_1_8.this.OnStateChange(args[0], args[1], args[2], args[3]);
            }

            public int method4(int[] args) {
                return Download_1_8.this.OnProgressChange(args[0], args[1], args[2], args[3], args[4], args[5]);
            }

            public int method5(int[] args) {
                return Download_1_8.this.OnLocationChange(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return Download_1_8.this.OnStatusChange(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return Download_1_8.this.OnSecurityChange(args[0], args[1], args[2]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.download != null) {
            this.download.dispose();
            this.download = null;
        }
        if (this.progressDialog != null) {
            this.progressDialog.dispose();
            this.progressDialog = null;
        }
        if (this.webProgressListener != null) {
            this.webProgressListener.dispose();
            this.webProgressListener = null;
        }
    }

    int getAddress() {
        return this.progressDialog.getAddress();
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        nsID guid = new nsID();
        XPCOM.memmove(guid, riid, 16);
        if (guid.Equals(nsISupports.NS_ISUPPORTS_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.supports.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIDownload_1_8.NS_IDOWNLOAD_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.download.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIProgressDialog_1_8.NS_IPROGRESSDIALOG_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.progressDialog.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIWebProgressListener.NS_IWEBPROGRESSLISTENER_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.webProgressListener.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        XPCOM.memmove(ppvObject, new int[1], C.PTR_SIZEOF);
        return -2147467262;
    }

    int Release() {
        --this.refCount;
        if (this.refCount == 0) {
            this.disposeCOMInterfaces();
        }
        return this.refCount;
    }

    int Init_32(int aSource, int aTarget, int aDisplayName, int aMIMEInfo, int startTime1, int startTime2, int aTempFile, int aCancelable) {
        long startTime = (startTime2 << 32) + startTime1;
        return this.Init(aSource, aTarget, aDisplayName, aMIMEInfo, startTime, aTempFile, aCancelable);
    }

    int Init(int aSource, int aTarget, int aDisplayName, int aMIMEInfo, long startTime, int aTempFile, int aCancelable) {
        this.cancelable = new nsICancelable(aCancelable);
        nsIURI source = new nsIURI(aSource);
        int aSpec = XPCOM.nsEmbedCString_new();
        int rc = source.GetHost(aSpec);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        int length = XPCOM.nsEmbedCString_Length(aSpec);
        int buffer = XPCOM.nsEmbedCString_get(aSpec);
        byte[] dest = new byte[length];
        XPCOM.memmove(dest, buffer, length);
        XPCOM.nsEmbedCString_delete(aSpec);
        String url = new String(dest);
        nsIURI target = new nsIURI(aTarget);
        int aPath = XPCOM.nsEmbedCString_new();
        rc = target.GetPath(aPath);
        if (rc != 0) {
            Mozilla.error(rc);
        }
        length = XPCOM.nsEmbedCString_Length(aPath);
        buffer = XPCOM.nsEmbedCString_get(aPath);
        dest = new byte[length];
        XPCOM.memmove(dest, buffer, length);
        XPCOM.nsEmbedCString_delete(aPath);
        String filename = new String(dest);
        int separator = filename.lastIndexOf(System.getProperty("file.separator"));
        filename = filename.substring(separator + 1);
        Listener listener = new Listener(){

            public void handleEvent(Event event) {
                int rc;
                if (event.widget == Download_1_8.this.cancel) {
                    Download_1_8.this.shell.close();
                }
                if (Download_1_8.this.cancelable != null && (rc = Download_1_8.this.cancelable.Cancel(-2142568446)) != 0) {
                    Mozilla.error(rc);
                }
                Download_1_8.this.shell = null;
                Download_1_8.this.cancelable = null;
            }
        };
        this.shell = new Shell(2144);
        String msg = Compatibility.getMessage("SWT_Download_File", new Object[]{filename});
        this.shell.setText(msg);
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginHeight = 15;
        gridLayout.marginWidth = 15;
        gridLayout.verticalSpacing = 20;
        this.shell.setLayout(gridLayout);
        msg = Compatibility.getMessage("SWT_Download_Location", new Object[]{filename, url});
        new Label(this.shell, 64).setText(msg);
        this.status = new Label(this.shell, 64);
        msg = Compatibility.getMessage("SWT_Download_Started");
        this.status.setText(msg);
        GridData data = new GridData();
        data.grabExcessHorizontalSpace = true;
        data.grabExcessVerticalSpace = true;
        this.status.setLayoutData(data);
        this.cancel = new Button(this.shell, 8);
        this.cancel.setText(SWT.getMessage("SWT_Cancel"));
        data = new GridData();
        data.horizontalAlignment = 2;
        this.cancel.setLayoutData(data);
        this.cancel.addListener(13, listener);
        this.shell.addListener(21, listener);
        this.shell.pack();
        this.shell.open();
        return 0;
    }

    int GetAmountTransferred(int arg0) {
        return -2147467263;
    }

    int GetCancelable(int arg0) {
        return -2147467263;
    }

    int GetDisplayName(int aDisplayName) {
        return -2147467263;
    }

    int GetMIMEInfo(int aMIMEInfo) {
        return -2147467263;
    }

    int GetPercentComplete(int aPercentComplete) {
        return -2147467263;
    }

    int GetSize(int arg0) {
        return -2147467263;
    }

    int GetSource(int aSource) {
        return -2147467263;
    }

    int GetStartTime(int aStartTime) {
        return -2147467263;
    }

    int GetTarget(int aTarget) {
        return -2147467263;
    }

    int GetTargetFile(int arg0) {
        return -2147467263;
    }

    int GetCancelDownloadOnClose(int aCancelDownloadOnClose) {
        return -2147467263;
    }

    int GetDialog(int aDialog) {
        return -2147467263;
    }

    int GetObserver(int aObserver) {
        return -2147467263;
    }

    int Open(int aParent) {
        return -2147467263;
    }

    int SetCancelDownloadOnClose(int aCancelDownloadOnClose) {
        return -2147467263;
    }

    int SetDialog(int aDialog) {
        return -2147467263;
    }

    int SetObserver(int aObserver) {
        return -2147467263;
    }

    int OnLocationChange(int aWebProgress, int aRequest, int aLocation) {
        return 0;
    }

    int OnProgressChange(int aWebProgress, int aRequest, int aCurSelfProgress, int aMaxSelfProgress, int aCurTotalProgress, int aMaxTotalProgress) {
        return this.OnProgressChange64(aWebProgress, aRequest, aCurSelfProgress, aMaxSelfProgress, aCurTotalProgress, aMaxTotalProgress);
    }

    int OnProgressChange64_32(int aWebProgress, int aRequest, int aCurSelfProgress1, int aCurSelfProgress2, int aMaxSelfProgress1, int aMaxSelfProgress2, int aCurTotalProgress1, int aCurTotalProgress2, int aMaxTotalProgress1, int aMaxTotalProgress2) {
        long aCurSelfProgress = (aCurSelfProgress2 << 32) + aCurSelfProgress1;
        long aMaxSelfProgress = (aMaxSelfProgress2 << 32) + aMaxSelfProgress1;
        long aCurTotalProgress = (aCurTotalProgress2 << 32) + aCurTotalProgress1;
        long aMaxTotalProgress = (aMaxTotalProgress2 << 32) + aMaxTotalProgress1;
        return this.OnProgressChange64(aWebProgress, aRequest, aCurSelfProgress, aMaxSelfProgress, aCurTotalProgress, aMaxTotalProgress);
    }

    int OnProgressChange64(int aWebProgress, int aRequest, long aCurSelfProgress, long aMaxSelfProgress, long aCurTotalProgress, long aMaxTotalProgress) {
        long currentKBytes = aCurTotalProgress / 1024L;
        long totalKBytes = aMaxTotalProgress / 1024L;
        if (this.shell != null && !this.shell.isDisposed()) {
            Object[] arguments = new Object[]{new Long(currentKBytes), new Long(totalKBytes)};
            String statusMsg = Compatibility.getMessage("SWT_Download_Status", arguments);
            this.status.setText(statusMsg);
            this.shell.layout(true);
            this.shell.getDisplay().update();
        }
        return 0;
    }

    int OnSecurityChange(int aWebProgress, int aRequest, int state) {
        return 0;
    }

    int OnStateChange(int aWebProgress, int aRequest, int aStateFlags, int aStatus) {
        if ((aStateFlags & 0x10) != 0) {
            this.cancelable = null;
            if (this.shell != null && !this.shell.isDisposed()) {
                this.shell.dispose();
            }
            this.shell = null;
        }
        return 0;
    }

    int OnStatusChange(int aWebProgress, int aRequest, int aStatus, int aMessage) {
        return 0;
    }
}

