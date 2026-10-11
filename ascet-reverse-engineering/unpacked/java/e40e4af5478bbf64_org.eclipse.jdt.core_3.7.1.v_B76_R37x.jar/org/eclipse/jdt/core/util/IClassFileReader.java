/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.util;

import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IFieldInfo;
import org.eclipse.jdt.core.util.IInnerClassesAttribute;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.core.util.ISourceAttribute;

public interface IClassFileReader {
    public static final int ALL = 65535;
    public static final int CONSTANT_POOL = 1;
    public static final int METHOD_INFOS = 3;
    public static final int FIELD_INFOS = 5;
    public static final int SUPER_INTERFACES = 9;
    public static final int CLASSFILE_ATTRIBUTES = 17;
    public static final int METHOD_BODIES = 32;
    public static final int ALL_BUT_METHOD_BODIES = 65503;

    public int getAccessFlags();

    public IFieldInfo[] getFieldInfos();

    public char[][] getInterfaceNames();

    public int[] getInterfaceIndexes();

    public IInnerClassesAttribute getInnerClassesAttribute();

    public IMethodInfo[] getMethodInfos();

    public char[] getClassName();

    public int getClassIndex();

    public char[] getSuperclassName();

    public int getSuperclassIndex();

    public boolean isClass();

    public boolean isInterface();

    public ISourceAttribute getSourceFileAttribute();

    public IConstantPool getConstantPool();

    public int getMinorVersion();

    public int getMajorVersion();

    public int getAttributeCount();

    public IClassFileAttribute[] getAttributes();

    public int getMagic();

    public int getFieldsCount();

    public int getMethodsCount();
}

