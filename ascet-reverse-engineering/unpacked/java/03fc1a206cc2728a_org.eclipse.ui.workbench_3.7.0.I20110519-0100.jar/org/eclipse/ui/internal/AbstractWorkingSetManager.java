/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleListener
 */
package org.eclipse.ui.internal;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IWorkingSet;
import org.eclipse.ui.IWorkingSetElementAdapter;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.IWorkingSetUpdater;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.dialogs.IWorkingSetEditWizard;
import org.eclipse.ui.dialogs.IWorkingSetNewWizard;
import org.eclipse.ui.dialogs.IWorkingSetPage;
import org.eclipse.ui.dialogs.IWorkingSetSelectionDialog;
import org.eclipse.ui.internal.AbstractWorkingSet;
import org.eclipse.ui.internal.AggregateWorkingSet;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkingSet;
import org.eclipse.ui.internal.WorkingSetComparator;
import org.eclipse.ui.internal.dialogs.WorkingSetEditWizard;
import org.eclipse.ui.internal.dialogs.WorkingSetNewWizard;
import org.eclipse.ui.internal.dialogs.WorkingSetSelectionDialog;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.registry.WorkingSetDescriptor;
import org.eclipse.ui.internal.registry.WorkingSetRegistry;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.progress.WorkbenchJob;
import org.eclipse.ui.statushandlers.StatusManager;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleListener;

