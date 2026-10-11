/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.browser;

import org.eclipse.swt.browser.FilePicker;
import org.eclipse.swt.internal.mozilla.XPCOM;
import org.eclipse.swt.internal.mozilla.XPCOMObject;

class FilePicker_1_8
extends FilePicker {
    FilePicker_1_8() {
    }

    void createCOMInterfaces() {
        int[] nArray = new int[3];
        nArray[0] = 2;
        this.supports = new XPCOMObject(nArray){

            public int method0(int[] args) {
                return FilePicker_1_8.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return FilePicker_1_8.this.AddRef();
            }

            public int method2(int[] args) {
                return FilePicker_1_8.this.Release();
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
                return FilePicker_1_8.this.QueryInterface(args[0], args[1]);
            }

            public int method1(int[] args) {
                return FilePicker_1_8.this.AddRef();
            }

            public int method2(int[] args) {
                return FilePicker_1_8.this.Release();
            }

            public int method3(int[] args) {
                return FilePicker_1_8.this.Init(args[0], args[1], (short)args[2]);
            }

            public int method4(int[] args) {
                return FilePicker_1_8.this.AppendFilters(args[0]);
            }

            public int method5(int[] args) {
                return FilePicker_1_8.this.AppendFilter(args[0], args[1]);
            }

            public int method6(int[] args) {
                return FilePicker_1_8.this.GetDefaultString(args[0]);
            }

            public int method7(int[] args) {
                return FilePicker_1_8.this.SetDefaultString(args[0]);
            }

            public int method8(int[] args) {
                return FilePicker_1_8.this.GetDefaultExtension(args[0]);
            }

            public int method9(int[] args) {
                return FilePicker_1_8.this.SetDefaultExtension(args[0]);
            }

            public int method10(int[] args) {
                return FilePicker_1_8.this.GetFilterIndex(args[0]);
            }

            public int method11(int[] args) {
                return FilePicker_1_8.this.SetFilterIndex(args[0]);
            }

            public int method12(int[] args) {
                return FilePicker_1_8.this.GetDisplayDirectory(args[0]);
            }

            public int method13(int[] args) {
                return FilePicker_1_8.this.SetDisplayDirectory(args[0]);
            }

            public int method14(int[] args) {
                return FilePicker_1_8.this.GetFile(args[0]);
            }

            public int method15(int[] args) {
                return FilePicker_1_8.this.GetFileURL(args[0]);
            }

            public int method16(int[] args) {
                return FilePicker_1_8.this.GetFiles(args[0]);
            }

            public int method17(int[] args) {
                return FilePicker_1_8.this.Show(args[0]);
            }
        };
    }

    String parseAString(int string) {
        if (string == 0) {
            return null;
        }
        int length = XPCOM.nsEmbedString_Length(string);
        int buffer = XPCOM.nsEmbedString_get(string);
        char[] chars = new char[length];
        XPCOM.memmove(chars, buffer, length * 2);
        return new String(chars);
    }
}

