/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IBytecodeVisitor;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExceptionTableEntry;
import org.eclipse.jdt.core.util.ILineNumberAttribute;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.ExceptionTableEntry;
import org.eclipse.jdt.internal.core.util.LineNumberAttribute;
import org.eclipse.jdt.internal.core.util.LocalVariableAttribute;
import org.eclipse.jdt.internal.core.util.LocalVariableTypeAttribute;
import org.eclipse.jdt.internal.core.util.StackMapAttribute;
import org.eclipse.jdt.internal.core.util.StackMapTableAttribute;

public class CodeAttribute
extends ClassFileAttribute
implements ICodeAttribute {
    private static final IExceptionTableEntry[] NO_EXCEPTION_TABLE = new IExceptionTableEntry[0];
    private IClassFileAttribute[] attributes;
    private int attributesCount;
    private byte[] bytecodes;
    private byte[] classFileBytes;
    private long codeLength;
    private int codeOffset;
    private IConstantPool constantPool;
    private IExceptionTableEntry[] exceptionTableEntries;
    private int exceptionTableLength;
    private ILineNumberAttribute lineNumberAttribute;
    private ILocalVariableAttribute localVariableAttribute;
    private int maxLocals;
    private int maxStack;

    CodeAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        this.classFileBytes = classFileBytes;
        this.constantPool = constantPool;
        this.maxStack = this.u2At(classFileBytes, 6, offset);
        this.maxLocals = this.u2At(classFileBytes, 8, offset);
        this.codeLength = this.u4At(classFileBytes, 10, offset);
        this.codeOffset = offset + 14;
        int readOffset = (int)(14L + this.codeLength);
        this.exceptionTableLength = this.u2At(classFileBytes, readOffset, offset);
        readOffset += 2;
        this.exceptionTableEntries = NO_EXCEPTION_TABLE;
        if (this.exceptionTableLength != 0) {
            this.exceptionTableEntries = new ExceptionTableEntry[this.exceptionTableLength];
            int i = 0;
            while (i < this.exceptionTableLength) {
                this.exceptionTableEntries[i] = new ExceptionTableEntry(classFileBytes, constantPool, offset + readOffset);
                readOffset += 8;
                ++i;
            }
        }
        this.attributesCount = this.u2At(classFileBytes, readOffset, offset);
        this.attributes = ClassFileAttribute.NO_ATTRIBUTES;
        if (this.attributesCount != 0) {
            this.attributes = new IClassFileAttribute[this.attributesCount];
        }
        int attributesIndex = 0;
        readOffset += 2;
        int i = 0;
        while (i < this.attributesCount) {
            IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(this.u2At(classFileBytes, readOffset, offset));
            if (constantPoolEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            char[] attributeName = constantPoolEntry.getUtf8Value();
            if (this.equals(attributeName, IAttributeNamesConstants.LINE_NUMBER)) {
                this.lineNumberAttribute = new LineNumberAttribute(classFileBytes, constantPool, offset + readOffset);
                this.attributes[attributesIndex++] = this.lineNumberAttribute;
            } else if (this.equals(attributeName, IAttributeNamesConstants.LOCAL_VARIABLE)) {
                this.localVariableAttribute = new LocalVariableAttribute(classFileBytes, constantPool, offset + readOffset);
                this.attributes[attributesIndex++] = this.localVariableAttribute;
            } else {
                this.attributes[attributesIndex++] = this.equals(attributeName, IAttributeNamesConstants.LOCAL_VARIABLE_TYPE_TABLE) ? new LocalVariableTypeAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.STACK_MAP_TABLE) ? new StackMapTableAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.STACK_MAP) ? new StackMapAttribute(classFileBytes, constantPool, offset + readOffset) : new ClassFileAttribute(classFileBytes, constantPool, offset + readOffset)));
            }
            readOffset = (int)((long)readOffset + (6L + this.u4At(classFileBytes, readOffset + 2, offset)));
            ++i;
        }
    }

    public IClassFileAttribute[] getAttributes() {
        return this.attributes;
    }

    public int getAttributesCount() {
        return this.attributesCount;
    }

    public byte[] getBytecodes() {
        if (this.bytecodes == null) {
            this.bytecodes = new byte[(int)this.codeLength];
            System.arraycopy(this.classFileBytes, this.codeOffset, this.bytecodes, 0, (int)this.codeLength);
        }
        return this.bytecodes;
    }

    public long getCodeLength() {
        return this.codeLength;
    }

    public IExceptionTableEntry[] getExceptionTable() {
        return this.exceptionTableEntries;
    }

    public int getExceptionTableLength() {
        return this.exceptionTableLength;
    }

    public ILineNumberAttribute getLineNumberAttribute() {
        return this.lineNumberAttribute;
    }

    public ILocalVariableAttribute getLocalVariableAttribute() {
        return this.localVariableAttribute;
    }

    public int getMaxLocals() {
        return this.maxLocals;
    }

    public int getMaxStack() {
        return this.maxStack;
    }

    public void traverse(IBytecodeVisitor visitor) throws ClassFormatException {
        int pc = this.codeOffset;
        do {
            int opcode = this.u1At(this.classFileBytes, 0, pc);
            switch (opcode) {
                case 0: {
                    visitor._nop(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 1: {
                    visitor._aconst_null(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 2: {
                    visitor._iconst_m1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 3: {
                    visitor._iconst_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 4: {
                    visitor._iconst_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 5: {
                    visitor._iconst_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 6: {
                    visitor._iconst_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 7: {
                    visitor._iconst_4(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 8: {
                    visitor._iconst_5(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 9: {
                    visitor._lconst_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 10: {
                    visitor._lconst_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 11: {
                    visitor._fconst_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 12: {
                    visitor._fconst_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 13: {
                    visitor._fconst_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 14: {
                    visitor._dconst_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 15: {
                    visitor._dconst_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 16: {
                    visitor._bipush(pc - this.codeOffset, (byte)this.i1At(this.classFileBytes, 1, pc));
                    pc += 2;
                    break;
                }
                case 17: {
                    visitor._sipush(pc - this.codeOffset, (short)this.i2At(this.classFileBytes, 1, pc));
                    pc += 3;
                    break;
                }
                case 18: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 4 && constantPoolEntry.getKind() != 3 && constantPoolEntry.getKind() != 8 && constantPoolEntry.getKind() != 7) {
                        throw new ClassFormatException(3);
                    }
                    visitor._ldc(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 2;
                    break;
                }
                case 19: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 4 && constantPoolEntry.getKind() != 3 && constantPoolEntry.getKind() != 8 && constantPoolEntry.getKind() != 7) {
                        throw new ClassFormatException(3);
                    }
                    visitor._ldc_w(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 20: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 6 && constantPoolEntry.getKind() != 5) {
                        throw new ClassFormatException(3);
                    }
                    visitor._ldc2_w(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 21: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._iload(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 22: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._lload(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 23: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._fload(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 24: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._dload(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 25: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._aload(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 26: {
                    visitor._iload_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 27: {
                    visitor._iload_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 28: {
                    visitor._iload_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 29: {
                    visitor._iload_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 30: {
                    visitor._lload_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 31: {
                    visitor._lload_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 32: {
                    visitor._lload_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 33: {
                    visitor._lload_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 34: {
                    visitor._fload_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 35: {
                    visitor._fload_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 36: {
                    visitor._fload_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 37: {
                    visitor._fload_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 38: {
                    visitor._dload_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 39: {
                    visitor._dload_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 40: {
                    visitor._dload_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 41: {
                    visitor._dload_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 42: {
                    visitor._aload_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 43: {
                    visitor._aload_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 44: {
                    visitor._aload_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 45: {
                    visitor._aload_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 46: {
                    visitor._iaload(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 47: {
                    visitor._laload(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 48: {
                    visitor._faload(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 49: {
                    visitor._daload(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 50: {
                    visitor._aaload(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 51: {
                    visitor._baload(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 52: {
                    visitor._caload(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 53: {
                    visitor._saload(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 54: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._istore(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 55: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._lstore(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 56: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._fstore(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 57: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._dstore(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 58: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._astore(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 59: {
                    visitor._istore_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 60: {
                    visitor._istore_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 61: {
                    visitor._istore_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 62: {
                    visitor._istore_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 63: {
                    visitor._lstore_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 64: {
                    visitor._lstore_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 65: {
                    visitor._lstore_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 66: {
                    visitor._lstore_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 67: {
                    visitor._fstore_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 68: {
                    visitor._fstore_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 69: {
                    visitor._fstore_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 70: {
                    visitor._fstore_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 71: {
                    visitor._dstore_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 72: {
                    visitor._dstore_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 73: {
                    visitor._dstore_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 74: {
                    visitor._dstore_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 75: {
                    visitor._astore_0(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 76: {
                    visitor._astore_1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 77: {
                    visitor._astore_2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 78: {
                    visitor._astore_3(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 79: {
                    visitor._iastore(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 80: {
                    visitor._lastore(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 81: {
                    visitor._fastore(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 82: {
                    visitor._dastore(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 83: {
                    visitor._aastore(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 84: {
                    visitor._bastore(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 85: {
                    visitor._castore(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 86: {
                    visitor._sastore(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 87: {
                    visitor._pop(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 88: {
                    visitor._pop2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 89: {
                    visitor._dup(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 90: {
                    visitor._dup_x1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 91: {
                    visitor._dup_x2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 92: {
                    visitor._dup2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 93: {
                    visitor._dup2_x1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 94: {
                    visitor._dup2_x2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 95: {
                    visitor._swap(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 96: {
                    visitor._iadd(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 97: {
                    visitor._ladd(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 98: {
                    visitor._fadd(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 99: {
                    visitor._dadd(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 100: {
                    visitor._isub(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 101: {
                    visitor._lsub(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 102: {
                    visitor._fsub(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 103: {
                    visitor._dsub(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 104: {
                    visitor._imul(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 105: {
                    visitor._lmul(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 106: {
                    visitor._fmul(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 107: {
                    visitor._dmul(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 108: {
                    visitor._idiv(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 109: {
                    visitor._ldiv(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 110: {
                    visitor._fdiv(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 111: {
                    visitor._ddiv(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 112: {
                    visitor._irem(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 113: {
                    visitor._lrem(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 114: {
                    visitor._frem(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 115: {
                    visitor._drem(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 116: {
                    visitor._ineg(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 117: {
                    visitor._lneg(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 118: {
                    visitor._fneg(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 119: {
                    visitor._dneg(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 120: {
                    visitor._ishl(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 121: {
                    visitor._lshl(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 122: {
                    visitor._ishr(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 123: {
                    visitor._lshr(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 124: {
                    visitor._iushr(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 125: {
                    visitor._lushr(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 126: {
                    visitor._iand(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 127: {
                    visitor._land(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 128: {
                    visitor._ior(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 129: {
                    visitor._lor(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 130: {
                    visitor._ixor(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 131: {
                    visitor._lxor(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 132: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    int _const = this.i1At(this.classFileBytes, 2, pc);
                    visitor._iinc(pc - this.codeOffset, index, _const);
                    pc += 3;
                    break;
                }
                case 133: {
                    visitor._i2l(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 134: {
                    visitor._i2f(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 135: {
                    visitor._i2d(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 136: {
                    visitor._l2i(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 137: {
                    visitor._l2f(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 138: {
                    visitor._l2d(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 139: {
                    visitor._f2i(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 140: {
                    visitor._f2l(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 141: {
                    visitor._f2d(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 142: {
                    visitor._d2i(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 143: {
                    visitor._d2l(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 144: {
                    visitor._d2f(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 145: {
                    visitor._i2b(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 146: {
                    visitor._i2c(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 147: {
                    visitor._i2s(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 148: {
                    visitor._lcmp(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 149: {
                    visitor._fcmpl(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 150: {
                    visitor._fcmpg(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 151: {
                    visitor._dcmpl(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 152: {
                    visitor._dcmpg(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 153: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._ifeq(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 154: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._ifne(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 155: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._iflt(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 156: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._ifge(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 157: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._ifgt(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 158: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._ifle(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 159: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._if_icmpeq(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 160: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._if_icmpne(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 161: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._if_icmplt(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 162: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._if_icmpge(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 163: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._if_icmpgt(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 164: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._if_icmple(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 165: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._if_acmpeq(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 166: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._if_acmpne(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 167: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._goto(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 168: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._jsr(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 169: {
                    int index = this.u1At(this.classFileBytes, 1, pc);
                    visitor._ret(pc - this.codeOffset, index);
                    pc += 2;
                    break;
                }
                case 170: {
                    int startpc = pc++;
                    while ((pc - this.codeOffset & 3) != 0) {
                        ++pc;
                    }
                    int defaultOffset = this.i4At(this.classFileBytes, 0, pc);
                    int low = this.i4At(this.classFileBytes, 0, pc += 4);
                    int high = this.i4At(this.classFileBytes, 0, pc += 4);
                    pc += 4;
                    int length = high - low + 1;
                    int[] jumpOffsets = new int[length];
                    int i = 0;
                    while (i < length) {
                        jumpOffsets[i] = this.i4At(this.classFileBytes, 0, pc);
                        pc += 4;
                        ++i;
                    }
                    visitor._tableswitch(startpc - this.codeOffset, defaultOffset, low, high, jumpOffsets);
                    break;
                }
                case 171: {
                    int startpc = pc++;
                    while ((pc - this.codeOffset & 3) != 0) {
                        ++pc;
                    }
                    int defaultOffset = this.i4At(this.classFileBytes, 0, pc);
                    int npairs = (int)this.u4At(this.classFileBytes, 0, pc += 4);
                    int[][] offset_pairs = new int[npairs][2];
                    pc += 4;
                    int i = 0;
                    while (i < npairs) {
                        offset_pairs[i][0] = this.i4At(this.classFileBytes, 0, pc);
                        offset_pairs[i][1] = this.i4At(this.classFileBytes, 0, pc += 4);
                        pc += 4;
                        ++i;
                    }
                    visitor._lookupswitch(startpc - this.codeOffset, defaultOffset, npairs, offset_pairs);
                    break;
                }
                case 172: {
                    visitor._ireturn(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 173: {
                    visitor._lreturn(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 174: {
                    visitor._freturn(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 175: {
                    visitor._dreturn(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 176: {
                    visitor._areturn(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 177: {
                    visitor._return(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 178: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 9) {
                        throw new ClassFormatException(3);
                    }
                    visitor._getstatic(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 179: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 9) {
                        throw new ClassFormatException(3);
                    }
                    visitor._putstatic(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 180: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 9) {
                        throw new ClassFormatException(3);
                    }
                    visitor._getfield(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 181: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 9) {
                        throw new ClassFormatException(3);
                    }
                    visitor._putfield(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 182: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 10) {
                        throw new ClassFormatException(3);
                    }
                    visitor._invokevirtual(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 183: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 10) {
                        throw new ClassFormatException(3);
                    }
                    visitor._invokespecial(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 184: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 10) {
                        throw new ClassFormatException(3);
                    }
                    visitor._invokestatic(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 185: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 11) {
                        throw new ClassFormatException(3);
                    }
                    byte count = (byte)this.u1At(this.classFileBytes, 3, pc);
                    int extraArgs = this.u1At(this.classFileBytes, 4, pc);
                    if (extraArgs != 0) {
                        throw new ClassFormatException(5);
                    }
                    visitor._invokeinterface(pc - this.codeOffset, index, count, constantPoolEntry);
                    pc += 5;
                    break;
                }
                case 186: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 12) {
                        throw new ClassFormatException(3);
                    }
                    visitor._invokedynamic(pc - this.codeOffset, index, this.constantPool.decodeEntry(constantPoolEntry.getNameAndTypeInfoNameIndex()), this.constantPool.decodeEntry(constantPoolEntry.getNameAndTypeInfoDescriptorIndex()));
                    pc += 5;
                    break;
                }
                case 187: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 7) {
                        throw new ClassFormatException(3);
                    }
                    visitor._new(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 188: {
                    int atype = this.u1At(this.classFileBytes, 1, pc);
                    visitor._newarray(pc - this.codeOffset, atype);
                    pc += 2;
                    break;
                }
                case 189: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 7) {
                        throw new ClassFormatException(3);
                    }
                    visitor._anewarray(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 190: {
                    visitor._arraylength(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 191: {
                    visitor._athrow(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 192: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 7) {
                        throw new ClassFormatException(3);
                    }
                    visitor._checkcast(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 193: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 7) {
                        throw new ClassFormatException(3);
                    }
                    visitor._instanceof(pc - this.codeOffset, index, constantPoolEntry);
                    pc += 3;
                    break;
                }
                case 194: {
                    visitor._monitorenter(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 195: {
                    visitor._monitorexit(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 196: {
                    int _const;
                    int index;
                    opcode = this.u1At(this.classFileBytes, 1, pc);
                    if (opcode == 132) {
                        index = this.u2At(this.classFileBytes, 2, pc);
                        _const = this.i2At(this.classFileBytes, 4, pc);
                        visitor._wide(pc - this.codeOffset, opcode, index, _const);
                        pc += 6;
                        break;
                    }
                    index = this.u2At(this.classFileBytes, 2, pc);
                    visitor._wide(pc - this.codeOffset, opcode, index);
                    pc += 4;
                    break;
                }
                case 197: {
                    int index = this.u2At(this.classFileBytes, 1, pc);
                    IConstantPoolEntry constantPoolEntry = this.constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 7) {
                        throw new ClassFormatException(3);
                    }
                    int dimensions = this.u1At(this.classFileBytes, 3, pc);
                    visitor._multianewarray(pc - this.codeOffset, index, dimensions, constantPoolEntry);
                    pc += 4;
                    break;
                }
                case 198: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._ifnull(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 199: {
                    int branchOffset = this.i2At(this.classFileBytes, 1, pc);
                    visitor._ifnonnull(pc - this.codeOffset, branchOffset);
                    pc += 3;
                    break;
                }
                case 200: {
                    int branchOffset = this.i4At(this.classFileBytes, 1, pc);
                    visitor._goto_w(pc - this.codeOffset, branchOffset);
                    pc += 5;
                    break;
                }
                case 201: {
                    int branchOffset = this.i4At(this.classFileBytes, 1, pc);
                    visitor._jsr_w(pc - this.codeOffset, branchOffset);
                    pc += 5;
                    break;
                }
                case 202: {
                    visitor._breakpoint(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 254: {
                    visitor._impdep1(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                case 255: {
                    visitor._impdep2(pc - this.codeOffset);
                    ++pc;
                    break;
                }
                default: {
                    throw new ClassFormatException(6);
                }
            }
        } while ((long)pc < this.codeLength + (long)this.codeOffset);
    }
}

