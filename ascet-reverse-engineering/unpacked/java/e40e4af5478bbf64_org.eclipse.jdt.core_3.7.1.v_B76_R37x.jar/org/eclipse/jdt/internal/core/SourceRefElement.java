/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.ISourceRange;
import org.eclipse.jdt.core.ISourceReference;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.dom.ASTNode;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.Annotation;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.SourceRefElementInfo;
import org.eclipse.jdt.internal.core.util.DOMFinder;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;

public abstract class SourceRefElement
extends JavaElement
implements ISourceReference {
    public int occurrenceCount = 1;

    protected SourceRefElement(JavaElement parent) {
        super(parent);
    }

    protected void closing(Object info) throws JavaModelException {
    }

    protected Object createElementInfo() {
        return null;
    }

    public void copy(IJavaElement container, IJavaElement sibling, String rename, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (container == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] containers = new IJavaElement[]{container};
        IJavaElement[] siblings = null;
        if (sibling != null) {
            siblings = new IJavaElement[]{sibling};
        }
        String[] renamings = null;
        if (rename != null) {
            renamings = new String[]{rename};
        }
        this.getJavaModel().copy(elements, containers, siblings, renamings, force, monitor);
    }

    public void delete(boolean force, IProgressMonitor monitor) throws JavaModelException {
        IJavaElement[] elements = new IJavaElement[]{this};
        this.getJavaModel().delete(elements, force, monitor);
    }

    public boolean equals(Object o) {
        if (!(o instanceof SourceRefElement)) {
            return false;
        }
        return this.occurrenceCount == ((SourceRefElement)o).occurrenceCount && super.equals(o);
    }

    public ASTNode findNode(CompilationUnit ast) {
        DOMFinder finder = new DOMFinder(ast, this, false);
        try {
            return finder.search();
        }
        catch (JavaModelException javaModelException) {
            return null;
        }
    }

    protected void generateInfos(Object info, HashMap newElements, IProgressMonitor pm) throws JavaModelException {
        Openable openableParent = (Openable)this.getOpenableParent();
        if (openableParent == null) {
            return;
        }
        JavaElementInfo openableParentInfo = (JavaElementInfo)JavaModelManager.getJavaModelManager().getInfo(openableParent);
        if (openableParentInfo == null) {
            openableParent.generateInfos(openableParent.createElementInfo(), newElements, pm);
        }
    }

    public IAnnotation getAnnotation(String name) {
        return new Annotation(this, name);
    }

    public IAnnotation[] getAnnotations() throws JavaModelException {
        AnnotatableInfo info = (AnnotatableInfo)this.getElementInfo();
        return info.annotations;
    }

    public ICompilationUnit getCompilationUnit() {
        return (ICompilationUnit)this.getAncestor(5);
    }

    public IResource getCorrespondingResource() throws JavaModelException {
        if (!this.exists()) {
            throw this.newNotPresentException();
        }
        return null;
    }

    public IJavaElement getHandleFromMemento(String token, MementoTokenizer memento, WorkingCopyOwner workingCopyOwner) {
        switch (token.charAt(0)) {
            case '!': {
                return this.getHandleUpdatingCountFromMemento(memento, workingCopyOwner);
            }
        }
        return this;
    }

    protected void getHandleMemento(StringBuffer buff) {
        super.getHandleMemento(buff);
        if (this.occurrenceCount > 1) {
            buff.append('!');
            buff.append(this.occurrenceCount);
        }
    }

    public IJavaElement getHandleUpdatingCountFromMemento(MementoTokenizer memento, WorkingCopyOwner owner) {
        if (!memento.hasMoreTokens()) {
            return this;
        }
        this.occurrenceCount = Integer.parseInt(memento.nextToken());
        if (!memento.hasMoreTokens()) {
            return this;
        }
        String token = memento.nextToken();
        return this.getHandleFromMemento(token, memento, owner);
    }

    public int getOccurrenceCount() {
        return this.occurrenceCount;
    }

    public IOpenable getOpenableParent() {
        IJavaElement current = this.getParent();
        while (current != null) {
            if (current instanceof IOpenable) {
                return (IOpenable)((Object)current);
            }
            current = current.getParent();
        }
        return null;
    }

    public IPath getPath() {
        return this.getParent().getPath();
    }

    public IResource resource() {
        return this.parent.resource();
    }

    public String getSource() throws JavaModelException {
        IOpenable openable = this.getOpenableParent();
        IBuffer buffer = openable.getBuffer();
        if (buffer == null) {
            return null;
        }
        ISourceRange range = this.getSourceRange();
        int offset = range.getOffset();
        int length = range.getLength();
        if (offset == -1 || length == 0) {
            return null;
        }
        try {
            return buffer.getText(offset, length);
        }
        catch (RuntimeException runtimeException) {
            return null;
        }
    }

    public ISourceRange getSourceRange() throws JavaModelException {
        SourceRefElementInfo info = (SourceRefElementInfo)this.getElementInfo();
        return info.getSourceRange();
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        if (!this.exists()) {
            throw this.newNotPresentException();
        }
        return this.getParent().getUnderlyingResource();
    }

    public boolean hasChildren() throws JavaModelException {
        return this.getChildren().length > 0;
    }

    public boolean isStructureKnown() throws JavaModelException {
        return true;
    }

    public void move(IJavaElement container, IJavaElement sibling, String rename, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (container == null) {
            throw new IllegalArgumentException(Messages.operation_nullContainer);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] containers = new IJavaElement[]{container};
        IJavaElement[] siblings = null;
        if (sibling != null) {
            siblings = new IJavaElement[]{sibling};
        }
        String[] renamings = null;
        if (rename != null) {
            renamings = new String[]{rename};
        }
        this.getJavaModel().move(elements, containers, siblings, renamings, force, monitor);
    }

    public void rename(String newName, boolean force, IProgressMonitor monitor) throws JavaModelException {
        if (newName == null) {
            throw new IllegalArgumentException(Messages.element_nullName);
        }
        IJavaElement[] elements = new IJavaElement[]{this};
        IJavaElement[] dests = new IJavaElement[]{this.getParent()};
        String[] renamings = new String[]{newName};
        this.getJavaModel().rename(elements, dests, renamings, force, monitor);
    }

    protected void toStringName(StringBuffer buffer) {
        super.toStringName(buffer);
        if (this.occurrenceCount > 1) {
            buffer.append("#");
            buffer.append(this.occurrenceCount);
        }
    }
}

