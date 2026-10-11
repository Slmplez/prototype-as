/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.mapping.ResourceTraversal
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.ArrayList;
import java.util.HashSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.mapping.ResourceTraversal;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.diff.IDiffChangeEvent;
import org.eclipse.team.core.diff.IDiffChangeListener;
import org.eclipse.team.core.diff.IDiffTree;
import org.eclipse.team.core.diff.IThreeWayDiff;
import org.eclipse.team.core.mapping.IChangeGroupingRequestor;
import org.eclipse.team.core.mapping.IResourceDiffTree;
import org.eclipse.team.internal.core.Messages;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.mapping.CompoundResourceTraversal;
import org.eclipse.team.internal.core.subscribers.ActiveChangeSet;
import org.eclipse.team.internal.core.subscribers.ChangeSet;
import org.eclipse.team.internal.core.subscribers.ChangeSetManager;
import org.eclipse.team.internal.core.subscribers.DiffChangeSet;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public abstract class ActiveChangeSetManager
extends ChangeSetManager
implements IDiffChangeListener,
IChangeGroupingRequestor {
    private static final String CTX_DEFAULT_SET = "defaultSet";
    private ActiveChangeSet defaultSet;

    protected ChangeSet getChangeSet(IResourceDiffTree tree) {
        ChangeSet[] sets = this.getSets();
        int i = 0;
        while (i < sets.length) {
            ChangeSet changeSet = sets[i];
            if (((DiffChangeSet)changeSet).getDiffTree() == tree) {
                return changeSet;
            }
            ++i;
        }
        return null;
    }

    public void add(ChangeSet set) {
        Assert.isTrue((boolean)(set instanceof ActiveChangeSet));
        super.add(set);
    }

    protected void handleSetAdded(ChangeSet set) {
        Assert.isTrue((boolean)(set instanceof ActiveChangeSet));
        ((DiffChangeSet)set).getDiffTree().addDiffChangeListener(this.getDiffTreeListener());
        super.handleSetAdded(set);
        this.handleAddedResources(set, ((ActiveChangeSet)set).internalGetDiffTree().getDiffs());
    }

    protected void handleSetRemoved(ChangeSet set) {
        ((DiffChangeSet)set).getDiffTree().removeDiffChangeListener(this.getDiffTreeListener());
        super.handleSetRemoved(set);
    }

    protected IDiffChangeListener getDiffTreeListener() {
        return this;
    }

    public void diffsChanged(IDiffChangeEvent event, IProgressMonitor monitor) {
        IResourceDiffTree tree = (IResourceDiffTree)event.getTree();
        this.handleSyncSetChange(tree, event.getAdditions(), this.getAllResources(event));
    }

    public void propertyChanged(IDiffTree tree, int property, IPath[] paths) {
    }

    public boolean isModified(IFile file) throws CoreException {
        IDiff diff = this.getDiff((IResource)file);
        if (diff != null) {
            return this.isModified(diff);
        }
        return false;
    }

    public boolean isModified(IDiff diff) {
        if (diff != null) {
            if (diff instanceof IThreeWayDiff) {
                IThreeWayDiff twd = (IThreeWayDiff)diff;
                int dir = twd.getDirection();
                return dir == 256 || dir == 768;
            }
            return diff.getKind() != 0;
        }
        return false;
    }

    public ActiveChangeSet getSet(String name) {
        ChangeSet[] sets = this.getSets();
        int i = 0;
        while (i < sets.length) {
            ChangeSet set = sets[i];
            if (set.getName().equals(name) && set instanceof ActiveChangeSet) {
                return (ActiveChangeSet)set;
            }
            ++i;
        }
        return null;
    }

    public ActiveChangeSet createSet(String title, IFile[] files) throws CoreException {
        ArrayList<IDiff> infos = new ArrayList<IDiff>();
        int i = 0;
        while (i < files.length) {
            IFile file = files[i];
            IDiff diff = this.getDiff((IResource)file);
            if (diff != null) {
                infos.add(diff);
            }
            ++i;
        }
        return this.createSet(title, infos.toArray(new IDiff[infos.size()]));
    }

    public ActiveChangeSet createSet(String title, IDiff[] diffs) {
        ActiveChangeSet commitSet = this.doCreateSet(title);
        if (diffs != null && diffs.length > 0) {
            commitSet.add(diffs);
        }
        return commitSet;
    }

    protected ActiveChangeSet doCreateSet(String name) {
        return new ActiveChangeSet(this, name);
    }

    public abstract IDiff getDiff(IResource var1) throws CoreException;

    protected boolean isSingleSetPerResource() {
        return true;
    }

    private IPath[] getAllResources(IDiffChangeEvent event) {
        HashSet<IPath> allResources = new HashSet<IPath>();
        IDiff[] addedResources = event.getAdditions();
        int i = 0;
        while (i < addedResources.length) {
            IDiff diff = addedResources[i];
            allResources.add(diff.getPath());
            ++i;
        }
        IDiff[] changedResources = event.getChanges();
        int i2 = 0;
        while (i2 < changedResources.length) {
            IDiff diff = changedResources[i2];
            allResources.add(diff.getPath());
            ++i2;
        }
        IPath[] removals = event.getRemovals();
        int i3 = 0;
        while (i3 < removals.length) {
            IPath path = removals[i3];
            allResources.add(path);
            ++i3;
        }
        return allResources.toArray(new IPath[allResources.size()]);
    }

    protected void handleAddedResources(ChangeSet set, IDiff[] diffs) {
        if (this.isSingleSetPerResource() && ((ActiveChangeSet)set).isUserCreated()) {
            IResource[] resources = new IResource[diffs.length];
            int i = 0;
            while (i < resources.length) {
                resources[i] = ((DiffChangeSet)set).getDiffTree().getResource(diffs[i]);
                ++i;
            }
            ChangeSet[] sets = this.getSets();
            int i2 = 0;
            while (i2 < sets.length) {
                ChangeSet otherSet = sets[i2];
                if (otherSet != set && ((ActiveChangeSet)otherSet).isUserCreated()) {
                    otherSet.remove(resources);
                }
                ++i2;
            }
        }
    }

    private void handleSyncSetChange(IResourceDiffTree tree, IDiff[] addedDiffs, IPath[] allAffectedResources) {
        ChangeSet changeSet = this.getChangeSet(tree);
        if (tree.isEmpty() && changeSet != null) {
            this.remove(changeSet);
        }
        this.fireResourcesChangedEvent(changeSet, allAffectedResources);
        this.handleAddedResources(changeSet, addedDiffs);
    }

    public void makeDefault(ActiveChangeSet set) {
        if (set != null && !this.contains(set)) {
            this.add(set);
        }
        ActiveChangeSet oldSet = this.defaultSet;
        this.defaultSet = set;
        this.fireDefaultChangedEvent(oldSet, this.defaultSet);
    }

    public boolean isDefault(ActiveChangeSet set) {
        return set == this.defaultSet;
    }

    public ActiveChangeSet getDefaultSet() {
        return this.defaultSet;
    }

    public ResourceTraversal[] adjustInputTraversals(ResourceTraversal[] traversals) {
        CompoundResourceTraversal traversal = new CompoundResourceTraversal();
        traversal.addTraversals(traversals);
        ChangeSet[] sets = this.getSets();
        int i = 0;
        while (i < sets.length) {
            ChangeSet set = sets[i];
            this.handleIntersect(traversal, set);
            ++i;
        }
        return traversal.asTraversals();
    }

    private void handleIntersect(CompoundResourceTraversal traversal, ChangeSet set) {
        IResource[] resources = set.getResources();
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            if (traversal.isCovered(resource, 0)) {
                traversal.addResources(resources, 0);
                return;
            }
            ++i;
        }
    }

    protected void save(Preferences prefs) {
        int i;
        if (!this.isInitialized()) {
            return;
        }
        try {
            String[] oldSetNames = prefs.childrenNames();
            i = 0;
            while (i < oldSetNames.length) {
                String string = oldSetNames[i];
                prefs.node(string).removeNode();
                ++i;
            }
        }
        catch (BackingStoreException e) {
            TeamPlugin.log(4, NLS.bind((String)Messages.SubscriberChangeSetCollector_5, (Object[])new String[]{this.getName()}), e);
        }
        ChangeSet[] sets = this.getSets();
        i = 0;
        while (i < sets.length) {
            ChangeSet set = sets[i];
            if (set instanceof ActiveChangeSet && !set.isEmpty()) {
                String childPrefName = ActiveChangeSetManager.escapePrefName(((ActiveChangeSet)set).getTitle());
                Preferences child = prefs.node(childPrefName);
                ((ActiveChangeSet)set).save(child);
            }
            ++i;
        }
        if (this.getDefaultSet() != null) {
            prefs.put(CTX_DEFAULT_SET, this.getDefaultSet().getTitle());
        } else {
            prefs.remove(CTX_DEFAULT_SET);
        }
        try {
            prefs.flush();
        }
        catch (BackingStoreException e) {
            TeamPlugin.log(4, NLS.bind((String)Messages.SubscriberChangeSetCollector_3, (Object[])new String[]{this.getName()}), e);
        }
    }

    private static String escapePrefName(String string) {
        StringBuffer out = new StringBuffer();
        int i = 0;
        while (i < string.length()) {
            char c = string.charAt(i);
            switch (c) {
                case '/': {
                    out.append("\\s");
                    break;
                }
                case '\\': {
                    out.append("\\\\");
                    break;
                }
                default: {
                    out.append(c);
                }
            }
            ++i;
        }
        return out.toString();
    }

    protected void load(Preferences prefs) {
        String defaultSetTitle = prefs.get(CTX_DEFAULT_SET, null);
        try {
            String[] childNames = prefs.childrenNames();
            int i = 0;
            while (i < childNames.length) {
                String string = childNames[i];
                Preferences childPrefs = prefs.node(string);
                ActiveChangeSet set = this.createSet(childPrefs);
                if (!set.isEmpty()) {
                    if (this.getDefaultSet() == null && defaultSetTitle != null && set.getTitle().equals(defaultSetTitle)) {
                        this.makeDefault(set);
                    }
                    this.add(set);
                }
                ++i;
            }
        }
        catch (BackingStoreException e) {
            TeamPlugin.log(4, NLS.bind((String)Messages.SubscriberChangeSetCollector_4, (Object[])new String[]{this.getName()}), e);
        }
    }

    protected abstract String getName();

    protected ActiveChangeSet createSet(Preferences childPrefs) {
        ActiveChangeSet changeSet = this.doCreateSet(null);
        changeSet.init(childPrefs);
        return changeSet;
    }

    public void ensureChangesGrouped(IProject project, IFile[] files, String name) throws CoreException {
        ActiveChangeSet set = this.getSet(name);
        if (set == null) {
            set = this.createSet(name, files);
            set.setUserCreated(false);
            this.add(set);
        } else {
            set.setUserCreated(false);
            set.add((IResource[])files);
        }
    }
}

