/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.BinaryMember;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavadocContents;
import org.eclipse.jdt.internal.core.ResolvedBinaryField;

class BinaryField
extends BinaryMember
implements IField {
    protected BinaryField(JavaElement parent, String name) {
        super(parent, name);
    }

    public boolean equals(Object o) {
        if (!(o instanceof BinaryField)) {
            return false;
        }
        return super.equals(o);
    }

    public IAnnotation[] getAnnotations() throws JavaModelException {
        IBinaryField info = (IBinaryField)this.getElementInfo();
        IBinaryAnnotation[] binaryAnnotations = info.getAnnotations();
        return this.getAnnotations(binaryAnnotations, info.getTagBits());
    }

    public Object getConstant() throws JavaModelException {
        IBinaryField info = (IBinaryField)this.getElementInfo();
        return BinaryField.convertConstant(info.getConstant());
    }

    public int getFlags() throws JavaModelException {
        IBinaryField info = (IBinaryField)this.getElementInfo();
        return info.getModifiers();
    }

    public int getElementType() {
        return 8;
    }

    protected char getHandleMementoDelimiter() {
        return '^';
    }

    public String getKey(boolean forceOpen) throws JavaModelException {
        return this.getKey(this, forceOpen);
    }

    public String getTypeSignature() throws JavaModelException {
        IBinaryField info = (IBinaryField)this.getElementInfo();
        char[] genericSignature = info.getGenericSignature();
        if (genericSignature != null) {
            return new String(ClassFile.translatedName(genericSignature));
        }
        return new String(ClassFile.translatedName(info.getTypeName()));
    }

    public boolean isEnumConstant() throws JavaModelException {
        return Flags.isEnum(this.getFlags());
    }

    public boolean isResolved() {
        return false;
    }

    public JavaElement resolved(Binding binding) {
        ResolvedBinaryField resolvedHandle = new ResolvedBinaryField(this.parent, this.name, new String(binding.computeUniqueKey()));
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
            try {
                buffer.append(Signature.toString(this.getTypeSignature()));
                buffer.append(" ");
                this.toStringName(buffer);
            }
            catch (JavaModelException javaModelException) {
                buffer.append("<JavaModelException in toString of " + this.getElementName());
            }
        }
    }

    public String getAttachedJavadoc(IProgressMonitor monitor) throws JavaModelException {
        JavadocContents javadocContents = ((BinaryType)this.getDeclaringType()).getJavadocContents(monitor);
        if (javadocContents == null) {
            return null;
        }
        return javadocContents.getFieldDoc(this);
    }
}

