/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.Browser;
import org.eclipse.swt.browser.Mozilla;
import org.eclipse.swt.browser.MozillaDelegate;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsEmbedString;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIDOMWindow;
import org.eclipse.swt.internal.mozilla.nsIFilePicker;
import org.eclipse.swt.internal.mozilla.nsIFilePicker_1_8;
import org.eclipse.swt.internal.mozilla.nsILocalFile;
import org.eclipse.swt.internal.mozilla.nsISupports;
import org.eclipse.swt.widgets.DirectoryDialog;
import org.eclipse.swt.widgets.FileDialog;
import org.eclipse.swt.widgets.Shell;

class FilePicker {
    XPCOMObject supports;
    XPCOMObject filePicker;
    int refCount = 0;
    short mode;
    int parentHandle;
    String[] files;
    String[] masks;
    String defaultFilename;
    String directory;
    String title;
    static final String SEPARATOR = System.getProperty("file.separator");

    FilePicker() {
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
                return FilePicker.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return FilePicker.this.AddRef();
            }

            public int method2(int[] args) {
                return FilePicker.this.Release();
            }
        };
        int[] nArray2 = new int[18];
        nArray2[0] = 2;
        nArray2[3] = 3;
        nArray2[4] = 1;
        nArray2[5] = 2;
        nArray2[6] = 1;
        nArray2[7] = 1;
        nArray2[8] = 1;
        nArray2[9] = 1;
        nArray2[10] = 1;
        nArray2[11] = 1;
        nArray2[12] = 1;
        nArray2[13] = 1;
        nArray2[14] = 1;
        nArray2[15] = 1;
        nArray2[16] = 1;
        nArray2[17] = 1;
        this.filePicker = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return FilePicker.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return FilePicker.this.AddRef();
            }

            public int method2(int[] args) {
                return FilePicker.this.Release();
            }

            public int method3(int[] args) {
                return FilePicker.this.Init(args[0], args[1], (short)args[2]);
            }

            public int method4(int[] args) {
                return FilePicker.this.AppendFilters(args[0]);
            }

            public int method5(int[] args) {
                return FilePicker.this.AppendFilter(args[0], args[1]);
            }

            public int method6(int[] args) {
                return FilePicker.this.GetDefaultString(args[0]);
            }

            public int method7(int[] args) {
                return FilePicker.this.SetDefaultString(args[0]);
            }

            public int method8(int[] args) {
                return FilePicker.this.GetDefaultExtension(args[0]);
            }

            public int method9(int[] args) {
                return FilePicker.this.SetDefaultExtension(args[0]);
            }

            public int method10(int[] args) {
                return FilePicker.this.GetFilterIndex(args[0]);
            }

            public int method11(int[] args) {
                return FilePicker.this.SetFilterIndex(args[0]);
            }

            public int method12(int[] args) {
                return FilePicker.this.GetDisplayDirectory(args[0]);
            }

            public int method13(int[] args) {
                return FilePicker.this.SetDisplayDirectory(args[0]);
            }

            public int method14(int[] args) {
                return FilePicker.this.GetFile(args[0]);
            }

            public int method15(int[] args) {
                return FilePicker.this.GetFileURL(args[0]);
            }

            public int method16(int[] args) {
                return FilePicker.this.GetFiles(args[0]);
            }

            public int method17(int[] args) {
                return FilePicker.this.Show(args[0]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.filePicker != null) {
            this.filePicker.dispose();
            this.filePicker = null;
        }
    }

    int getAddress() {
        return this.filePicker.getAddress();
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
        if (guid.Equals(nsIFilePicker.NS_IFILEPICKER_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.filePicker.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIFilePicker_1_8.NS_IFILEPICKER_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.filePicker.getAddress()}, C.PTR_SIZEOF);
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

    Browser getBrowser(int aDOMWindow) {
        if (aDOMWindow == 0) {
            return null;
        }
        nsIDOMWindow window = new nsIDOMWindow(aDOMWindow);
        return Mozilla.findBrowser(window);
    }

    String parseAString(int string) {
        return null;
    }

    int Init(int parent, int title, short mode) {
        this.parentHandle = parent;
        this.mode = mode;
        this.title = this.parseAString(title);
        return 0;
    }

    int Show(int _retval) {
        int style;
        if (this.mode == 2) {
            int result = this.showDirectoryPicker();
            XPCOM.memmove(_retval, new short[]{(short)result}, 2);
            return 0;
        }
        int n = style = this.mode == 1 ? 8192 : 4096;
        if (this.mode == 3) {
            style |= 2;
        }
        Browser browser = this.getBrowser(this.parentHandle);
        Shell parent = null;
        parent = browser != null ? browser.getShell() : new Shell();
        FileDialog dialog = new FileDialog(parent, style);
        if (this.title != null) {
            dialog.setText(this.title);
        }
        if (this.directory != null) {
            dialog.setFilterPath(this.directory);
        }
        if (this.masks != null) {
            dialog.setFilterExtensions(this.masks);
        }
        if (this.defaultFilename != null) {
            dialog.setFileName(this.defaultFilename);
        }
        String filename = dialog.open();
        this.files = dialog.getFileNames();
        this.directory = dialog.getFilterPath();
        this.defaultFilename = null;
        this.title = null;
        this.masks = null;
        boolean result = filename == null;
        XPCOM.memmove(_retval, new short[]{(short)(result ? 1 : 0)}, 2);
        return 0;
    }

    int showDirectoryPicker() {
        Browser browser = this.getBrowser(this.parentHandle);
        Shell parent = null;
        parent = browser != null ? browser.getShell() : new Shell();
        DirectoryDialog dialog = new DirectoryDialog(parent, 0);
        if (this.title != null) {
            dialog.setText(this.title);
        }
        if (this.directory != null) {
            dialog.setFilterPath(this.directory);
        }
        this.directory = dialog.open();
        this.defaultFilename = null;
        this.title = null;
        this.masks = null;
        this.files = null;
        return this.directory == null ? 1 : 0;
    }

    int GetFiles(int aFiles) {
        return -2147467263;
    }

    int GetFileURL(int aFileURL) {
        return -2147467263;
    }

    int GetFile(int aFile) {
        String filename = "";
        if (this.directory != null) {
            filename = String.valueOf(filename) + this.directory + SEPARATOR;
        }
        if (this.files != null && this.files.length > 0) {
            filename = String.valueOf(filename) + this.files[0];
        }
        nsEmbedString path = new nsEmbedString(filename);
        int[] file = new int[1];
        int rc = XPCOM.NS_NewLocalFile(path.getAddress(), 1, file);
        path.dispose();
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (file[0] == 0) {
            Mozilla.error(-2147467261);
        }
        XPCOM.memmove(aFile, file, C.PTR_SIZEOF);
        return 0;
    }

    int SetDisplayDirectory(int aDisplayDirectory) {
        if (aDisplayDirectory == 0) {
            return 0;
        }
        nsILocalFile file = new nsILocalFile(aDisplayDirectory);
        int pathname = XPCOM.nsEmbedCString_new();
        file.GetNativePath(pathname);
        int length = XPCOM.nsEmbedCString_Length(pathname);
        int buffer = XPCOM.nsEmbedCString_get(pathname);
        byte[] bytes = new byte[length];
        XPCOM.memmove(bytes, buffer, length);
        XPCOM.nsEmbedCString_delete(pathname);
        char[] chars = MozillaDelegate.mbcsToWcs(null, bytes);
        this.directory = new String(chars);
        return 0;
    }

    int GetDisplayDirectory(int aDisplayDirectory) {
        String directoryName = this.directory != null ? this.directory : "";
        nsEmbedString path = new nsEmbedString(directoryName);
        int[] file = new int[1];
        int rc = XPCOM.NS_NewLocalFile(path.getAddress(), 1, file);
        path.dispose();
        if (rc != 0) {
            Mozilla.error(rc);
        }
        if (file[0] == 0) {
            Mozilla.error(-2147467261);
        }
        XPCOM.memmove(aDisplayDirectory, file, C.PTR_SIZEOF);
        return 0;
    }

    int SetFilterIndex(int aFilterIndex) {
        return -2147467263;
    }

    int GetFilterIndex(int aFilterIndex) {
        return -2147467263;
    }

    int SetDefaultExtension(int aDefaultExtension) {
        return -2147467263;
    }

    int GetDefaultExtension(int aDefaultExtension) {
        return -2147467263;
    }

    int SetDefaultString(int aDefaultString) {
        this.defaultFilename = this.parseAString(aDefaultString);
        return 0;
    }

    int GetDefaultString(int aDefaultString) {
        return -2147467263;
    }

    int AppendFilter(int title, int filter) {
        return -2147467263;
    }

    int AppendFilters(int filterMask) {
        String[] addFilters = null;
        switch (filterMask) {
            case 1: 
            case 64: {
                this.masks = null;
                break;
            }
            case 2: {
                addFilters = new String[]{"*.htm;*.html"};
                break;
            }
            case 8: {
                addFilters = new String[]{"*.gif;*.jpeg;*.jpg;*.png"};
                break;
            }
            case 4: {
                addFilters = new String[]{"*.txt"};
                break;
            }
            case 16: {
                addFilters = new String[]{"*.xml"};
                break;
            }
            case 32: {
                addFilters = new String[]{"*.xul"};
            }
        }
        if (this.masks == null) {
            this.masks = addFilters;
        } else if (addFilters != null) {
            String[] newFilters = new String[this.masks.length + addFilters.length];
            System.arraycopy(this.masks, 0, newFilters, 0, this.masks.length);
            System.arraycopy(addFilters, 0, newFilters, this.masks.length, addFilters.length);
            this.masks = newFilters;
        }
        return 0;
    }
}

