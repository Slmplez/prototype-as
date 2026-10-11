/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SourceMapper;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.TypeParameterElementInfo;

public class TypeParameter
extends SourceRefElement
implements ITypeParameter {
    static final ITypeParameter[] NO_TYPE_PARAMETERS = new ITypeParameter[0];
    protected String name;

    public TypeParameter(JavaElement parent, String name) {
        super(parent);
        this.name = name;
    }

    public boolean equals(Object o) {
        if (!(o instanceof TypeParameter)) {
            return false;
        }
        return super.equals(o);
    }

    public String[] getBounds() throws JavaModelException {
        TypeParameterElementInfo info = (TypeParameterElementInfo)this.getElementInfo();
        return CharOperation.toStrings(info.bounds);
    }

    public String[] getBoundsSignatures() throws JavaModelException {
        String[] boundSignatures = null;
        TypeParameterElementInfo info = (TypeParameterElementInfo)this.getElementInfo();
        if (this.parent instanceof BinaryMember) {
            char[][] boundsSignatures = info.boundsSignatures;
            if (boundsSignatures == null || boundsSignatures.length == 0) {
                return CharOperation.NO_STRINGS;
            }
            return CharOperation.toStrings(info.boundsSignatures);
        }
        char[][] bounds = info.bounds;
        if (bounds == null || bounds.length == 0) {
            return CharOperation.NO_STRINGS;
        }
        int boundsLength = bounds.length;
        boundSignatures = new String[boundsLength];
        int i = 0;
        while (i < boundsLength) {
            boundSignatures[i] = new String(Signature.createCharArrayTypeSignature(bounds[i], false));
            ++i;
        }
        return boundSignatures;
    }

    public IMember getDeclaringMember() {
        return (IMember)this.getParent();
    }

    public String getElementName() {
        return this.name;
    }

    public int getElementType() {
        return 15;
    }

    protected char getHandleMementoDelimiter() {
        return ']';
    }

    public ISourceRange getNameRange() throws JavaModelException {
        ClassFile classFile;
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null && (classFile = (ClassFile)this.getClassFile()) != null) {
            classFile.getBuffer();
            return mapper.getNameRange(this);
        }
        TypeParameterElementInfo info = (TypeParameterElementInfo)this.getElementInfo();
        return new SourceRange(info.nameStart, info.nameEnd - info.nameStart + 1);
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        ClassFile classFile;
        SourceMapper mapper = this.getSourceMapper();
        if (mapper != null && (classFile = (ClassFile)this.getClassFile()) != null) {
            classFile.getBuffer();
            return mapper.getSourceRange(this);
        }
        return super.getSourceRange();
    }

    public IClassFile getClassFile() {
        return ((JavaElement)this.getParent()).getClassFile();
    }

    public ITypeRoot getTypeRoot() {
        return this.getDeclaringMember().getTypeRoot();
    }

    protected void toStringName(StringBuffer buffer) {
        buffer.append('<');
        buffer.append(this.getElementName());
        buffer.append('>');
    }
}

