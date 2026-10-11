/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.ole.win32;

import org.eclipse.swt.internal.ole.win32.COM;
import org.eclipse.swt.internal.ole.win32.IDispatch;
import org.eclipse.swt.internal.ole.win32.IUnknown;
import org.eclipse.swt.internal.ole.win32.VARIANT;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.ole.win32.OLE;
import org.eclipse.swt.ole.win32.OleAutomation;

public final class Variant {
    public static final int sizeof = VARIANT.sizeof;
    private short type;
    private boolean booleanData;
    private byte byteData;
    private short shortData;
    private char charData;
    private int intData;
    private long longData;
    private float floatData;
    private double doubleData;
    private String stringData;
    private int byRefPtr;
    private IDispatch dispatchData;
    private IUnknown unknownData;
    public static final Variant NULL = new Variant();

    static {
        Variant.NULL.type = 1;
    }

    public static void win32_copy(int pVarDest, Variant varSrc) {
        varSrc.getData(pVarDest);
    }

    public static Variant win32_new(int pVariant) {
        Variant variant = new Variant();
        variant.setData(pVariant);
        return variant;
    }

    public Variant() {
        this.type = 0;
    }

    public Variant(float val) {
        this.type = (short)4;
        this.floatData = val;
    }

    public Variant(double val) {
        this.type = (short)5;
        this.doubleData = val;
    }

    public Variant(int val) {
        this.type = (short)3;
        this.intData = val;
    }

    public Variant(int ptr, short byRefType) {
        this.type = byRefType;
        this.byRefPtr = ptr;
    }

    public Variant(OleAutomation automation) {
        this.type = (short)9;
        this.dispatchData = new IDispatch(automation.getAddress());
    }

    public Variant(IDispatch idispatch) {
        this.type = (short)9;
        this.dispatchData = idispatch;
    }

    public Variant(IUnknown unknown) {
        this.type = (short)13;
        this.unknownData = unknown;
    }

    public Variant(long val) {
        this.type = (short)20;
        this.longData = val;
    }

    public Variant(String string) {
        this.type = (short)8;
        this.stringData = string;
    }

    public Variant(short val) {
        this.type = (short)2;
        this.shortData = val;
    }

    public Variant(boolean val) {
        this.type = (short)11;
        this.booleanData = val;
    }

    public void dispose() {
        if ((this.type & 0x4000) == 16384) {
            return;
        }
        switch (this.type) {
            case 9: {
                this.dispatchData.Release();
                break;
            }
            case 13: {
                this.unknownData.Release();
            }
        }
    }

