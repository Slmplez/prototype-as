/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.IncompatibleThreadStateException
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.VirtualMachine
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IDebugEventSetListener
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchListener
 *  org.eclipse.debug.core.ILaunchManager
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.ISourceLocator
 *  org.eclipse.debug.core.model.IStackFrame
 *  org.eclipse.debug.core.model.IThread
 *  org.eclipse.jdt.core.ICompilationUnit
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IMethod
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.core.Signature
 *  org.eclipse.jdt.core.ToolFactory
 *  org.eclipse.jdt.core.util.IClassFileReader
 *  org.eclipse.jdt.core.util.ISourceAttribute
 *  org.eclipse.jdt.internal.core.util.Util
 */
package org.eclipse.jdt.internal.debug.core.hcr;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.IncompatibleThreadStateException;
import com.sun.jdi.ReferenceType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchListener;
import org.eclipse.debug.core.ILaunchManager;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.ISourceLocator;
import org.eclipse.debug.core.model.IStackFrame;
import org.eclipse.debug.core.model.IThread;
import org.eclipse.jdi.hcr.VirtualMachine;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.core.util.ISourceAttribute;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.debug.core.IJavaHotCodeReplaceListener;
import org.eclipse.jdt.debug.core.IJavaStackFrame;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.JavaDebugUtils;
import org.eclipse.jdt.internal.debug.core.hcr.CompilationUnitDelta;
import org.eclipse.jdt.internal.debug.core.hcr.JDIDebugHCRMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIStackFrame;
import org.eclipse.jdt.internal.debug.core.model.JDIThread;

