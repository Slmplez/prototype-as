/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.NamedMember;
import org.eclipse.jdt.internal.core.ResolvedSourceField;
import org.eclipse.jdt.internal.core.SourceFieldElementInfo;

public class SourceField
extends NamedMember
implements IField {
    protected SourceField(JavaElement parent, String name) {
        super(parent, name);
    }

    public boolean equals(Object o) {
        if (!(o instanceof SourceField)) {
            return false;
        }
        return super.equals(o);
    }

    public ASTNode findNode(org.eclipse.jdt.core.dom.CompilationUnit ast) {
        ASTNode node = super.findNode(ast);
        if (node == null) {
            return null;
        }
        if (node.getNodeType() == 72) {
            return node;
        }
        return node.getParent();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Object getConstant() throws JavaModelException {
        Integer constant = null;
        SourceFieldElementInfo info = (SourceFieldElementInfo)this.getElementInfo();
        char[] constantSourceChars = info.initializationSource;
        if (constantSourceChars == null) {
            return null;
        }
        String constantSource = new String(constantSourceChars);
        String signature = info.getTypeSignature();
        try {
            if (signature.equals("I")) {
                return new Integer(constantSource);
            }
            if (signature.equals("S")) {
                return new Short(constantSource);
            }
            if (signature.equals("B")) {
                return new Byte(constantSource);
            }
            if (signature.equals("Z")) {
                return Boolean.valueOf(constantSource);
            }
            if (signature.equals("C")) {
                if (constantSourceChars.length == 3) return new Character(constantSourceChars[1]);
                return null;
            }
            if (signature.equals("D")) {
                return new Double(constantSource);
            }
            if (signature.equals("F")) {
                return new Float(constantSource);
            }
            if (signature.equals("J")) {
                if (!constantSource.endsWith("L") && !constantSource.endsWith("l")) {
                    return new Long(constantSource);
                }
                int index = constantSource.lastIndexOf("L");
                if (index == -1) return new Long(constantSource.substring(0, constantSource.lastIndexOf("l")));
                return new Long(constantSource.substring(0, index));
            }
            if (signature.equals("QString;")) {
                return constantSource;
            }
            if (!signature.equals("Qjava.lang.String;")) return constant;
            return constantSource;
        }
        catch (NumberFormatException numberFormatException) {
            return null;
        }
    }

    public int getElementType() {
        return 8;
    }

    public String getKey() {
        try {
            return this.getKey(this, false);
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    protected char getHandleMementoDelimiter() {
        return '^';
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        CompilationUnit cu;
        if (checkOwner && (cu = (CompilationUnit)this.getAncestor(5)).isPrimary()) {
            return this;
        }
        IJavaElement primaryParent = this.parent.getPrimaryElement(false);
        return ((IType)primaryParent).getField(this.name);
    }

    public String getTypeSignature() throws JavaModelException {
        SourceFieldElementInfo info = (SourceFieldElementInfo)this.getElementInfo();
        return info.getTypeSignature();
    }

    public boolean isEnumConstant() throws JavaModelException {
        return Flags.isEnum(this.getFlags());
    }

    public boolean isResolved() {
        return false;
    }

    public JavaElement resolved(Binding binding) {
        ResolvedSourceField resolvedHandle = new ResolvedSourceField(this.parent, this.name, new String(binding.computeUniqueKey()));
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
}

