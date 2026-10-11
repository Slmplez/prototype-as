/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import java.io.File;
import org.eclipse.swt.SWT;
import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.WebKit;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.Compatibility;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.COMObject;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.webkit.IWebDownload;
import org.eclipse.swt.internal.webkit.IWebMutableURLRequest;
import org.eclipse.swt.internal.webkit.IWebURLResponse;
import org.eclipse.swt.internal.webkit.WebKit_win32;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Monitor;
import org.eclipse.swt.widgets.Shell;

class WebDownloadDelegate {
    COMObject iWebDownloadDelegate;
    Browser browser;
    int refCount = 0;
    int status = -1;
    long size;
    long totalSize;
    String url;
    static final int DOWNLOAD_FINISHED = 0;
    static final int DOWNLOAD_CANCELLED = 1;
    static final int DOWNLOAD_ERROR = 3;

    WebDownloadDelegate(Browser browser) {
        this.createCOMInterfaces();
        this.browser = browser;
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[15];
        nArray[0] = 2;
        nArray[3] = 2;
        nArray[4] = 2;
        nArray[5] = 2;
        nArray[6] = 2;
        nArray[7] = 2;
        nArray[8] = 2;
        nArray[9] = 2;
        nArray[10] = 3;
        nArray[11] = 3;
        nArray[12] = 4;
        nArray[13] = 1;
        nArray[14] = 1;
        this.iWebDownloadDelegate = new COMObject(nArray){

            public int method0(int[] args) {
                return WebDownloadDelegate.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return WebDownloadDelegate.this.AddRef();
            }

            public int method2(int[] args) {
                return WebDownloadDelegate.this.Release();
            }

            public int method3(int[] args) {
                return WebDownloadDelegate.this.decideDestinationWithSuggestedFilename(args[0], args[1]);
            }

            public int method4(int[] args) {
                return -2147467263;
            }

            public int method5(int[] args) {
                return -2147467263;
            }

            public int method6(int[] args) {
                return WebDownloadDelegate.this.didFailWithError(args[0], args[1]);
            }

            public int method7(int[] args) {
                return -2147467263;
            }

            public int method8(int[] args) {
                return WebDownloadDelegate.this.didReceiveDataOfLength(args[0], args[1]);
            }

            public int method9(int[] args) {
                return WebDownloadDelegate.this.didReceiveResponse(args[0], args[1]);
            }

            public int method10(int[] args) {
                return -2147467263;
            }

            public int method11(int[] args) {
                return -2147467263;
            }

            public int method12(int[] args) {
                return WebDownloadDelegate.this.willSendRequest(args[0], args[1], args[2], args[3]);
            }

            public int method13(int[] args) {
                return WebDownloadDelegate.this.didBegin(args[0]);
            }

            public int method14(int[] args) {
                return WebDownloadDelegate.this.didFinish(args[0]);
            }
        };
    }

    int decideDestinationWithSuggestedFilename(int download, int filename) {
        String name = WebKit.extractBSTR(filename);
        FileDialog dialog = new FileDialog(this.browser.getShell(), 8192);
        dialog.setText(SWT.getMessage("SWT_FileDownload"));
        dialog.setFileName(name);
        dialog.setOverwrite(true);
        String path = dialog.open();
        IWebDownload iwebdownload = new IWebDownload(download);
        iwebdownload.setDeletesFileUponFailure(0);
        if (path == null) {
            iwebdownload.setDestination(WebKit.createBSTR(""), 1);
            iwebdownload.cancel();
            iwebdownload.Release();
        } else {
            File file = new File(path);
            if (file.exists()) {
                file.delete();
            }
            iwebdownload.setDestination(WebKit.createBSTR(path), 1);
            this.openDownloadWindow(iwebdownload, path);
        }
        return 0;
    }

    int didBegin(int download) {
        new IWebDownload(download).AddRef();
        this.status = -1;
        this.size = 0L;
        this.totalSize = 0L;
        this.url = null;
        return 0;
    }

    int didFailWithError(int download, int error) {
        new IWebDownload(download).Release();
        this.status = 3;
        return 0;
    }

    int didFinish(int download) {
        new IWebDownload(download).Release();
        this.status = 0;
        return 0;
    }

    int didReceiveDataOfLength(int download, int length) {
        this.size += (long)length;
        return 0;
    }

