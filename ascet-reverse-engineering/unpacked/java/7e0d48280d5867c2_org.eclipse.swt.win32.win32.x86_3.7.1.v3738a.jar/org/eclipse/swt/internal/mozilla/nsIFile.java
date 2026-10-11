/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.mozilla;

import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISupports;

public class nsIFile
extends nsISupports {
    static final int LAST_METHOD_ID = nsISupports.LAST_METHOD_ID + 45;
    public static final String NS_IFILE_IID_STR = "c8c0a080-0868-11d3-915f-d9d889d48e3c";
    public static final nsID NS_IFILE_IID = new nsID("c8c0a080-0868-11d3-915f-d9d889d48e3c");
    public static final int NORMAL_FILE_TYPE = 0;
    public static final int DIRECTORY_TYPE = 1;

    public nsIFile(int address) {
        super(address);
    }

    public int Append(int node) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 1, this.getAddress(), node);
    }

    public int AppendNative(int node) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 2, this.getAddress(), node);
    }

    public int Normalize() {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 3, this.getAddress());
    }

    public int Create(int type, int permissions) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 4, this.getAddress(), type, permissions);
    }

    public int GetLeafName(int aLeafName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 5, this.getAddress(), aLeafName);
    }

    public int SetLeafName(int aLeafName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 6, this.getAddress(), aLeafName);
    }

    public int GetNativeLeafName(int aNativeLeafName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 7, this.getAddress(), aNativeLeafName);
    }

    public int SetNativeLeafName(int aNativeLeafName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 8, this.getAddress(), aNativeLeafName);
    }

    public int CopyTo(int newParentDir, int newName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 9, this.getAddress(), newParentDir, newName);
    }

    public int CopyToNative(int newParentDir, int newName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 10, this.getAddress(), newParentDir, newName);
    }

    public int CopyToFollowingLinks(int newParentDir, int newName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 11, this.getAddress(), newParentDir, newName);
    }

    public int CopyToFollowingLinksNative(int newParentDir, int newName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 12, this.getAddress(), newParentDir, newName);
    }

    public int MoveTo(int newParentDir, int newName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 13, this.getAddress(), newParentDir, newName);
    }

    public int MoveToNative(int newParentDir, int newName) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 14, this.getAddress(), newParentDir, newName);
    }

    public int Remove(int recursive) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 15, this.getAddress(), recursive);
    }

    public int GetPermissions(int[] aPermissions) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 16, this.getAddress(), aPermissions);
    }

    public int SetPermissions(int aPermissions) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 17, this.getAddress(), aPermissions);
    }

    public int GetPermissionsOfLink(int[] aPermissionsOfLink) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 18, this.getAddress(), aPermissionsOfLink);
    }

    public int SetPermissionsOfLink(int aPermissionsOfLink) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 19, this.getAddress(), aPermissionsOfLink);
    }

    public int GetLastModifiedTime(long[] aLastModifiedTime) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 20, this.getAddress(), aLastModifiedTime);
    }

    public int SetLastModifiedTime(long aLastModifiedTime) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 21, this.getAddress(), aLastModifiedTime);
    }

    public int GetLastModifiedTimeOfLink(long[] aLastModifiedTimeOfLink) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 22, this.getAddress(), aLastModifiedTimeOfLink);
    }

    public int SetLastModifiedTimeOfLink(long aLastModifiedTimeOfLink) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 23, this.getAddress(), aLastModifiedTimeOfLink);
    }

    public int GetFileSize(long[] aFileSize) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 24, this.getAddress(), aFileSize);
    }

    public int SetFileSize(long aFileSize) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 25, this.getAddress(), aFileSize);
    }

    public int GetFileSizeOfLink(long[] aFileSizeOfLink) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 26, this.getAddress(), aFileSizeOfLink);
    }

    public int GetTarget(int aTarget) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 27, this.getAddress(), aTarget);
    }

    public int GetNativeTarget(int aNativeTarget) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 28, this.getAddress(), aNativeTarget);
    }

    public int GetPath(int aPath) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 29, this.getAddress(), aPath);
    }

    public int GetNativePath(int aNativePath) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 30, this.getAddress(), aNativePath);
    }

    public int Exists(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 31, this.getAddress(), _retval);
    }

    public int IsWritable(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 32, this.getAddress(), _retval);
    }

    public int IsReadable(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 33, this.getAddress(), _retval);
    }

    public int IsExecutable(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 34, this.getAddress(), _retval);
    }

    public int IsHidden(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 35, this.getAddress(), _retval);
    }

    public int IsDirectory(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 36, this.getAddress(), _retval);
    }

    public int IsFile(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 37, this.getAddress(), _retval);
    }

    public int IsSymlink(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 38, this.getAddress(), _retval);
    }

    public int IsSpecial(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 39, this.getAddress(), _retval);
    }

    public int CreateUnique(int type, int permissions) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 40, this.getAddress(), type, permissions);
    }

    public int Clone(int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 41, this.getAddress(), _retval);
    }

    public int Equals(int inFile, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 42, this.getAddress(), inFile, _retval);
    }

    public int Contains(int inFile, int recur, int[] _retval) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 43, this.getAddress(), inFile, recur, _retval);
    }

    public int GetParent(int[] aParent) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 44, this.getAddress(), aParent);
    }

    public int GetDirectoryEntries(int[] aDirectoryEntries) {
        return XPCOM.VtblCall(nsISupports.LAST_METHOD_ID + 45, this.getAddress(), aDirectoryEntries);
    }
}

