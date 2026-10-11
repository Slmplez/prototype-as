/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ILocalVariable;
import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.CompilationUnitStructureRequestor;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.NamedMember;
import org.eclipse.jdt.internal.core.ResolvedSourceMethod;
import org.eclipse.jdt.internal.core.SourceAnnotationMethodInfo;
import org.eclipse.jdt.internal.core.SourceMethodElementInfo;
import org.eclipse.jdt.internal.core.TypeParameter;
import org.eclipse.jdt.internal.core.TypeParameterElementInfo;
import org.eclipse.jdt.internal.core.util.Util;

public class SourceMethod
extends NamedMember
implements IMethod {
    protected String[] parameterTypes;

    protected SourceMethod(JavaElement parent, String name, String[] parameterTypes) {
        super(parent, name);
        this.parameterTypes = parameterTypes == null ? CharOperation.NO_STRINGS : parameterTypes;
    }

    protected void closing(Object info) throws JavaModelException {
        super.closing(info);
        SourceMethodElementInfo elementInfo = (SourceMethodElementInfo)info;
        ITypeParameter[] typeParameters = elementInfo.typeParameters;
        int i = 0;
        int length = typeParameters.length;
        while (i < length) {
            ((TypeParameter)typeParameters[i]).close();
            ++i;
        }
    }

    public boolean equals(Object o) {
        if (!(o instanceof SourceMethod)) {
            return false;
        }
        return super.equals(o) && Util.equalArraysOrNull(this.parameterTypes, ((SourceMethod)o).parameterTypes);
    }

    public IMemberValuePair getDefaultValue() throws JavaModelException {
        SourceMethodElementInfo sourceMethodInfo = (SourceMethodElementInfo)this.getElementInfo();
        if (sourceMethodInfo.isAnnotationMethod()) {
            return ((SourceAnnotationMethodInfo)sourceMethodInfo).defaultValue;
        }
        return null;
    }

    public int getElementType() {
        return 9;
    }

    public String[] getExceptionTypes() throws JavaModelException {
        SourceMethodElementInfo info = (SourceMethodElementInfo)this.getElementInfo();
        char[][] exs = info.getExceptionTypeNames();
        return CompilationUnitStructureRequestor.convertTypeNamesToSigs(exs);
    }

    protected void getHandleMemento(StringBuffer buff) {
        ((JavaElement)this.getParent()).getHandleMemento(buff);
        char delimiter = this.getHandleMementoDelimiter();
        buff.append(delimiter);
        this.escapeMementoName(buff, this.getElementName());
        int i = 0;
        while (i < this.parameterTypes.length) {
            buff.append(delimiter);
            this.escapeMementoName(buff, this.parameterTypes[i]);
            ++i;
        }
        if (this.occurrenceCount > 1) {
            buff.append('!');
            buff.append(this.occurrenceCount);
        }
    }

    protected char getHandleMementoDelimiter() {
        return '~';
    }

    public String getKey() {
        try {
            return this.getKey(this, false);
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    public int getNumberOfParameters() {
        return this.parameterTypes == null ? 0 : this.parameterTypes.length;
    }

    public String[] getParameterNames() throws JavaModelException {
        SourceMethodElementInfo info = (SourceMethodElementInfo)this.getElementInfo();
        char[][] names = info.getArgumentNames();
        return CharOperation.toStrings(names);
    }

    public String[] getParameterTypes() {
        return this.parameterTypes;
    }

    public ITypeParameter getTypeParameter(String typeParameterName) {
        return new TypeParameter(this, typeParameterName);
    }

    public ITypeParameter[] getTypeParameters() throws JavaModelException {
        SourceMethodElementInfo info = (SourceMethodElementInfo)this.getElementInfo();
        return info.typeParameters;
    }

    public ILocalVariable[] getParameters() throws JavaModelException {
        ILocalVariable[] arguments = ((SourceMethodElementInfo)this.getElementInfo()).arguments;
        if (arguments == null) {
            return LocalVariable.NO_LOCAL_VARIABLES;
        }
        return arguments;
    }

    public String[] getTypeParameterSignatures() throws JavaModelException {
        ITypeParameter[] typeParameters = this.getTypeParameters();
        int length = typeParameters.length;
        String[] typeParameterSignatures = new String[length];
        int i = 0;
        while (i < length) {
            TypeParameter typeParameter = (TypeParameter)typeParameters[i];
            TypeParameterElementInfo info = (TypeParameterElementInfo)typeParameter.getElementInfo();
            char[][] bounds = info.bounds;
            if (bounds == null) {
                typeParameterSignatures[i] = Signature.createTypeParameterSignature(typeParameter.getElementName(), CharOperation.NO_STRINGS);
            } else {
                int boundsLength = bounds.length;
                char[][] boundSignatures = new char[boundsLength][];
                int j = 0;
                while (j < boundsLength) {
                    boundSignatures[j] = Signature.createCharArrayTypeSignature(bounds[j], false);
                    ++j;
                }
                typeParameterSignatures[i] = new String(Signature.createTypeParameterSignature(typeParameter.getElementName().toCharArray(), boundSignatures));
            }
            ++i;
        }
        return typeParameterSignatures;
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        CompilationUnit cu;
        if (checkOwner && (cu = (CompilationUnit)this.getAncestor(5)).isPrimary()) {
            return this;
        }
        IJavaElement primaryParent = this.parent.getPrimaryElement(false);
        return ((IType)primaryParent).getMethod(this.name, this.parameterTypes);
    }

    public String[] getRawParameterNames() throws JavaModelException {
        return this.getParameterNames();
    }

    public String getReturnType() throws JavaModelException {
        SourceMethodElementInfo info = (SourceMethodElementInfo)this.getElementInfo();
        return Signature.createTypeSignature(info.getReturnTypeName(), false);
    }

    public String getSignature() throws JavaModelException {
        SourceMethodElementInfo info = (SourceMethodElementInfo)this.getElementInfo();
        return Signature.createMethodSignature(this.parameterTypes, Signature.createTypeSignature(info.getReturnTypeName(), false));
    }

    public int hashCode() {
        int hash = super.hashCode();
        int i = 0;
        int length = this.parameterTypes.length;
        while (i < length) {
            hash = Util.combineHashCodes(hash, this.parameterTypes[i].hashCode());
            ++i;
        }
        return hash;
    }

    public boolean isConstructor() throws JavaModelException {
        if (!this.getElementName().equals(this.parent.getElementName())) {
            return false;
        }
        SourceMethodElementInfo info = (SourceMethodElementInfo)this.getElementInfo();
        return info.isConstructor();
    }

    public boolean isMainMethod() throws JavaModelException {
        return this.isMainMethod(this);
    }

    public boolean isResolved() {
        return false;
    }

    public boolean isSimilar(IMethod method) {
        return SourceMethod.areSimilarMethods(this.getElementName(), this.getParameterTypes(), method.getElementName(), method.getParameterTypes(), null);
    }

    public String readableName() {
        int length;
        StringBuffer buffer = new StringBuffer(super.readableName());
        buffer.append('(');
        if (this.parameterTypes != null && (length = this.parameterTypes.length) > 0) {
            int i = 0;
            while (i < length) {
                buffer.append(Signature.toString(this.parameterTypes[i]));
                if (i < length - 1) {
                    buffer.append(", ");
                }
                ++i;
            }
        }
        buffer.append(')');
        return buffer.toString();
    }

    public JavaElement resolved(Binding binding) {
        ResolvedSourceMethod resolvedHandle = new ResolvedSourceMethod(this.parent, this.name, this.parameterTypes, new String(binding.computeUniqueKey()));
        resolvedHandle.occurrenceCount = this.occurrenceCount;
        return resolvedHandle;
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        if (info == null) {
            this.toStringName(buffer);
            buffer.append(" (not open)");
        } else if (info == NO_INFO) {
            this.toStringName(buffer);
        } else {
            SourceMethodElementInfo methodInfo = (SourceMethodElementInfo)info;
            int flags = methodInfo.getModifiers();
            if (Flags.isStatic(flags)) {
                buffer.append("static ");
            }
            if (!methodInfo.isConstructor()) {
                buffer.append(methodInfo.getReturnTypeName());
                buffer.append(' ');
            }
            this.toStringName(buffer, flags);
        }
    }

    protected void toStringName(StringBuffer buffer) {
        this.toStringName(buffer, 0);
    }

    protected void toStringName(StringBuffer buffer, int flags) {
        int length;
        buffer.append(this.getElementName());
        buffer.append('(');
        String[] parameters = this.getParameterTypes();
        if (parameters != null && (length = parameters.length) > 0) {
            boolean isVarargs = Flags.isVarargs(flags);
            int i = 0;
            while (i < length) {
                try {
                    if (i < length - 1) {
                        buffer.append(Signature.toString(parameters[i]));
                        buffer.append(", ");
                    } else if (isVarargs) {
                        String parameter = parameters[i].substring(1);
                        buffer.append(Signature.toString(parameter));
                        buffer.append(" ...");
                    } else {
                        buffer.append(Signature.toString(parameters[i]));
                    }
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    buffer.append("*** invalid signature: ");
                    buffer.append(parameters[i]);
                }
                ++i;
            }
        }
        buffer.append(')');
        if (this.occurrenceCount > 1) {
            buffer.append("#");
            buffer.append(this.occurrenceCount);
        }
    }
}