    public OleAutomation getAutomation() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 9) {
            return new OleAutomation(this.dispatchData);
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)9);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant autoVar = new Variant();
            autoVar.setData(newPtr);
            OleAutomation oleAutomation = autoVar.getAutomation();
            return oleAutomation;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public IDispatch getDispatch() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 9) {
            return this.dispatchData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)9);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant autoVar = new Variant();
            autoVar.setData(newPtr);
            IDispatch iDispatch = autoVar.getDispatch();
            return iDispatch;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public boolean getBoolean() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 11) {
            return this.booleanData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)11);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant boolVar = new Variant();
            boolVar.setData(newPtr);
            boolean bl = boolVar.getBoolean();
            return bl;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public int getByRef() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if ((this.type & 0x4000) == 16384) {
            return this.byRefPtr;
        }
        return 0;
    }

    public byte getByte() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 16) {
            return this.byteData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)16);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant byteVar = new Variant();
            byteVar.setData(newPtr);
            byte by = byteVar.getByte();
            return by;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public char getChar() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 18) {
            return this.charData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)18);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant charVar = new Variant();
            charVar.setData(newPtr);
            char c = charVar.getChar();
            return c;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    void getData(int pData) {
        if (pData == 0) {
            OLE.error(1007);
        }
        COM.VariantInit(pData);
        if ((this.type & 0x4000) == 16384) {
            COM.MoveMemory(pData, new short[]{this.type}, 2);
            COM.MoveMemory(pData + 8, new int[]{this.byRefPtr}, OS.PTR_SIZEOF);
            return;
        }
        switch (this.type) {
            case 0: 
            case 1: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                break;
            }
            case 11: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new short[]{this.booleanData ? (short)-1 : 0}, 2);
                break;
            }
            case 16: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new byte[]{this.byteData}, 1);
                break;
            }
            case 2: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new short[]{this.shortData}, 2);
                break;
            }
            case 18: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new char[]{this.charData}, 2);
                break;
            }
            case 3: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new int[]{this.intData}, 4);
                break;
            }
            case 20: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new long[]{this.longData}, 8);
                break;
            }
            case 4: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new float[]{this.floatData}, 4);
                break;
            }
            case 5: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new double[]{this.doubleData}, 8);
                break;
            }
            case 9: {
                this.dispatchData.AddRef();
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new int[]{this.dispatchData.getAddress()}, OS.PTR_SIZEOF);
                break;
            }
            case 13: {
                this.unknownData.AddRef();
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                COM.MoveMemory(pData + 8, new int[]{this.unknownData.getAddress()}, OS.PTR_SIZEOF);
                break;
            }
            case 8: {
                COM.MoveMemory(pData, new short[]{this.type}, 2);
                char[] data = (String.valueOf(this.stringData) + "\u0000").toCharArray();
                int ptr = COM.SysAllocString(data);
                COM.MoveMemory(pData + 8, new int[]{ptr}, OS.PTR_SIZEOF);
                break;
            }
            default: {
                OLE.error(20);
            }
        }
    }

    public double getDouble() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 5) {
            return this.doubleData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)5);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant doubleVar = new Variant();
            doubleVar.setData(newPtr);
            double d = doubleVar.getDouble();
            return d;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public float getFloat() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 4) {
            return this.floatData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)4);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant floatVar = new Variant();
            floatVar.setData(newPtr);
            float f = floatVar.getFloat();
            return f;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public int getInt() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 3) {
            return this.intData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)3);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant intVar = new Variant();
            intVar.setData(newPtr);
            int n = intVar.getInt();
            return n;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public long getLong() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 20) {
            return this.longData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)20);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant longVar = new Variant();
            longVar.setData(newPtr);
            long l = longVar.getLong();
            return l;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public short getShort() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 2) {
            return this.shortData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)2);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant shortVar = new Variant();
            shortVar.setData(newPtr);
            short s = shortVar.getShort();
            return s;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public String getString() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 8) {
            return this.stringData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)8);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant stringVar = new Variant();
            stringVar.setData(newPtr);
            String string = stringVar.getString();
            return string;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public short getType() {
        return this.type;
    }

    public IUnknown getUnknown() {
        if (this.type == 0) {
            OLE.error(1010, -1);
        }
        if (this.type == 13) {
            return this.unknownData;
        }
        int oldPtr = OS.GlobalAlloc(64, sizeof);
        int newPtr = OS.GlobalAlloc(64, sizeof);
        try {
            this.getData(oldPtr);
            int result = COM.VariantChangeType(newPtr, oldPtr, (short)0, (short)13);
            if (result != 0) {
                OLE.error(1010, result);
            }
            Variant unknownVar = new Variant();
            unknownVar.setData(newPtr);
            IUnknown iUnknown = unknownVar.getUnknown();
            return iUnknown;
        }
        finally {
            COM.VariantClear(oldPtr);
            OS.GlobalFree(oldPtr);
            COM.VariantClear(newPtr);
            OS.GlobalFree(newPtr);
        }
    }

    public void setByRef(boolean val) {
        if ((this.type & 0x4000) == 0 || (this.type & 0xB) == 0) {
            OLE.error(1010);
        }
        COM.MoveMemory(this.byRefPtr, new short[]{val ? (short)-1 : 0}, 2);
    }

    public void setByRef(float val) {
        if ((this.type & 0x4000) == 0 || (this.type & 4) == 0) {
            OLE.error(1010);
        }
        COM.MoveMemory(this.byRefPtr, new float[]{val}, 4);
    }

    public void setByRef(int val) {
        if ((this.type & 0x4000) == 0 || (this.type & 3) == 0) {
            OLE.error(1010);
        }
        COM.MoveMemory(this.byRefPtr, new int[]{val}, OS.PTR_SIZEOF);
    }

    public void setByRef(short val) {
        if ((this.type & 0x4000) == 0 || (this.type & 2) == 0) {
            OLE.error(1010);
        }
        COM.MoveMemory(this.byRefPtr, new short[]{val}, 2);
    }

    void setData(int pData) {
        if (pData == 0) {
            OLE.error(5);
        }
        short[] dataType = new short[1];
        COM.MoveMemory(dataType, pData, 2);
        this.type = dataType[0];
        if ((this.type & 0x4000) == 16384) {
            int[] newByRefPtr = new int[1];
            OS.MoveMemory(newByRefPtr, pData + 8, OS.PTR_SIZEOF);
            this.byRefPtr = newByRefPtr[0];
            return;
        }
        switch (this.type) {
            case 0: 
            case 1: {
                break;
            }
            case 11: {
                short[] newBooleanData = new short[1];
                COM.MoveMemory(newBooleanData, pData + 8, 2);
                this.booleanData = newBooleanData[0] != 0;
                break;
            }
            case 16: {
                byte[] newByteData = new byte[1];
                COM.MoveMemory(newByteData, pData + 8, 1);
                this.byteData = newByteData[0];
                break;
            }
            case 2: {
                short[] newShortData = new short[1];
                COM.MoveMemory(newShortData, pData + 8, 2);
                this.shortData = newShortData[0];
                break;
            }
            case 18: {
                char[] newCharData = new char[1];
                COM.MoveMemory(newCharData, pData + 8, 2);
                this.charData = newCharData[0];
                break;
            }
            case 3: {
                int[] newIntData = new int[1];
                OS.MoveMemory(newIntData, pData + 8, 4);
                this.intData = newIntData[0];
                break;
            }
            case 20: {
                long[] newLongData = new long[1];
                OS.MoveMemory(newLongData, pData + 8, 8);
                this.longData = newLongData[0];
                break;
            }
            case 4: {
                float[] newFloatData = new float[1];
                COM.MoveMemory(newFloatData, pData + 8, 4);
                this.floatData = newFloatData[0];
                break;
            }
            case 5: {
                double[] newDoubleData = new double[1];
                COM.MoveMemory(newDoubleData, pData + 8, 8);
                this.doubleData = newDoubleData[0];
                break;
            }
            case 9: {
                int[] ppvObject = new int[1];
                OS.MoveMemory(ppvObject, pData + 8, OS.PTR_SIZEOF);
                if (ppvObject[0] == 0) {
                    this.type = 0;
                    break;
                }
                this.dispatchData = new IDispatch(ppvObject[0]);
                this.dispatchData.AddRef();
                break;
            }
            case 13: {
                int[] ppvObject = new int[1];
                OS.MoveMemory(ppvObject, pData + 8, OS.PTR_SIZEOF);
                if (ppvObject[0] == 0) {
                    this.type = 0;
                    break;
                }
                this.unknownData = new IUnknown(ppvObject[0]);
                this.unknownData.AddRef();
                break;
            }
            case 8: {
                int[] hMem = new int[1];
                OS.MoveMemory(hMem, pData + 8, OS.PTR_SIZEOF);
                if (hMem[0] == 0) {
                    this.type = 0;
                    break;
                }
                int size = COM.SysStringByteLen(hMem[0]);
                if (size > 0) {
                    char[] buffer = new char[(size + 1) / 2];
                    COM.MoveMemory(buffer, hMem[0], size);
                    this.stringData = new String(buffer);
                    break;
                }
                this.stringData = "";
                break;
            }
            default: {
                int newPData = OS.GlobalAlloc(64, sizeof);
                if (COM.VariantChangeType(newPData, pData, (short)0, (short)4) == 0) {
                    this.setData(newPData);
                } else if (COM.VariantChangeType(newPData, pData, (short)0, (short)3) == 0) {
                    this.setData(newPData);
                } else if (COM.VariantChangeType(newPData, pData, (short)0, (short)8) == 0) {
                    this.setData(newPData);
                }
                COM.VariantClear(newPData);
                OS.GlobalFree(newPData);
            }
        }
    }

    public String toString() {
        switch (this.type) {
            case 11: {
                return "VT_BOOL{" + this.booleanData + "}";
            }
            case 16: {
                return "VT_I1{" + this.byteData + "}";
            }
            case 2: {
                return "VT_I2{" + this.shortData + "}";
            }
            case 18: {
                return "VT_UI2{" + this.charData + "}";
            }
            case 3: {
                return "VT_I4{" + this.intData + "}";
            }
            case 20: {
                return "VT_I8{" + this.longData + "}";
            }
            case 4: {
                return "VT_R4{" + this.floatData + "}";
            }
            case 5: {
                return "VT_R8{" + this.doubleData + "}";
            }
            case 8: {
                return "VT_BSTR{" + this.stringData + "}";
            }
            case 9: {
                return "VT_DISPATCH{" + (this.dispatchData == null ? 0 : this.dispatchData.getAddress()) + "}";
            }
            case 13: {
                return "VT_UNKNOWN{" + (this.unknownData == null ? 0 : this.unknownData.getAddress()) + "}";
            }
            case 0: {
                return "VT_EMPTY";
            }
            case 1: {
                return "VT_NULL";
            }
        }
        if ((this.type & 0x4000) != 0) {
            return "VT_BYREF|" + (this.type & 0xFFFFBFFF) + "{" + this.byRefPtr + "}";
        }
        return "Unsupported Type " + this.type;
    }
}

