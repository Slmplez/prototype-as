/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IConstantPoolEntry;

public interface IBytecodeVisitor {
    public void _aaload(int var1);

    public void _aastore(int var1);

    public void _aconst_null(int var1);

    public void _aload(int var1, int var2);

    public void _aload_0(int var1);

    public void _aload_1(int var1);

    public void _aload_2(int var1);

    public void _aload_3(int var1);

    public void _anewarray(int var1, int var2, IConstantPoolEntry var3);

    public void _areturn(int var1);

    public void _arraylength(int var1);

    public void _astore(int var1, int var2);

    public void _astore_0(int var1);

    public void _astore_1(int var1);

    public void _astore_2(int var1);

    public void _astore_3(int var1);

    public void _athrow(int var1);

    public void _baload(int var1);

    public void _bastore(int var1);

    public void _bipush(int var1, byte var2);

    public void _caload(int var1);

    public void _castore(int var1);

    public void _checkcast(int var1, int var2, IConstantPoolEntry var3);

    public void _d2f(int var1);

    public void _d2i(int var1);

    public void _d2l(int var1);

    public void _dadd(int var1);

    public void _daload(int var1);

    public void _dastore(int var1);

    public void _dcmpg(int var1);

    public void _dcmpl(int var1);

    public void _dconst_0(int var1);

    public void _dconst_1(int var1);

    public void _ddiv(int var1);

    public void _dload(int var1, int var2);

    public void _dload_0(int var1);

    public void _dload_1(int var1);

    public void _dload_2(int var1);

    public void _dload_3(int var1);

    public void _dmul(int var1);

    public void _dneg(int var1);

    public void _drem(int var1);

    public void _dreturn(int var1);

    public void _dstore(int var1, int var2);

    public void _dstore_0(int var1);

    public void _dstore_1(int var1);

    public void _dstore_2(int var1);

    public void _dstore_3(int var1);

    public void _dsub(int var1);

    public void _dup(int var1);

    public void _dup_x1(int var1);

    public void _dup_x2(int var1);

    public void _dup2(int var1);

    public void _dup2_x1(int var1);

    public void _dup2_x2(int var1);

    public void _f2d(int var1);

    public void _f2i(int var1);

    public void _f2l(int var1);

    public void _fadd(int var1);

    public void _faload(int var1);

    public void _fastore(int var1);

    public void _fcmpg(int var1);

    public void _fcmpl(int var1);

    public void _fconst_0(int var1);

    public void _fconst_1(int var1);

    public void _fconst_2(int var1);

    public void _fdiv(int var1);

    public void _fload(int var1, int var2);

    public void _fload_0(int var1);

    public void _fload_1(int var1);

    public void _fload_2(int var1);

    public void _fload_3(int var1);

    public void _fmul(int var1);

    public void _fneg(int var1);

    public void _frem(int var1);

    public void _freturn(int var1);

    public void _fstore(int var1, int var2);

    public void _fstore_0(int var1);

    public void _fstore_1(int var1);

    public void _fstore_2(int var1);

    public void _fstore_3(int var1);

    public void _fsub(int var1);

    public void _getfield(int var1, int var2, IConstantPoolEntry var3);

    public void _getstatic(int var1, int var2, IConstantPoolEntry var3);

    public void _goto(int var1, int var2);

    public void _goto_w(int var1, int var2);

    public void _i2b(int var1);

    public void _i2c(int var1);

    public void _i2d(int var1);

    public void _i2f(int var1);

    public void _i2l(int var1);

    public void _i2s(int var1);

    public void _iadd(int var1);

    public void _iaload(int var1);

    public void _iand(int var1);

    public void _iastore(int var1);

    public void _iconst_m1(int var1);

    public void _iconst_0(int var1);

    public void _iconst_1(int var1);

    public void _iconst_2(int var1);

    public void _iconst_3(int var1);

    public void _iconst_4(int var1);

    public void _iconst_5(int var1);

    public void _idiv(int var1);

    public void _if_acmpeq(int var1, int var2);

    public void _if_acmpne(int var1, int var2);

    public void _if_icmpeq(int var1, int var2);

    public void _if_icmpne(int var1, int var2);

    public void _if_icmplt(int var1, int var2);

    public void _if_icmpge(int var1, int var2);

