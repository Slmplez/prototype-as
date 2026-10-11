/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.ole.win32;

import java.util.Hashtable;
import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.LONG;
import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.GUID;
import org.eclipse.swt.internal.win32.OS;

public class COMObject {
    public int ppVtable;
    private static final int MAX_ARG_COUNT = 12;
    private static final int MAX_VTABLE_LENGTH = 80;
    private static Callback[][] Callbacks = new Callback[80][12];
    private static Hashtable ObjectMap = new Hashtable();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public COMObject(int[] argCounts) {
        int[] callbackAddresses = new int[argCounts.length];
        Callback[][] callbackArray = Callbacks;
        synchronized (Callbacks) {
            int i = 0;
            int length = argCounts.length;
            while (i < length) {
                if (Callbacks[i][argCounts[i]] == null) {
                    COMObject.Callbacks[i][argCounts[i]] = new Callback(this.getClass(), "callback" + i, argCounts[i] + 1, true, -2147467259);
                    if (Callbacks[i][argCounts[i]].getAddress() == 0) {
                        SWT.error(3);
                    }
                }
                callbackAddresses[i] = Callbacks[i][argCounts[i]].getAddress();
                ++i;
            }
            // ** MonitorExit[var3_3] (shouldn't be in output)
            int pVtable = OS.GlobalAlloc(64, OS.PTR_SIZEOF * argCounts.length);
            COM.MoveMemory(pVtable, callbackAddresses, OS.PTR_SIZEOF * argCounts.length);
            this.ppVtable = OS.GlobalAlloc(64, OS.PTR_SIZEOF);
            COM.MoveMemory(this.ppVtable, new int[]{pVtable}, OS.PTR_SIZEOF);
            ObjectMap.put(new LONG(this.ppVtable), this);
            return;
        }
    }

    public static GUID IIDFromString(String lpsz) {
        GUID lpiid;
        char[] buffer = (String.valueOf(lpsz) + "\u0000").toCharArray();
        if (COM.IIDFromString(buffer, lpiid = new GUID()) == 0) {
            return lpiid;
        }
        return null;
    }

    static int callback0(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method0(args);
    }

    static int callback1(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method1(args);
    }

    static int callback2(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method2(args);
    }

    static int callback3(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method3(args);
    }

    static int callback4(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method4(args);
    }

    static int callback5(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method5(args);
    }

    static int callback6(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method6(args);
    }

    static int callback7(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method7(args);
    }

    static int callback8(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method8(args);
    }

    static int callback9(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method9(args);
    }

    static int callback10(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method10(args);
    }

    static int callback11(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method11(args);
    }

    static int callback12(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method12(args);
    }

    static int callback13(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method13(args);
    }

    static int callback14(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method14(args);
    }

    static int callback15(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method15(args);
    }

    static int callback16(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method16(args);
    }

    static int callback17(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method17(args);
    }

    static int callback18(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method18(args);
    }

    static int callback19(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method19(args);
    }

    static int callback20(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method20(args);
    }

    static int callback21(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method21(args);
    }

    static int callback22(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method22(args);
    }

    static int callback23(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method23(args);
    }

    static int callback24(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method24(args);
    }

    static int callback25(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method25(args);
    }

    static int callback26(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method26(args);
    }

    static int callback27(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method27(args);
    }

    static int callback28(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method28(args);
    }

    static int callback29(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method29(args);
    }

    static int callback30(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method30(args);
    }

    static int callback31(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method31(args);
    }

    static int callback32(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method32(args);
    }

    static int callback33(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method33(args);
    }

    static int callback34(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method34(args);
    }

    static int callback35(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method35(args);
    }

    static int callback36(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method36(args);
    }

    static int callback37(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method37(args);
    }

    static int callback38(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method38(args);
    }

    static int callback39(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method39(args);
    }

    static int callback40(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method40(args);
    }

    static int callback41(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method41(args);
    }

    static int callback42(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method42(args);
    }

    static int callback43(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method43(args);
    }

    static int callback44(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method44(args);
    }

    static int callback45(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method45(args);
    }

    static int callback46(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method46(args);
    }

    static int callback47(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method47(args);
    }

    static int callback48(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method48(args);
    }

    static int callback49(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method49(args);
    }

    static int callback50(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method50(args);
    }

    static int callback51(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method51(args);
    }

    static int callback52(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method52(args);
    }

    static int callback53(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method53(args);
    }

    static int callback54(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method54(args);
    }

    static int callback55(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method55(args);
    }

    static int callback56(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method56(args);
    }

    static int callback57(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method57(args);
    }

    static int callback58(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method58(args);
    }

    static int callback59(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method59(args);
    }

    static int callback60(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method60(args);
    }

    static int callback61(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method61(args);
    }

    static int callback62(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method62(args);
    }

    static int callback63(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method63(args);
    }

    static int callback64(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method64(args);
    }

    static int callback65(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method65(args);
    }

    static int callback66(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method66(args);
    }

    static int callback67(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method67(args);
    }

    static int callback68(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method68(args);
    }

    static int callback69(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method69(args);
    }

    static int callback70(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method70(args);
    }

    static int callback71(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method71(args);
    }

    static int callback72(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method72(args);
    }

    static int callback73(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method73(args);
    }

    static int callback74(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method74(args);
    }

    static int callback75(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method75(args);
    }

    static int callback76(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method76(args);
    }

    static int callback77(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method77(args);
    }

    static int callback78(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method78(args);
    }

