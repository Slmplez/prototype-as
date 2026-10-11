/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.env.ISourceField;
import org.eclipse.jdt.internal.compiler.env.ISourceImport;
import org.eclipse.jdt.internal.compiler.env.ISourceMethod;
import org.eclipse.jdt.internal.compiler.env.ISourceType;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.Initializer;
import org.eclipse.jdt.internal.core.InitializerElementInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SourceField;
import org.eclipse.jdt.internal.core.SourceMethod;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.TypeParameterElementInfo;

public class SourceTypeElementInfo
extends AnnotatableInfo
implements ISourceType {
    protected static final ISourceImport[] NO_IMPORTS = new ISourceImport[0];
    protected static final InitializerElementInfo[] NO_INITIALIZERS = new InitializerElementInfo[0];
    protected static final SourceField[] NO_FIELDS = new SourceField[0];
    protected static final SourceMethod[] NO_METHODS = new SourceMethod[0];
    protected static final SourceType[] NO_TYPES = new SourceType[0];
    protected IJavaElement[] children = JavaElement.NO_ELEMENTS;
    protected char[] superclassName;
    protected char[][] superInterfaceNames;
    protected IType handle = null;
    protected ITypeParameter[] typeParameters = TypeParameter.NO_TYPE_PARAMETERS;
    protected HashMap categories;

    protected void addCategories(IJavaElement element, char[][] elementCategories) {
        if (elementCategories == null) {
            return;
        }
        if (this.categories == null) {
            this.categories = new HashMap();
        }
        this.categories.put(element, CharOperation.toStrings(elementCategories));
    }

    public HashMap getCategories() {
        return this.categories;
    }

    public IJavaElement[] getChildren() {
        return this.children;
    }

    public ISourceType getEnclosingType() {
        IJavaElement parent = this.handle.getParent();
        if (parent != null && parent.getElementType() == 7) {
            try {
                return (ISourceType)((JavaElement)parent).getElementInfo();
            }
            catch (JavaModelException javaModelException) {
                return null;
            }
        }
        return null;
    }

    public ISourceField[] getFields() {
        SourceField[] fieldHandles = this.getFieldHandles();
        int length = fieldHandles.length;
        ISourceField[] fields = new ISourceField[length];
        int i = 0;
        while (i < length) {
            try {
                ISourceField field;
                fields[i] = field = (ISourceField)fieldHandles[i].getElementInfo();
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        return fields;
    }

    public SourceField[] getFieldHandles() {
        int length = this.children.length;
        if (length == 0) {
            return NO_FIELDS;
        }
        SourceField[] fields = new SourceField[length];
        int fieldIndex = 0;
        int i = 0;
        while (i < length) {
            IJavaElement child = this.children[i];
            if (child instanceof SourceField) {
                fields[fieldIndex++] = (SourceField)child;
            }
            ++i;
        }
        if (fieldIndex == 0) {
            return NO_FIELDS;
        }
        if (fieldIndex < length) {
            SourceField[] sourceFieldArray = fields;
            fields = new SourceField[fieldIndex];
            System.arraycopy(sourceFieldArray, 0, fields, 0, fieldIndex);
        }
        return fields;
    }

    public char[] getFileName() {
        return this.handle.getPath().toString().toCharArray();
    }

    public IType getHandle() {
        return this.handle;
    }

    public InitializerElementInfo[] getInitializers() {
        int length = this.children.length;
        if (length == 0) {
            return NO_INITIALIZERS;
        }
        InitializerElementInfo[] initializers = new InitializerElementInfo[length];
        int initializerIndex = 0;
        int i = 0;
        while (i < length) {
            IJavaElement child = this.children[i];
            if (child instanceof Initializer) {
                try {
                    InitializerElementInfo initializer = (InitializerElementInfo)((Initializer)child).getElementInfo();
                    initializers[initializerIndex++] = initializer;
                }
                catch (JavaModelException javaModelException) {}
            }
            ++i;
        }
        if (initializerIndex == 0) {
            return NO_INITIALIZERS;
        }
        InitializerElementInfo[] initializerElementInfoArray = initializers;
        initializers = new InitializerElementInfo[initializerIndex];
        System.arraycopy(initializerElementInfoArray, 0, initializers, 0, initializerIndex);
        return initializers;
    }

    public char[][] getInterfaceNames() {
        if (this.handle.getElementName().length() == 0) {
            return null;
        }
        return this.superInterfaceNames;
    }

    public ISourceType[] getMemberTypes() {
        SourceType[] memberTypeHandles = this.getMemberTypeHandles();
        int length = memberTypeHandles.length;
        ISourceType[] memberTypes = new ISourceType[length];
        int i = 0;
        while (i < length) {
            try {
                ISourceType type;
                memberTypes[i] = type = (ISourceType)memberTypeHandles[i].getElementInfo();
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        return memberTypes;
    }

    public SourceType[] getMemberTypeHandles() {
        int length = this.children.length;
        if (length == 0) {
            return NO_TYPES;
        }
        SourceType[] memberTypes = new SourceType[length];
        int typeIndex = 0;
        int i = 0;
        while (i < length) {
            IJavaElement child = this.children[i];
            if (child instanceof SourceType) {
                memberTypes[typeIndex++] = (SourceType)child;
            }
            ++i;
        }
        if (typeIndex == 0) {
            return NO_TYPES;
        }
        if (typeIndex < length) {
            SourceType[] sourceTypeArray = memberTypes;
            memberTypes = new SourceType[typeIndex];
            System.arraycopy(sourceTypeArray, 0, memberTypes, 0, typeIndex);
        }
        return memberTypes;
    }

    public ISourceMethod[] getMethods() {
        SourceMethod[] methodHandles = this.getMethodHandles();
        int length = methodHandles.length;
        ISourceMethod[] methods = new ISourceMethod[length];
        int methodIndex = 0;
        int i = 0;
        while (i < length) {
            try {
                ISourceMethod method = (ISourceMethod)methodHandles[i].getElementInfo();
                methods[methodIndex++] = method;
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        return methods;
    }

    public SourceMethod[] getMethodHandles() {
        int length = this.children.length;
        if (length == 0) {
            return NO_METHODS;
        }
        SourceMethod[] methods = new SourceMethod[length];
        int methodIndex = 0;
        int i = 0;
        while (i < length) {
            IJavaElement child = this.children[i];
            if (child instanceof SourceMethod) {
                methods[methodIndex++] = (SourceMethod)child;
            }
            ++i;
        }
        if (methodIndex == 0) {
            return NO_METHODS;
        }
        if (methodIndex < length) {
            SourceMethod[] sourceMethodArray = methods;
            methods = new SourceMethod[methodIndex];
            System.arraycopy(sourceMethodArray, 0, methods, 0, methodIndex);
        }
        return methods;
    }

    public char[] getName() {
        return this.handle.getElementName().toCharArray();
    }

    public char[] getSuperclassName() {
        char[][] interfaceNames;
        if (this.handle.getElementName().length() == 0 && (interfaceNames = this.superInterfaceNames) != null && interfaceNames.length > 0) {
            return interfaceNames[0];
        }
        return this.superclassName;
    }

    public char[][][] getTypeParameterBounds() {
        int length = this.typeParameters.length;
        char[][][] typeParameterBounds = new char[length][][];
        int i = 0;
        while (i < length) {
            try {
                TypeParameterElementInfo info = (TypeParameterElementInfo)((JavaElement)((Object)this.typeParameters[i])).getElementInfo();
                typeParameterBounds[i] = info.bounds;
            }
            catch (JavaModelException javaModelException) {}
            ++i;
        }
        return typeParameterBounds;
    }

    public char[][] getTypeParameterNames() {
        int length = this.typeParameters.length;
        if (length == 0) {
            return CharOperation.NO_CHAR_CHAR;
        }
        char[][] typeParameterNames = new char[length][];
        int i = 0;
        while (i < length) {
            typeParameterNames[i] = this.typeParameters[i].getElementName().toCharArray();
            ++i;
        }
        return typeParameterNames;
    }

    public boolean isBinaryType() {
        return false;
    }

    public boolean isAnonymousMember() {
        return false;
    }

    protected void setHandle(IType handle) {
        this.handle = handle;
    }

    protected void setSuperclassName(char[] superclassName) {
        this.superclassName = superclassName;
    }

    protected void setSuperInterfaceNames(char[][] superInterfaceNames) {
        this.superInterfaceNames = superInterfaceNames;
    }

    public String toString() {
        return "Info for " + this.handle.toString();
    }
}

