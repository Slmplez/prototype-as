/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.events.ILifecycleListener;
import org.eclipse.core.internal.events.LifecycleEvent;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ProjectInfo;
import org.eclipse.core.internal.resources.ProjectNatureDescriptor;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectNature;
import org.eclipse.core.resources.IProjectNatureDescriptor;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NatureManager
implements ILifecycleListener,
IManager {
    private Map<String, IProjectNatureDescriptor> descriptors;
    private final Map<Project, String[]> natureEnablements = new HashMap<Project, String[]>(20);
    private Map<String, String> buildersToNatures;
    private static final byte WHITE = 0;
    private static final byte GREY = 1;
    private static final byte BLACK = 2;

    protected NatureManager() {
    }

    protected String[] computeNatureEnablements(Project project) {
        ProjectDescription description = project.internalGetDescription();
        if (description == null) {
            return new String[0];
        }
        String[] natureIds = description.getNatureIds();
        int count = natureIds.length;
        if (count == 0) {
            return natureIds;
        }
        HashSet<String> candidates = new HashSet<String>(count * 2);
        HashMap<String, ArrayList<String>> setsToNatures = new HashMap<String, ArrayList<String>>(count);
        int i = 0;
        while (i < count) {
            String id = natureIds[i];
            ProjectNatureDescriptor desc = (ProjectNatureDescriptor)this.getNatureDescriptor(id);
            if (desc != null) {
                if (!desc.hasCycle) {
                    candidates.add(id);
                }
                String[] setIds = desc.getNatureSetIds();
                int j = 0;
                while (j < setIds.length) {
                    String set = setIds[j];
                    ArrayList<String> current = (ArrayList<String>)setsToNatures.get(set);
                    if (current == null) {
                        current = new ArrayList<String>(5);
                        setsToNatures.put(set, current);
                    }
                    current.add(id);
                    ++j;
                }
            }
            ++i;
        }
        for (ArrayList setMembers : setsToNatures.values()) {
            if (setMembers.size() <= 1) continue;
            candidates.removeAll(setMembers);
        }
        String[] orderedCandidates = candidates.toArray(new String[candidates.size()]);
        orderedCandidates = this.sortNatureSet(orderedCandidates);
        int i2 = 0;
        while (i2 < orderedCandidates.length) {
            String id = orderedCandidates[i2];
            IProjectNatureDescriptor desc = this.getNatureDescriptor(id);
            String[] required = desc.getRequiredNatureIds();
            int j = 0;
            while (j < required.length) {
                if (!candidates.contains(required[j])) {
                    candidates.remove(id);
                    break;
                }
                ++j;
            }
            ++i2;
        }
        return candidates.toArray(new String[candidates.size()]);
    }

    public synchronized IProjectNatureDescriptor getNatureDescriptor(String natureId) {
        this.lazyInitialize();
        return this.descriptors.get(natureId);
    }

    public synchronized IProjectNatureDescriptor[] getNatureDescriptors() {
        this.lazyInitialize();
        Collection<IProjectNatureDescriptor> values = this.descriptors.values();
        return values.toArray(new IProjectNatureDescriptor[values.size()]);
    }

    @Override
    public void handleEvent(LifecycleEvent event) {
        switch (event.kind) {
            case 1: 
            case 2: 
            case 16: 
            case 32: 
            case 64: {
                this.flushEnablements((IProject)event.resource);
            }
        }
    }

    protected void configureNature(final Project project, final String natureID, final MultiStatus errors) {
        ISafeRunnable code = new ISafeRunnable(){

            public void run() throws Exception {
                IProjectNature nature = NatureManager.this.createNature(project, natureID);
                nature.configure();
                ProjectInfo info = (ProjectInfo)project.getResourceInfo(false, true);
                info.setNature(natureID, nature);
            }

            public void handleException(Throwable exception) {
                if (exception instanceof CoreException) {
                    errors.add(((CoreException)exception).getStatus());
                } else {
                    errors.add((IStatus)new ResourceStatus(566, project.getFullPath(), NLS.bind((String)Messages.resources_errorNature, (Object)natureID), exception));
                }
            }
        };
        if (Policy.DEBUG_NATURES) {
            System.out.println("Configuring nature: " + natureID + " on project: " + project.getName());
        }
        SafeRunner.run((ISafeRunnable)code);
    }

    public void configureNatures(Project project, ProjectDescription oldDescription, ProjectDescription newDescription, MultiStatus status) {
        int i;
        HashSet<String> newNatures;
        HashSet<String> oldNatures = new HashSet<String>(Arrays.asList(oldDescription.getNatureIds(false)));
        if (oldNatures.equals(newNatures = new HashSet<String>(Arrays.asList(newDescription.getNatureIds(false))))) {
            return;
        }
        HashSet deletions = (HashSet)oldNatures.clone();
        HashSet additions = (HashSet)newNatures.clone();
        additions.removeAll(oldNatures);
        deletions.removeAll(newNatures);
        IStatus result = this.validateAdditions(newNatures, additions, project);
        if (!result.isOK()) {
            status.merge(result);
            return;
        }
        result = this.validateRemovals(newNatures, deletions);
        if (!result.isOK()) {
            status.merge(result);
            return;
        }
        oldDescription.setNatureIds(newDescription.getNatureIds(true));
        this.flushEnablements(project);
        String[] ordered = null;
        if (deletions.size() > 0) {
            ordered = this.sortNatureSet(deletions.toArray(new String[deletions.size()]));
            i = ordered.length;
            while (--i >= 0) {
                this.deconfigureNature(project, ordered[i], status);
            }
        }
        if (additions.size() > 0) {
            ordered = this.sortNatureSet(additions.toArray(new String[additions.size()]));
            i = 0;
            while (i < ordered.length) {
                this.configureNature(project, ordered[i], status);
                ++i;
            }
        }
    }

    protected IProjectNature createNature(Project project, String natureID) throws CoreException {
        IExtension extension = Platform.getExtensionRegistry().getExtension("org.eclipse.core.resources", "natures", natureID);
        if (extension == null) {
            String message = NLS.bind((String)Messages.resources_natureExtension, (Object)natureID);
            throw new ResourceException(2, project.getFullPath(), message, null);
        }
        IConfigurationElement[] configs = extension.getConfigurationElements();
        if (configs.length < 1) {
            String message = NLS.bind((String)Messages.resources_natureClass, (Object)natureID);
            throw new ResourceException(2, project.getFullPath(), message, null);
        }
        IConfigurationElement config = null;
        int i = 0;
        while (config == null && i < configs.length) {
            if ("runtime".equalsIgnoreCase(configs[i].getName())) {
                config = configs[i];
            }
            ++i;
        }
        if (config == null) {
            String message = NLS.bind((String)Messages.resources_natureFormat, (Object)natureID);
            throw new ResourceException(2, project.getFullPath(), message, null);
        }
        try {
            IProjectNature nature = (IProjectNature)config.createExecutableExtension("run");
            nature.setProject(project);
            return nature;
        }
        catch (ClassCastException e) {
            String message = NLS.bind((String)Messages.resources_natureImplement, (Object)natureID);
            throw new ResourceException(2, project.getFullPath(), message, e);
        }
    }

    protected void deconfigureNature(final Project project, final String natureID, final MultiStatus status) {
        final ProjectInfo info = (ProjectInfo)project.getResourceInfo(false, true);
        IProjectNature existingNature = info.getNature(natureID);
        if (existingNature == null) {
            try {
                existingNature = this.createNature(project, natureID);
            }
            catch (CoreException coreException) {
                return;
            }
        }
        final IProjectNature nature = existingNature;
        ISafeRunnable code = new ISafeRunnable(){

            public void run() throws Exception {
                nature.deconfigure();
                info.setNature(natureID, null);
            }

            public void handleException(Throwable exception) {
                if (exception instanceof CoreException) {
                    status.add(((CoreException)exception).getStatus());
                } else {
                    status.add((IStatus)new ResourceStatus(566, project.getFullPath(), NLS.bind((String)Messages.resources_natureDeconfig, (Object)natureID), exception));
                }
            }
        };
        if (Policy.DEBUG_NATURES) {
            System.out.println("Deconfiguring nature: " + natureID + " on project: " + project.getName());
        }
        SafeRunner.run((ISafeRunnable)code);
    }

    private void detectCycles() {
        Collection<IProjectNatureDescriptor> values = this.descriptors.values();
        ProjectNatureDescriptor[] natures = values.toArray(new ProjectNatureDescriptor[values.size()]);
        int i = 0;
        while (i < natures.length) {
            if (natures[i].colour == 0) {
                this.hasCycles(natures[i]);
            }
            ++i;
        }
    }

    protected IStatus failure(String reason) {
        return new ResourceStatus(35, reason);
    }

    public synchronized String findNatureForBuilder(String builderID) {
        if (this.buildersToNatures == null) {
            this.buildersToNatures = new HashMap<String, String>(10);
            IProjectNatureDescriptor[] descs = this.getNatureDescriptors();
            int i = 0;
            while (i < descs.length) {
                String natureId = descs[i].getNatureId();
                String[] builders = ((ProjectNatureDescriptor)descs[i]).getBuilderIds();
                int j = 0;
                while (j < builders.length) {
                    this.buildersToNatures.put(builders[j], natureId);
                    ++j;
                }
                ++i;
            }
        }
        return this.buildersToNatures.get(builderID);
    }

    private synchronized void flushEnablements(IProject project) {
        this.natureEnablements.remove(project);
    }

    protected synchronized String[] getEnabledNatures(Project project) {
        String[] enabled = this.natureEnablements.get(project);
        if (enabled != null) {
            return enabled;
        }
        enabled = this.computeNatureEnablements(project);
        this.natureEnablements.put(project, enabled);
        return enabled;
    }

    protected boolean hasCycles(ProjectNatureDescriptor desc) {
        if (desc.colour == 2) {
            return desc.hasCycle;
        }
        if (desc.colour == 1) {
            desc.hasCycle = true;
            desc.colour = (byte)2;
            return true;
        }
        desc.colour = 1;
        String[] required = desc.getRequiredNatureIds();
        int i = 0;
        while (i < required.length) {
            ProjectNatureDescriptor dependency = (ProjectNatureDescriptor)this.getNatureDescriptor(required[i]);
            if (dependency != null && this.hasCycles(dependency)) {
                desc.hasCycle = true;
                desc.colour = (byte)2;
                return true;
            }
            ++i;
        }
        desc.hasCycle = false;
        desc.colour = (byte)2;
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected boolean hasLinks(IProject project) {
        try {
            IResource[] children = project.members();
            int i = 0;
            while (true) {
                if (i >= children.length) {
                    return false;
                }
                if (children[i].isLinked()) {
                    return true;
                }
                ++i;
            }
        }
        catch (CoreException e) {
            Policy.log(e.getStatus());
        }
        return false;
    }

    protected String hasSetOverlap(IProjectNatureDescriptor one, IProjectNatureDescriptor two) {
        if (one == null || two == null) {
            return null;
        }
        String[] setsOne = one.getNatureSetIds();
        String[] setsTwo = two.getNatureSetIds();
        int iOne = 0;
        while (iOne < setsOne.length) {
            int iTwo = 0;
            while (iTwo < setsTwo.length) {
                if (setsOne[iOne].equals(setsTwo[iTwo])) {
                    return setsOne[iOne];
                }
                ++iTwo;
            }
            ++iOne;
        }
        return null;
    }

    protected void insert(ArrayList<String> list, Set<String> seen, String id) {
        if (seen.contains(id)) {
            return;
        }
        seen.add(id);
        IProjectNatureDescriptor desc = this.getNatureDescriptor(id);
        if (desc != null) {
            String[] prereqs = desc.getRequiredNatureIds();
            int i = 0;
            while (i < prereqs.length) {
                this.insert(list, seen, prereqs[i]);
                ++i;
            }
        }
        list.add(id);
    }

    public boolean isNatureEnabled(Project project, String id) {
        String[] enabled = this.getEnabledNatures(project);
        int i = 0;
        while (i < enabled.length) {
            if (enabled[i].equals(id)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private void lazyInitialize() {
        if (this.descriptors != null) {
            return;
        }
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.core.resources", "natures");
        IExtension[] extensions = point.getExtensions();
        this.descriptors = new HashMap<String, IProjectNatureDescriptor>(extensions.length * 2 + 1);
        int i = 0;
        int imax = extensions.length;
        while (i < imax) {
            ProjectNatureDescriptor desc = null;
            try {
                desc = new ProjectNatureDescriptor(extensions[i]);
            }
            catch (CoreException e) {
                Policy.log(e.getStatus());
            }
            if (desc != null) {
                this.descriptors.put(desc.getNatureId(), desc);
            }
            ++i;
        }
        this.detectCycles();
    }

    @Override
    public void shutdown(IProgressMonitor monitor) {
    }

    public String[] sortNatureSet(String[] natureIds) {
        int count = natureIds.length;
        if (count == 0) {
            return natureIds;
        }
        ArrayList<String> result = new ArrayList<String>(count);
        HashSet<String> seen = new HashSet<String>(count);
        int i = 0;
        while (i < count) {
            this.insert(result, seen, natureIds[i]);
            ++i;
        }
        seen.clear();
        seen.addAll(Arrays.asList(natureIds));
        Iterator<String> it = result.iterator();
        while (it.hasNext()) {
            String id = it.next();
            if (seen.contains(id)) continue;
            it.remove();
        }
        return result.toArray(new String[result.size()]);
    }

    @Override
    public void startup(IProgressMonitor monitor) {
        ((Workspace)ResourcesPlugin.getWorkspace()).addLifecycleListener(this);
    }

    protected IStatus validateAdditions(HashSet<String> newNatures, HashSet<String> additions, IProject project) {
        Boolean hasLinks = null;
        for (String id : additions) {
            IProjectNatureDescriptor desc = this.getNatureDescriptor(id);
            if (desc == null) {
                return this.failure(NLS.bind((String)Messages.natures_missingNature, (Object)id));
            }
            if (((ProjectNatureDescriptor)desc).hasCycle) {
                return this.failure(NLS.bind((String)Messages.natures_hasCycle, (Object)id));
            }
            String[] required = desc.getRequiredNatureIds();
            int i = 0;
            while (i < required.length) {
                if (!newNatures.contains(required[i])) {
                    return this.failure(NLS.bind((String)Messages.natures_missingPrerequisite, (Object)id, (Object)required[i]));
                }
                ++i;
            }
            for (String current : newNatures) {
                String overlap;
                if (current.equals(id) || (overlap = this.hasSetOverlap(desc, this.getNatureDescriptor(current))) == null) continue;
                return this.failure(NLS.bind((String)Messages.natures_multipleSetMembers, (Object)overlap));
            }
            if (desc.isLinkingAllowed()) continue;
            if (hasLinks == null) {
                Boolean bl = hasLinks = this.hasLinks(project) ? Boolean.TRUE : Boolean.FALSE;
            }
            if (!hasLinks.booleanValue()) continue;
            return this.failure(NLS.bind((String)Messages.links_vetoNature, (Object)project.getName(), (Object)id));
        }
        return Status.OK_STATUS;
    }

    public IStatus validateLinkCreation(String[] natureIds) {
        int i = 0;
        while (i < natureIds.length) {
            IProjectNatureDescriptor desc = this.getNatureDescriptor(natureIds[i]);
            if (desc != null && !desc.isLinkingAllowed()) {
                String msg = NLS.bind((String)Messages.links_natureVeto, (Object)desc.getLabel());
                return new ResourceStatus(378, msg);
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    protected IStatus validateRemovals(HashSet<String> newNatures, HashSet<String> deletions) {
        for (String currentID : newNatures) {
            IProjectNatureDescriptor desc = this.getNatureDescriptor(currentID);
            if (desc == null) continue;
            String[] required = desc.getRequiredNatureIds();
            int i = 0;
            while (i < required.length) {
                if (deletions.contains(required[i])) {
                    return this.failure(NLS.bind((String)Messages.natures_invalidRemoval, (Object)required[i], (Object)currentID));
                }
                ++i;
            }
        }
        return Status.OK_STATUS;
    }

    public IStatus validateNatureSet(String[] natureIds) {
        int count = natureIds.length;
        if (count == 0) {
            return Status.OK_STATUS;
        }
        String msg = Messages.natures_invalidSet;
        MultiStatus result = new MultiStatus("org.eclipse.core.resources", 35, msg, null);
        HashSet<String> natures = new HashSet<String>(count * 2);
        HashSet<String> sets = new HashSet<String>(count);
        int i = 0;
        while (i < count) {
            String id = natureIds[i];
            ProjectNatureDescriptor desc = (ProjectNatureDescriptor)this.getNatureDescriptor(id);
            if (desc == null) {
                result.add(this.failure(NLS.bind((String)Messages.natures_missingNature, (Object)id)));
            } else {
                if (desc.hasCycle) {
                    result.add(this.failure(NLS.bind((String)Messages.natures_hasCycle, (Object)id)));
                }
                if (!natures.add(id)) {
                    result.add(this.failure(NLS.bind((String)Messages.natures_duplicateNature, (Object)id)));
                }
                String[] setIds = desc.getNatureSetIds();
                int j = 0;
                while (j < setIds.length) {
                    if (!sets.add(setIds[j])) {
                        result.add(this.failure(NLS.bind((String)Messages.natures_multipleSetMembers, (Object)setIds[j])));
                    }
                    ++j;
                }
            }
            ++i;
        }
        i = 0;
        while (i < count) {
            IProjectNatureDescriptor desc = this.getNatureDescriptor(natureIds[i]);
            if (desc != null) {
                String[] required = desc.getRequiredNatureIds();
                int j = 0;
                while (j < required.length) {
                    if (!natures.contains(required[j])) {
                        result.add(this.failure(NLS.bind((String)Messages.natures_missingPrerequisite, (Object)natureIds[i], (Object)required[j])));
                    }
                    ++j;
                }
            }
            ++i;
        }
        return result.isOK() ? Status.OK_STATUS : result;
    }
}

