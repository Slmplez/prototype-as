/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIFilePicker_1_8
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 15;
    public static final String NS_IFILEPICKER_IID_STR = "80faf095-c807-4558-a2cc-185ed70754ea";
    public static final nsID NS_IFILEPICKER_IID = new nsID("80faf095-c807-4558-a2cc-185ed70754ea");
    public static final int modeOpen = 0;
    public static final int modeSave = 1;
    public static final int modeGetFolder = 2;
    public static final int modeOpenMultiple = 3;
    public static final int returnOK = 0;
    public static final int returnCancel = 1;
    public static final int returnReplace = 2;
    public static final int filterAll = 1;
    public static final int filterHTML = 2;
    public static final int filterText = 4;
    public static final int filterImages = 8;
    public static final int filterXML = 16;
    public static final int filterXUL = 32;
    public static final int filterApps = 64;

    public nsIFilePicker_1_8(int address) {
        super(address);
    }

    public int Init(int parent, int title, int mode) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), parent, title, mode);
    }

    public int AppendFilters(int filterMask) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), filterMask);
    }

    public int AppendFilter(int title, int filter) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress(), title, filter);
    }

    public int GetDefaultString(int aDefaultString) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), aDefaultString);
    }

    public int SetDefaultString(int aDefaultString) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aDefaultString);
    }

    public int GetDefaultExtension(int aDefaultExtension) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aDefaultExtension);
    }

    public int SetDefaultExtension(int aDefaultExtension) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aDefaultExtension);
    }

    public int GetFilterIndex(int[] aFilterIndex) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aFilterIndex);
    }

    public int SetFilterIndex(int aFilterIndex) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), aFilterIndex);
    }

    public int GetDisplayDirectory(int[] aDisplayDirectory) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), aDisplayDirectory);
    }

    public int SetDisplayDirectory(int aDisplayDirectory) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), aDisplayDirectory);
    }

    public int GetFile(int[] aFile) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), aFile);
    }

    public int GetFileURL(int[] aFileURL) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), aFileURL);
    }

    public int GetFiles(int[] aFiles) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), aFiles);
    }

    public int Show(int _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), _retval);
    }
}

