/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIInputStream;
import org.eclipse.swt.internal.mozilla.nsISupports;

class InputStream {
    XPCOMObject inputStream;
    int refCount = 0;
    byte[] buffer;
    int index = 0;

    InputStream(byte[] buffer) {
        this.buffer = buffer;
        this.index = 0;
        this.createCOMInterfaces();
    }

    int AddRef() {
        ++this.refCount;
        return this.refCount;
    }

    void createCOMInterfaces() {
        int[] nArray = new int[8];
        nArray[0] = 2;
        nArray[4] = 1;
        nArray[5] = 3;
        nArray[6] = 4;
        nArray[7] = 1;
        this.inputStream = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return InputStream.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return InputStream.this.AddRef();
            }

            public int method2(int[] args) {
                return InputStream.this.Release();
            }

            public int method3(int[] args) {
                return InputStream.this.Close();
            }

            public int method4(int[] args) {
                return InputStream.this.Available(args[0]);
            }

            public int method5(int[] args) {
                return InputStream.this.Read(args[0], args[1], args[2]);
            }

            public int method6(int[] args) {
                return InputStream.this.ReadSegments(args[0], args[1], args[2], args[3]);
            }

            public int method7(int[] args) {
                return InputStream.this.IsNonBlocking(args[0]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.inputStream != null) {
            this.inputStream.dispose();
            this.inputStream = null;
        }
    }

    int getAddress() {
        return this.inputStream.getAddress();
    }

    int QueryInterface(int riid, int ppvObject) {
        if (riid == 0 || ppvObject == 0) {
            return -2147467262;
        }
        nsID guid = new nsID();
        XPCOM.memmove(guid, riid, 16);
        if (guid.Equals(nsISupports.NS_ISUPPORTS_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.inputStream.getAddress()}, C.PTR_SIZEOF);
            this.AddRef();
            return 0;
        }
        if (guid.Equals(nsIInputStream.NS_IINPUTSTREAM_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.inputStream.getAddress()}, C.PTR_SIZEOF);
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

    int Close() {
        this.buffer = null;
        this.index = 0;
        return 0;
    }

    int Available(int _retval) {
        int available = this.buffer == null ? 0 : this.buffer.length - this.index;
        XPCOM.memmove(_retval, new int[]{available}, 4);
        return 0;
    }

    int Read(int aBuf, int aCount, int _retval) {
        int max = Math.min(aCount, this.buffer == null ? 0 : this.buffer.length - this.index);
        if (max > 0) {
            byte[] src = new byte[max];
            System.arraycopy(this.buffer, this.index, src, 0, max);
            XPCOM.memmove(aBuf, src, max);
            this.index += max;
        }
        XPCOM.memmove(_retval, new int[]{max}, 4);
        return 0;
    }

    int ReadSegments(int aWriter, int aClosure, int aCount, int _retval) {
        int max;
        int n = max = this.buffer == null ? 0 : this.buffer.length - this.index;
        if (aCount != -1) {
            max = Math.min(max, aCount);
        }
        int cnt = max;
        while (cnt > 0) {
            int[] aWriteCount = new int[1];
            int rc = XPCOM.Call(aWriter, this.getAddress(), aClosure, this.buffer, this.index, cnt, aWriteCount);
            if (rc != 0) break;
            this.index += aWriteCount[0];
            cnt -= aWriteCount[0];
        }
        XPCOM.memmove(_retval, new int[]{max - cnt}, 4);
        return 0;
    }

    int IsNonBlocking(int _retval) {
        XPCOM.memmove(_retval, new int[1], 4);
        return 0;
    }
}

