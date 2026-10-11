/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.ImportContainer;
import org.eclipse.jdt.internal.core.ImportDeclarationElementInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SourceRefElement;

public class ImportDeclaration
extends SourceRefElement
implements IImportDeclaration {
    protected String name;
    protected boolean isOnDemand;

    protected ImportDeclaration(ImportContainer parent, String name, boolean isOnDemand) {
        super(parent);
        this.name = name;
        this.isOnDemand = isOnDemand;
    }

    public boolean equals(Object o) {
        if (!(o instanceof ImportDeclaration)) {
            return false;
        }
        return super.equals(o);
    }

    public String getElementName() {
        if (this.isOnDemand) {
            return String.valueOf(this.name) + ".*";
        }
        return this.name;
    }

    public String getNameWithoutStar() {
        return this.name;
    }

    public int getElementType() {
        return 13;
    }

    public int getFlags() throws JavaModelException {
        ImportDeclarationElementInfo info = (ImportDeclarationElementInfo)this.getElementInfo();
        return info.getModifiers();
    }

    protected void getHandleMemento(StringBuffer buff) {
        ((JavaElement)this.getParent()).getHandleMemento(buff);
        this.escapeMementoName(buff, this.getElementName());
        if (this.occurrenceCount > 1) {
            buff.append('!');
            buff.append(this.occurrenceCount);
        }
    }

    protected char getHandleMementoDelimiter() {
        Assert.isTrue((boolean)false, (String)"Should not be called");
        return '\u0000';
    }

    public ISourceRange getNameRange() throws JavaModelException {
        ImportDeclarationElementInfo info = (ImportDeclarationElementInfo)this.getElementInfo();
        return info.getNameRange();
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        CompilationUnit cu = (CompilationUnit)this.parent.getParent();
        if (checkOwner && cu.isPrimary()) {
            return this;
        }
        return cu.getImport(this.getElementName());
    }

    public boolean isOnDemand() {
        return this.isOnDemand;
    }

    public String readableName() {
        return null;
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        buffer.append("import ");
        this.toStringName(buffer);
        if (info == null) {
            buffer.append(" (not open)");
        }
    }
}

