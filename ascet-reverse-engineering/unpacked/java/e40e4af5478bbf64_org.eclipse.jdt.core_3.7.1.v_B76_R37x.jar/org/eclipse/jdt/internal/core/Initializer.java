/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.Flags;
import org.eclipse.jdt.core.IInitializer;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.Member;
import org.eclipse.jdt.internal.core.util.Util;

public class Initializer
extends Member
implements IInitializer {
    protected Initializer(JavaElement parent, int count) {
        super(parent);
        if (count <= 0) {
            throw new IllegalArgumentException();
        }
        this.occurrenceCount = count;
    }

    public boolean equals(Object o) {
        if (!(o instanceof Initializer)) {
            return false;
        }
        return super.equals(o);
    }

    public int getElementType() {
        return 10;
    }

    protected void getHandleMemento(StringBuffer buff) {
        ((JavaElement)this.getParent()).getHandleMemento(buff);
        buff.append(this.getHandleMementoDelimiter());
        buff.append(this.occurrenceCount);
    }

    protected char getHandleMementoDelimiter() {
        return '|';
    }

    public int hashCode() {
        return Util.combineHashCodes(this.parent.hashCode(), this.occurrenceCount);
    }

    public String readableName() {
        return ((JavaElement)((Object)this.getDeclaringType())).readableName();
    }

    public void rename(String newName, boolean force, IProgressMonitor monitor) throws JavaModelException {
        throw new JavaModelException(new JavaModelStatus(967, this));
    }

    public ISourceRange getNameRange() {
        return null;
    }

    public IJavaElement getPrimaryElement(boolean checkOwner) {
        CompilationUnit cu;
        if (checkOwner && ((cu = (CompilationUnit)this.getAncestor(5)) == null || cu.isPrimary())) {
            return this;
        }
        IJavaElement primaryParent = this.parent.getPrimaryElement(false);
        return ((IType)primaryParent).getInitializer(this.occurrenceCount);
    }

    protected void toStringInfo(int tab, StringBuffer buffer, Object info, boolean showResolvedInfo) {
        buffer.append(this.tabString(tab));
        if (info == null) {
            buffer.append("<initializer #");
            buffer.append(this.occurrenceCount);
            buffer.append("> (not open)");
        } else if (info == NO_INFO) {
            buffer.append("<initializer #");
            buffer.append(this.occurrenceCount);
            buffer.append(">");
        } else {
            try {
                buffer.append("<");
                if (Flags.isStatic(this.getFlags())) {
                    buffer.append("static ");
                }
                buffer.append("initializer #");
                buffer.append(this.occurrenceCount);
                buffer.append(">");
            }
            catch (JavaModelException javaModelException) {
                buffer.append("<JavaModelException in toString of " + this.getElementName());
            }
        }
    }
}

