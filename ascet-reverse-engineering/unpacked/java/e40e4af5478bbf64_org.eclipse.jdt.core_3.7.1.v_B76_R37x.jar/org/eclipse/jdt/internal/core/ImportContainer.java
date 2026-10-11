/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.SourceRange;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.ImportDeclaration;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;

public class ImportContainer
extends SourceRefElement
implements IImportContainer {
    protected ImportContainer(CompilationUnit parent) {
        super(parent);
    }

    public boolean equals(Object o) {
        if (!(o instanceof ImportContainer)) {
            return false;
        }
        return super.equals(o);
    }

    public int getElementType() {
        return 12;
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner workingCopyOwner) {
        switch (token.charAt(0)) {
            case '!': {
                return this.getHandleUpdatingCountFromMemento(memento, workingCopyOwner);
            }
            case '#': {
                if (memento.hasMoreTokens()) {
                    String importName = memento.nextToken();
                    JavaElement importDecl = (JavaElement)((Object)this.getImport(importName));
                    return importDecl.getHandleFromMemento(memento, workingCopyOwner);
                }
                return this;
            }
        }
        return null;
    }

    protected char getHandleMementoDelimiter() {
        return '#';
    }

    public IImportDeclaration getImport(String importName) {
        boolean isOnDemand;
        int index = importName.indexOf(".*");
        boolean bl = isOnDemand = index != -1;
        if (isOnDemand) {
            importName = new String(importName.substring(0, index));
        }
        return this.getImport(importName, isOnDemand);
    }

    protected IImportDeclaration getImport(String importName, boolean isOnDemand) {
        return new ImportDeclaration(this, importName, isOnDemand);
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        CompilationUnit cu = (CompilationUnit)this.parent;
        if (checkOwner && cu.isPrimary()) {
            return this;
        }
        return cu.getImportContainer();
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        IJavaElement[] imports = this.getChildren();
        ISourceRange firstRange = ((ISourceReference)((Object)imports[0])).getSourceRange();
        ISourceRange lastRange = ((ISourceReference)((Object)imports[imports.length - 1])).getSourceRange();
        SourceRange range = new SourceRange(firstRange.getOffset(), lastRange.getOffset() + lastRange.getLength() - firstRange.getOffset());
        return range;
    }

    public String readableName() {
        return null;
    }

    protected void toString(int tab, StringBuffer buffer) {
        Object info = JavaModelManager.getJavaModelManager().peekAtInfo(this);
        if (info == null || !(info instanceof JavaElementInfo)) {
            return;
        }
        IJavaElement[] children = ((JavaElementInfo)info).getChildren();
        int i = 0;
        while (i < children.length) {
            if (i > 0) {
                buffer.append("\n");
            }
            ((JavaElement)children[i]).toString(tab, buffer);
            ++i;
        }
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        buffer.append("<import container>");
        if (info == null) {
            buffer.append(" (not open)");
        }
    }

    public ISourceRange getNameRange() {
        return null;
    }
}