    int didReceiveResponse(int download, int response) {
        if (response != 0) {
            int[] result;
            IWebURLResponse urlResponse = new IWebURLResponse(response);
            long[] size = new long[1];
            int hr = urlResponse.expectedContentLength(size);
            if (hr == 0) {
                this.totalSize = size[0];
            }
            if ((hr = urlResponse.URL(result = new int[1])) == 0 && result[0] != 0) {
                this.url = WebKit.extractBSTR(result[0]);
                COM.SysFreeString(result[0]);
            }
        }
        return 0;
    }

    void disposeCOMInterfaces() {
        if (this.iWebDownloadDelegate != null) {
            this.iWebDownloadDelegate.dispose();
            this.iWebDownloadDelegate = null;
        }
    }

    int getAddress() {
        return this.iWebDownloadDelegate.getAddress();
    }

    void openDownloadWindow(final IWebDownload download, String name) {
        final Shell shell = new Shell();
        shell.setText(Compatibility.getMessage("SWT_FileDownload"));
        GridLayout gridLayout = new GridLayout();
        gridLayout.marginHeight = 15;
        gridLayout.marginWidth = 15;
        gridLayout.verticalSpacing = 20;
        shell.setLayout(gridLayout);
        Label nameLabel = new Label(shell, 64);
        nameLabel.setText(Compatibility.getMessage("SWT_Download_Location", new Object[]{name, this.url}));
        GridData data = new GridData();
        Monitor monitor = this.browser.getMonitor();
        int maxWidth = monitor.getBounds().width / 2;
        int width = nameLabel.computeSize((int)-1, (int)-1).x;
        data.widthHint = Math.min(width, maxWidth);
        data.horizontalAlignment = 4;
        data.grabExcessHorizontalSpace = true;
        nameLabel.setLayoutData(data);
        final Label statusLabel = new Label(shell, 0);
        statusLabel.setText(Compatibility.getMessage("SWT_Download_Started"));
        data = new GridData(1808);
        statusLabel.setLayoutData(data);
        final Button cancel = new Button(shell, 8);
        cancel.setText(Compatibility.getMessage("SWT_Cancel"));
        data = new GridData();
        data.horizontalAlignment = 2;
        cancel.setLayoutData(data);
        final Listener cancelListener = new Listener(){

            public void handleEvent(Event event) {
                download.cancel();
                WebDownloadDelegate.this.status = 1;
                download.Release();
            }
        };
        cancel.addListener(13, cancelListener);
        final Display display = this.browser.getDisplay();
        display.timerExec(500, new Runnable(){

            public void run() {
                if (shell.isDisposed() || WebDownloadDelegate.this.status == 0 || WebDownloadDelegate.this.status == 1) {
                    shell.dispose();
                    return;
                }
                if (WebDownloadDelegate.this.status == 3) {
                    statusLabel.setText(Compatibility.getMessage("SWT_Download_Error"));
                    cancel.removeListener(13, cancelListener);
                    cancel.addListener(13, new Listener(this, shell){
                        final /* synthetic */ 3 this$1;
                        private final /* synthetic */ Shell val$shell;
                        {
                            this.this$1 = var1_1;
                            this.val$shell = shell;
                        }

                        public void handleEvent(Event event) {
                            this.val$shell.dispose();
                        }
                    });
                    return;
                }
                long current = WebDownloadDelegate.this.size / 1024L;
                long total = WebDownloadDelegate.this.totalSize / 1024L;
                String message = Compatibility.getMessage("SWT_Download_Status", new Object[]{new Long(current), new Long(total)});
                statusLabel.setText(message);
                display.timerExec(500, this);
            }
        });
        shell.pack();
        shell.open();
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147024809;
        }
        GUID guid = new GUID();
        COM.MoveMemory(guid, riid, GUID.sizeof);
        if (COM.IsEqualGUID(guid, COM.IIDIUnknown)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebDownloadDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebDownloadDelegate.getAddress()).AddRef();
            return 0;
        }
        if (COM.IsEqualGUID(guid, WebKit_win32.IID_IWebDownloadDelegate)) {
            COM.MoveMemory(ppvObject, new int[]{this.iWebDownloadDelegate.getAddress()}, OS.PTR_SIZEOF);
            new IUnknown(this.iWebDownloadDelegate.getAddress()).AddRef();
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

    int willSendRequest(int download, int request, int redirectResponse, int finalRequest) {
        IWebMutableURLRequest req = new IWebMutableURLRequest(request);
        req.AddRef();
        OS.MoveMemory(finalRequest, new int[]{request}, C.PTR_SIZEOF);
        return 0;
    }
}

