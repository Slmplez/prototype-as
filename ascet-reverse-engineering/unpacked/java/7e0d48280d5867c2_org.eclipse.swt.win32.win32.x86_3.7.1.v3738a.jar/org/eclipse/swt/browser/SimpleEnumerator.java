/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsISimpleEnumerator;
import org.eclipse.swt.internal.mozilla.nsISupports;

class SimpleEnumerator {
    XPCOMObject supports;
    XPCOMObject simpleEnumerator;
    int refCount = 0;
    nsISupports[] values;
    int index = 0;

    SimpleEnumerator(nsISupports[] values) {
        this.values = values;
        int i = 0;
        while (i < values.length) {
            values[i].AddRef();
            ++i;
        }
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
                return SimpleEnumerator.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return SimpleEnumerator.this.AddRef();
            }

            public int method2(int[] args) {
                return SimpleEnumerator.this.Release();
            }
        };
        int[] nArray2 = new int[5];
        nArray2[0] = 2;
        nArray2[3] = 1;
        nArray2[4] = 1;
        this.simpleEnumerator = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return SimpleEnumerator.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return SimpleEnumerator.this.AddRef();
            }

            public int method2(int[] args) {
                return SimpleEnumerator.this.Release();
            }

            public int method3(int[] args) {
                return SimpleEnumerator.this.HasMoreElements(args[0]);
            }

            public int method4(int[] args) {
                return SimpleEnumerator.this.GetNext(args[0]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.simpleEnumerator != null) {
            this.simpleEnumerator.dispose();
            this.simpleEnumerator = null;
        }
        if (this.values != null) {
            int i = 0;
            while (i < this.values.length) {
                this.values[i].Release();
                ++i;
            }
            this.values = null;
        }
    }

    int getAddress() {
        return this.simpleEnumerator.getAddress();
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
        if (guid.Equals(nsISimpleEnumerator.NS_ISIMPLEENUMERATOR_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.simpleEnumerator.getAddress()}, C.PTR_SIZEOF);
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

    int HasMoreElements(int _retval) {
        boolean more = this.values != null && this.index < this.values.length;
        XPCOM.memmove(_retval, new int[]{more ? 1 : 0}, 4);
        return 0;
    }

    int GetNext(int _retval) {
        if (this.values == null || this.index == this.values.length) {
            return -2147418113;
        }
        nsISupports value = this.values[this.index++];
        value.AddRef();
        XPCOM.memmove(_retval, new int[]{value.getAddress()}, C.PTR_SIZEOF);
        return 0;
    }
}

