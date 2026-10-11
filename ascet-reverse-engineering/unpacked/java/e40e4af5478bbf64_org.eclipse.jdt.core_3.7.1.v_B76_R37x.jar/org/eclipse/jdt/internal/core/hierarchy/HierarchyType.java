/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.hierarchy;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.internal.compiler.env.IGenericType;

public class HierarchyType
implements IGenericType {
    public IType typeHandle;
    public char[] name;
    public int modifiers;
    public char[] superclassName;
    public char[][] superInterfaceNames;

    public HierarchyType(IType typeHandle, char[] name, int modifiers, char[] superclassName, char[][] superInterfaceNames) {
        this.typeHandle = typeHandle;
        this.name = name;
        this.modifiers = modifiers;
        this.superclassName = superclassName;
        this.superInterfaceNames = superInterfaceNames;
    }

    public char[] getFileName() {
        return this.typeHandle.getCompilationUnit().getElementName().toCharArray();
    }

    public int getModifiers() {
        return this.modifiers;
    }

    public boolean isBinaryType() {
        return false;
    }
}