public abstract class AbstractWorkingSetManager
extends EventManager
implements IWorkingSetManager,
BundleListener,
IExtensionChangeHandler {
    private SortedSet workingSets = new TreeSet(new Comparator(){

        public int compare(Object o1, Object o2) {
            return ((AbstractWorkingSet)o1).getUniqueId().compareTo(((AbstractWorkingSet)o2).getUniqueId());
        }
    });
    private List recentWorkingSets = new ArrayList();
    private BundleContext bundleContext;
    private Map updaters = new HashMap();
    private Map elementAdapters = new HashMap();
    private static final IWorkingSetUpdater NULL_UPDATER = new IWorkingSetUpdater(){

        public void add(IWorkingSet workingSet) {
        }

        public boolean remove(IWorkingSet workingSet) {
            return true;
        }

        public boolean contains(IWorkingSet workingSet) {
            return true;
        }

        public void dispose() {
        }
    };
    private static final IWorkingSetElementAdapter IDENTITY_ADAPTER = new IWorkingSetElementAdapter(){

        public IAdaptable[] adaptElements(IWorkingSet ws, IAdaptable[] elements) {
            return elements;
        }

        public void dispose() {
        }
    };

    private static WorkingSetDescriptor[] getSupportedEditableDescriptors(String[] supportedWorkingSetIds) {
        WorkingSetRegistry registry = WorkbenchPlugin.getDefault().getWorkingSetRegistry();
        if (supportedWorkingSetIds == null) {
            return registry.getNewPageWorkingSetDescriptors();
        }
        ArrayList<WorkingSetDescriptor> result = new ArrayList<WorkingSetDescriptor>(supportedWorkingSetIds.length);
        int i = 0;
        while (i < supportedWorkingSetIds.length) {
            WorkingSetDescriptor desc = registry.getWorkingSetDescriptor(supportedWorkingSetIds[i]);
            if (desc != null && desc.isEditable()) {
                result.add(desc);
            }
            ++i;
        }
        return result.toArray(new WorkingSetDescriptor[result.size()]);
    }

    protected AbstractWorkingSetManager(BundleContext context) {
        this.bundleContext = context;
        this.bundleContext.addBundleListener((BundleListener)this);
        PlatformUI.getWorkbench().getExtensionTracker().registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
    }

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "workingSets");
    }

    public void dispose() {
        this.bundleContext.removeBundleListener((BundleListener)this);
        final Iterator iter = this.updaters.values().iterator();
        while (iter.hasNext()) {
            SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

                public void run() throws Exception {
                    ((IWorkingSetUpdater)iter.next()).dispose();
                }
            });
        }
        iter = this.elementAdapters.values().iterator();
        while (iter.hasNext()) {
            SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

                public void run() throws Exception {
                    ((IWorkingSetElementAdapter)iter.next()).dispose();
                }
            });
        }
    }

    public IWorkingSet createWorkingSet(String name, IAdaptable[] elements) {
        return new WorkingSet(name, name, elements);
    }

    public IWorkingSet createAggregateWorkingSet(String name, String label, IWorkingSet[] components) {
        return new AggregateWorkingSet(name, label, components);
    }

    public IWorkingSet createWorkingSet(IMemento memento) {
        return this.restoreWorkingSet(memento);
    }

    public void addWorkingSet(IWorkingSet workingSet) {
        IWorkingSet wSet = this.getWorkingSet(workingSet.getName());
        Assert.isTrue((wSet == null ? 1 : 0) != 0, (String)"working set with same name already registered");
        this.internalAddWorkingSet(workingSet);
    }

    private void internalAddWorkingSet(IWorkingSet workingSet) {
        this.workingSets.add(workingSet);
        ((AbstractWorkingSet)workingSet).connect(this);
        this.addToUpdater(workingSet);
        this.firePropertyChange("workingSetAdd", null, workingSet);
    }

    protected boolean internalRemoveWorkingSet(IWorkingSet workingSet) {
        boolean workingSetRemoved = this.workingSets.remove(workingSet);
        boolean recentWorkingSetRemoved = this.recentWorkingSets.remove(workingSet);
        if (workingSetRemoved) {
            ((AbstractWorkingSet)workingSet).disconnect();
            this.removeFromUpdater(workingSet);
            this.firePropertyChange("workingSetRemove", workingSet, null);
        }
        return workingSetRemoved || recentWorkingSetRemoved;
    }

    public IWorkingSet[] getWorkingSets() {
        TreeSet<IWorkingSet> visibleSubset = new TreeSet<IWorkingSet>(WorkingSetComparator.getInstance());
        Iterator i = this.workingSets.iterator();
        while (i.hasNext()) {
            IWorkingSet workingSet = (IWorkingSet)i.next();
            if (!workingSet.isVisible()) continue;
            visibleSubset.add(workingSet);
        }
        return visibleSubset.toArray(new IWorkingSet[visibleSubset.size()]);
    }

    public IWorkingSet[] getAllWorkingSets() {
        IWorkingSet[] sets = this.workingSets.toArray(new IWorkingSet[this.workingSets.size()]);
        Arrays.sort(sets, WorkingSetComparator.getInstance());
        return sets;
    }

    public IWorkingSet getWorkingSet(String name) {
        if (name == null || this.workingSets == null) {
            return null;
        }
        Iterator iter = this.workingSets.iterator();
        while (iter.hasNext()) {
            IWorkingSet workingSet = (IWorkingSet)iter.next();
            if (!name.equals(workingSet.getName())) continue;
            return workingSet;
        }
        return null;
    }

    public IWorkingSet[] getRecentWorkingSets() {
        return this.recentWorkingSets.toArray(new IWorkingSet[this.recentWorkingSets.size()]);
    }

    protected void internalAddRecentWorkingSet(IWorkingSet workingSet) {
        if (!workingSet.isVisible()) {
            return;
        }
        this.recentWorkingSets.remove(workingSet);
        this.recentWorkingSets.add(0, workingSet);
        this.sizeRecentWorkingSets();
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (!this.getClass().getName().equals(object.getClass().getName())) {
            return false;
        }
        AbstractWorkingSetManager other = (AbstractWorkingSetManager)object;
        return other.workingSets.equals(this.workingSets);
    }

    public int hashCode() {
        return this.workingSets.hashCode();
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }

    protected void firePropertyChange(String changeId, Object oldValue, Object newValue) {
        final Object[] listeners = this.getListeners();
        if (listeners.length == 0) {
            return;
        }
        final PropertyChangeEvent event = new PropertyChangeEvent((Object)this, changeId, oldValue, newValue);
        Runnable notifier = new Runnable(){

            public void run() {
                int i = 0;
                while (i < listeners.length) {
                    IPropertyChangeListener listener = (IPropertyChangeListener)listeners[i];
                    ISafeRunnable safetyWrapper = new ISafeRunnable(this, listener, event){
                        final /* synthetic */ 6 this$1;
                        private final /* synthetic */ IPropertyChangeListener val$listener;
                        private final /* synthetic */ PropertyChangeEvent val$event;
                        {
                            this.this$1 = var1_1;
                            this.val$listener = iPropertyChangeListener;
                            this.val$event = propertyChangeEvent;
                        }

                        public void run() throws Exception {
                            this.val$listener.propertyChange(this.val$event);
                        }

                        public void handleException(Throwable exception) {
                        }
                    };
                    SafeRunner.run((ISafeRunnable)safetyWrapper);
                    ++i;
                }
            }
        };
        if (Display.getCurrent() != null) {
            notifier.run();
        } else {
            Display.getDefault().asyncExec(notifier);
        }
    }

    public void workingSetChanged(IWorkingSet changedWorkingSet, String propertyChangeId, Object oldValue) {
        this.firePropertyChange(propertyChangeId, oldValue, changedWorkingSet);
    }

    public void saveWorkingSetState(IMemento memento) {
        Iterator iterator = this.workingSets.iterator();
        ArrayList<IWorkingSet> standardSets = new ArrayList<IWorkingSet>();
        ArrayList<IWorkingSet> aggregateSets = new ArrayList<IWorkingSet>();
        while (iterator.hasNext()) {
            IWorkingSet set = (IWorkingSet)iterator.next();
            if (set instanceof AggregateWorkingSet) {
                aggregateSets.add(set);
                continue;
            }
            standardSets.add(set);
        }
        this.saveWorkingSetState(memento, standardSets);
        this.saveWorkingSetState(memento, aggregateSets);
    }

    private void saveWorkingSetState(final IMemento memento, List list) {
        Iterator i = list.iterator();
        while (i.hasNext()) {
            final IWorkingSet persistable = (IWorkingSet)i.next();
            SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

                public void run() throws Exception {
                    XMLMemento dummy = XMLMemento.createWriteRoot("workingSet");
                    dummy.putString("factoryID", persistable.getFactoryId());
                    persistable.saveState(dummy);
                    IMemento workingSetMemento = memento.createChild("workingSet");
                    workingSetMemento.putMemento(dummy);
                }
            });
        }
    }

    protected void restoreWorkingSetState(IMemento memento) {
        IMemento[] children = memento.getChildren("workingSet");
        int i = 0;
        while (i < children.length) {
            IWorkingSet workingSet = this.restoreWorkingSet(children[i]);
            if (workingSet != null) {
                this.workingSets.add(workingSet);
            }
            ++i;
        }
        IWorkingSet[] sets = this.getAllWorkingSets();
        int i2 = 0;
        while (i2 < sets.length) {
            ((AbstractWorkingSet)sets[i2]).connect(this);
            ++i2;
        }
        i2 = 0;
        while (i2 < sets.length) {
            this.addToUpdater(sets[i2]);
            ++i2;
        }
        i2 = 0;
        while (i2 < sets.length) {
            this.firePropertyChange("workingSetAdd", null, sets[i2]);
            ++i2;
        }
    }

    protected IWorkingSet restoreWorkingSet(final IMemento memento) {
        IElementFactory factory;
        String factoryID = memento.getString("factoryID");
        if (factoryID == null) {
            factoryID = "org.eclipse.ui.internal.WorkingSetFactory";
        }
        if ((factory = PlatformUI.getWorkbench().getElementFactory(factoryID)) == null) {
            WorkbenchPlugin.log("Unable to restore working set - cannot instantiate factory: " + factoryID);
            return null;
        }
        final IAdaptable[] adaptable = new IAdaptable[1];
        SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

            public void run() throws Exception {
                adaptable[0] = factory.createElement(memento);
            }
        });
        if (adaptable[0] == null) {
            WorkbenchPlugin.log("Unable to restore working set - cannot instantiate working set: " + factoryID);
            return null;
        }
        if (!(adaptable[0] instanceof IWorkingSet)) {
            WorkbenchPlugin.log("Unable to restore working set - element is not an IWorkingSet: " + factoryID);
            return null;
        }
        return (IWorkingSet)adaptable[0];
    }

    protected void saveMruList(IMemento memento) {
        Iterator iterator = this.recentWorkingSets.iterator();
        while (iterator.hasNext()) {
            IWorkingSet workingSet = (IWorkingSet)iterator.next();
            IMemento mruMemento = memento.createChild("mruList");
            mruMemento.putString("name", workingSet.getName());
        }
    }

    protected void restoreMruList(IMemento memento) {
        IMemento[] mruWorkingSets = memento.getChildren("mruList");
        int i = mruWorkingSets.length - 1;
        while (i >= 0) {
            IWorkingSet workingSet;
            String workingSetName = mruWorkingSets[i].getString("name");
            if (workingSetName != null && (workingSet = this.getWorkingSet(workingSetName)) != null) {
                this.internalAddRecentWorkingSet(workingSet);
            }
            --i;
        }
    }

    public IWorkingSetEditWizard createWorkingSetEditWizard(IWorkingSet workingSet) {
        String editPageId = workingSet.getId();
        WorkingSetRegistry registry = WorkbenchPlugin.getDefault().getWorkingSetRegistry();
        IWorkingSetPage editPage = null;
        if (editPageId != null) {
            editPage = registry.getWorkingSetPage(editPageId);
        }
        if (editPage == null && (editPage = registry.getDefaultWorkingSetPage()) == null) {
            return null;
        }
        WorkingSetEditWizard editWizard = new WorkingSetEditWizard(editPage);
        editWizard.setSelection(workingSet);
        return editWizard;
    }

    public IWorkingSetSelectionDialog createWorkingSetSelectionDialog(Shell parent) {
        return this.createWorkingSetSelectionDialog(parent, true);
    }

    public IWorkingSetSelectionDialog createWorkingSetSelectionDialog(Shell parent, boolean multi) {
        return this.createWorkingSetSelectionDialog(parent, multi, null);
    }

    public IWorkingSetNewWizard createWorkingSetNewWizard(String[] workingSetIds) {
        WorkingSetDescriptor[] descriptors = AbstractWorkingSetManager.getSupportedEditableDescriptors(workingSetIds);
        if (descriptors.length == 0) {
            return null;
        }
        return new WorkingSetNewWizard(descriptors);
    }

    public void bundleChanged(BundleEvent event) {
        String symbolicName = event.getBundle().getSymbolicName();
        if (symbolicName == null) {
            return;
        }
        if (!PlatformUI.isWorkbenchRunning()) {
            return;
        }
        if (event.getBundle().getState() == 32) {
            final WorkingSetDescriptor[] descriptors = WorkbenchPlugin.getDefault().getWorkingSetRegistry().getUpdaterDescriptorsForNamespace(symbolicName);
            WorkbenchJob job = new WorkbenchJob(NLS.bind((String)WorkbenchMessages.AbstractWorkingSetManager_updatersActivating, (Object)symbolicName)){

                /*
                 * WARNING - Removed try catching itself - possible behaviour change.
                 */
                public IStatus runInUIThread(IProgressMonitor monitor) {
                    Map map = AbstractWorkingSetManager.this.updaters;
                    synchronized (map) {
                        int i = 0;
                        while (i < descriptors.length) {
                            WorkingSetDescriptor descriptor = descriptors[i];
                            List workingSets = AbstractWorkingSetManager.this.getWorkingSetsForId(descriptor.getId());
                            if (workingSets.size() != 0) {
                                IWorkingSetUpdater updater = AbstractWorkingSetManager.this.getUpdater(descriptor);
                                Iterator iter = workingSets.iterator();
                                while (iter.hasNext()) {
                                    IWorkingSet workingSet = (IWorkingSet)iter.next();
                                    SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(this, updater, workingSet){
                                        final /* synthetic */ 10 this$1;
                                        private final /* synthetic */ IWorkingSetUpdater val$updater;
                                        private final /* synthetic */ IWorkingSet val$workingSet;
                                        {
                                            this.this$1 = var1_1;
                                            this.val$updater = iWorkingSetUpdater;
                                            this.val$workingSet = iWorkingSet;
                                        }

                                        public void run() throws Exception {
                                            if (!this.val$updater.contains(this.val$workingSet)) {
                                                this.val$updater.add(this.val$workingSet);
                                            }
                                        }
                                    });
                                }
                            }
                            ++i;
                        }
                    }
                    return Status.OK_STATUS;
                }
            };
            job.setSystem(true);
            job.schedule();
        }
    }

    private List getWorkingSetsForId(String id) {
        ArrayList<IWorkingSet> result = new ArrayList<IWorkingSet>();
        Iterator iter = this.workingSets.iterator();
        while (iter.hasNext()) {
            IWorkingSet ws = (IWorkingSet)iter.next();
            if (!id.equals(ws.getId())) continue;
            result.add(ws);
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void addToUpdater(final IWorkingSet workingSet) {
        WorkingSetDescriptor descriptor = WorkbenchPlugin.getDefault().getWorkingSetRegistry().getWorkingSetDescriptor(workingSet.getId());
        if (descriptor == null || !descriptor.isUpdaterClassLoaded()) {
            return;
        }
        Map map = this.updaters;
        synchronized (map) {
            final IWorkingSetUpdater updater = this.getUpdater(descriptor);
            SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

                public void run() throws Exception {
                    if (!updater.contains(workingSet)) {
                        updater.add(workingSet);
                    }
                }
            });
        }
    }

    private IWorkingSetUpdater getUpdater(WorkingSetDescriptor descriptor) {
        IWorkingSetUpdater updater = (IWorkingSetUpdater)this.updaters.get(descriptor.getId());
        if (updater == null) {
            updater = descriptor.createWorkingSetUpdater();
            if (updater == null) {
                updater = NULL_UPDATER;
            } else {
                this.firePropertyChange("workingSetUpdaterInstalled", null, updater);
                PlatformUI.getWorkbench().getExtensionTracker().registerObject(descriptor.getConfigurationElement().getDeclaringExtension(), (Object)updater, 2);
            }
            this.updaters.put(descriptor.getId(), updater);
        }
        return updater;
    }

    IWorkingSetElementAdapter getElementAdapter(WorkingSetDescriptor descriptor) {
        IWorkingSetElementAdapter elementAdapter = (IWorkingSetElementAdapter)this.elementAdapters.get(descriptor.getId());
        if (elementAdapter == null) {
            elementAdapter = descriptor.createWorkingSetElementAdapter();
            if (elementAdapter == null) {
                elementAdapter = IDENTITY_ADAPTER;
            } else {
                this.elementAdapters.put(descriptor.getId(), elementAdapter);
            }
        }
        return elementAdapter;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void removeFromUpdater(final IWorkingSet workingSet) {
        Map map = this.updaters;
        synchronized (map) {
            final IWorkingSetUpdater updater = (IWorkingSetUpdater)this.updaters.get(workingSet.getId());
            if (updater != null) {
                SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

                    public void run() throws Exception {
                        updater.remove(workingSet);
                    }
                });
            }
        }
    }

    public IWorkingSetSelectionDialog createWorkingSetSelectionDialog(Shell parent, boolean multi, String[] workingsSetIds) {
        return new WorkingSetSelectionDialog(parent, multi, workingsSetIds);
    }

    public void saveState(File stateFile) throws IOException {
        XMLMemento memento = XMLMemento.createWriteRoot("workingSetManager");
        this.saveWorkingSetState(memento);
        this.saveMruList(memento);
        FileOutputStream stream = new FileOutputStream(stateFile);
        OutputStreamWriter writer = new OutputStreamWriter((OutputStream)stream, "utf-8");
        memento.save(writer);
        writer.close();
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            if (object instanceof IWorkingSetUpdater) {
                this.removeUpdater((IWorkingSetUpdater)object);
            }
            if (object instanceof IWorkingSetElementAdapter) {
                this.removeElementAdapter((IWorkingSetElementAdapter)object);
            }
            ++i;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void removeElementAdapter(final IWorkingSetElementAdapter elementAdapter) {
        SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

            public void run() throws Exception {
                elementAdapter.dispose();
            }
        });
        Map map = this.elementAdapters;
        synchronized (map) {
            this.elementAdapters.values().remove(elementAdapter);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void removeUpdater(final IWorkingSetUpdater updater) {
        SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

            public void run() throws Exception {
                updater.dispose();
            }
        });
        Map map = this.updaters;
        synchronized (map) {
            this.updaters.values().remove(updater);
        }
        this.firePropertyChange("workingSetUpdaterUninstalled", updater, null);
    }

    public void addToWorkingSets(final IAdaptable element, IWorkingSet[] workingSets) {
        int i = 0;
        while (i < workingSets.length) {
            final IWorkingSet workingSet = workingSets[i];
            SafeRunner.run((ISafeRunnable)new WorkingSetRunnable(){

                public void run() throws Exception {
                    IAdaptable[] adaptedNewElements = workingSet.adaptElements(new IAdaptable[]{element});
                    if (adaptedNewElements.length == 1) {
                        IAdaptable[] elements = workingSet.getElements();
                        IAdaptable[] newElements = new IAdaptable[elements.length + 1];
                        System.arraycopy(elements, 0, newElements, 0, elements.length);
                        newElements[newElements.length - 1] = adaptedNewElements[0];
                        workingSet.setElements(newElements);
                    }
                }
            });
            ++i;
        }
    }

    public void setRecentWorkingSetsLength(int length) {
        if (length < 1 || length > 99) {
            throw new IllegalArgumentException("Invalid recent working sets length: " + length);
        }
        IPreferenceStore store = PrefUtil.getAPIPreferenceStore();
        store.setValue("RECENTLY_USED_WORKINGSETS_SIZE", length);
        this.sizeRecentWorkingSets();
    }

    private void sizeRecentWorkingSets() {
        int maxLength = this.getRecentWorkingSetsLength();
        while (this.recentWorkingSets.size() > maxLength) {
            int lastPosition = this.recentWorkingSets.size() - 1;
            this.recentWorkingSets.remove(lastPosition);
        }
    }

    public int getRecentWorkingSetsLength() {
        IPreferenceStore store = PrefUtil.getAPIPreferenceStore();
        return store.getInt("RECENTLY_USED_WORKINGSETS_SIZE");
    }

    static abstract class WorkingSetRunnable
    implements ISafeRunnable {
        WorkingSetRunnable() {
        }

        public void handleException(Throwable exception) {
            StatusManager.getManager().handle(StatusUtil.newStatus("org.eclipse.ui", exception));
        }
    }
}

