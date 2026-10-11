/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.PromptService2;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;
import org.eclipse.swt.internal.mozilla.nsID;
import org.eclipse.swt.internal.mozilla.nsIFactory;
import org.eclipse.swt.internal.mozilla.nsISupports;

class PromptService2Factory {
    XPCOMObject supports;
    XPCOMObject factory;
    int refCount = 0;

    PromptService2Factory() {
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
                return PromptService2Factory.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return PromptService2Factory.this.AddRef();
            }

            public int method2(int[] args) {
                return PromptService2Factory.this.Release();
            }
        };
        int[] nArray2 = new int[5];
        nArray2[0] = 2;
        nArray2[3] = 3;
        nArray2[4] = 1;
        this.factory = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return PromptService2Factory.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return PromptService2Factory.this.AddRef();
            }

            public int method2(int[] args) {
                return PromptService2Factory.this.Release();
            }

            public int method3(int[] args) {
                return PromptService2Factory.this.CreateInstance(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return PromptService2Factory.this.LockFactory(args[0]);
            }
        };
    }

    void disposeCOMInterfaces() {
        if (this.supports != null) {
            this.supports.dispose();
            this.supports = null;
        }
        if (this.factory != null) {
            this.factory.dispose();
            this.factory = null;
        }
    }

    int getAddress() {
        return this.factory.getAddress();
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
        if (guid.Equals(nsIFactory.NS_IFACTORY_IID)) {
            XPCOM.memmove(ppvObject, new int[]{this.factory.getAddress()}, C.PTR_SIZEOF);
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

    int CreateInstance(int aOuter, int iid, int result) {
        PromptService2 promptService = new PromptService2();
        promptService.AddRef();
        XPCOM.memmove(result, new int[]{promptService.getAddress()}, C.PTR_SIZEOF);
        return 0;
    }

    int LockFactory(int lock) {
        return 0;
    }
}

