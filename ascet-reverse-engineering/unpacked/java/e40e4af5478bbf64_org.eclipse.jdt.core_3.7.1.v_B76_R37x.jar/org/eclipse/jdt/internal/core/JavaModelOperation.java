/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.core;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IBuffer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.CompilationUnit;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.DocumentAdapter;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaModelStatus;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.text.edits.TextEdit;

public abstract class JavaModelOperation
implements IWorkspaceRunnable,
IProgressMonitor {
    protected static final int APPEND = 1;
    protected static final int REMOVEALL_APPEND = 2;
    protected static final int KEEP_EXISTING = 3;
    protected static boolean POST_ACTION_VERBOSE;
    protected IPostAction[] actions;
    protected int actionsStart = 0;
    protected int actionsEnd = -1;
    protected HashMap attributes;
    public static final String HAS_MODIFIED_RESOURCE_ATTR = "hasModifiedResource";
    public static final String TRUE = "true";
    protected IJavaElement[] elementsToProcess;
    protected IJavaElement[] parentElements;
    protected static final IJavaElement[] NO_ELEMENTS;
    protected IJavaElement[] resultElements = NO_ELEMENTS;
    public IProgressMonitor progressMonitor = null;
    protected boolean isNested = false;
    protected boolean force = false;
    protected static final ThreadLocal OPERATION_STACKS;

    static {
        NO_ELEMENTS = new IJavaElement[0];
        OPERATION_STACKS = new ThreadLocal();
    }

    protected JavaModelOperation() {
    }

    protected JavaModelOperation(IJavaElement[] elements) {
        this.elementsToProcess = elements;
    }

    protected JavaModelOperation(IJavaElement[] elementsToProcess, IJavaElement[] parentElements) {
        this.elementsToProcess = elementsToProcess;
        this.parentElements = parentElements;
    }

    protected JavaModelOperation(IJavaElement[] elementsToProcess, IJavaElement[] parentElements, boolean force) {
        this.elementsToProcess = elementsToProcess;
        this.parentElements = parentElements;
        this.force = force;
    }

    protected JavaModelOperation(IJavaElement[] elements, boolean force) {
        this.elementsToProcess = elements;
        this.force = force;
    }

    protected JavaModelOperation(IJavaElement element) {
        this.elementsToProcess = new IJavaElement[]{element};
    }

    protected void addAction(IPostAction action) {
        int length = this.actions.length;
        if (length == ++this.actionsEnd) {
            this.actions = new IPostAction[length * 2];
            System.arraycopy(this.actions, 0, this.actions, 0, length);
        }
        this.actions[this.actionsEnd] = action;
    }

    protected void addDelta(IJavaElementDelta delta) {
        JavaModelManager.getJavaModelManager().getDeltaProcessor().registerJavaModelDelta(delta);
    }

    protected void addReconcileDelta(ICompilationUnit workingCopy, IJavaElementDelta delta) {
        HashMap reconcileDeltas = JavaModelManager.getJavaModelManager().getDeltaProcessor().reconcileDeltas;
        JavaElementDelta previousDelta = (JavaElementDelta)reconcileDeltas.get(workingCopy);
        if (previousDelta != null) {
            IJavaElementDelta[] children = delta.getAffectedChildren();
            int i = 0;
            int length = children.length;
            while (i < length) {
                JavaElementDelta child = (JavaElementDelta)children[i];
                previousDelta.insertDeltaTree(child.getElement(), child);
                ++i;
            }
            if ((delta.getFlags() & 0x80000) != 0) {
                previousDelta.changedAST(delta.getCompilationUnitAST());
            }
        } else {
            reconcileDeltas.put(workingCopy, delta);
        }
    }

    protected void removeReconcileDelta(ICompilationUnit workingCopy) {
        JavaModelManager.getJavaModelManager().getDeltaProcessor().reconcileDeltas.remove(workingCopy);
    }

    protected void applyTextEdit(ICompilationUnit cu, TextEdit edits) throws JavaModelException {
        try {
            edits.apply(this.getDocument(cu));
        }
        catch (BadLocationException e) {
            throw new JavaModelException(e, 984);
        }
    }

    public void beginTask(String name, int totalWork) {
        if (this.progressMonitor != null) {
            this.progressMonitor.beginTask(name, totalWork);
        }
    }

    protected boolean canModifyRoots() {
        return false;
    }

    protected void checkCanceled() {
        if (this.isCanceled()) {
            throw new OperationCanceledException(Messages.operation_cancelled);
        }
    }

    protected IJavaModelStatus commonVerify() {
        if (this.elementsToProcess == null || this.elementsToProcess.length == 0) {
            return new JavaModelStatus(968);
        }
        int i = 0;
        while (i < this.elementsToProcess.length) {
            if (this.elementsToProcess[i] == null) {
                return new JavaModelStatus(968);
            }
            ++i;
        }
        return JavaModelStatus.VERIFIED_OK;
    }

    protected void copyResources(IResource[] resources, IPath container) throws JavaModelException {
        IProgressMonitor subProgressMonitor = this.getSubProgressMonitor(resources.length);
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        try {
            int i = 0;
            int length = resources.length;
            while (i < length) {
                IResource resource = resources[i];
                IPath destination = container.append(resource.getName());
                if (root.findMember(destination) == null) {
                    resource.copy(destination, false, subProgressMonitor);
                }
                ++i;
            }
            JavaModelOperation.setAttribute(HAS_MODIFIED_RESOURCE_ATTR, TRUE);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    protected void createFile(IContainer folder, String name, InputStream contents, boolean forceFlag) throws JavaModelException {
        IFile file = folder.getFile((IPath)new Path(name));
        try {
            file.create(contents, forceFlag ? 3 : 2, this.getSubProgressMonitor(1));
            JavaModelOperation.setAttribute(HAS_MODIFIED_RESOURCE_ATTR, TRUE);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    protected void createFolder(IContainer parentFolder, String name, boolean forceFlag) throws JavaModelException {
        IFolder folder = parentFolder.getFolder((IPath)new Path(name));
        try {
            folder.create(forceFlag ? 3 : 2, true, this.getSubProgressMonitor(1));
            JavaModelOperation.setAttribute(HAS_MODIFIED_RESOURCE_ATTR, TRUE);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    protected void deleteEmptyPackageFragment(IPackageFragment fragment, boolean forceFlag, IResource rootResource) throws JavaModelException {
        IContainer resource = (IContainer)((JavaElement)((Object)fragment)).resource();
        try {
            resource.delete(forceFlag ? 3 : 2, this.getSubProgressMonitor(1));
            JavaModelOperation.setAttribute(HAS_MODIFIED_RESOURCE_ATTR, TRUE);
            while (resource instanceof IFolder) {
                if ((resource = resource.getParent()).equals((Object)rootResource) || resource.members().length != 0) continue;
                resource.delete(forceFlag ? 3 : 2, this.getSubProgressMonitor(1));
                JavaModelOperation.setAttribute(HAS_MODIFIED_RESOURCE_ATTR, TRUE);
            }
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    protected void deleteResource(IResource resource, int flags) throws JavaModelException {
        try {
            resource.delete(flags, this.getSubProgressMonitor(1));
            JavaModelOperation.setAttribute(HAS_MODIFIED_RESOURCE_ATTR, TRUE);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    protected void deleteResources(IResource[] resources, boolean forceFlag) throws JavaModelException {
        if (resources == null || resources.length == 0) {
            return;
        }
        IProgressMonitor subProgressMonitor = this.getSubProgressMonitor(resources.length);
        IWorkspace workspace = resources[0].getWorkspace();
        try {
            workspace.delete(resources, forceFlag ? 3 : 2, subProgressMonitor);
            JavaModelOperation.setAttribute(HAS_MODIFIED_RESOURCE_ATTR, TRUE);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    public void done() {
        if (this.progressMonitor != null) {
            this.progressMonitor.done();
        }
    }

    protected boolean equalsOneOf(IPath path, IPath[] otherPaths) {
        int i = 0;
        int length = otherPaths.length;
        while (i < length) {
            if (path.equals((Object)otherPaths[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void executeNestedOperation(JavaModelOperation operation, int subWorkAmount) throws JavaModelException {
        IJavaModelStatus status = operation.verify();
        if (!status.isOK()) {
            throw new JavaModelException(status);
        }
        IProgressMonitor subProgressMonitor = this.getSubProgressMonitor(subWorkAmount);
        try {
            operation.setNested(true);
            operation.run(subProgressMonitor);
        }
        catch (CoreException ce) {
            Throwable e;
            if (ce instanceof JavaModelException) {
                throw (JavaModelException)ce;
            }
            if (ce.getStatus().getCode() == 76 && (e = ce.getStatus().getException()) instanceof JavaModelException) {
                throw (JavaModelException)((Object)e);
            }
            throw new JavaModelException(ce);
        }
    }

    protected abstract void executeOperation() throws JavaModelException;

    protected static Object getAttribute(Object key) {
        ArrayList stack = JavaModelOperation.getCurrentOperationStack();
        if (stack.size() == 0) {
            return null;
        }
        JavaModelOperation topLevelOp = (JavaModelOperation)stack.get(0);
        if (topLevelOp.attributes == null) {
            return null;
        }
        return topLevelOp.attributes.get(key);
    }

    protected ICompilationUnit getCompilationUnitFor(IJavaElement element) {
        return ((JavaElement)element).getCompilationUnit();
    }

    protected static ArrayList getCurrentOperationStack() {
        ArrayList stack = (ArrayList)OPERATION_STACKS.get();
        if (stack == null) {
            stack = new ArrayList();
            OPERATION_STACKS.set(stack);
        }
        return stack;
    }

    protected IDocument getDocument(ICompilationUnit cu) throws JavaModelException {
        IBuffer buffer = cu.getBuffer();
        if (buffer instanceof IDocument) {
            return (IDocument)buffer;
        }
        return new DocumentAdapter(buffer);
    }

    protected IJavaElement getElementToProcess() {
        if (this.elementsToProcess == null || this.elementsToProcess.length == 0) {
            return null;
        }
        return this.elementsToProcess[0];
    }

    public IJavaModel getJavaModel() {
        return JavaModelManager.getJavaModelManager().getJavaModel();
    }

    protected IPath[] getNestedFolders(IPackageFragmentRoot root) throws JavaModelException {
        IPath rootPath = root.getPath();
        IClasspathEntry[] classpath = root.getJavaProject().getRawClasspath();
        int length = classpath.length;
        IPath[] result = new IPath[length];
        int index = 0;
        int i = 0;
        while (i < length) {
            IPath path = classpath[i].getPath();
            if (rootPath.isPrefixOf(path) && !rootPath.equals((Object)path)) {
                result[index++] = path;
            }
            ++i;
        }
        if (index < length) {
            IPath[] iPathArray = result;
            result = new IPath[index];
            System.arraycopy(iPathArray, 0, result, 0, index);
        }
        return result;
    }

    protected IJavaElement getParentElement() {
        if (this.parentElements == null || this.parentElements.length == 0) {
            return null;
        }
        return this.parentElements[0];
    }

    protected IJavaElement[] getParentElements() {
        return this.parentElements;
    }

    public IJavaElement[] getResultElements() {
        return this.resultElements;
    }

    protected ISchedulingRule getSchedulingRule() {
        return ResourcesPlugin.getWorkspace().getRoot();
    }

    protected IProgressMonitor getSubProgressMonitor(int workAmount) {
        SubProgressMonitor sub = null;
        if (this.progressMonitor != null) {
            sub = new SubProgressMonitor(this.progressMonitor, workAmount, 4);
        }
        return sub;
    }

    public boolean hasModifiedResource() {
        return !this.isReadOnly() && JavaModelOperation.getAttribute(HAS_MODIFIED_RESOURCE_ATTR) == TRUE;
    }

    public void internalWorked(double work) {
        if (this.progressMonitor != null) {
            this.progressMonitor.internalWorked(work);
        }
    }

    public boolean isCanceled() {
        if (this.progressMonitor != null) {
            return this.progressMonitor.isCanceled();
        }
        return false;
    }

    public boolean isReadOnly() {
        return false;
    }

    protected boolean isTopLevelOperation() {
        ArrayList stack = JavaModelOperation.getCurrentOperationStack();
        return stack.size() > 0 && stack.get(0) == this;
    }

    protected int firstActionWithID(String id, int start) {
        int i = start;
        while (i <= this.actionsEnd) {
            if (this.actions[i].getID().equals(id)) {
                return i;
            }
            ++i;
        }
        return -1;
    }

    protected void moveResources(IResource[] resources, IPath container) throws JavaModelException {
        SubProgressMonitor subProgressMonitor = null;
        if (this.progressMonitor != null) {
            subProgressMonitor = new SubProgressMonitor(this.progressMonitor, resources.length, 4);
        }
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        try {
            int i = 0;
            int length = resources.length;
            while (i < length) {
                IResource resource = resources[i];
                IPath destination = container.append(resource.getName());
                if (root.findMember(destination) == null) {
                    resource.move(destination, false, (IProgressMonitor)subProgressMonitor);
                }
                ++i;
            }
            JavaModelOperation.setAttribute(HAS_MODIFIED_RESOURCE_ATTR, TRUE);
        }
        catch (CoreException e) {
            throw new JavaModelException(e);
        }
    }

    public JavaElementDelta newJavaElementDelta() {
        return new JavaElementDelta(this.getJavaModel());
    }

    protected JavaModelOperation popOperation() {
        ArrayList stack = JavaModelOperation.getCurrentOperationStack();
        int size = stack.size();
        if (size > 0) {
            if (size == 1) {
                OPERATION_STACKS.set(null);
            }
            return (JavaModelOperation)stack.remove(size - 1);
        }
        return null;
    }

    protected void postAction(IPostAction action, int insertionMode) {
        if (POST_ACTION_VERBOSE) {
            System.out.print("(" + Thread.currentThread() + ") [JavaModelOperation.postAction(IPostAction, int)] Posting action " + action.getID());
            switch (insertionMode) {
                case 2: {
                    System.out.println(" (REMOVEALL_APPEND)");
                    break;
                }
                case 3: {
                    System.out.println(" (KEEP_EXISTING)");
                    break;
                }
                case 1: {
                    System.out.println(" (APPEND)");
                }
            }
        }
        JavaModelOperation topLevelOp = (JavaModelOperation)JavaModelOperation.getCurrentOperationStack().get(0);
        IPostAction[] postActions = topLevelOp.actions;
        if (postActions == null) {
            topLevelOp.actions = postActions = new IPostAction[1];
            postActions[0] = action;
            topLevelOp.actionsEnd = 0;
        } else {
            String id = action.getID();
            switch (insertionMode) {
                case 2: {
                    int index = this.actionsStart - 1;
                    while ((index = topLevelOp.firstActionWithID(id, index + 1)) >= 0) {
                        System.arraycopy(postActions, index + 1, postActions, index, topLevelOp.actionsEnd - index);
                        postActions[topLevelOp.actionsEnd--] = null;
                    }
                    topLevelOp.addAction(action);
                    break;
                }
                case 3: {
                    if (topLevelOp.firstActionWithID(id, 0) >= 0) break;
                    topLevelOp.addAction(action);
                    break;
                }
                case 1: {
                    topLevelOp.addAction(action);
                }
            }
        }
    }

    protected boolean prefixesOneOf(IPath path, IPath[] otherPaths) {
        int i = 0;
        int length = otherPaths.length;
        while (i < length) {
            if (path.isPrefixOf(otherPaths[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected void pushOperation(JavaModelOperation operation) {
        JavaModelOperation.getCurrentOperationStack().add(operation);
    }

    protected void removeAllPostAction(String actionID) {
        if (POST_ACTION_VERBOSE) {
            System.out.println("(" + Thread.currentThread() + ") [JavaModelOperation.removeAllPostAction(String)] Removing actions " + actionID);
        }
        JavaModelOperation topLevelOp = (JavaModelOperation)JavaModelOperation.getCurrentOperationStack().get(0);
        IPostAction[] postActions = topLevelOp.actions;
        if (postActions == null) {
            return;
        }
        int index = this.actionsStart - 1;
        while ((index = topLevelOp.firstActionWithID(actionID, index + 1)) >= 0) {
            System.arraycopy(postActions, index + 1, postActions, index, topLevelOp.actionsEnd - index);
            postActions[topLevelOp.actionsEnd--] = null;
        }
    }

    public void run(IProgressMonitor monitor) throws CoreException {
        block23: {
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            DeltaProcessor deltaProcessor = manager.getDeltaProcessor();
            int previousDeltaCount = deltaProcessor.javaModelDeltas.size();
            try {
                this.progressMonitor = monitor;
                this.pushOperation(this);
                try {
                    if (this.canModifyRoots()) {
                        JavaModelManager.getDeltaState().initializeRoots(false);
                    }
                    this.executeOperation();
                }
                catch (Throwable throwable) {
                    if (this.isTopLevelOperation()) {
                        this.runPostActions();
                    }
                    throw throwable;
                }
                if (this.isTopLevelOperation()) {
                    this.runPostActions();
                }
            }
            finally {
                try {
                    deltaProcessor = manager.getDeltaProcessor();
                    int i = previousDeltaCount;
                    int size = deltaProcessor.javaModelDeltas.size();
                    while (i < size) {
                        deltaProcessor.updateJavaModel((IJavaElementDelta)deltaProcessor.javaModelDeltas.get(i));
                        ++i;
                    }
                    i = 0;
                    int length = this.resultElements.length;
                    while (i < length) {
                        IJavaElement element = this.resultElements[i];
                        Openable openable = (Openable)element.getOpenable();
                        if (!(openable instanceof CompilationUnit) || !((CompilationUnit)openable).isWorkingCopy()) {
                            ((JavaElement)openable.getParent()).close();
                        }
                        switch (element.getElementType()) {
                            case 3: 
                            case 4: {
                                deltaProcessor.projectCachesToReset.add(element.getJavaProject());
                            }
                        }
                        ++i;
                    }
                    deltaProcessor.resetProjectCaches();
                    if (!(!this.isTopLevelOperation() || deltaProcessor.javaModelDeltas.size() <= previousDeltaCount && deltaProcessor.reconcileDeltas.isEmpty() || this.hasModifiedResource())) {
                        deltaProcessor.fire(null, 0);
                    }
                    break block23;
                }
                finally {
                    this.popOperation();
                }
            }
            {
            }
        }
    }

    public void runOperation(IProgressMonitor monitor) throws JavaModelException {
        IJavaModelStatus status = this.verify();
        if (!status.isOK()) {
            throw new JavaModelException(status);
        }
        try {
            if (this.isReadOnly()) {
                this.run(monitor);
            } else {
                ResourcesPlugin.getWorkspace().run((IWorkspaceRunnable)this, this.getSchedulingRule(), 1, monitor);
            }
        }
        catch (CoreException ce) {
            Throwable e;
            if (ce instanceof JavaModelException) {
                throw (JavaModelException)ce;
            }
            if (ce.getStatus().getCode() == 76 && (e = ce.getStatus().getException()) instanceof JavaModelException) {
                throw (JavaModelException)((Object)e);
            }
            throw new JavaModelException(ce);
        }
    }

    protected void runPostActions() throws JavaModelException {
        while (this.actionsStart <= this.actionsEnd) {
            IPostAction postAction = this.actions[this.actionsStart++];
            if (POST_ACTION_VERBOSE) {
                System.out.println("(" + Thread.currentThread() + ") [JavaModelOperation.runPostActions()] Running action " + postAction.getID());
            }
            postAction.run();
        }
    }

    protected static void setAttribute(Object key, Object attribute) {
        ArrayList operationStack = JavaModelOperation.getCurrentOperationStack();
        if (operationStack.size() == 0) {
            return;
        }
        JavaModelOperation topLevelOp = (JavaModelOperation)operationStack.get(0);
        if (topLevelOp.attributes == null) {
            topLevelOp.attributes = new HashMap();
        }
        topLevelOp.attributes.put(key, attribute);
    }

    public void setCanceled(boolean b) {
        if (this.progressMonitor != null) {
            this.progressMonitor.setCanceled(b);
        }
    }

    protected void setNested(boolean nested) {
        this.isNested = nested;
    }

    public void setTaskName(String name) {
        if (this.progressMonitor != null) {
            this.progressMonitor.setTaskName(name);
        }
    }

    public void subTask(String name) {
        if (this.progressMonitor != null) {
            this.progressMonitor.subTask(name);
        }
    }

    protected IJavaModelStatus verify() {
        return this.commonVerify();
    }

    public void worked(int work) {
        if (this.progressMonitor != null) {
            this.progressMonitor.worked(work);
            this.checkCanceled();
        }
    }

    protected static interface IPostAction {
        public String getID();

        public void run() throws JavaModelException;
    }
}

