/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.FilePickerFactory;
import org.eclipse.swt.browser.FilePicker_1_8;
import org.eclipse.swt.internal.C;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;

class FilePickerFactory_1_8
extends FilePickerFactory {
    FilePickerFactory_1_8() {
    }

    void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.supports = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return FilePickerFactory_1_8.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return FilePickerFactory_1_8.this.AddRef();
            }

            public int method2(int[] args) {
                return FilePickerFactory_1_8.this.Release();
            }
        };
        int[] nArray2 = new int[5];
        nArray2[0] = 2;
        nArray2[3] = 3;
        nArray2[4] = 1;
        this.factory = new XPCOMObject(nArray2){

            public int method0(int[] args) {
                return FilePickerFactory_1_8.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return FilePickerFactory_1_8.this.AddRef();
            }

            public int method2(int[] args) {
                return FilePickerFactory_1_8.this.Release();
            }

            public int method3(int[] args) {
                return FilePickerFactory_1_8.this.CreateInstance(args[0], args[1], args[2]);
            }

            public int method4(int[] args) {
                return FilePickerFactory_1_8.this.LockFactory(args[0]);
            }
        };
    }

    int CreateInstance(int aOuter, int iid, int result) {
        FilePicker_1_8 picker = new FilePicker_1_8();
        picker.AddRef();
        XPCOM.memmove(result, new int[]{picker.getAddress()}, C.PTR_SIZEOF);
        return 0;
    }
}

