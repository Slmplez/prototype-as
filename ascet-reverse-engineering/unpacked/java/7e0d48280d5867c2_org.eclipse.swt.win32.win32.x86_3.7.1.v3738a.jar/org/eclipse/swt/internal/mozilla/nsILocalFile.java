/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIFile;

public class nsILocalFile
extends nsIFile {
    static final int LAST_METHOD_ID = nsIFile.LAST_METHOD_ID + 17;
    public static final String NS_ILOCALFILE_IID_STR = "aa610f20-a889-11d3-8c81-000064657374";
    public static final nsID NS_ILOCALFILE_IID = new nsID("aa610f20-a889-11d3-8c81-000064657374");

    public nsILocalFile(int address) {
        super(address);
    }

    public int InitWithPath(int filePath) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 1, this.getAddress(), filePath);
    }

    public int InitWithNativePath(int filePath) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 2, this.getAddress(), filePath);
    }

    public int InitWithFile(int aFile) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 3, this.getAddress(), aFile);
    }

    public int GetFollowLinks(int[] aFollowLinks) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 4, this.getAddress(), aFollowLinks);
    }

    public int SetFollowLinks(int aFollowLinks) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 5, this.getAddress(), aFollowLinks);
    }

    public int OpenNSPRFileDesc(int flags, int mode, int[] _retval) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 6, this.getAddress(), flags, mode, _retval);
    }

    public int OpenANSIFileDesc(byte[] mode, int[] _retval) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 7, this.getAddress(), mode, _retval);
    }

    public int Load(int[] _retval) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 8, this.getAddress(), _retval);
    }

    public int GetDiskSpaceAvailable(long[] aDiskSpaceAvailable) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 9, this.getAddress(), aDiskSpaceAvailable);
    }

    public int AppendRelativePath(int relativeFilePath) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 10, this.getAddress(), relativeFilePath);
    }

    public int AppendRelativeNativePath(int relativeFilePath) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 11, this.getAddress(), relativeFilePath);
    }

    public int GetPersistentDescriptor(int aPersistentDescriptor) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 12, this.getAddress(), aPersistentDescriptor);
    }

    public int SetPersistentDescriptor(int aPersistentDescriptor) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 13, this.getAddress(), aPersistentDescriptor);
    }

    public int Reveal() {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 14, this.getAddress());
    }

    public int Launch() {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 15, this.getAddress());
    }

    public int GetRelativeDescriptor(int fromFile, int _retval) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 16, this.getAddress(), fromFile, _retval);
    }

    public int SetRelativeDescriptor(int fromFile, int relativeDesc) {
        return XPCOM.VtblCall(nsIFile.LAST_METHOD_ID + 17, this.getAddress(), fromFile, relativeDesc);
    }
}

