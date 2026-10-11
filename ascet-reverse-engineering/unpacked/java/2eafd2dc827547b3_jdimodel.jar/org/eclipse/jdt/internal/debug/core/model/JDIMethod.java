/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.Method
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.sun.jdi.Method;

public abstract class JDIMethod {
    private static final int ALOAD_0 = 42;
    private static final int ILOAD_1 = 27;
    private static final int LLOAD_1 = 31;
    private static final int FLOAD_1 = 35;
    private static final int DLOAD_1 = 39;
    private static final int ALOAD_1 = 43;
    private static final int IRETURN = 172;
    private static final int LRETURN = 173;
    private static final int FRETURN = 174;
    private static final int DRETURN = 175;
    private static final int ARETURN = 176;
    private static final int GETFIELD = 180;
    private static final int PUTFIELD = 181;
    private static final int RETURN = 177;

    public static final boolean isXReturn(byte opCode) {
        return (opCode & 0xFF) == 172 || (opCode & 0xFF) == 173 || (opCode & 0xFF) == 174 || (opCode & 0xFF) == 175 || (opCode & 0xFF) == 176;
    }

    public static final boolean isXLoad1(byte opCode) {
        return (opCode & 0xFF) == 27 || (opCode & 0xFF) == 31 || (opCode & 0xFF) == 35 || (opCode & 0xFF) == 39 || (opCode & 0xFF) == 43;
    }

    public static boolean isGetterMethod(Method method) {
        if (!method.name().startsWith("get") && !method.name().startsWith("is")) {
            return false;
        }
        byte[] bytecodes = method.bytecodes();
        return bytecodes.length == 5 && (bytecodes[0] & 0xFF) == 42 && (bytecodes[1] & 0xFF) == 180 && JDIMethod.isXReturn(bytecodes[4]);
    }

    public static boolean isSetterMethod(Method method) {
        if (!method.name().startsWith("set")) {
            return false;
        }
        byte[] bytecodes = method.bytecodes();
        return bytecodes.length == 6 && (bytecodes[0] & 0xFF) == 42 && JDIMethod.isXLoad1(bytecodes[1]) && (bytecodes[2] & 0xFF) == 181 && (bytecodes[5] & 0xFF) == 177;
    }
}