    public void _if_icmpgt(int var1, int var2);

    public void _if_icmple(int var1, int var2);

    public void _ifeq(int var1, int var2);

    public void _ifne(int var1, int var2);

    public void _iflt(int var1, int var2);

    public void _ifge(int var1, int var2);

    public void _ifgt(int var1, int var2);

    public void _ifle(int var1, int var2);

    public void _ifnonnull(int var1, int var2);

    public void _ifnull(int var1, int var2);

    public void _iinc(int var1, int var2, int var3);

    public void _iload(int var1, int var2);

    public void _iload_0(int var1);

    public void _iload_1(int var1);

    public void _iload_2(int var1);

    public void _iload_3(int var1);

    public void _imul(int var1);

    public void _ineg(int var1);

    public void _instanceof(int var1, int var2, IConstantPoolEntry var3);

    public void _invokedynamic(int var1, int var2, IConstantPoolEntry var3, IConstantPoolEntry var4);

    public void _invokeinterface(int var1, int var2, byte var3, IConstantPoolEntry var4);

    public void _invokespecial(int var1, int var2, IConstantPoolEntry var3);

    public void _invokestatic(int var1, int var2, IConstantPoolEntry var3);

    public void _invokevirtual(int var1, int var2, IConstantPoolEntry var3);

    public void _ior(int var1);

    public void _irem(int var1);

    public void _ireturn(int var1);

    public void _ishl(int var1);

    public void _ishr(int var1);

    public void _istore(int var1, int var2);

    public void _istore_0(int var1);

    public void _istore_1(int var1);

    public void _istore_2(int var1);

    public void _istore_3(int var1);

    public void _isub(int var1);

    public void _iushr(int var1);

    public void _ixor(int var1);

    public void _jsr(int var1, int var2);

    public void _jsr_w(int var1, int var2);

    public void _l2d(int var1);

    public void _l2f(int var1);

    public void _l2i(int var1);

    public void _ladd(int var1);

    public void _laload(int var1);

    public void _land(int var1);

    public void _lastore(int var1);

    public void _lcmp(int var1);

    public void _lconst_0(int var1);

    public void _lconst_1(int var1);

    public void _ldc(int var1, int var2, IConstantPoolEntry var3);

    public void _ldc_w(int var1, int var2, IConstantPoolEntry var3);

    public void _ldc2_w(int var1, int var2, IConstantPoolEntry var3);

    public void _ldiv(int var1);

    public void _lload(int var1, int var2);

    public void _lload_0(int var1);

    public void _lload_1(int var1);

    public void _lload_2(int var1);

    public void _lload_3(int var1);

    public void _lmul(int var1);

    public void _lneg(int var1);

    public void _lookupswitch(int var1, int var2, int var3, int[][] var4);

    public void _lor(int var1);

    public void _lrem(int var1);

    public void _lreturn(int var1);

    public void _lshl(int var1);

    public void _lshr(int var1);

    public void _lstore(int var1, int var2);

    public void _lstore_0(int var1);

    public void _lstore_1(int var1);

    public void _lstore_2(int var1);

    public void _lstore_3(int var1);

    public void _lsub(int var1);

    public void _lushr(int var1);

    public void _lxor(int var1);

    public void _monitorenter(int var1);

    public void _monitorexit(int var1);

    public void _multianewarray(int var1, int var2, int var3, IConstantPoolEntry var4);

    public void _new(int var1, int var2, IConstantPoolEntry var3);

    public void _newarray(int var1, int var2);

    public void _nop(int var1);

    public void _pop(int var1);

    public void _pop2(int var1);

    public void _putfield(int var1, int var2, IConstantPoolEntry var3);

    public void _putstatic(int var1, int var2, IConstantPoolEntry var3);

    public void _ret(int var1, int var2);

    public void _return(int var1);

    public void _saload(int var1);

    public void _sastore(int var1);

    public void _sipush(int var1, short var2);

    public void _swap(int var1);

    public void _tableswitch(int var1, int var2, int var3, int var4, int[] var5);

    public void _wide(int var1, int var2, int var3);

    public void _wide(int var1, int var2, int var3, int var4);

    public void _breakpoint(int var1);

    public void _impdep1(int var1);

    public void _impdep2(int var1);
}