    static int callback79(int[] callbackArgs) {
        int address = callbackArgs[0];
        Object object = ObjectMap.get(new LONG(address));
        if (object == null) {
            return -2147467259;
        }
        int[] args = new int[callbackArgs.length - 1];
        System.arraycopy(callbackArgs, 1, args, 0, args.length);
        return ((COMObject)object).method79(args);
    }

    public void dispose() {
        int[] pVtable = new int[1];
        OS.MoveMemory(pVtable, this.ppVtable, OS.PTR_SIZEOF);
        OS.GlobalFree(pVtable[0]);
        OS.GlobalFree(this.ppVtable);
        ObjectMap.remove(new LONG(this.ppVtable));
        this.ppVtable = 0;
    }

    public int getAddress() {
        return this.ppVtable;
    }

    public int method0(int[] args) {
        return -2147467263;
    }

    public int method1(int[] args) {
        return -2147467263;
    }

    public int method2(int[] args) {
        return -2147467263;
    }

    public int method3(int[] args) {
        return -2147467263;
    }

    public int method4(int[] args) {
        return -2147467263;
    }

    public int method5(int[] args) {
        return -2147467263;
    }

    public int method6(int[] args) {
        return -2147467263;
    }

    public int method7(int[] args) {
        return -2147467263;
    }

    public int method8(int[] args) {
        return -2147467263;
    }

    public int method9(int[] args) {
        return -2147467263;
    }

    public int method10(int[] args) {
        return -2147467263;
    }

    public int method11(int[] args) {
        return -2147467263;
    }

    public int method12(int[] args) {
        return -2147467263;
    }

    public int method13(int[] args) {
        return -2147467263;
    }

    public int method14(int[] args) {
        return -2147467263;
    }

    public int method15(int[] args) {
        return -2147467263;
    }

    public int method16(int[] args) {
        return -2147467263;
    }

    public int method17(int[] args) {
        return -2147467263;
    }

    public int method18(int[] args) {
        return -2147467263;
    }

    public int method19(int[] args) {
        return -2147467263;
    }

    public int method20(int[] args) {
        return -2147467263;
    }

    public int method21(int[] args) {
        return -2147467263;
    }

    public int method22(int[] args) {
        return -2147467263;
    }

    public int method23(int[] args) {
        return -2147467263;
    }

    public int method24(int[] args) {
        return -2147467263;
    }

    public int method25(int[] args) {
        return -2147467263;
    }

    public int method26(int[] args) {
        return -2147467263;
    }

    public int method27(int[] args) {
        return -2147467263;
    }

    public int method28(int[] args) {
        return -2147467263;
    }

    public int method29(int[] args) {
        return -2147467263;
    }

    public int method30(int[] args) {
        return -2147467263;
    }

    public int method31(int[] args) {
        return -2147467263;
    }

    public int method32(int[] args) {
        return -2147467263;
    }

    public int method33(int[] args) {
        return -2147467263;
    }

    public int method34(int[] args) {
        return -2147467263;
    }

    public int method35(int[] args) {
        return -2147467263;
    }

    public int method36(int[] args) {
        return -2147467263;
    }

    public int method37(int[] args) {
        return -2147467263;
    }

    public int method38(int[] args) {
        return -2147467263;
    }

    public int method39(int[] args) {
        return -2147467263;
    }

    public int method40(int[] args) {
        return -2147467263;
    }

    public int method41(int[] args) {
        return -2147467263;
    }

    public int method42(int[] args) {
        return -2147467263;
    }

    public int method43(int[] args) {
        return -2147467263;
    }

    public int method44(int[] args) {
        return -2147467263;
    }

    public int method45(int[] args) {
        return -2147467263;
    }

    public int method46(int[] args) {
        return -2147467263;
    }

    public int method47(int[] args) {
        return -2147467263;
    }

    public int method48(int[] args) {
        return -2147467263;
    }

    public int method49(int[] args) {
        return -2147467263;
    }

    public int method50(int[] args) {
        return -2147467263;
    }

    public int method51(int[] args) {
        return -2147467263;
    }

    public int method52(int[] args) {
        return -2147467263;
    }

    public int method53(int[] args) {
        return -2147467263;
    }

    public int method54(int[] args) {
        return -2147467263;
    }

    public int method55(int[] args) {
        return -2147467263;
    }

    public int method56(int[] args) {
        return -2147467263;
    }

    public int method57(int[] args) {
        return -2147467263;
    }

    public int method58(int[] args) {
        return -2147467263;
    }

    public int method59(int[] args) {
        return -2147467263;
    }

    public int method60(int[] args) {
        return -2147467263;
    }

    public int method61(int[] args) {
        return -2147467263;
    }

    public int method62(int[] args) {
        return -2147467263;
    }

    public int method63(int[] args) {
        return -2147467263;
    }

    public int method64(int[] args) {
        return -2147467263;
    }

    public int method65(int[] args) {
        return -2147467263;
    }

    public int method66(int[] args) {
        return -2147467263;
    }

    public int method67(int[] args) {
        return -2147467263;
    }

    public int method68(int[] args) {
        return -2147467263;
    }

    public int method69(int[] args) {
        return -2147467263;
    }

    public int method70(int[] args) {
        return -2147467263;
    }

    public int method71(int[] args) {
        return -2147467263;
    }

    public int method72(int[] args) {
        return -2147467263;
    }

    public int method73(int[] args) {
        return -2147467263;
    }

    public int method74(int[] args) {
        return -2147467263;
    }

    public int method75(int[] args) {
        return -2147467263;
    }

    public int method76(int[] args) {
        return -2147467263;
    }

    public int method77(int[] args) {
        return -2147467263;
    }

    public int method78(int[] args) {
        return -2147467263;
    }

    public int method79(int[] args) {
        return -2147467263;
    }
}

