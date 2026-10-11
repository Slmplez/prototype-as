/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.IBytecodeVisitor;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTableEntry;
import org.eclipse.jdt.core.util.OpcodeStringValues;
import org.eclipse.jdt.internal.core.util.Disassembler;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class DefaultBytecodeVisitor
implements IBytecodeVisitor {
    private static final String EMPTY_CLASS_NAME = "\"\"";
    private static final String EMPTY_LOCAL_NAME = "";
    private static final int T_BOOLEAN = 4;
    private static final int T_CHAR = 5;
    private static final int T_FLOAT = 6;
    private static final int T_DOUBLE = 7;
    private static final int T_BYTE = 8;
    private static final int T_SHORT = 9;
    private static final int T_INT = 10;
    private static final int T_LONG = 11;
    private StringBuffer buffer;
    private String lineSeparator;
    private int tabNumber;
    private int digitNumberForPC;
    private ILocalVariableTableEntry[] localVariableTableEntries;
    private int localVariableAttributeLength;
    private int mode;
    private char[][] parameterNames;
    private boolean isStatic;
    private int[] argumentSizes;

    public DefaultBytecodeVisitor(ICodeAttribute codeAttribute, char[][] parameterNames, char[] methodDescriptor, boolean isStatic, StringBuffer buffer, String lineSeparator, int tabNumber, int mode) {
        ILocalVariableAttribute localVariableAttribute = codeAttribute.getLocalVariableAttribute();
        this.localVariableAttributeLength = localVariableAttribute == null ? 0 : localVariableAttribute.getLocalVariableTableLength();
        this.localVariableTableEntries = this.localVariableAttributeLength != 0 ? localVariableAttribute.getLocalVariableTable() : null;
        this.buffer = buffer;
        this.lineSeparator = lineSeparator;
        this.tabNumber = tabNumber + 1;
        long codeLength = codeAttribute.getCodeLength();
        this.digitNumberForPC = Long.toString(codeLength).length();
        this.mode = mode;
        this.parameterNames = parameterNames;
        this.isStatic = isStatic;
        if (parameterNames != null) {
            char[][] parameterTypes = Signature.getParameterTypes(methodDescriptor);
            int length = parameterTypes.length;
            this.argumentSizes = new int[length];
            int i = 0;
            while (i < length) {
                char[] parameterType = parameterTypes[i];
                this.argumentSizes[i] = parameterType.length == 1 && (parameterType[0] == 'D' || parameterType[0] == 'J') ? 2 : 1;
                ++i;
            }
        }
    }

    public void _aaload(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[50]);
        this.writeNewLine();
    }

    private void dumpPcNumber(int pc) {
        this.writeTabs();
        int digitForPC = 1;
        if (pc != 0) {
            digitForPC = Integer.toString(pc).length();
        }
        int i = 0;
        int max = this.digitNumberForPC - digitForPC;
        while (i < max) {
            this.buffer.append(' ');
            ++i;
        }
        this.buffer.append(pc);
        this.buffer.append(Messages.disassembler_indentation);
    }

    public void _aastore(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[83]);
        this.writeNewLine();
    }

    public void _aconst_null(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[1]);
        this.writeNewLine();
    }

    public void _aload_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[42], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _aload_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[43], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _aload_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[44], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _aload_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[45], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _aload(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[25], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _anewarray(int pc, int index, IConstantPoolEntry constantClass) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_anewarray, new String[]{OpcodeStringValues.BYTECODE_NAMES[189], Integer.toString(index), this.returnConstantClassName(constantClass)}));
        this.writeNewLine();
    }

    public void _areturn(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[176]);
        this.writeNewLine();
    }

    public void _arraylength(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[190]);
        this.writeNewLine();
    }

    public void _astore_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[75], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _astore_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[76], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    private String getLocalVariableName(int pc, int index) {
        return this.getLocalVariableName(pc, index, false);
    }

    private String getLocalVariableName(int pc, int index, boolean showIndex) {
        int nextPC = pc + 1;
        switch (index) {
            case 0: 
            case 1: 
            case 2: 
            case 3: {
                break;
            }
            default: {
                nextPC = index <= 255 ? pc + 2 : pc + 3;
            }
        }
        int i = 0;
        int max = this.localVariableAttributeLength;
        while (i < max) {
            ILocalVariableTableEntry entry = this.localVariableTableEntries[i];
            int startPC = entry.getStartPC();
            if (entry.getIndex() == index && startPC <= nextPC && startPC + entry.getLength() > nextPC) {
                StringBuffer stringBuffer = new StringBuffer();
                if (showIndex) {
                    stringBuffer.append(' ').append(index);
                }
                stringBuffer.append(' ').append('[').append(entry.getName()).append(']');
                return String.valueOf(stringBuffer);
            }
            ++i;
        }
        if (this.parameterNames != null) {
            if (index == 0 && !this.isStatic) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(' ').append('[').append("this").append(']');
                return String.valueOf(stringBuffer);
            }
            int indexInParameterNames = index;
            if (index != 0) {
                int resolvedPosition = 0;
                if (!this.isStatic) {
                    resolvedPosition = 1;
                }
                int i2 = 0;
                int max2 = this.argumentSizes.length;
                while (i2 < max2) {
                    if (index == resolvedPosition) break;
                    resolvedPosition += this.argumentSizes[i2];
                    ++i2;
                }
                indexInParameterNames = i2;
            }
            if (indexInParameterNames < this.parameterNames.length && this.parameterNames[indexInParameterNames] != null) {
                StringBuffer stringBuffer = new StringBuffer();
                if (showIndex) {
                    stringBuffer.append(' ').append(index);
                }
                stringBuffer.append(' ').append('[').append(this.parameterNames[indexInParameterNames]).append(']');
                return String.valueOf(stringBuffer);
            }
        }
        if (showIndex) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(' ').append(index);
            return String.valueOf(stringBuffer);
        }
        return EMPTY_LOCAL_NAME;
    }

    public void _astore_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[77], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _astore_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[78], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _astore(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[58], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _athrow(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[191]);
        this.writeNewLine();
    }

    public void _baload(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[51]);
        this.writeNewLine();
    }

    public void _bastore(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[84]);
        this.writeNewLine();
    }

    public void _bipush(int pc, byte _byte) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[16]).append(Messages.disassembler_space).append(_byte);
        this.writeNewLine();
    }

    public void _caload(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[52]);
        this.writeNewLine();
    }

    public void _castore(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[85]);
        this.writeNewLine();
    }

    public void _checkcast(int pc, int index, IConstantPoolEntry constantClass) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_checkcast, new String[]{OpcodeStringValues.BYTECODE_NAMES[192], Integer.toString(index), this.returnConstantClassName(constantClass)}));
        this.writeNewLine();
    }

    public void _d2f(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[144]);
        this.writeNewLine();
    }

    public void _d2i(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[142]);
        this.writeNewLine();
    }

    public void _d2l(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[143]);
        this.writeNewLine();
    }

    public void _dadd(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[99]);
        this.writeNewLine();
    }

    public void _daload(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[49]);
        this.writeNewLine();
    }

    public void _dastore(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[82]);
        this.writeNewLine();
    }

    public void _dcmpg(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[152]);
        this.writeNewLine();
    }

    public void _dcmpl(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[151]);
        this.writeNewLine();
    }

    public void _dconst_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[14]);
        this.writeNewLine();
    }

    public void _dconst_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[15]);
        this.writeNewLine();
    }

    public void _ddiv(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[111]);
        this.writeNewLine();
    }

    public void _dload_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[38], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _dload_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[39], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _dload_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[40], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _dload_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[41], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _dload(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[24], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _dmul(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[107]);
        this.writeNewLine();
    }

    public void _dneg(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[119]);
        this.writeNewLine();
    }

    public void _drem(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[115]);
        this.writeNewLine();
    }

    public void _dreturn(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[175]);
        this.writeNewLine();
    }

    public void _dstore_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[71], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _dstore_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[72], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _dstore_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[73], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _dstore_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[74], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _dstore(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[57], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _dsub(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[103]);
        this.writeNewLine();
    }

    public void _dup_x1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[90]);
        this.writeNewLine();
    }

    public void _dup_x2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[91]);
        this.writeNewLine();
    }

    public void _dup(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[89]);
        this.writeNewLine();
    }

    public void _dup2_x1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[93]);
        this.writeNewLine();
    }

    public void _dup2_x2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[94]);
        this.writeNewLine();
    }

    public void _dup2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[92]);
        this.writeNewLine();
    }

    public void _f2d(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[141]);
        this.writeNewLine();
    }

    public void _f2i(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[139]);
        this.writeNewLine();
    }

    public void _f2l(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[140]);
        this.writeNewLine();
    }

    public void _fadd(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[98]);
        this.writeNewLine();
    }

    public void _faload(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[48]);
        this.writeNewLine();
    }

    public void _fastore(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[81]);
        this.writeNewLine();
    }

    public void _fcmpg(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[150]);
        this.writeNewLine();
    }

    public void _fcmpl(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[149]);
        this.writeNewLine();
    }

    public void _fconst_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[11]);
        this.writeNewLine();
    }

    public void _fconst_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[12]);
        this.writeNewLine();
    }

    public void _fconst_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[13]);
        this.writeNewLine();
    }

    public void _fdiv(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[110]);
        this.writeNewLine();
    }

    public void _fload_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[34], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _fload_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[35], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _fload_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[36], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _fload_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[37], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _fload(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[23], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _fmul(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[106]);
        this.writeNewLine();
    }

    public void _fneg(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[118]);
        this.writeNewLine();
    }

    public void _frem(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[114]);
        this.writeNewLine();
    }

    public void _freturn(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[174]);
        this.writeNewLine();
    }

    public void _fstore_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[67], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _fstore_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[68], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _fstore_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[69], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _fstore_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[70], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _fstore(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[56], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _fsub(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[102]);
        this.writeNewLine();
    }

    public void _getfield(int pc, int index, IConstantPoolEntry constantFieldref) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_getfield, new String[]{OpcodeStringValues.BYTECODE_NAMES[180], Integer.toString(index), this.returnDeclaringClassName(constantFieldref), new String(constantFieldref.getFieldName()), this.returnClassName(Signature.toCharArray(constantFieldref.getFieldDescriptor()))}));
        this.writeNewLine();
    }

    public void _getstatic(int pc, int index, IConstantPoolEntry constantFieldref) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_getstatic, new String[]{OpcodeStringValues.BYTECODE_NAMES[178], Integer.toString(index), this.returnDeclaringClassName(constantFieldref), new String(constantFieldref.getFieldName()), this.returnClassName(Signature.toCharArray(constantFieldref.getFieldDescriptor()))}));
        this.writeNewLine();
    }

    public void _goto_w(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[200]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _goto(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[167]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _i2b(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[145]);
        this.writeNewLine();
    }

    public void _i2c(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[146]);
        this.writeNewLine();
    }

    public void _i2d(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[135]);
        this.writeNewLine();
    }

    public void _i2f(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[134]);
        this.writeNewLine();
    }

    public void _i2l(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[133]);
        this.writeNewLine();
    }

    public void _i2s(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[147]);
        this.writeNewLine();
    }

    public void _iadd(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[96]);
        this.writeNewLine();
    }

    public void _iaload(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[46]);
        this.writeNewLine();
    }

    public void _iand(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[126]);
        this.writeNewLine();
    }

    public void _iastore(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[79]);
        this.writeNewLine();
    }

    public void _if_acmpeq(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[165]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _if_acmpne(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[166]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _if_icmpeq(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[159]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _if_icmpge(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[162]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _if_icmpgt(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[163]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _if_icmple(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[164]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _if_icmplt(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[161]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _if_icmpne(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[160]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _iconst_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[3]);
        this.writeNewLine();
    }

    public void _iconst_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[4]);
        this.writeNewLine();
    }

    public void _iconst_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[5]);
        this.writeNewLine();
    }

    public void _iconst_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[6]);
        this.writeNewLine();
    }

    public void _iconst_4(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[7]);
        this.writeNewLine();
    }

    public void _iconst_5(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[8]);
        this.writeNewLine();
    }

    public void _iconst_m1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[2]);
        this.writeNewLine();
    }

    public void _idiv(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[108]);
        this.writeNewLine();
    }

    public void _ifeq(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[153]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _ifge(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[156]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _ifgt(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[157]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _ifle(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[158]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _iflt(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[155]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _ifne(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[154]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _ifnonnull(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[199]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _ifnull(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[198]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _iinc(int pc, int index, int _const) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_iinc, new String[]{OpcodeStringValues.BYTECODE_NAMES[132], Integer.toString(index), Integer.toString(_const), this.getLocalVariableName(pc, index, false)}));
        this.writeNewLine();
    }

    public void _iload_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[26], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _iload_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[27], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _iload_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[28], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _iload_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[29], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _iload(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[21], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _imul(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[104]);
        this.writeNewLine();
    }

    public void _ineg(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[116]);
        this.writeNewLine();
    }

    public void _instanceof(int pc, int index, IConstantPoolEntry constantClass) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_instanceof, new String[]{OpcodeStringValues.BYTECODE_NAMES[193], Integer.toString(index), this.returnConstantClassName(constantClass)}));
        this.writeNewLine();
    }

    public void _invokedynamic(int pc, int index, IConstantPoolEntry nameEntry, IConstantPoolEntry descriptorEntry) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_invokedynamic, new String[]{OpcodeStringValues.BYTECODE_NAMES[186], Integer.toString(index), Util.toString(null, nameEntry.getUtf8Value(), descriptorEntry.getUtf8Value(), true, this.isCompact())}));
        this.writeNewLine();
    }

    public void _invokeinterface(int pc, int index, byte nargs, IConstantPoolEntry constantInterfaceMethodref) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_invokeinterface, new String[]{OpcodeStringValues.BYTECODE_NAMES[185], Integer.toString(index), Integer.toString(nargs), Util.toString(constantInterfaceMethodref.getClassName(), constantInterfaceMethodref.getMethodName(), constantInterfaceMethodref.getMethodDescriptor(), true, this.isCompact())}));
        this.writeNewLine();
    }

    public void _invokespecial(int pc, int index, IConstantPoolEntry constantMethodref) {
        this.dumpPcNumber(pc);
        String signature = this.returnMethodSignature(constantMethodref);
        this.buffer.append(Messages.bind(Messages.classformat_invokespecial, new String[]{OpcodeStringValues.BYTECODE_NAMES[183], Integer.toString(index), signature}));
        this.writeNewLine();
    }

    public void _invokestatic(int pc, int index, IConstantPoolEntry constantMethodref) {
        this.dumpPcNumber(pc);
        String signature = this.returnMethodSignature(constantMethodref);
        this.buffer.append(Messages.bind(Messages.classformat_invokestatic, new String[]{OpcodeStringValues.BYTECODE_NAMES[184], Integer.toString(index), signature}));
        this.writeNewLine();
    }

    public void _invokevirtual(int pc, int index, IConstantPoolEntry constantMethodref) {
        this.dumpPcNumber(pc);
        String signature = this.returnMethodSignature(constantMethodref);
        this.buffer.append(Messages.bind(Messages.classformat_invokevirtual, new String[]{OpcodeStringValues.BYTECODE_NAMES[182], Integer.toString(index), signature}));
        this.writeNewLine();
    }

    public void _ior(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[128]);
        this.writeNewLine();
    }

    public void _irem(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[112]);
        this.writeNewLine();
    }

    public void _ireturn(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[172]);
        this.writeNewLine();
    }

    public void _ishl(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[120]);
        this.writeNewLine();
    }

    public void _ishr(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[122]);
        this.writeNewLine();
    }

    public void _istore_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[59], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _istore_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[60], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _istore_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[61], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _istore_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[62], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _istore(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[54], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _isub(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[100]);
        this.writeNewLine();
    }

    public void _iushr(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[124]);
        this.writeNewLine();
    }

    public void _ixor(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[130]);
        this.writeNewLine();
    }

    public void _jsr_w(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[201]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _jsr(int pc, int branchOffset) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[168]).append(Messages.disassembler_space).append(branchOffset + pc);
        this.writeNewLine();
    }

    public void _l2d(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[138]);
        this.writeNewLine();
    }

    public void _l2f(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[137]);
        this.writeNewLine();
    }

    public void _l2i(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[136]);
        this.writeNewLine();
    }

    public void _ladd(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[97]);
        this.writeNewLine();
    }

    public void _laload(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[47]);
        this.writeNewLine();
    }

    public void _land(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[127]);
        this.writeNewLine();
    }

    public void _lastore(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[80]);
        this.writeNewLine();
    }

    public void _lcmp(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[148]);
        this.writeNewLine();
    }

    public void _lconst_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[9]);
        this.writeNewLine();
    }

    public void _lconst_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[10]);
        this.writeNewLine();
    }

    public void _ldc_w(int pc, int index, IConstantPoolEntry constantPoolEntry) {
        this.dumpPcNumber(pc);
        switch (constantPoolEntry.getKind()) {
            case 4: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc_w_float, new String[]{OpcodeStringValues.BYTECODE_NAMES[19], Integer.toString(index), Float.toString(constantPoolEntry.getFloatValue())}));
                break;
            }
            case 3: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc_w_integer, new String[]{OpcodeStringValues.BYTECODE_NAMES[19], Integer.toString(index), Integer.toString(constantPoolEntry.getIntegerValue())}));
                break;
            }
            case 8: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc_w_string, new String[]{OpcodeStringValues.BYTECODE_NAMES[19], Integer.toString(index), Disassembler.escapeString(constantPoolEntry.getStringValue())}));
                break;
            }
            case 7: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc_w_class, new String[]{OpcodeStringValues.BYTECODE_NAMES[19], Integer.toString(index), this.returnConstantClassName(constantPoolEntry)}));
            }
        }
        this.writeNewLine();
    }

    public void _ldc(int pc, int index, IConstantPoolEntry constantPoolEntry) {
        this.dumpPcNumber(pc);
        switch (constantPoolEntry.getKind()) {
            case 4: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc_w_float, new String[]{OpcodeStringValues.BYTECODE_NAMES[18], Integer.toString(index), Float.toString(constantPoolEntry.getFloatValue())}));
                break;
            }
            case 3: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc_w_integer, new String[]{OpcodeStringValues.BYTECODE_NAMES[18], Integer.toString(index), Integer.toString(constantPoolEntry.getIntegerValue())}));
                break;
            }
            case 8: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc_w_string, new String[]{OpcodeStringValues.BYTECODE_NAMES[18], Integer.toString(index), Disassembler.escapeString(constantPoolEntry.getStringValue())}));
                break;
            }
            case 7: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc_w_class, new String[]{OpcodeStringValues.BYTECODE_NAMES[18], Integer.toString(index), this.returnConstantClassName(constantPoolEntry)}));
            }
        }
        this.writeNewLine();
    }

    public void _ldc2_w(int pc, int index, IConstantPoolEntry constantPoolEntry) {
        this.dumpPcNumber(pc);
        switch (constantPoolEntry.getKind()) {
            case 5: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc2_w_long, new String[]{OpcodeStringValues.BYTECODE_NAMES[20], Integer.toString(index), Long.toString(constantPoolEntry.getLongValue())}));
                break;
            }
            case 6: {
                this.buffer.append(Messages.bind(Messages.classformat_ldc2_w_double, new String[]{OpcodeStringValues.BYTECODE_NAMES[20], Integer.toString(index), Double.toString(constantPoolEntry.getDoubleValue())}));
            }
        }
        this.writeNewLine();
    }

    public void _ldiv(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[109]);
        this.writeNewLine();
    }

    public void _lload_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[30], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _lload_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[31], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _lload_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[32], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _lload_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[33], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _lload(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_load, new String[]{OpcodeStringValues.BYTECODE_NAMES[22], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _lmul(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[105]);
        this.writeNewLine();
    }

    public void _lneg(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[117]);
        this.writeNewLine();
    }

    public void _lookupswitch(int pc, int defaultoffset, int npairs, int[][] offset_pairs) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[171]).append(" default: ").append(defaultoffset + pc);
        this.writeNewLine();
        int i = 0;
        while (i < npairs) {
            this.writeExtraTabs(3);
            this.buffer.append("case ").append(offset_pairs[i][0]).append(": ").append(offset_pairs[i][1] + pc);
            this.writeNewLine();
            ++i;
        }
    }

    public void _lor(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[129]);
        this.writeNewLine();
    }

    public void _lrem(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[113]);
        this.writeNewLine();
    }

    public void _lreturn(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[173]);
        this.writeNewLine();
    }

    public void _lshl(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[121]);
        this.writeNewLine();
    }

    public void _lshr(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[123]);
        this.writeNewLine();
    }

    public void _lstore_0(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[63], this.getLocalVariableName(pc, 0)}));
        this.writeNewLine();
    }

    public void _lstore_1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[64], this.getLocalVariableName(pc, 1)}));
        this.writeNewLine();
    }

    public void _lstore_2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[65], this.getLocalVariableName(pc, 2)}));
        this.writeNewLine();
    }

    public void _lstore_3(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[66], this.getLocalVariableName(pc, 3)}));
        this.writeNewLine();
    }

    public void _lstore(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_store, new String[]{OpcodeStringValues.BYTECODE_NAMES[55], this.getLocalVariableName(pc, index, true)}));
        this.writeNewLine();
    }

    public void _lsub(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[101]);
        this.writeNewLine();
    }

    public void _lushr(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[125]);
        this.writeNewLine();
    }

    public void _lxor(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[131]);
        this.writeNewLine();
    }

    public void _monitorenter(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[194]);
        this.writeNewLine();
    }

    public void _monitorexit(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[195]);
        this.writeNewLine();
    }

    public void _multianewarray(int pc, int index, int dimensions, IConstantPoolEntry constantClass) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_multianewarray, new String[]{OpcodeStringValues.BYTECODE_NAMES[197], Integer.toString(index), this.returnConstantClassName(constantClass)}));
        this.writeNewLine();
    }

    public void _new(int pc, int index, IConstantPoolEntry constantClass) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_new, new String[]{OpcodeStringValues.BYTECODE_NAMES[187], Integer.toString(index), this.returnConstantClassName(constantClass)}));
        this.writeNewLine();
    }

    public void _newarray(int pc, int atype) {
        this.dumpPcNumber(pc);
        switch (atype) {
            case 4: {
                this.buffer.append(Messages.bind(Messages.classformat_newarray_boolean, new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(atype)}));
                break;
            }
            case 5: {
                this.buffer.append(Messages.bind(Messages.classformat_newarray_char, new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(atype)}));
                break;
            }
            case 6: {
                this.buffer.append(Messages.bind(Messages.classformat_newarray_float, new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(atype)}));
                break;
            }
            case 7: {
                this.buffer.append(Messages.bind(Messages.classformat_newarray_double, new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(atype)}));
                break;
            }
            case 8: {
                this.buffer.append(Messages.bind(Messages.classformat_newarray_byte, new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(atype)}));
                break;
            }
            case 9: {
                this.buffer.append(Messages.bind(Messages.classformat_newarray_short, new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(atype)}));
                break;
            }
            case 10: {
                this.buffer.append(Messages.bind(Messages.classformat_newarray_int, new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(atype)}));
                break;
            }
            case 11: {
                this.buffer.append(Messages.bind(Messages.classformat_newarray_long, new String[]{OpcodeStringValues.BYTECODE_NAMES[188], Integer.toString(atype)}));
            }
        }
        this.writeNewLine();
    }

    public void _nop(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[0]);
        this.writeNewLine();
    }

    public void _pop(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[87]);
        this.writeNewLine();
    }

    public void _pop2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[88]);
        this.writeNewLine();
    }

    public void _putfield(int pc, int index, IConstantPoolEntry constantFieldref) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_putfield, new String[]{OpcodeStringValues.BYTECODE_NAMES[181], Integer.toString(index), this.returnDeclaringClassName(constantFieldref), new String(constantFieldref.getFieldName()), this.returnClassName(Signature.toCharArray(constantFieldref.getFieldDescriptor()))}));
        this.writeNewLine();
    }

    public void _putstatic(int pc, int index, IConstantPoolEntry constantFieldref) {
        this.dumpPcNumber(pc);
        this.buffer.append(Messages.bind(Messages.classformat_putstatic, new String[]{OpcodeStringValues.BYTECODE_NAMES[179], Integer.toString(index), this.returnDeclaringClassName(constantFieldref), new String(constantFieldref.getFieldName()), this.returnClassName(Signature.toCharArray(constantFieldref.getFieldDescriptor()))}));
        this.writeNewLine();
    }

    public void _ret(int pc, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[169]).append(Messages.disassembler_space).append(index);
        this.writeNewLine();
    }

    public void _return(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[177]);
        this.writeNewLine();
    }

    public void _saload(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[53]);
        this.writeNewLine();
    }

    public void _sastore(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[86]);
        this.writeNewLine();
    }

    public void _sipush(int pc, short value) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[17]).append(Messages.disassembler_space).append(value);
        this.writeNewLine();
    }

    public void _swap(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[95]);
        this.writeNewLine();
    }

    public void _tableswitch(int pc, int defaultoffset, int low, int high, int[] jump_offsets) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[170]).append(" default: ").append(defaultoffset + pc);
        this.writeNewLine();
        int i = low;
        while (i < high + 1) {
            this.writeExtraTabs(3);
            this.buffer.append("case ").append(i).append(": ").append(jump_offsets[i - low] + pc);
            this.writeNewLine();
            ++i;
        }
    }

    public void _wide(int pc, int iincopcode, int index, int _const) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[196]);
        this.writeNewLine();
        this._iinc(pc + 1, index, _const);
    }

    public void _wide(int pc, int opcode, int index) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[196]);
        this.writeNewLine();
        switch (opcode) {
            case 21: {
                this._iload(pc + 1, index);
                break;
            }
            case 23: {
                this._fload(pc + 1, index);
                break;
            }
            case 25: {
                this._aload(pc + 1, index);
                break;
            }
            case 22: {
                this._lload(pc + 1, index);
                break;
            }
            case 24: {
                this._dload(pc + 1, index);
                break;
            }
            case 54: {
                this._istore(pc + 1, index);
                break;
            }
            case 56: {
                this._fstore(pc + 1, index);
                break;
            }
            case 58: {
                this._astore(pc + 1, index);
                break;
            }
            case 55: {
                this._lstore(pc + 1, index);
                break;
            }
            case 57: {
                this._dstore(pc + 1, index);
                break;
            }
            case 169: {
                this._ret(pc + 1, index);
            }
        }
    }

    public void _breakpoint(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[202]);
        this.writeNewLine();
    }

    public void _impdep1(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[254]);
        this.writeNewLine();
    }

    public void _impdep2(int pc) {
        this.dumpPcNumber(pc);
        this.buffer.append(OpcodeStringValues.BYTECODE_NAMES[255]);
        this.writeNewLine();
    }

    private boolean isCompact() {
        return (this.mode & 8) != 0;
    }

    private String returnConstantClassName(IConstantPoolEntry constantClass) {
        char[] className = constantClass.getClassInfoName();
        if (className.length == 0) {
            return EMPTY_CLASS_NAME;
        }
        switch (className[0]) {
            case '[': {
                StringBuffer classNameBuffer = new StringBuffer();
                Util.appendTypeSignature(className, 0, classNameBuffer, this.isCompact());
                return classNameBuffer.toString();
            }
        }
        return this.returnClassName(className);
    }

    private String returnClassName(char[] classInfoName) {
        int lastIndexOfSlash;
        if (classInfoName.length == 0) {
            return EMPTY_CLASS_NAME;
        }
        if (this.isCompact() && (lastIndexOfSlash = CharOperation.lastIndexOf('/', classInfoName)) != -1) {
            return new String(classInfoName, lastIndexOfSlash + 1, classInfoName.length - lastIndexOfSlash - 1);
        }
        CharOperation.replace(classInfoName, '/', '.');
        return new String(classInfoName);
    }

    private String returnDeclaringClassName(IConstantPoolEntry constantRef) {
        char[] className = constantRef.getClassName();
        return this.returnClassName(className);
    }

    private String returnMethodSignature(IConstantPoolEntry constantMethodref) {
        char[] methodDescriptor = constantMethodref.getMethodDescriptor();
        CharOperation.replace(methodDescriptor, '$', '#');
        char[] signature = Util.toString(constantMethodref.getClassName(), constantMethodref.getMethodName(), methodDescriptor, true, this.isCompact()).toCharArray();
        CharOperation.replace(signature, '#', '$');
        return String.valueOf(signature);
    }

    private void writeNewLine() {
        this.buffer.append(this.lineSeparator);
    }

    private void writeTabs() {
        int i = 0;
        int max = this.tabNumber;
        while (i < max) {
            this.buffer.append(Messages.disassembler_indentation);
            ++i;
        }
    }

    private void writeExtraTabs(int extraTabs) {
        int i = 0;
        int max = this.tabNumber + extraTabs;
        while (i < max) {
            this.buffer.append(Messages.disassembler_indentation);
            ++i;
        }
    }
}

