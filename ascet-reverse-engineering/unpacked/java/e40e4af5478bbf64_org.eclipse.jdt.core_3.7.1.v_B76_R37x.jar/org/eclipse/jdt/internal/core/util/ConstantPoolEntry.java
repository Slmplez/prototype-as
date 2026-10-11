/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.IConstantPoolEntry;

public class ConstantPoolEntry
implements IConstantPoolEntry {
    private int kind;
    private int classInfoNameIndex = -1;
    private int classIndex = -1;
    private int nameAndTypeIndex = -1;
    private int stringIndex = -1;
    private char[] stringValue = null;
    private int integerValue = -1;
    private float floatValue = -0.0f;
    private double doubleValue = 0.0;
    private long longValue = -1L;
    private int nameAndTypeDescriptorIndex = -1;
    private int nameAndTypeNameIndex = -1;
    private char[] className = null;
    private char[] fieldName = null;
    private char[] methodName = null;
    private char[] fieldDescriptor = null;
    private char[] methodDescriptor = null;
    private char[] utf8Value = null;
    private int utf8Length = -1;
    private char[] classInfoName = null;

    public int getKind() {
        return this.kind;
    }

    public void setKind(int kind) {
        this.kind = kind;
    }

    public int getClassInfoNameIndex() {
        return this.classInfoNameIndex;
    }

    public int getClassIndex() {
        return this.classIndex;
    }

    public int getNameAndTypeIndex() {
        return this.nameAndTypeIndex;
    }

    public int getStringIndex() {
        return this.stringIndex;
    }

    public String getStringValue() {
        return new String(this.stringValue);
    }

    public int getIntegerValue() {
        return this.integerValue;
    }

    public float getFloatValue() {
        return this.floatValue;
    }

    public double getDoubleValue() {
        return this.doubleValue;
    }

    public long getLongValue() {
        return this.longValue;
    }

    public int getNameAndTypeInfoDescriptorIndex() {
        return this.nameAndTypeDescriptorIndex;
    }

    public int getNameAndTypeInfoNameIndex() {
        return this.nameAndTypeNameIndex;
    }

    public char[] getClassName() {
        return this.className;
    }

    public char[] getFieldName() {
        return this.fieldName;
    }

    public char[] getMethodName() {
        return this.methodName;
    }

    public char[] getFieldDescriptor() {
        return this.fieldDescriptor;
    }

    public char[] getMethodDescriptor() {
        return this.methodDescriptor;
    }

    public char[] getUtf8Value() {
        return this.utf8Value;
    }

    public char[] getClassInfoName() {
        return this.classInfoName;
    }

    public void setClassInfoNameIndex(int classInfoNameIndex) {
        this.classInfoNameIndex = classInfoNameIndex;
    }

    public void setClassIndex(int classIndex) {
        this.classIndex = classIndex;
    }

    public void setNameAndTypeIndex(int nameAndTypeIndex) {
        this.nameAndTypeIndex = nameAndTypeIndex;
    }

    public void setStringIndex(int stringIndex) {
        this.stringIndex = stringIndex;
    }

    public void setStringValue(char[] stringValue) {
        this.stringValue = stringValue;
    }

    public void setIntegerValue(int integerValue) {
        this.integerValue = integerValue;
    }

    public void setFloatValue(float floatValue) {
        this.floatValue = floatValue;
    }

    public void setDoubleValue(double doubleValue) {
        this.doubleValue = doubleValue;
    }

    public void setLongValue(long longValue) {
        this.longValue = longValue;
    }

    public int getNameAndTypeDescriptorIndex() {
        return this.nameAndTypeDescriptorIndex;
    }

    public void setNameAndTypeDescriptorIndex(int nameAndTypeDescriptorIndex) {
        this.nameAndTypeDescriptorIndex = nameAndTypeDescriptorIndex;
    }

    public int getNameAndTypeNameIndex() {
        return this.nameAndTypeNameIndex;
    }

    public void setNameAndTypeNameIndex(int nameAndTypeNameIndex) {
        this.nameAndTypeNameIndex = nameAndTypeNameIndex;
    }

    public void setClassName(char[] className) {
        this.className = className;
    }

    public void setFieldName(char[] fieldName) {
        this.fieldName = fieldName;
    }

    public void setMethodName(char[] methodName) {
        this.methodName = methodName;
    }

    public void setFieldDescriptor(char[] fieldDescriptor) {
        this.fieldDescriptor = fieldDescriptor;
    }

    public void setMethodDescriptor(char[] methodDescriptor) {
        this.methodDescriptor = methodDescriptor;
    }

    public void setUtf8Value(char[] utf8Value) {
        this.utf8Value = utf8Value;
    }

    public void setClassInfoName(char[] classInfoName) {
        this.classInfoName = classInfoName;
    }

    public int getUtf8Length() {
        return this.utf8Length;
    }

    public void setUtf8Length(int utf8Length) {
        this.utf8Length = utf8Length;
    }

    public void reset() {
        this.kind = 0;
        this.classInfoNameIndex = 0;
        this.classIndex = 0;
        this.nameAndTypeIndex = 0;
        this.stringIndex = 0;
        this.stringValue = null;
        this.integerValue = 0;
        this.floatValue = 0.0f;
        this.doubleValue = 0.0;
        this.longValue = 0L;
        this.nameAndTypeDescriptorIndex = 0;
        this.nameAndTypeNameIndex = 0;
        this.className = null;
        this.fieldName = null;
        this.methodName = null;
        this.fieldDescriptor = null;
        this.methodDescriptor = null;
        this.utf8Value = null;
        this.utf8Length = 0;
        this.classInfoName = null;
    }
}

