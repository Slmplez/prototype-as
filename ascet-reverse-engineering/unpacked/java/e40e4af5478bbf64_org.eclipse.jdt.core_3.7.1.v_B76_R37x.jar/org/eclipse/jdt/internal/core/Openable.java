/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.PerformanceStats
 */
package org.eclipse.jdt.internal.core;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.jdt.core.BufferChangedEvent;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IBufferChangedListener;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.ITypeRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.JarPackageFragmentRootInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModelCache;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.NullBuffer;
import org.eclipse.jdt.internal.core.OpenableElementInfo;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.SelectionRequestor;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class Openable
extends JavaElement
implements IOpenable,
IBufferChangedListener {
    protected Openable(JavaElement parent) {
        super(parent);
    }

    public void bufferChanged(BufferChangedEvent event) {
        if (event.getBuffer().isClosed()) {
            JavaModelManager.getJavaModelManager().getElementsOutOfSynchWithBuffers().remove(this);
            this.getBufferManager().removeBuffer(event.getBuffer());
        } else {
            JavaModelManager.getJavaModelManager().getElementsOutOfSynchWithBuffers().add(this);
        }
    }

    protected abstract boolean buildStructure(OpenableElementInfo var1, IProgressMonitor var2, Map var3, IResource var4) throws JavaModelException;

    public boolean canBeRemovedFromCache() {
        try {
            return !this.hasUnsavedChanges();
        }
        catch (JavaModelException javaModelException) {
            return false;
        }
    }

    public boolean canBufferBeRemovedFromCache(IBuffer buffer) {
        return !buffer.hasUnsavedChanges();
    }

    protected void closeBuffer() {
        if (!this.hasBuffer()) {
            return;
        }
        IBuffer buffer = this.getBufferManager().getBuffer(this);
        if (buffer != null) {
            buffer.close();
            buffer.removeBufferChangedListener(this);
        }
    }

    protected void closing(Object info) {
        this.closeBuffer();
    }

    protected void codeComplete(ICompilationUnit cu, ICompilationUnit unitToSkip, int position, CompletionRequestor requestor, WorkingCopyOwner owner, ITypeRoot typeRoot, IProgressMonitor monitor) throws JavaModelException {
        IBuffer buffer;
        PerformanceStats performanceStats;
        if (requestor == null) {
            throw new IllegalArgumentException("Completion requestor cannot be null");
        }
        PerformanceStats performanceStats2 = performanceStats = CompletionEngine.PERF ? PerformanceStats.getStats((String)"org.eclipse.jdt.core/perf/completion", (Object)this) : null;
        if (performanceStats != null) {
            performanceStats.startRun(String.valueOf(new String(cu.getFileName())) + " at " + position);
        }
        if ((buffer = this.getBuffer()) == null) {
            return;
        }
        if (position < -1 || position > buffer.getLength()) {
            throw new JavaModelException(new JavaModelStatus(980));
        }
        JavaProject project = (JavaProject)this.getJavaProject();
        SearchableEnvironment environment = project.newSearchableNameEnvironment(owner);
        environment.unitToSkip = unitToSkip;
        CompletionEngine engine = new CompletionEngine(environment, requestor, project.getOptions(true), project, owner, monitor);
        engine.complete(cu, position, 0, typeRoot);
        if (performanceStats != null) {
            performanceStats.endRun();
        }
        if (NameLookup.VERBOSE) {
            System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + environment.nameLookup.timeSpentInSeekTypesInSourcePackage + "ms");
            System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + environment.nameLookup.timeSpentInSeekTypesInBinaryPackage + "ms");
        }
    }

    protected IJavaElement[] codeSelect(ICompilationUnit cu, int offset, int length, WorkingCopyOwner owner) throws JavaModelException {
        PerformanceStats performanceStats;
        PerformanceStats performanceStats2 = performanceStats = SelectionEngine.PERF ? PerformanceStats.getStats((String)"org.eclipse.jdt.core/perf/selection", (Object)this) : null;
        if (performanceStats != null) {
            performanceStats.startRun(String.valueOf(new String(cu.getFileName())) + " at [" + offset + "," + length + "]");
        }
        JavaProject project = (JavaProject)this.getJavaProject();
        SearchableEnvironment environment = project.newSearchableNameEnvironment(owner);
        SelectionRequestor requestor = new SelectionRequestor(environment.nameLookup, this);
        IBuffer buffer = this.getBuffer();
        if (buffer == null) {
            return requestor.getElements();
        }
        int end = buffer.getLength();
        if (offset < 0 || length < 0 || offset + length > end) {
            throw new JavaModelException(new JavaModelStatus(980));
        }
        SelectionEngine engine = new SelectionEngine(environment, requestor, project.getOptions(true), owner);
        engine.select(cu, offset, offset + length - 1);
        if (performanceStats != null) {
            performanceStats.endRun();
        }
        if (NameLookup.VERBOSE) {
            System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInSourcePackage: " + environment.nameLookup.timeSpentInSeekTypesInSourcePackage + "ms");
            System.out.println(Thread.currentThread() + " TIME SPENT in NameLoopkup#seekTypesInBinaryPackage: " + environment.nameLookup.timeSpentInSeekTypesInBinaryPackage + "ms");
        }
        return requestor.getElements();
    }

    protected Object createElementInfo() {
        return new OpenableElementInfo();
    }

    public boolean exists() {
        if (JavaModelManager.getJavaModelManager().getInfo(this) != null) {
            return true;
        }
        switch (this.getElementType()) {
            case 4: {
                JarPackageFragmentRootInfo rootInfo;
                PackageFragmentRoot root = this.getPackageFragmentRoot();
                if (!root.isArchive()) break;
                try {
                    rootInfo = (JarPackageFragmentRootInfo)root.getElementInfo();
                }
                catch (JavaModelException javaModelException) {
                    return false;
                }
                return rootInfo.rawPackageInfo.containsKey(((PackageFragment)this).names);
            }
            case 6: {
                if (!this.getPackageFragmentRoot().isArchive()) break;
                return super.exists();
            }
        }
        return this.validateExistence(this.resource()).isOK();
    }

    public String findRecommendedLineSeparator() throws JavaModelException {
        IBuffer buffer = this.getBuffer();
        String source = buffer == null ? null : buffer.getContents();
        return Util.getLineSeparator(source, this.getJavaProject());
    }

    protected void generateInfos(Object info, HashMap newElements, IProgressMonitor monitor) throws JavaModelException {
        if (JavaModelCache.VERBOSE) {
            String element;
            switch (this.getElementType()) {
                case 2: {
                    element = "project";
                    break;
                }
                case 3: {
                    element = "root";
                    break;
                }
                case 4: {
                    element = "package";
                    break;
                }
                case 6: {
                    element = "class file";
                    break;
                }
                case 5: {
                    element = "compilation unit";
                    break;
                }
                default: {
                    element = "element";
                }
            }
            System.out.println(Thread.currentThread() + " OPENING " + element + " " + this.toStringWithAncestors());
        }
        this.openAncestors(newElements, monitor);
        IResource underlResource = this.resource();
        IStatus status = this.validateExistence(underlResource);
        if (!status.isOK()) {
            throw this.newJavaModelException(status);
        }
        if (monitor != null && monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        newElements.put(this, info);
        try {
            OpenableElementInfo openableElementInfo = (OpenableElementInfo)info;
            boolean isStructureKnown = this.buildStructure(openableElementInfo, monitor, newElements, underlResource);
            openableElementInfo.setIsStructureKnown(isStructureKnown);
        }
        catch (JavaModelException e) {
            newElements.remove(this);
            throw e;
        }
        JavaModelManager.getJavaModelManager().getElementsOutOfSynchWithBuffers().remove(this);
        if (JavaModelCache.VERBOSE) {
            System.out.println(JavaModelManager.getJavaModelManager().cacheToString("-> "));
        }
    }

    public IBuffer getBuffer() throws JavaModelException {
        if (this.hasBuffer()) {
            Object info = this.getElementInfo();
            IBuffer buffer = this.getBufferManager().getBuffer(this);
            if (buffer == null) {
                buffer = this.openBuffer(null, info);
            }
            if (buffer instanceof NullBuffer) {
                return null;
            }
            return buffer;
        }
        return null;
    }

    public IBufferFactory getBufferFactory() {
        return this.getBufferManager().getDefaultBufferFactory();
    }

    protected BufferManager getBufferManager() {
        return BufferManager.getDefaultBufferManager();
    }

    public IResource getCorrespondingResource() throws JavaModelException {
        return this.getUnderlyingResource();
    }

    public IOpenable getOpenable() {
        return this;
    }

    public IResource getUnderlyingResource() throws JavaModelException {
        IResource parentResource = this.parent.getUnderlyingResource();
        if (parentResource == null) {
            return null;
        }
        int type = parentResource.getType();
        if (type == 2 || type == 4) {
            IContainer folder = (IContainer)parentResource;
            IResource resource = folder.findMember(this.getElementName());
            if (resource == null) {
                throw this.newNotPresentException();
            }
            return resource;
        }
        return parentResource;
    }

    protected boolean hasBuffer() {
        return false;
    }

    public boolean hasUnsavedChanges() throws JavaModelException {
        if (this.isReadOnly() || !this.isOpen()) {
            return false;
        }
        IBuffer buf = this.getBuffer();
        if (buf != null && buf.hasUnsavedChanges()) {
            return true;
        }
        int elementType = this.getElementType();
        if (elementType == 4 || elementType == 3 || elementType == 2 || elementType == 1) {
            Enumeration openBuffers = this.getBufferManager().getOpenBuffers();
            while (openBuffers.hasMoreElements()) {
                IJavaElement owner;
                IBuffer buffer = (IBuffer)openBuffers.nextElement();
                if (!buffer.hasUnsavedChanges() || !this.isAncestorOf(owner = (IJavaElement)((Object)buffer.getOwner()))) continue;
                return true;
            }
        }
        return false;
    }

    public boolean isConsistent() {
        return true;
    }

    public boolean isOpen() {
        return JavaModelManager.getJavaModelManager().getInfo(this) != null;
    }

    protected boolean isSourceElement() {
        return false;
    }

    public boolean isStructureKnown() throws JavaModelException {
        return ((OpenableElementInfo)this.getElementInfo()).isStructureKnown();
    }

    public void makeConsistent(IProgressMonitor monitor) throws JavaModelException {
    }

    public void open(IProgressMonitor pm) throws JavaModelException {
        this.getElementInfo(pm);
    }

    protected IBuffer openBuffer(IProgressMonitor pm, Object info) throws JavaModelException {
        return null;
    }

    public IResource getResource() {
        PackageFragmentRoot root = this.getPackageFragmentRoot();
        if (root != null) {
            if (root.isExternal()) {
                return null;
            }
            if (root.isArchive()) {
                return root.resource(root);
            }
        }
        return this.resource(root);
    }

    public IResource resource() {
        PackageFragmentRoot root = this.getPackageFragmentRoot();
        if (root != null && root.isArchive()) {
            return root.resource(root);
        }
        return this.resource(root);
    }

    protected abstract IResource resource(PackageFragmentRoot var1);

    protected boolean resourceExists(IResource underlyingResource) {
        return underlyingResource.isAccessible();
    }

    public void save(IProgressMonitor pm, boolean force) throws JavaModelException {
        if (this.isReadOnly()) {
            throw new JavaModelException(new JavaModelStatus(976, this));
        }
        IBuffer buf = this.getBuffer();
        if (buf != null) {
            buf.save(pm, force);
            this.makeConsistent(pm);
        }
    }

    public PackageFragmentRoot getPackageFragmentRoot() {
        return (PackageFragmentRoot)this.getAncestor(3);
    }

    protected abstract IStatus validateExistence(IResource var1);

    protected void openAncestors(HashMap newElements, IProgressMonitor monitor) throws JavaModelException {
        Openable openableParent = (Openable)this.getOpenableParent();
        if (openableParent != null && !openableParent.isOpen()) {
            openableParent.generateInfos(openableParent.createElementInfo(), newElements, monitor);
        }
    }
}

