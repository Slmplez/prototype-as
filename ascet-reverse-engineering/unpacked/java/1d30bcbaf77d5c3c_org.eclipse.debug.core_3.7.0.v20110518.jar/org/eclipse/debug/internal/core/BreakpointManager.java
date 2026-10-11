/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IMarkerDelta
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IBreakpointListener;
import org.eclipse.debug.core.IBreakpointManager;
import org.eclipse.debug.core.IBreakpointManagerListener;
import org.eclipse.debug.core.IBreakpointsListener;
import org.eclipse.debug.core.model.IBreakpoint;
import org.eclipse.debug.core.model.IBreakpointImportParticipant;
import org.eclipse.debug.internal.core.BreakpointImportParticipantDelegate;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.IInternalDebugCoreConstants;
import org.eclipse.debug.internal.core.Preferences;

public class BreakpointManager
implements IBreakpointManager,
IResourceChangeListener {
    private static final int ADDED = 0;
    private static final int REMOVED = 1;
    private static final int CHANGED = 2;
    private Vector fBreakpoints = null;
    private HashMap fImportParticipants = null;
    private IBreakpointImportParticipant fDefaultParticipant = null;
    private Set fPostChangMarkersChanged = new HashSet();
    private Set fPostBuildMarkersAdded = new HashSet();
    private List fSuppressChange = new ArrayList();
    private HashMap fBreakpointExtensions;
    private HashMap fMarkersToBreakpoints;
    private ListenerList fBreakpointListeners = new ListenerList();
    private ListenerList fBreakpointsListeners = new ListenerList();
    private static BreakpointManagerVisitor fgVisitor;
    private ListenerList fBreakpointManagerListeners = new ListenerList();
    private PostChangeListener fPostChangeListener = new PostChangeListener();

    public BreakpointManager() {
        this.fMarkersToBreakpoints = new HashMap(10);
        this.fBreakpointExtensions = new HashMap(15);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void loadBreakpoints(IResource resource, boolean notify) throws CoreException {
        this.initBreakpointExtensions();
        IMarker[] markers = this.getPersistedMarkers(resource);
        ArrayList<IBreakpoint> added = new ArrayList<IBreakpoint>();
        int i = 0;
        while (i < markers.length) {
            IMarker marker = markers[i];
            try {
                IBreakpoint breakpoint = this.createBreakpoint(marker);
                Set set = this.fPostChangMarkersChanged;
                synchronized (set) {
                    this.fPostBuildMarkersAdded.add(marker);
                }
                if (breakpoint.isRegistered()) {
                    added.add(breakpoint);
                }
            }
            catch (DebugException e) {
                DebugPlugin.log((Throwable)((Object)e));
            }
            ++i;
        }
        this.addBreakpoints(added.toArray(new IBreakpoint[added.size()]), notify);
    }

    protected IMarker[] getPersistedMarkers(IResource resource) throws CoreException {
        IMarker[] markers = resource.findMarkers(IBreakpoint.BREAKPOINT_MARKER, true, 2);
        ArrayList<IMarker> delete = new ArrayList<IMarker>();
        ArrayList<IMarker> persisted = new ArrayList<IMarker>();
        int i = 0;
        while (i < markers.length) {
            IMarker marker = markers[i];
            String modelId = marker.getAttribute("org.eclipse.debug.core.id", null);
            if (modelId == null) {
                delete.add(marker);
            } else if (!marker.getAttribute("org.eclipse.debug.core.persisted", true)) {
                delete.add(marker);
            } else {
                persisted.add(marker);
            }
            ++i;
        }
        if (!delete.isEmpty()) {
            final IMarker[] delMarkers = delete.toArray(new IMarker[delete.size()]);
            IWorkspaceRunnable wr = new IWorkspaceRunnable(){

                public void run(IProgressMonitor pm) throws CoreException {
                    int i = 0;
                    while (i < delMarkers.length) {
                        IMarker marker = delMarkers[i];
                        marker.delete();
                        ++i;
                    }
                }
            };
            new BreakpointManagerJob(wr).schedule();
        }
        return persisted.toArray(new IMarker[persisted.size()]);
    }

    public void shutdown() {
        this.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
        this.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this.fPostChangeListener);
        this.fBreakpointListeners = null;
        this.fBreakpointsListeners = null;
        this.fBreakpointManagerListeners = null;
        if (this.fImportParticipants != null) {
            this.fImportParticipants.clear();
            this.fImportParticipants = null;
            this.fDefaultParticipant = null;
        }
    }

    private void initBreakpointExtensions() {
        IExtensionPoint ep = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "breakpoints");
        IConfigurationElement[] elements = ep.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            String markerType = elements[i].getAttribute("markerType");
            String className = elements[i].getAttribute("class");
            if (markerType == null) {
                DebugPlugin.log((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "Breakpoint extension " + elements[i].getDeclaringExtension().getUniqueIdentifier() + " missing required attribute: markerType", null));
            } else if (className == null) {
                DebugPlugin.log((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "Breakpoint extension " + elements[i].getDeclaringExtension().getUniqueIdentifier() + " missing required attribute: class", null));
            } else {
                this.fBreakpointExtensions.put(markerType, elements[i]);
            }
            ++i;
        }
    }

    private IWorkspace getWorkspace() {
        return ResourcesPlugin.getWorkspace();
    }

    public IBreakpoint getBreakpoint(IMarker marker) {
        this.getBreakpoints0();
        return (IBreakpoint)this.fMarkersToBreakpoints.get(marker);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IBreakpoint[] getBreakpoints() {
        Vector breakpoints;
        Object[] temp = new IBreakpoint[]{};
        Vector vector = breakpoints = this.getBreakpoints0();
        synchronized (vector) {
            temp = new IBreakpoint[breakpoints.size()];
            breakpoints.copyInto(temp);
        }
        return temp;
    }

    private synchronized Vector getBreakpoints0() {
        if (this.fBreakpoints == null) {
            this.initializeBreakpoints();
        }
        return this.fBreakpoints;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IBreakpoint[] getBreakpoints(String modelIdentifier) {
        Vector allBreakpoints;
        Vector vector = allBreakpoints = this.getBreakpoints0();
        synchronized (vector) {
            ArrayList<IBreakpoint> temp = new ArrayList<IBreakpoint>(allBreakpoints.size());
            Iterator breakpoints = allBreakpoints.iterator();
            while (breakpoints.hasNext()) {
                IBreakpoint breakpoint = (IBreakpoint)breakpoints.next();
                String id = breakpoint.getModelIdentifier();
                if (id == null || !id.equals(modelIdentifier)) continue;
                temp.add(breakpoint);
            }
            return temp.toArray(new IBreakpoint[temp.size()]);
        }
    }

    private void initializeBreakpoints() {
        this.setBreakpoints(new Vector(10));
        try {
            this.loadBreakpoints((IResource)this.getWorkspace().getRoot(), false);
            this.getWorkspace().addResourceChangeListener((IResourceChangeListener)this, 16);
            this.getWorkspace().addResourceChangeListener((IResourceChangeListener)this.fPostChangeListener, 1);
        }
        catch (CoreException ce) {
            DebugPlugin.log(ce);
            this.setBreakpoints(new Vector(0));
        }
    }

    public boolean isRegistered(IBreakpoint breakpoint) {
        return this.getBreakpoints0().contains(breakpoint);
    }

    public void removeBreakpoint(IBreakpoint breakpoint, boolean delete) throws CoreException {
        this.removeBreakpoints(new IBreakpoint[]{breakpoint}, delete);
    }

    public void removeBreakpoints(IBreakpoint[] breakpoints, final boolean delete) throws CoreException {
        IBreakpoint breakpoint;
        final ArrayList<IBreakpoint> remove = new ArrayList<IBreakpoint>(breakpoints.length);
        int i = 0;
        while (i < breakpoints.length) {
            breakpoint = breakpoints[i];
            if (this.getBreakpoints0().contains(breakpoint)) {
                remove.add(breakpoint);
            }
            ++i;
        }
        if (!remove.isEmpty()) {
            Iterator iter = remove.iterator();
            while (iter.hasNext()) {
                breakpoint = (IBreakpoint)iter.next();
                this.getBreakpoints0().remove(breakpoint);
                this.fMarkersToBreakpoints.remove(breakpoint.getMarker());
            }
            this.fireUpdate(remove, null, 1);
            IWorkspaceRunnable r = new IWorkspaceRunnable(){

                public void run(IProgressMonitor montitor) throws CoreException {
                    Iterator innerIter = remove.iterator();
                    while (innerIter.hasNext()) {
                        IProject project;
                        IBreakpoint breakpoint = (IBreakpoint)innerIter.next();
                        if (delete) {
                            breakpoint.delete();
                            continue;
                        }
                        IMarker marker = breakpoint.getMarker();
                        if (!marker.exists() || (project = breakpoint.getMarker().getResource().getProject()) != null && !project.isOpen()) continue;
                        breakpoint.setRegistered(false);
                    }
                }
            };
            this.getWorkspace().run(r, null, 0, null);
        }
    }

    public IBreakpoint createBreakpoint(IMarker marker) throws DebugException {
        IBreakpoint breakpoint = (IBreakpoint)this.fMarkersToBreakpoints.get(marker);
        if (breakpoint != null) {
            return breakpoint;
        }
        try {
            IConfigurationElement config = (IConfigurationElement)this.fBreakpointExtensions.get(marker.getType());
            if (config == null) {
                throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5014, MessageFormat.format((String)DebugCoreMessages.BreakpointManager_Missing_breakpoint_definition, (Object[])new String[]{marker.getType()}), null));
            }
            Object object = config.createExecutableExtension("class");
            if (object instanceof IBreakpoint) {
                breakpoint = (IBreakpoint)object;
                breakpoint.setMarker(marker);
            } else {
                DebugPlugin.log((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "Breakpoint extension " + config.getDeclaringExtension().getUniqueIdentifier() + " missing required attribute: class", null));
            }
            return breakpoint;
        }
        catch (CoreException e) {
            throw new DebugException(e.getStatus());
        }
    }

    public void addBreakpoint(IBreakpoint breakpoint) throws CoreException {
        this.addBreakpoints(new IBreakpoint[]{breakpoint});
    }

    public void addBreakpoints(IBreakpoint[] breakpoints) throws CoreException {
        this.addBreakpoints(breakpoints, true);
    }

    private void addBreakpoints(IBreakpoint[] breakpoints, boolean notify) throws CoreException {
        ArrayList<IBreakpoint> added = new ArrayList<IBreakpoint>(breakpoints.length);
        final ArrayList<IBreakpoint> update = new ArrayList<IBreakpoint>();
        int i = 0;
        while (i < breakpoints.length) {
            IBreakpoint breakpoint = breakpoints[i];
            if (!this.getBreakpoints0().contains(breakpoint)) {
                this.verifyBreakpoint(breakpoint);
                if (breakpoint.isRegistered()) {
                    added.add(breakpoint);
                    this.getBreakpoints0().add(breakpoint);
                    this.fMarkersToBreakpoints.put(breakpoint.getMarker(), breakpoint);
                } else {
                    update.add(breakpoint);
                }
            }
            ++i;
        }
        if (notify) {
            this.fireUpdate(added, null, 0);
        }
        if (!update.isEmpty()) {
            IWorkspaceRunnable r = new IWorkspaceRunnable(){

                public void run(IProgressMonitor monitor) throws CoreException {
                    Iterator iter = update.iterator();
                    while (iter.hasNext()) {
                        IBreakpoint breakpoint = (IBreakpoint)iter.next();
                        BreakpointManager.this.getBreakpoints0().add(breakpoint);
                        breakpoint.setRegistered(true);
                        BreakpointManager.this.fMarkersToBreakpoints.put(breakpoint.getMarker(), breakpoint);
                    }
                }
            };
            this.fSuppressChange.addAll(update);
            this.getWorkspace().run(r, null, 0, null);
            this.fSuppressChange.removeAll(update);
            if (notify) {
                this.fireUpdate(update, null, 0);
            }
        }
    }

    protected boolean isChangeSuppressed(IBreakpoint breakpoint) {
        return this.fSuppressChange.contains(breakpoint);
    }

    public void fireBreakpointChanged(IBreakpoint breakpoint) {
        if (this.getBreakpoints0().contains(breakpoint)) {
            ArrayList<IBreakpoint> changed = new ArrayList<IBreakpoint>();
            changed.add(breakpoint);
            this.fireUpdate(changed, null, 2);
        }
    }

    private void verifyBreakpoint(IBreakpoint breakpoint) throws DebugException {
        try {
            String id = breakpoint.getModelIdentifier();
            if (id == null) {
                throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5014, DebugCoreMessages.BreakpointManager_Missing_model_identifier, null));
            }
        }
        catch (CoreException e) {
            throw new DebugException(e.getStatus());
        }
    }

    public void resourceChanged(IResourceChangeEvent event) {
        IResourceDelta delta = event.getDelta();
        if (delta != null) {
            try {
                if (fgVisitor == null) {
                    fgVisitor = new BreakpointManagerVisitor();
                }
                delta.accept((IResourceDeltaVisitor)fgVisitor);
                fgVisitor.update();
            }
            catch (CoreException ce) {
                DebugPlugin.log(ce);
            }
        }
    }

    public void addBreakpointListener(IBreakpointListener listener) {
        this.fBreakpointListeners.add((Object)listener);
    }

    public void removeBreakpointListener(IBreakpointListener listener) {
        this.fBreakpointListeners.remove((Object)listener);
    }

    private void fireUpdate(List breakpoints, List deltas, int update) {
        if (breakpoints.isEmpty()) {
            return;
        }
        IBreakpoint[] bpArray = breakpoints.toArray(new IBreakpoint[breakpoints.size()]);
        IMarkerDelta[] deltaArray = new IMarkerDelta[bpArray.length];
        if (deltas != null) {
            deltaArray = deltas.toArray(deltaArray);
        }
        this.getBreakpointNotifier().notify(bpArray, deltaArray, update);
        this.getBreakpointsNotifier().notify(bpArray, deltaArray, update);
    }

    protected void setBreakpoints(Vector breakpoints) {
        this.fBreakpoints = breakpoints;
    }

    public boolean hasBreakpoints() {
        return !this.getBreakpoints0().isEmpty();
    }

    public void addBreakpointListener(IBreakpointsListener listener) {
        this.fBreakpointsListeners.add((Object)listener);
    }

    public void removeBreakpointListener(IBreakpointsListener listener) {
        this.fBreakpointsListeners.remove((Object)listener);
    }

    private BreakpointNotifier getBreakpointNotifier() {
        return new BreakpointNotifier();
    }

    private BreakpointsNotifier getBreakpointsNotifier() {
        return new BreakpointsNotifier();
    }

    public boolean isEnabled() {
        return Platform.getPreferencesService().getBoolean(DebugPlugin.getUniqueIdentifier(), IInternalDebugCoreConstants.PREF_BREAKPOINT_MANAGER_ENABLED_STATE, true, null);
    }

    public void setEnabled(boolean enabled) {
        if (this.isEnabled() != enabled) {
            Preferences.setBoolean(DebugPlugin.getUniqueIdentifier(), IInternalDebugCoreConstants.PREF_BREAKPOINT_MANAGER_ENABLED_STATE, enabled, null);
            IWorkspaceRunnable runnable = new IWorkspaceRunnable(){

                public void run(IProgressMonitor monitor) throws CoreException {
                    IBreakpoint[] breakpoints = BreakpointManager.this.getBreakpoints();
                    int i = 0;
                    while (i < breakpoints.length) {
                        IBreakpoint breakpoint = breakpoints[i];
                        breakpoint.getMarker().setAttribute("org.eclipse.debug.core.enabled", breakpoint.isEnabled());
                        ++i;
                    }
                }
            };
            try {
                ResourcesPlugin.getWorkspace().run(runnable, null, 1, null);
            }
            catch (CoreException e) {
                DebugPlugin.log(e);
            }
            new BreakpointManagerNotifier().notify(enabled);
        }
    }

    public void addBreakpointManagerListener(IBreakpointManagerListener listener) {
        this.fBreakpointManagerListeners.add((Object)listener);
    }

    public void removeBreakpointManagerListener(IBreakpointManagerListener listener) {
        this.fBreakpointManagerListeners.remove((Object)listener);
    }

    public String getTypeName(IBreakpoint breakpoint) {
        String typeName = null;
        IMarker marker = breakpoint.getMarker();
        if (marker != null) {
            try {
                IConfigurationElement element = (IConfigurationElement)this.fBreakpointExtensions.get(marker.getType());
                if (element != null) {
                    typeName = element.getAttribute("name");
                }
            }
            catch (CoreException coreException) {}
        }
        return typeName;
    }

    public IBreakpointImportParticipant[] getImportParticipants(String markertype) throws CoreException {
        this.initializeImportParticipants();
        ArrayList list = (ArrayList)this.fImportParticipants.get(markertype);
        if (list == null) {
            return new IBreakpointImportParticipant[]{this.fDefaultParticipant};
        }
        IBreakpointImportParticipant[] participants = new IBreakpointImportParticipant[list.size()];
        BreakpointImportParticipantDelegate delegate = null;
        int i = 0;
        while (i < list.size()) {
            delegate = (BreakpointImportParticipantDelegate)list.get(i);
            participants[i] = delegate.getDelegate();
            ++i;
        }
        if (participants.length == 0) {
            return new IBreakpointImportParticipant[]{this.fDefaultParticipant};
        }
        return participants;
    }

    private synchronized void initializeImportParticipants() {
        if (this.fImportParticipants == null) {
            this.fImportParticipants = new HashMap();
            this.fDefaultParticipant = new DefaultImportParticipant();
            IExtensionPoint ep = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "breakpointImportParticipants");
            IConfigurationElement[] elements = ep.getConfigurationElements();
            String type = null;
            ArrayList<BreakpointImportParticipantDelegate> list = null;
            int i = 0;
            while (i < elements.length) {
                type = elements[i].getAttribute("type");
                if (type != null) {
                    list = (ArrayList<BreakpointImportParticipantDelegate>)this.fImportParticipants.get(type);
                    if (list == null) {
                        list = new ArrayList<BreakpointImportParticipantDelegate>();
                        this.fImportParticipants.put(type, list);
                    }
                    list.add(new BreakpointImportParticipantDelegate(elements[i]));
                }
                ++i;
            }
        }
    }

    class BreakpointManagerJob
    extends Job {
        private final IWorkspaceRunnable fRunnable;

        public BreakpointManagerJob(IWorkspaceRunnable wRunnable) {
            super("breakpoint manager job");
            this.fRunnable = wRunnable;
            this.setSystem(true);
        }

        protected IStatus run(IProgressMonitor monitor) {
            try {
                BreakpointManager.this.getWorkspace().run(this.fRunnable, null, 0, null);
            }
            catch (CoreException ce) {
                DebugPlugin.log(ce);
            }
            return new Status(0, DebugPlugin.getUniqueIdentifier(), 0, "", null);
        }
    }

    class BreakpointManagerNotifier
    implements ISafeRunnable {
        private IBreakpointManagerListener fListener;
        private boolean fManagerEnabled;

        BreakpointManagerNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "An exception occurred during breakpoint change notification.", exception);
            DebugPlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            this.fListener.breakpointManagerEnablementChanged(this.fManagerEnabled);
        }

        public void notify(boolean enabled) {
            this.fManagerEnabled = enabled;
            Object[] copiedListeners = BreakpointManager.this.fBreakpointManagerListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (IBreakpointManagerListener)copiedListeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fListener = null;
        }
    }

    class BreakpointManagerVisitor
    implements IResourceDeltaVisitor {
        private List fMoved = new ArrayList();
        private List fRemoved = new ArrayList();
        private List fAdded = new ArrayList();
        private List fChanged = new ArrayList();
        private List fChangedDeltas = new ArrayList();

        BreakpointManagerVisitor() {
        }

        protected void reset() {
            this.fMoved.clear();
            this.fRemoved.clear();
            this.fAdded.clear();
            this.fChanged.clear();
            this.fChangedDeltas.clear();
        }

        public void update() {
            if (!this.fMoved.isEmpty()) {
                IWorkspaceRunnable wRunnable = new IWorkspaceRunnable(this){
                    final /* synthetic */ BreakpointManagerVisitor this$1;
                    {
                        this.this$1 = breakpointManagerVisitor;
                    }

                    public void run(IProgressMonitor monitor) throws CoreException {
                        IMarker[] markers = BreakpointManagerVisitor.access$0(this.this$1).toArray(new IMarker[BreakpointManagerVisitor.access$0(this.this$1).size()]);
                        int i = 0;
                        while (i < markers.length) {
                            markers[i].delete();
                            ++i;
                        }
                    }
                };
                try {
                    BreakpointManager.this.getWorkspace().run(wRunnable, null, 0, null);
                }
                catch (CoreException coreException) {}
            }
            if (!this.fRemoved.isEmpty()) {
                try {
                    BreakpointManager.this.removeBreakpoints(this.fRemoved.toArray(new IBreakpoint[this.fRemoved.size()]), false);
                }
                catch (CoreException e) {
                    DebugPlugin.log(e);
                }
            }
            if (!this.fAdded.isEmpty()) {
                try {
                    IWorkspaceRunnable runnable = new IWorkspaceRunnable(this){
                        final /* synthetic */ BreakpointManagerVisitor this$1;
                        {
                            this.this$1 = breakpointManagerVisitor;
                        }

                        public void run(IProgressMonitor monitor) throws CoreException {
                            Iterator<E> iter = BreakpointManagerVisitor.access$1(this.this$1).iterator();
                            while (iter.hasNext()) {
                                IBreakpoint breakpoint = (IBreakpoint)iter.next();
                                breakpoint.getMarker().setAttribute(DebugPlugin.ATTR_BREAKPOINT_IS_DELETED, false);
                                breakpoint.setRegistered(true);
                            }
                        }
                    };
                    BreakpointManager.this.getWorkspace().run(runnable, null, 0, null);
                    BreakpointManager.this.addBreakpoints(this.fAdded.toArray(new IBreakpoint[this.fAdded.size()]), false);
                }
                catch (CoreException e) {
                    DebugPlugin.log(e);
                }
            }
            if (!this.fChanged.isEmpty()) {
                BreakpointManager.this.fireUpdate(this.fChanged, this.fChangedDeltas, 2);
            }
            this.reset();
        }

        public boolean visit(IResourceDelta delta) {
            if (delta == null) {
                return false;
            }
            if ((delta.getFlags() & 0x4000) != 0 && (delta.getFlags() & 0x1000) == 0) {
                this.handleProjectResourceOpenStateChange(delta.getResource());
                return false;
            }
            IMarkerDelta[] markerDeltas = delta.getMarkerDeltas();
            int i = 0;
            while (i < markerDeltas.length) {
                IMarkerDelta markerDelta = markerDeltas[i];
                if (markerDelta.isSubtypeOf(IBreakpoint.BREAKPOINT_MARKER)) {
                    switch (markerDelta.getKind()) {
                        case 1: {
                            this.handleAddBreakpoint(delta, markerDelta.getMarker(), markerDelta);
                            break;
                        }
                        case 2: {
                            this.handleRemoveBreakpoint(markerDelta.getMarker());
                            break;
                        }
                        case 4: {
                            this.handleChangeBreakpoint(markerDelta.getMarker(), markerDelta);
                        }
                    }
                }
                ++i;
            }
            return true;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected void handleAddBreakpoint(IResourceDelta rDelta, IMarker marker, IMarkerDelta mDelta) {
            if ((rDelta.getFlags() & 0x1000) != 0) {
                if (BreakpointManager.this.getBreakpoint(marker) == null) {
                    this.fMoved.add(marker);
                }
            } else {
                Set set = BreakpointManager.this.fPostChangMarkersChanged;
                synchronized (set) {
                    if (BreakpointManager.this.fPostChangMarkersChanged.contains(marker)) {
                        this.handleChangeBreakpoint(marker, mDelta);
                        BreakpointManager.this.fPostChangMarkersChanged.remove(marker);
                    } else if (marker.getAttribute(DebugPlugin.ATTR_BREAKPOINT_IS_DELETED, false) && BreakpointManager.this.getBreakpoint(marker) == null) {
                        try {
                            this.fAdded.add(BreakpointManager.this.createBreakpoint(marker));
                        }
                        catch (CoreException e) {
                            DebugPlugin.log(e);
                        }
                    }
                    BreakpointManager.this.fPostBuildMarkersAdded.add(marker);
                }
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected void handleRemoveBreakpoint(IMarker marker) {
            Set set = BreakpointManager.this.fPostChangMarkersChanged;
            synchronized (set) {
                BreakpointManager.this.fPostChangMarkersChanged.remove(marker);
                BreakpointManager.this.fPostBuildMarkersAdded.remove(marker);
            }
            IBreakpoint breakpoint = BreakpointManager.this.getBreakpoint(marker);
            if (breakpoint != null) {
                this.fRemoved.add(breakpoint);
            }
        }

        protected void handleChangeBreakpoint(IMarker marker, IMarkerDelta delta) {
            IBreakpoint breakpoint = BreakpointManager.this.getBreakpoint(marker);
            if (breakpoint != null && BreakpointManager.this.isRegistered(breakpoint) && !BreakpointManager.this.isChangeSuppressed(breakpoint)) {
                this.fChanged.add(breakpoint);
                this.fChangedDeltas.add(delta);
            }
        }

        private void handleProjectResourceOpenStateChange(IResource project) {
            if (!project.isAccessible()) {
                Enumeration breakpoints = ((Vector)BreakpointManager.this.getBreakpoints0().clone()).elements();
                while (breakpoints.hasMoreElements()) {
                    IBreakpoint breakpoint = (IBreakpoint)breakpoints.nextElement();
                    IResource markerResource = breakpoint.getMarker().getResource();
                    if (!project.getFullPath().isPrefixOf(markerResource.getFullPath())) continue;
                    this.fRemoved.add(breakpoint);
                }
                return;
            }
            try {
                BreakpointManager.this.loadBreakpoints(project, true);
            }
            catch (CoreException e) {
                DebugPlugin.log(e);
            }
        }

        static /* synthetic */ List access$0(BreakpointManagerVisitor breakpointManagerVisitor) {
            return breakpointManagerVisitor.fMoved;
        }

        static /* synthetic */ List access$1(BreakpointManagerVisitor breakpointManagerVisitor) {
            return breakpointManagerVisitor.fAdded;
        }
    }

    class BreakpointNotifier
    implements ISafeRunnable {
        private IBreakpointListener fListener;
        private int fType;
        private IMarkerDelta fDelta;
        private IBreakpoint fBreakpoint;

        BreakpointNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "An exception occurred during breakpoint change notification.", exception);
            DebugPlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 0: {
                    this.fListener.breakpointAdded(this.fBreakpoint);
                    break;
                }
                case 1: {
                    this.fListener.breakpointRemoved(this.fBreakpoint, this.fDelta);
                    break;
                }
                case 2: {
                    this.fListener.breakpointChanged(this.fBreakpoint, this.fDelta);
                }
            }
        }

        public void notify(IBreakpoint[] breakpoints, IMarkerDelta[] deltas, int update) {
            this.fType = update;
            Object[] copiedListeners = BreakpointManager.this.fBreakpointListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (IBreakpointListener)copiedListeners[i];
                int j = 0;
                while (j < breakpoints.length) {
                    this.fBreakpoint = breakpoints[j];
                    this.fDelta = deltas[j];
                    SafeRunner.run((ISafeRunnable)this);
                    ++j;
                }
                ++i;
            }
            this.fListener = null;
            this.fDelta = null;
            this.fBreakpoint = null;
        }
    }

    class BreakpointsNotifier
    implements ISafeRunnable {
        private IBreakpointsListener fListener;
        private int fType;
        private IMarkerDelta[] fDeltas;
        private IBreakpoint[] fNotifierBreakpoints;

        BreakpointsNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "An exception occurred during breakpoint change notification.", exception);
            DebugPlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 0: {
                    this.fListener.breakpointsAdded(this.fNotifierBreakpoints);
                    break;
                }
                case 1: {
                    this.fListener.breakpointsRemoved(this.fNotifierBreakpoints, this.fDeltas);
                    break;
                }
                case 2: {
                    this.fListener.breakpointsChanged(this.fNotifierBreakpoints, this.fDeltas);
                }
            }
        }

        public void notify(IBreakpoint[] breakpoints, IMarkerDelta[] deltas, int update) {
            this.fType = update;
            this.fNotifierBreakpoints = breakpoints;
            this.fDeltas = deltas;
            Object[] copiedListeners = BreakpointManager.this.fBreakpointsListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (IBreakpointsListener)copiedListeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fDeltas = null;
            this.fNotifierBreakpoints = null;
            this.fListener = null;
        }
    }

    class DefaultImportParticipant
    implements IBreakpointImportParticipant {
        DefaultImportParticipant() {
        }

        public boolean matches(Map attributes, IBreakpoint breakpoint) throws CoreException {
            IMarker marker = breakpoint.getMarker();
            String type = (String)attributes.get("type");
            Integer line = (Integer)attributes.get("lineNumber");
            Object localline = marker.getAttribute("lineNumber");
            String localtype = marker.getType();
            if (type.equals(localtype)) {
                if (line != null && line.equals(localline)) {
                    return true;
                }
                if (line == null) {
                    return true;
                }
            }
            return false;
        }

        public void verify(IBreakpoint breakpoint) throws CoreException {
        }
    }

    class PostChangeListener
    implements IResourceChangeListener {
        private PostChangeVisitor fVisitor;

        PostChangeListener() {
            this.fVisitor = new PostChangeVisitor();
        }

        public void resourceChanged(IResourceChangeEvent event) {
            IResourceDelta delta = event.getDelta();
            if (delta != null) {
                try {
                    delta.accept((IResourceDeltaVisitor)this.fVisitor);
                }
                catch (CoreException ce) {
                    DebugPlugin.log(ce);
                }
            }
        }
    }

    class PostChangeVisitor
    implements IResourceDeltaVisitor {
        PostChangeVisitor() {
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public boolean visit(IResourceDelta delta) throws CoreException {
            if (delta == null) {
                return false;
            }
            IMarkerDelta[] markerDeltas = delta.getMarkerDeltas();
            int i = 0;
            while (i < markerDeltas.length) {
                IMarkerDelta markerDelta = markerDeltas[i];
                if (markerDelta.isSubtypeOf(IBreakpoint.BREAKPOINT_MARKER)) {
                    switch (markerDelta.getKind()) {
                        case 1: {
                            break;
                        }
                        case 2: {
                            break;
                        }
                        case 4: {
                            IMarker marker = markerDelta.getMarker();
                            Set set = BreakpointManager.this.fPostChangMarkersChanged;
                            synchronized (set) {
                                if (!BreakpointManager.this.fPostBuildMarkersAdded.contains(marker)) {
                                    BreakpointManager.this.fPostChangMarkersChanged.add(marker);
                                }
                                break;
                            }
                        }
                    }
                }
                ++i;
            }
            return true;
        }
    }
}

