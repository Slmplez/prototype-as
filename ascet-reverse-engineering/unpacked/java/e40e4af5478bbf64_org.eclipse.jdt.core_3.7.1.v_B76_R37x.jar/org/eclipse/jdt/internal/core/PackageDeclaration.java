/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.SourceRefElement;

public class PackageDeclaration
extends SourceRefElement
implements IPackageDeclaration {
    String name;

    protected PackageDeclaration(CompilationUnit parent, String name) {
        super(parent);
        this.name = name;
    }

    public boolean equals(Object o) {
        if (!(o instanceof PackageDeclaration)) {
            return false;
        }
        return super.equals(o);
    }

    public String getElementName() {
        return this.name;
    }

    public int getElementType() {
        return 11;
    }

    protected char getHandleMementoDelimiter() {
        return '%';
    }

    public ISourceRange getNameRange() throws JavaModelException {
        AnnotatableInfo info = (AnnotatableInfo)this.getElementInfo();
        return info.getNameRange();
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        CompilationUnit cu = (CompilationUnit)this.getAncestor(5);
        if (checkOwner && cu.isPrimary()) {
            return this;
        }
        return cu.getPackageDeclaration(this.name);
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        buffer.append("package ");
        this.toStringName(buffer);
        if (info == null) {
            buffer.append(" (not open)");
        }
    }
}