public class JavaHotCodeReplaceManager
implements IResourceChangeListener,
ILaunchListener,
IDebugEventSetListener {
    private static JavaHotCodeReplaceManager fgInstance = null;
    private static final String CLASS_FILE_EXTENSION = "class";
    private ListenerList fHotCodeReplaceListeners = new ListenerList();
    private ArrayList fHotSwapTargets = new ArrayList(1);
    private ArrayList fNoHotSwapTargets = new ArrayList(1);
    private Map fProjectBuildTimes = new HashMap();
    private static Date fStartupDate = new Date();
    private Map fDeltaCache = new HashMap();
    protected ChangedClassFilesVisitor fClassfileVisitor = new ChangedClassFilesVisitor();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    private JavaHotCodeReplaceManager() {
    }

    public static synchronized JavaHotCodeReplaceManager getDefault() {
        if (fgInstance == null) {
            fgInstance = new JavaHotCodeReplaceManager();
        }
        return fgInstance;
    }

    public void startup() {
        DebugPlugin.getDefault().getLaunchManager().addLaunchListener((ILaunchListener)this);
        DebugPlugin.getDefault().addDebugEventListener((IDebugEventSetListener)this);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void shutdown() {
        DebugPlugin.getDefault().getLaunchManager().removeLaunchListener((ILaunchListener)this);
        DebugPlugin.getDefault().removeDebugEventListener((IDebugEventSetListener)this);
        this.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
        this.fHotCodeReplaceListeners = new ListenerList();
        JavaHotCodeReplaceManager javaHotCodeReplaceManager = this;
        synchronized (javaHotCodeReplaceManager) {
            this.fHotSwapTargets.clear();
            this.fNoHotSwapTargets.clear();
        }
    }

    protected IWorkspace getWorkspace() {
        return ResourcesPlugin.getWorkspace();
    }

    protected ILaunchManager getLaunchManager() {
        return DebugPlugin.getDefault().getLaunchManager();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void resourceChanged(IResourceChangeEvent event) {
        List projects = this.getBuiltProjects(event);
        if (!projects.isEmpty()) {
            this.updateProjectBuildTime(projects);
        }
        JavaHotCodeReplaceManager javaHotCodeReplaceManager = this;
        synchronized (javaHotCodeReplaceManager) {
            if (this.fHotSwapTargets.isEmpty() && this.fNoHotSwapTargets.isEmpty()) {
                return;
            }
        }
        ChangedClassFilesVisitor visitor = this.getChangedClassFiles(event);
        if (visitor != null) {
            List resources = visitor.getChangedClassFiles();
            List names = visitor.getQualifiedNamesList();
            if (!resources.isEmpty()) {
                this.notifyTargets(resources, names);
            }
        }
    }

    protected List getBuiltProjects(IResourceChangeEvent event) {
        IResourceDelta delta = event.getDelta();
        if (event.getType() != 16 || delta == null || event.getBuildKind() == 0) {
            return Collections.EMPTY_LIST;
        }
        if (event.getBuildKind() == 9 && !ResourcesPlugin.getWorkspace().isAutoBuilding()) {
            return Collections.EMPTY_LIST;
        }
        Object source = event.getSource();
        if (source instanceof IProject) {
            ArrayList<Object> list = new ArrayList<Object>();
            list.add(source);
            return list;
        }
        if (source instanceof IWorkspace) {
            IProject[] allProjects = ((IWorkspace)source).getRoot().getProjects();
            return Arrays.asList(allProjects);
        }
        return Collections.EMPTY_LIST;
    }

    private void updateProjectBuildTime(List projects) {
        Iterator iter = projects.iterator();
        IProject project = null;
        Date currentDate = new Date();
        ProjectBuildTime buildTime = null;
        while (iter.hasNext()) {
            project = (IProject)iter.next();
            buildTime = (ProjectBuildTime)this.fProjectBuildTimes.get(project);
            if (buildTime == null) {
                buildTime = new ProjectBuildTime();
                this.fProjectBuildTimes.put(project, buildTime);
            }
            buildTime.setCurrentBuildDate(currentDate);
        }
    }

    protected long getLastProjectBuildTime(IProject project) {
        ProjectBuildTime time = (ProjectBuildTime)this.fProjectBuildTimes.get(project);
        if (time == null) {
            time = new ProjectBuildTime();
            time.setLastBuildDate(fStartupDate);
            this.fProjectBuildTimes.put(project, time);
        }
        return time.getLastBuildDate().getTime();
    }

    private void notifyTargets(final List resources, final List qualifiedNames) {
        Runnable runnable;
        final List hotSwapTargets = this.getHotSwapTargets();
        final List noHotSwapTargets = this.getNoHotSwapTargets();
        if (!hotSwapTargets.isEmpty()) {
            runnable = new Runnable(){

                public void run() {
                    JavaHotCodeReplaceManager.this.doHotCodeReplace(hotSwapTargets, resources, qualifiedNames);
                }
            };
            DebugPlugin.getDefault().asyncExec(runnable);
        }
        if (!noHotSwapTargets.isEmpty()) {
            runnable = new Runnable(){

                public void run() {
                    JavaHotCodeReplaceManager.this.notifyUnsupportedHCR(noHotSwapTargets, resources, qualifiedNames);
                }
            };
            DebugPlugin.getDefault().asyncExec(runnable);
        }
    }

    private void filterUnloadedTypes(JDIDebugTarget target, List resources, List qualifiedNames) {
        int i = 0;
        int numElements = qualifiedNames.size();
        while (i < numElements) {
            String name = (String)qualifiedNames.get(i);
            List list = target.jdiClassesByName(name);
            if (list.isEmpty()) {
                qualifiedNames.remove(i);
                resources.remove(i);
                --i;
                --numElements;
            }
            ++i;
        }
    }

    protected void notifyUnsupportedHCR(List targets, List resources, List qualifiedNames) {
        Iterator iter = targets.iterator();
        JDIDebugTarget target = null;
        while (iter.hasNext()) {
            target = (JDIDebugTarget)iter.next();
            if (target.isAvailable()) {
                ArrayList resourcesToReplace = new ArrayList(resources);
                ArrayList qualifiedNamesToReplace = new ArrayList(qualifiedNames);
                this.filterUnloadedTypes(target, resourcesToReplace, qualifiedNamesToReplace);
                if (qualifiedNamesToReplace.isEmpty()) continue;
                this.fireHCRFailed(target, null);
                this.notifyFailedHCR(target, qualifiedNamesToReplace);
                continue;
            }
            this.deregisterTarget(target);
        }
    }

    protected void notifyFailedHCR(JDIDebugTarget target, List qualifiedNames) {
        if (target.isAvailable()) {
            target.addOutOfSynchTypes(qualifiedNames);
            target.fireChangeEvent(256);
        }
    }

    protected synchronized List getHotSwapTargets() {
        return (List)this.fHotSwapTargets.clone();
    }

    protected synchronized List getNoHotSwapTargets() {
        return (List)this.fNoHotSwapTargets.clone();
    }

    private void doHotCodeReplace(List targets, List resources, List qualifiedNames) {
        MultiStatus ms = new MultiStatus(JDIDebugPlugin.getUniqueIdentifier(), 5010, "At least one target failed to drop to frame after successful hot code replace.", null);
        Iterator iter = targets.iterator();
        while (iter.hasNext()) {
            JDIDebugTarget target = (JDIDebugTarget)iter.next();
            if (!target.isAvailable()) {
                this.deregisterTarget(target);
                continue;
            }
            ArrayList resourcesToReplace = new ArrayList(resources);
            ArrayList qualifiedNamesToReplace = new ArrayList(qualifiedNames);
            this.filterUnloadedTypes(target, resourcesToReplace, qualifiedNamesToReplace);
            if (qualifiedNamesToReplace.isEmpty()) continue;
            ArrayList poppedThreads = new ArrayList();
            target.setIsPerformingHotCodeReplace(true);
            try {
                block17: {
                    boolean framesPopped;
                    block16: {
                        framesPopped = false;
                        if (target.canPopFrames()) {
                            try {
                                this.attemptPopFrames(target, resourcesToReplace, qualifiedNamesToReplace, poppedThreads);
                                framesPopped = true;
                            }
                            catch (DebugException de) {
                                if (!this.shouldLogHCRException(de)) break block16;
                                ms.merge(de.getStatus());
                            }
                        }
                    }
                    target.removeOutOfSynchTypes(qualifiedNamesToReplace);
                    if (target.supportsJDKHotCodeReplace()) {
                        this.redefineTypesJDK(target, resourcesToReplace, qualifiedNamesToReplace);
                    } else if (target.supportsJ9HotCodeReplace()) {
                        this.redefineTypesJ9(target, qualifiedNamesToReplace);
                    }
                    if (this.containsObsoleteMethods(target)) {
                        this.fireObsoleteMethods(target);
                    }
                    try {
                        if (target.canPopFrames() && framesPopped) {
                            target.setIsPerformingHotCodeReplace(false);
                            this.attemptStepIn(poppedThreads);
                        } else {
                            this.attemptDropToFrame(target, resourcesToReplace, qualifiedNamesToReplace);
                        }
                    }
                    catch (DebugException de) {
                        if (!this.shouldLogHCRException(de)) break block17;
                        ms.merge(de.getStatus());
                    }
                }
                this.fireHCRSucceeded(target);
            }
            catch (DebugException de) {
                this.fireHCRFailed(target, de);
            }
            target.setIsPerformingHotCodeReplace(false);
            target.fireChangeEvent(512);
        }
        if (!ms.isOK()) {
            JDIDebugPlugin.log((IStatus)ms);
        }
        this.fDeltaCache.clear();
    }

    private boolean shouldLogHCRException(DebugException exception) {
        return !(exception.getStatus().getException() instanceof IncompatibleThreadStateException) && exception.getStatus().getCode() != 102 && exception.getStatus().getCode() != 100;
    }

    private void redefineTypesJ9(JDIDebugTarget target, List qualifiedNames) throws DebugException {
        String[] typeNames = qualifiedNames.toArray(new String[qualifiedNames.size()]);
        if (target.supportsJ9HotCodeReplace()) {
            target.setHCROccurred(true);
            VirtualMachine vm = (VirtualMachine)target.getVM();
            if (vm == null) {
                target.requestFailed(JDIDebugHCRMessages.JavaHotCodeReplaceManager_Hot_code_replace_failed___VM_disconnected__1, null);
            }
            int result = 1;
            try {
                result = vm.classesHaveChanged(typeNames);
            }
            catch (RuntimeException e) {
                target.targetRequestFailed(MessageFormat.format((String)JDIDebugHCRMessages.JavaHotCodeReplaceManager_exception_replacing_types, (Object[])new String[]{e.toString()}), e);
            }
            switch (result) {
                case 0: {
                    break;
                }
                case 2: {
                    target.targetRequestFailed(JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_ignored, null);
                    break;
                }
                case 1: {
                    target.targetRequestFailed(JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_failed, null);
                    target.addOutOfSynchTypes(qualifiedNames);
                }
            }
        } else {
            target.notSupported(JDIDebugHCRMessages.JavaHotCodeReplaceManager_does_not_support_hcr);
            target.addOutOfSynchTypes(qualifiedNames);
        }
    }

    private void redefineTypesJDK(JDIDebugTarget target, List resources, List qualifiedNames) throws DebugException {
        if (target.supportsJDKHotCodeReplace()) {
            target.setHCROccurred(true);
            Map typesToBytes = this.getTypesToBytes(target, resources, qualifiedNames);
            try {
                com.sun.jdi.VirtualMachine vm = target.getVM();
                if (vm == null) {
                    target.requestFailed(JDIDebugHCRMessages.JavaHotCodeReplaceManager_Hot_code_replace_failed___VM_disconnected__2, null);
                }
                vm.redefineClasses(typesToBytes);
            }
            catch (UnsupportedOperationException exception) {
                String detail = exception.getMessage();
                if (detail != null) {
                    this.redefineTypesFailedJDK(target, qualifiedNames, MessageFormat.format((String)JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_unsupported_operation, (Object[])new String[]{detail}), exception);
                } else {
                    this.redefineTypesFailedJDK(target, qualifiedNames, JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_unsupported_redefinition, exception);
                }
            }
            catch (NoClassDefFoundError exception) {
                this.redefineTypesFailedJDK(target, qualifiedNames, JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_bad_bytes, exception);
            }
            catch (VerifyError exception) {
                this.redefineTypesFailedJDK(target, qualifiedNames, JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_verify_error, exception);
            }
            catch (UnsupportedClassVersionError exception) {
                this.redefineTypesFailedJDK(target, qualifiedNames, JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_unsupported_class_version, exception);
            }
            catch (ClassFormatError exception) {
                this.redefineTypesFailedJDK(target, qualifiedNames, JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_class_format_error, exception);
            }
            catch (ClassCircularityError exception) {
                this.redefineTypesFailedJDK(target, qualifiedNames, JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_class_circularity_error, exception);
            }
            catch (RuntimeException exception) {
                this.redefineTypesFailedJDK(target, qualifiedNames, JDIDebugHCRMessages.JavaHotCodeReplaceManager_hcr_failed, exception);
            }
            target.reinstallBreakpointsIn(resources, qualifiedNames);
        } else {
            target.notSupported(JDIDebugHCRMessages.JavaHotCodeReplaceManager_does_not_support_hcr);
        }
    }

    private void redefineTypesFailedJDK(JDIDebugTarget target, List qualifiedNames, String message, Throwable exception) throws DebugException {
        target.addOutOfSynchTypes(qualifiedNames);
        target.jdiRequestFailed(message, exception);
    }

    private Map getTypesToBytes(JDIDebugTarget target, List resources, List qualifiedNames) {
        HashMap<ReferenceType, byte[]> typesToBytes = new HashMap<ReferenceType, byte[]>(resources.size());
        Iterator resourceIter = resources.iterator();
        Iterator nameIter = qualifiedNames.iterator();
        while (resourceIter.hasNext()) {
            IResource resource = (IResource)resourceIter.next();
            String name = (String)nameIter.next();
            List classes = target.jdiClassesByName(name);
            byte[] bytes = null;
            try {
                bytes = Util.getResourceContentsAsByteArray((IFile)((IFile)resource));
            }
            catch (JavaModelException javaModelException) {
                continue;
            }
            Iterator classIter = classes.iterator();
            while (classIter.hasNext()) {
                ReferenceType type = (ReferenceType)classIter.next();
                typesToBytes.put(type, bytes);
            }
        }
        return typesToBytes;
    }

    private Object[] getHotCodeReplaceListeners(IJavaDebugTarget target) {
        Object[] listeners = null;
        if (target instanceof JDIDebugTarget) {
            listeners = ((JDIDebugTarget)target).getHotCodeReplaceListeners();
        }
        if (listeners == null || listeners.length == 0) {
            listeners = this.fHotCodeReplaceListeners.getListeners();
        }
        return listeners;
    }

    private void fireHCRSucceeded(IJavaDebugTarget target) {
        Object[] listeners = this.getHotCodeReplaceListeners(target);
        int i = 0;
        while (i < listeners.length) {
            ((IJavaHotCodeReplaceListener)listeners[i]).hotCodeReplaceSucceeded(target);
            ++i;
        }
    }

    private void fireHCRFailed(JDIDebugTarget target, DebugException exception) {
        Object[] listeners = this.getHotCodeReplaceListeners(target);
        int i = 0;
        while (i < listeners.length) {
            ((IJavaHotCodeReplaceListener)listeners[i]).hotCodeReplaceFailed(target, exception);
            ++i;
        }
    }

    private void fireObsoleteMethods(JDIDebugTarget target) {
        Object[] listeners = this.getHotCodeReplaceListeners(target);
        int i = 0;
        while (i < listeners.length) {
            ((IJavaHotCodeReplaceListener)listeners[i]).obsoleteMethods(target);
            ++i;
        }
    }

    protected void attemptDropToFrame(JDIDebugTarget target, List resources, List replacedClassNames) throws DebugException {
        List dropFrames = this.getAffectedFrames(target.getThreads(), resources, replacedClassNames);
        JDIStackFrame dropFrame = null;
        Iterator iter = dropFrames.iterator();
        while (iter.hasNext()) {
            try {
                dropFrame = (JDIStackFrame)iter.next();
                dropFrame.dropToFrame();
            }
            catch (DebugException debugException) {
                this.notifyFailedDrop(((JDIThread)dropFrame.getThread()).computeStackFrames(), replacedClassNames);
            }
        }
    }

    protected void attemptPopFrames(JDIDebugTarget target, List resources, List replacedClassNames, List poppedThreads) throws DebugException {
        List popFrames = this.getAffectedFrames(target.getThreads(), resources, replacedClassNames);
        JDIStackFrame popFrame = null;
        Iterator iter = popFrames.iterator();
        while (iter.hasNext()) {
            try {
                popFrame = (JDIStackFrame)iter.next();
                popFrame.popFrame();
                poppedThreads.add(popFrame.getThread());
            }
            catch (DebugException debugException) {
                poppedThreads.remove(popFrame.getThread());
                this.notifyFailedDrop(((JDIThread)popFrame.getThread()).computeStackFrames(), replacedClassNames);
            }
        }
    }

    protected boolean containsObsoleteMethods(JDIDebugTarget target) throws DebugException {
        IThread[] threads = target.getThreads();
        List frames = null;
        Iterator iter = null;
        int i = 0;
        int numThreads = threads.length;
        while (i < numThreads) {
            frames = ((JDIThread)threads[i]).computeNewStackFrames();
            iter = frames.iterator();
            while (iter.hasNext()) {
                if (!((JDIStackFrame)iter.next()).isObsolete()) continue;
                return true;
            }
            ++i;
        }
        return false;
    }

    protected List getAffectedFrames(IThread[] threads, List resourceList, List replacedClassNames) throws DebugException {
        JDIThread thread = null;
        JDIStackFrame affectedFrame = null;
        ArrayList<JDIStackFrame> popFrames = new ArrayList<JDIStackFrame>();
        int numThreads = threads.length;
        IResource[] resources = new IResource[resourceList.size()];
        resourceList.toArray(resources);
        int i = 0;
        while (i < numThreads) {
            thread = (JDIThread)threads[i];
            if (thread.isSuspended() && (affectedFrame = this.getAffectedFrame(thread, replacedClassNames)) != null) {
                if (affectedFrame.supportsDropToFrame()) {
                    popFrames.add(affectedFrame);
                } else {
                    int j = 0;
                    while (j < numThreads) {
                        this.notifyFailedDrop(((JDIThread)threads[i]).computeStackFrames(), replacedClassNames);
                        ++j;
                    }
                    throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), 5011, JDIDebugHCRMessages.JavaHotCodeReplaceManager_Drop_to_frame_not_supported, null));
                }
            }
            ++i;
        }
        return popFrames;
    }

    /*
     * Unable to fully structure code
     */
    protected JDIStackFrame getAffectedFrame(JDIThread thread, List replacedClassNames) throws DebugException {
        frames = thread.computeStackFrames();
        affectedFrame = null;
        frame = null;
        compilationUnit = null;
        delta = null;
        project = null;
        j = frames.size() - 1;
        block2: while (j >= 0) {
            block6: {
                block5: {
                    frame = (JDIStackFrame)frames.get(j);
                    if (!this.containsChangedType(frame, replacedClassNames)) break block6;
                    compilationUnit = this.getCompilationUnit(frame);
                    if (compilationUnit != null) {
                        try {
                            project = compilationUnit.getCorrespondingResource().getProject();
                            delta = this.getDelta(compilationUnit, this.getLastProjectBuildTime(project));
                            if (delta.hasChanged(frame.getName(), frame.getSignature())) break block5;
                            break block6;
                        }
                        catch (CoreException v0) {}
                    }
                }
                if (!frame.supportsDropToFrame()) ** GOTO lbl26
                affectedFrame = frame;
                break;
lbl-1000:
                // 1 sources

                {
                    if (!(frame = (JDIStackFrame)frames.get(--j)).supportsDropToFrame()) continue;
                    affectedFrame = frame;
                    break block2;
lbl26:
                    // 2 sources

                    ** while (j > 0)
                }
lbl27:
                // 1 sources

                break;
            }
            --j;
        }
        return affectedFrame;
    }

    private CompilationUnitDelta getDelta(ICompilationUnit cu, long time) throws CoreException {
        CompilationUnitDelta delta = (CompilationUnitDelta)this.fDeltaCache.get(cu);
        if (delta == null) {
            delta = new CompilationUnitDelta(cu, time);
            this.fDeltaCache.put(cu, delta);
        }
        return delta;
    }

    protected boolean containsChangedType(JDIStackFrame frame, List replacedClassNames) throws DebugException {
        String declaringTypeName = frame.getDeclaringTypeName();
        if (replacedClassNames.contains(declaringTypeName)) {
            return true;
        }
        Iterator iter = replacedClassNames.iterator();
        String className = null;
        while (iter.hasNext()) {
            className = (String)iter.next();
            int index = className.indexOf(36);
            if (index <= -1 || !declaringTypeName.equals(className.substring(0, index))) continue;
            return true;
        }
        return false;
    }

    protected void attemptStepIn(List threads) throws DebugException {
        Iterator iter = threads.iterator();
        while (iter.hasNext()) {
            ((JDIThread)iter.next()).stepInto();
        }
    }

    protected ICompilationUnit getCompilationUnit(IJavaStackFrame frame) {
        ILaunch launch = frame.getLaunch();
        if (launch == null) {
            return null;
        }
        ISourceLocator locator = launch.getSourceLocator();
        if (locator == null) {
            return null;
        }
        IJavaDebugTarget target = (IJavaDebugTarget)frame.getDebugTarget();
        String def = target.getDefaultStratum();
        target.setDefaultStratum("Java");
        Object sourceElement = locator.getSourceElement((IStackFrame)frame);
        target.setDefaultStratum(def);
        if (!(sourceElement instanceof IJavaElement) && sourceElement instanceof IAdaptable) {
            IAdaptable iAdaptable = (IAdaptable)sourceElement;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.core.IJavaElement");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            sourceElement = iAdaptable.getAdapter((Class)clazz);
        }
        if (sourceElement instanceof IType) {
            return ((IType)sourceElement).getCompilationUnit();
        }
        if (sourceElement instanceof ICompilationUnit) {
            return (ICompilationUnit)sourceElement;
        }
        return null;
    }

    public IMethod getMethod(JDIStackFrame frame, ICompilationUnit unit) throws CoreException {
        String declaringTypeName = frame.getDeclaringTypeName();
        String methodName = frame.getMethodName();
        String[] arguments = null;
        try {
            arguments = Signature.getParameterTypes((String)frame.getSignature());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
        String typeName = this.getUnqualifiedName(declaringTypeName);
        int index = typeName.indexOf(36);
        IType type = null;
        if (index > 0) {
            String remaining = typeName.substring(index + 1);
            typeName = typeName.substring(0, index);
            type = unit.getType(typeName);
            while (remaining != null) {
                index = remaining.indexOf(36);
                if (index > 0) {
                    typeName = remaining.substring(0, index);
                    remaining = remaining.substring(index + 1);
                } else {
                    typeName = remaining;
                    remaining = null;
                }
                type = type.getType(typeName);
            }
        } else {
            type = unit.getType(typeName);
        }
        if (type != null) {
            return type.getMethod(methodName, arguments);
        }
        return null;
    }

    protected String getUnqualifiedName(String qualifiedName) {
        int index = qualifiedName.lastIndexOf(46);
        return qualifiedName.substring(index + 1);
    }

    private void notifyFailedDrop(List frames, List replacedClassNames) throws DebugException {
        Iterator iter = frames.iterator();
        while (iter.hasNext()) {
            JDIStackFrame frame = (JDIStackFrame)iter.next();
            if (!replacedClassNames.contains(frame.getDeclaringTypeName())) continue;
            frame.setOutOfSynch(true);
        }
    }

    protected ChangedClassFilesVisitor getChangedClassFiles(IResourceChangeEvent event) {
        IResourceDelta delta = event.getDelta();
        if (event.getType() != 16 || delta == null) {
            return null;
        }
        this.fClassfileVisitor.reset();
        try {
            delta.accept((IResourceDeltaVisitor)this.fClassfileVisitor);
        }
        catch (CoreException e) {
            JDIDebugPlugin.log(e);
            return null;
        }
        return this.fClassfileVisitor;
    }

    public void addHotCodeReplaceListener(IJavaHotCodeReplaceListener listener) {
        this.fHotCodeReplaceListeners.add((Object)listener);
    }

    public void removeHotCodeReplaceListener(IJavaHotCodeReplaceListener listener) {
        this.fHotCodeReplaceListeners.remove((Object)listener);
    }

    public void launchRemoved(ILaunch launch) {
        IDebugTarget[] debugTargets = launch.getDebugTargets();
        int i = 0;
        while (i < debugTargets.length) {
            IJavaDebugTarget jt;
            IDebugTarget iDebugTarget = debugTargets[i];
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((jt = (IJavaDebugTarget)iDebugTarget.getAdapter((Class)clazz)) != null) {
                this.deregisterTarget((JDIDebugTarget)jt);
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void launchAdded(ILaunch launch) {
        IDebugTarget[] debugTargets = launch.getDebugTargets();
        int i = 0;
        while (i < debugTargets.length) {
            IJavaDebugTarget jt;
            IDebugTarget iDebugTarget = debugTargets[i];
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((jt = (IJavaDebugTarget)iDebugTarget.getAdapter((Class)clazz)) != null) {
                JDIDebugTarget target = (JDIDebugTarget)jt;
                if (target.supportsHotCodeReplace()) {
                    this.addHotSwapTarget(target);
                } else if (target.isAvailable()) {
                    this.addNonHotSwapTarget(target);
                }
            }
            ++i;
        }
        JavaHotCodeReplaceManager javaHotCodeReplaceManager = this;
        synchronized (javaHotCodeReplaceManager) {
            if (!this.fHotSwapTargets.isEmpty() || !this.fNoHotSwapTargets.isEmpty()) {
                this.getWorkspace().addResourceChangeListener((IResourceChangeListener)this, 16);
            }
        }
    }

    public void launchChanged(ILaunch launch) {
        this.launchAdded(launch);
    }

    public void handleDebugEvents(DebugEvent[] events) {
        int i = 0;
        while (i < events.length) {
            Object source;
            DebugEvent event = events[i];
            if (event.getKind() == 8 && (source = event.getSource()) instanceof IAdaptable && source instanceof IDebugTarget) {
                IJavaDebugTarget jt;
                IAdaptable iAdaptable = (IAdaptable)source;
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((jt = (IJavaDebugTarget)iAdaptable.getAdapter((Class)clazz)) != null) {
                    this.deregisterTarget((JDIDebugTarget)jt);
                }
            }
            ++i;
        }
    }

    protected void deregisterTarget(JDIDebugTarget target) {
        if (!this.fHotSwapTargets.remove(target)) {
            this.fNoHotSwapTargets.remove(target);
        }
        ILaunch[] launches = DebugPlugin.getDefault().getLaunchManager().getLaunches();
        int i = 0;
        while (i < launches.length) {
            IDebugTarget[] targets = launches[i].getDebugTargets();
            int j = 0;
            while (j < targets.length) {
                IJavaDebugTarget jt;
                IDebugTarget debugTarget = targets[j];
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((jt = (IJavaDebugTarget)debugTarget.getAdapter((Class)clazz)) != null && ((JDIDebugTarget)jt).isAvailable()) {
                    return;
                }
                ++j;
            }
            ++i;
        }
    }

    protected synchronized void addHotSwapTarget(JDIDebugTarget target) {
        if (!this.fHotSwapTargets.contains(target)) {
            this.fHotSwapTargets.add(target);
        }
    }

    protected synchronized void addNonHotSwapTarget(JDIDebugTarget target) {
        if (!this.fNoHotSwapTargets.contains(target)) {
            this.fNoHotSwapTargets.add(target);
        }
    }

    class ChangedClassFilesVisitor
    implements IResourceDeltaVisitor {
        protected List fFiles = null;
        protected List fNames = null;

        ChangedClassFilesVisitor() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public boolean visit(IResourceDelta delta) {
            if (delta == null) return false;
            if ((delta.getKind() & 4) == 0) {
                return false;
            }
            IResource resource = delta.getResource();
            if (resource == null) return true;
            switch (resource.getType()) {
                case 1: {
                    if ((delta.getFlags() & 0x100) == 0) {
                        return false;
                    }
                    if (!JavaHotCodeReplaceManager.CLASS_FILE_EXTENSION.equals(resource.getFullPath().getFileExtension())) return false;
                    IPath localLocation = resource.getLocation();
                    if (localLocation == null) return false;
                    String path = localLocation.toOSString();
                    IClassFileReader reader = ToolFactory.createDefaultClassFileReader((String)path, (int)17);
                    if (reader == null) return false;
                    String qualifiedName = new String(reader.getClassName());
                    boolean hasBlockingErrors = false;
                    try {
                        if (!JDIDebugModel.getPreferences().getBoolean(JDIDebugModel.PREF_HCR_WITH_COMPILATION_ERRORS)) {
                            IResource sourceFile;
                            IJavaProject pro = JavaCore.create((IProject)resource.getProject());
                            ISourceAttribute sourceAttribute = reader.getSourceFileAttribute();
                            String sourceName = null;
                            if (sourceAttribute != null) {
                                sourceName = new String(sourceAttribute.getSourceFileName());
                            }
                            if ((sourceFile = this.getSourceFile(pro, qualifiedName, sourceName)) != null) {
                                IMarker[] problemMarkers = null;
                                problemMarkers = sourceFile.findMarkers("org.eclipse.jdt.core.problem", true, 2);
                                int i = 0;
                                while (i < problemMarkers.length) {
                                    if (problemMarkers[i].getAttribute("severity", -1) == 2) {
                                        return false;
                                    }
                                    ++i;
                                }
                            }
                        }
                    }
                    catch (CoreException e) {
                        JDIDebugPlugin.log(e);
                    }
                    if (hasBlockingErrors) return false;
                    this.fFiles.add(resource);
                    this.fNames.add(qualifiedName.replace('/', '.'));
                    return false;
                }
            }
            return true;
        }

        public void reset() {
            this.fFiles = new ArrayList();
            this.fNames = new ArrayList();
        }

        public List getChangedClassFiles() {
            return this.fFiles;
        }

        public List getQualifiedNamesList() {
            return this.fNames;
        }

        private IResource getSourceFile(IJavaProject project, String qualifiedName, String sourceAttribute) {
            String name = null;
            IJavaElement element = null;
            try {
                if (sourceAttribute == null) {
                    element = JavaDebugUtils.findElement(qualifiedName, project);
                } else {
                    int i = qualifiedName.lastIndexOf(47);
                    if (i > 0) {
                        name = qualifiedName.substring(0, i + 1);
                        name = String.valueOf(name) + sourceAttribute;
                    } else {
                        name = sourceAttribute;
                    }
                    element = project.findElement((IPath)new Path(name));
                }
                if (element instanceof ICompilationUnit) {
                    ICompilationUnit cu = (ICompilationUnit)element;
                    return cu.getCorrespondingResource();
                }
            }
            catch (CoreException coreException) {}
            return null;
        }
    }

    class ProjectBuildTime {
        private Date fCurrentDate = new Date();
        private Date fPreviousDate = new Date();

        ProjectBuildTime() {
        }

        public void setCurrentBuildDate(Date date) {
            this.fPreviousDate = this.fCurrentDate;
            this.fCurrentDate = date;
        }

        public void setLastBuildDate(Date date) {
            this.fPreviousDate = date;
            if (this.fPreviousDate.getTime() > this.fCurrentDate.getTime()) {
                this.fCurrentDate = this.fPreviousDate;
            }
        }

        public Date getLastBuildDate() {
            return this.fPreviousDate;
        }
    }
}

