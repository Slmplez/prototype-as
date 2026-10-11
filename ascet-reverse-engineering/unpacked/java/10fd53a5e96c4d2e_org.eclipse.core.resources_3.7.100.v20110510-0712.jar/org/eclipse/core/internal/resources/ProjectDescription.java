/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.events.BuildCommand;
import org.eclipse.core.internal.resources.BuildConfiguration;
import org.eclipse.core.internal.resources.FilterDescription;
import org.eclipse.core.internal.resources.LinkDescription;
import org.eclipse.core.internal.resources.ModelObject;
import org.eclipse.core.internal.resources.VariableDescription;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.ICommand;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IProjectDescription;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProjectDescription
extends ModelObject
implements IProjectDescription {
    private static final IBuildConfiguration[] EMPTY_BUILD_CONFIG_REFERENCE_ARRAY = new IBuildConfiguration[0];
    private static final ICommand[] EMPTY_COMMAND_ARRAY = new ICommand[0];
    private static final IProject[] EMPTY_PROJECT_ARRAY = new IProject[0];
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final String EMPTY_STR = "";
    protected static boolean isReading = false;
    protected static boolean isWriting = false;
    protected ICommand[] buildSpec = EMPTY_COMMAND_ARRAY;
    protected String comment = "";
    protected String activeConfiguration = "";
    protected String[] configNames = EMPTY_STRING_ARRAY;
    protected IProject[] staticRefs = EMPTY_PROJECT_ARRAY;
    protected IProject[] dynamicRefs = EMPTY_PROJECT_ARRAY;
    protected HashMap<String, IBuildConfiguration[]> dynamicConfigRefs = new HashMap(1);
    protected volatile IBuildConfiguration[] cachedBuildConfigs;
    protected Map<String, IBuildConfiguration[]> cachedConfigRefs = Collections.synchronizedMap(new HashMap(1));
    protected volatile IProject[] cachedRefs = null;
    protected HashMap<IPath, LinkDescription> linkDescriptions = null;
    protected HashMap<IPath, LinkedList<FilterDescription>> filterDescriptions = null;
    protected HashMap<String, VariableDescription> variableDescriptions = null;
    protected URI location = null;
    protected String[] natures = EMPTY_STRING_ARRAY;
    protected URI snapshotLocation = null;

    @Override
    public Object clone() {
        ProjectDescription clone = (ProjectDescription)super.clone();
        clone.linkDescriptions = null;
        clone.filterDescriptions = null;
        if (this.variableDescriptions != null) {
            clone.variableDescriptions = (HashMap)this.variableDescriptions.clone();
        }
        clone.buildSpec = this.getBuildSpec(true);
        clone.dynamicConfigRefs = (HashMap)this.dynamicConfigRefs.clone();
        clone.cachedConfigRefs = Collections.synchronizedMap(new HashMap(1));
        clone.clearCachedReferences(null);
        return clone;
    }

    private void clearCachedReferences(String configName) {
        if (configName == null) {
            this.cachedConfigRefs.clear();
        } else {
            this.cachedConfigRefs.remove(configName);
        }
        this.cachedRefs = null;
    }

    private IBuildConfiguration[] copyAndRemoveDuplicates(IBuildConfiguration[] values) {
        LinkedHashSet<IBuildConfiguration> set = new LinkedHashSet<IBuildConfiguration>(Arrays.asList(values));
        return set.toArray(new IBuildConfiguration[set.size()]);
    }

    private IProject[] copyAndRemoveDuplicates(IProject[] projects) {
        IProject[] result = new IProject[projects.length];
        int count = 0;
        int i = 0;
        while (i < projects.length) {
            block4: {
                IProject project = projects[i];
                int j = 0;
                while (j < count) {
                    if (!project.equals(result[j])) {
                        ++j;
                        continue;
                    }
                    break block4;
                }
                result[count++] = project;
            }
            ++i;
        }
        if (count < projects.length) {
            IProject[] reduced = new IProject[count];
            System.arraycopy(result, 0, reduced, 0, count);
            return reduced;
        }
        return result;
    }

    private Collection<BuildConfiguration> getBuildConfigReferencesFromProjects(IProject[] projects) {
        ArrayList<BuildConfiguration> refs = new ArrayList<BuildConfiguration>(projects.length);
        int i = 0;
        while (i < projects.length) {
            refs.add(new BuildConfiguration(projects[i], null));
            ++i;
        }
        return refs;
    }

    private Collection<IProject> getProjectsFromBuildConfigRefs(IBuildConfiguration[] refs) {
        LinkedHashSet<IProject> projects = new LinkedHashSet<IProject>(refs.length);
        int i = 0;
        while (i < refs.length) {
            projects.add(refs[i].getProject());
            ++i;
        }
        return projects;
    }

    public String getActiveBuildConfig() {
        return this.activeConfiguration;
    }

    public IProject[] getAllReferences(boolean makeCopy) {
        IProject[] projRefs = this.cachedRefs;
        if (projRefs == null) {
            IBuildConfiguration[] refs = this.hasBuildConfig(this.activeConfiguration) ? this.getAllBuildConfigReferences(this.activeConfiguration, false) : (this.configNames.length > 0 ? this.getAllBuildConfigReferences(this.configNames[0], false) : this.getAllBuildConfigReferences(EMPTY_STR, false));
            Collection<IProject> l = this.getProjectsFromBuildConfigRefs(refs);
            this.cachedRefs = l.toArray(new IProject[l.size()]);
            projRefs = this.cachedRefs;
        }
        return makeCopy ? (IProject[])projRefs.clone() : projRefs;
    }

    public IBuildConfiguration[] getAllBuildConfigReferences(String configName, boolean makeCopy) {
        if (!this.hasBuildConfig(configName)) {
            return EMPTY_BUILD_CONFIG_REFERENCE_ARRAY;
        }
        IBuildConfiguration[] refs = this.cachedConfigRefs.get(configName);
        if (refs == null) {
            LinkedHashSet<IBuildConfiguration> references = new LinkedHashSet<IBuildConfiguration>();
            IBuildConfiguration[] dynamicBuildConfigs = this.dynamicConfigRefs.containsKey(configName) ? this.dynamicConfigRefs.get(configName) : EMPTY_BUILD_CONFIG_REFERENCE_ARRAY;
            Collection<BuildConfiguration> dynamic = this.getBuildConfigReferencesFromProjects(this.dynamicRefs);
            Collection<BuildConfiguration> statik = this.getBuildConfigReferencesFromProjects(this.staticRefs);
            references.addAll(Arrays.asList(dynamicBuildConfigs));
            references.addAll(statik);
            references.addAll(dynamic);
            refs = references.toArray(new IBuildConfiguration[references.size()]);
            this.cachedConfigRefs.put(configName, refs);
        }
        return makeCopy ? (IBuildConfiguration[])refs.clone() : refs;
    }

    public IBuildConfiguration[] getBuildConfigs(IProject project, boolean makeCopy) {
        IBuildConfiguration[] configs = this.cachedBuildConfigs;
        if (configs != null && !project.equals(configs[0].getProject())) {
            configs = null;
        }
        if (configs == null) {
            if (this.configNames.length == 0) {
                configs = new IBuildConfiguration[]{new BuildConfiguration(project)};
            } else {
                configs = new IBuildConfiguration[this.configNames.length];
                int i = 0;
                while (i < configs.length) {
                    configs[i] = new BuildConfiguration(project, this.configNames[i]);
                    ++i;
                }
            }
            this.cachedBuildConfigs = configs;
        }
        return makeCopy ? (IBuildConfiguration[])configs.clone() : configs;
    }

    @Override
    public IBuildConfiguration[] getBuildConfigReferences(String configName) {
        return this.getBuildConfigRefs(configName, true);
    }

    public IBuildConfiguration[] getBuildConfigRefs(String configName, boolean makeCopy) {
        if (!this.hasBuildConfig(configName) || !this.dynamicConfigRefs.containsKey(configName)) {
            return EMPTY_BUILD_CONFIG_REFERENCE_ARRAY;
        }
        return makeCopy ? (IBuildConfiguration[])this.dynamicConfigRefs.get(configName).clone() : this.dynamicConfigRefs.get(configName);
    }

    public Map<String, IBuildConfiguration[]> getBuildConfigReferences(boolean makeCopy) {
        return makeCopy ? (Map)this.dynamicConfigRefs.clone() : this.dynamicConfigRefs;
    }

    @Override
    public ICommand[] getBuildSpec() {
        return this.getBuildSpec(true);
    }

    public ICommand[] getBuildSpec(boolean makeCopy) {
        ICommand[] oldCommands = this.buildSpec;
        if (oldCommands == null) {
            return EMPTY_COMMAND_ARRAY;
        }
        if (!makeCopy) {
            return oldCommands;
        }
        ICommand[] result = new ICommand[oldCommands.length];
        int i = 0;
        while (i < result.length) {
            result[i] = (ICommand)((BuildCommand)oldCommands[i]).clone();
            ++i;
        }
        return result;
    }

    @Override
    public String getComment() {
        return this.comment;
    }

    @Override
    public IProject[] getDynamicReferences() {
        return this.getDynamicReferences(true);
    }

    public IProject[] getDynamicReferences(boolean makeCopy) {
        return makeCopy ? (IProject[])this.dynamicRefs.clone() : this.dynamicRefs;
    }

    public URI getLinkLocationURI(IPath aPath) {
        if (this.linkDescriptions == null) {
            return null;
        }
        LinkDescription desc = this.linkDescriptions.get(aPath);
        return desc == null ? null : desc.getLocationURI();
    }

    public synchronized LinkedList<FilterDescription> getFilter(IPath aPath) {
        if (this.filterDescriptions == null) {
            return null;
        }
        return this.filterDescriptions.get(aPath);
    }

    public HashMap<IPath, LinkDescription> getLinks() {
        return this.linkDescriptions;
    }

    public HashMap<IPath, LinkedList<FilterDescription>> getFilters() {
        return this.filterDescriptions;
    }

    public HashMap<String, VariableDescription> getVariables() {
        return this.variableDescriptions;
    }

    @Override
    public IPath getLocation() {
        if (this.location == null) {
            return null;
        }
        return FileUtil.toPath(this.location);
    }

    @Override
    public URI getLocationURI() {
        return this.location;
    }

    @Override
    public String[] getNatureIds() {
        return this.getNatureIds(true);
    }

    public String[] getNatureIds(boolean makeCopy) {
        if (this.natures == null) {
            return EMPTY_STRING_ARRAY;
        }
        return makeCopy ? (String[])this.natures.clone() : this.natures;
    }

    @Override
    public IProject[] getReferencedProjects() {
        return this.getReferencedProjects(true);
    }

    public IProject[] getReferencedProjects(boolean makeCopy) {
        if (this.staticRefs == null) {
            return EMPTY_PROJECT_ARRAY;
        }
        return makeCopy ? (IProject[])this.staticRefs.clone() : this.staticRefs;
    }

    public URI getSnapshotLocationURI() {
        return this.snapshotLocation;
    }

    @Override
    public boolean hasNature(String natureID) {
        String[] natureIDs = this.getNatureIds(false);
        int i = 0;
        while (i < natureIDs.length) {
            if (natureIDs[i].equals(natureID)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private static boolean configRefsHaveChanges(Map<String, IBuildConfiguration[]> m1, Map<String, IBuildConfiguration[]> m2) {
        if (m1.size() != m2.size()) {
            return true;
        }
        for (Map.Entry<String, IBuildConfiguration[]> e : m1.entrySet()) {
            if (!m2.containsKey(e.getKey())) {
                return true;
            }
            if (Arrays.equals(e.getValue(), m2.get(e.getKey()))) continue;
            return true;
        }
        return false;
    }

    boolean hasBuildConfig(String buildConfigName) {
        Assert.isNotNull((Object)buildConfigName);
        if (this.configNames.length == 0) {
            return EMPTY_STR.equals(buildConfigName);
        }
        int i = 0;
        while (i < this.configNames.length) {
            if (this.configNames[i].equals(buildConfigName)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public boolean hasPrivateChanges(ProjectDescription description) {
        if (this.location == null ? description.location != null : !this.location.equals(description.location)) {
            return true;
        }
        if (!Arrays.equals(this.dynamicRefs, description.dynamicRefs)) {
            return true;
        }
        if (!this.activeConfiguration.equals(description.activeConfiguration)) {
            return true;
        }
        if (!Arrays.equals(this.configNames, description.configNames)) {
            return true;
        }
        return ProjectDescription.configRefsHaveChanges(this.dynamicConfigRefs, description.dynamicConfigRefs);
    }

    public boolean hasPublicChanges(ProjectDescription description) {
        if (!this.getName().equals(description.getName())) {
            return true;
        }
        if (!this.comment.equals(description.getComment())) {
            return true;
        }
        if (!Arrays.equals(this.buildSpec, description.getBuildSpec(false))) {
            return true;
        }
        if (!Arrays.equals(this.staticRefs, description.getReferencedProjects(false))) {
            return true;
        }
        if (!Arrays.equals(this.natures, description.getNatureIds(false))) {
            return true;
        }
        HashMap<IPath, LinkedList<FilterDescription>> otherFilters = description.getFilters();
        if (this.filterDescriptions == null && otherFilters != null) {
            return otherFilters != null;
        }
        if (this.filterDescriptions != null && !this.filterDescriptions.equals(otherFilters)) {
            return true;
        }
        HashMap<String, VariableDescription> otherVariables = description.getVariables();
        if (this.variableDescriptions == null && otherVariables != null) {
            return true;
        }
        if (this.variableDescriptions != null && !this.variableDescriptions.equals(otherVariables)) {
            return true;
        }
        HashMap<IPath, LinkDescription> otherLinks = description.getLinks();
        if (!(this.linkDescriptions == otherLinks || this.linkDescriptions != null && this.linkDescriptions.equals(otherLinks))) {
            return true;
        }
        URI otherSnapshotLoc = description.getSnapshotLocationURI();
        return this.snapshotLocation != otherSnapshotLoc && (this.snapshotLocation == null || !this.snapshotLocation.equals(otherSnapshotLoc));
    }

    @Override
    public ICommand newCommand() {
        return new BuildCommand();
    }

    @Override
    public void setActiveBuildConfig(String configName) {
        Assert.isNotNull((Object)configName);
        if (!configName.equals(this.activeConfiguration)) {
            this.clearCachedReferences(null);
        }
        this.activeConfiguration = configName;
    }

    @Override
    public void setBuildSpec(ICommand[] value) {
        Assert.isLegal((value != null ? 1 : 0) != 0);
        ICommand[] result = new ICommand[value.length];
        int i = 0;
        while (i < result.length) {
            result[i] = (ICommand)((BuildCommand)value[i]).clone();
            int j = 0;
            while (j < this.buildSpec.length) {
                if (result[i].equals(this.buildSpec[j])) {
                    ((BuildCommand)result[i]).setBuilders(((BuildCommand)this.buildSpec[j]).getBuilders());
                    break;
                }
                ++j;
            }
            ++i;
        }
        this.buildSpec = result;
    }

    @Override
    public void setComment(String value) {
        this.comment = value;
    }

    @Override
    public void setDynamicReferences(IProject[] value) {
        Assert.isLegal((value != null ? 1 : 0) != 0);
        this.dynamicRefs = this.copyAndRemoveDuplicates(value);
        this.clearCachedReferences(null);
    }

    public void setBuildConfigReferences(HashMap<String, IBuildConfiguration[]> refs) {
        this.dynamicConfigRefs = new HashMap<String, IBuildConfiguration[]>(refs);
        this.clearCachedReferences(null);
    }

    @Override
    public void setBuildConfigReferences(String configName, IBuildConfiguration[] references) {
        Assert.isLegal((configName != null ? 1 : 0) != 0);
        Assert.isLegal((references != null ? 1 : 0) != 0);
        if (!this.hasBuildConfig(configName)) {
            return;
        }
        this.dynamicConfigRefs.put(configName, this.copyAndRemoveDuplicates(references));
        this.clearCachedReferences(configName);
    }

    @Override
    public void setBuildConfigs(String[] names) {
        LinkedHashSet<String> buildConfigNames = new LinkedHashSet<String>();
        if (names == null || names.length == 0) {
            this.configNames = EMPTY_STRING_ARRAY;
            buildConfigNames.add(EMPTY_STR);
        } else {
            String[] stringArray = names;
            int n = names.length;
            int n2 = 0;
            while (n2 < n) {
                String n3 = stringArray[n2];
                Assert.isLegal((n3 != null ? 1 : 0) != 0);
                buildConfigNames.add(n3);
                ++n2;
            }
            this.configNames = buildConfigNames.size() == 1 && ((String)buildConfigNames.iterator().next()).equals(EMPTY_STR) ? EMPTY_STRING_ARRAY : buildConfigNames.toArray(new String[buildConfigNames.size()]);
        }
        boolean modified = this.dynamicConfigRefs.keySet().retainAll(buildConfigNames);
        if (modified) {
            this.clearCachedReferences(null);
        }
        this.cachedBuildConfigs = null;
    }

    public void setLinkDescriptions(HashMap<IPath, LinkDescription> linkDescriptions) {
        this.linkDescriptions = linkDescriptions;
    }

    public void setFilterDescriptions(HashMap<IPath, LinkedList<FilterDescription>> filterDescriptions) {
        this.filterDescriptions = filterDescriptions;
    }

    public void setVariableDescriptions(HashMap<String, VariableDescription> variableDescriptions) {
        this.variableDescriptions = variableDescriptions;
    }

    public boolean setLinkLocation(IPath path, LinkDescription description) {
        HashMap<IPath, LinkDescription> tempMap = this.linkDescriptions;
        if (description != null) {
            LinkDescription oldValue = (tempMap = tempMap == null ? new HashMap<IPath, LinkDescription>(10) : (HashMap<IPath, LinkDescription>)tempMap.clone()).put(path, description);
            if (oldValue != null && description.equals(oldValue)) {
                return false;
            }
            this.linkDescriptions = tempMap;
        } else {
            if (tempMap == null) {
                return false;
            }
            HashMap newMap = (HashMap)tempMap.clone();
            Object oldValue = newMap.remove(path);
            if (oldValue == null) {
                return false;
            }
            this.linkDescriptions = newMap.size() == 0 ? null : newMap;
        }
        return true;
    }

    public synchronized void addFilter(IPath path, FilterDescription description) {
        LinkedList<FilterDescription> descList;
        Assert.isNotNull((Object)description);
        if (this.filterDescriptions == null) {
            this.filterDescriptions = new HashMap(10);
        }
        if ((descList = this.filterDescriptions.get(path)) == null) {
            descList = new LinkedList();
            this.filterDescriptions.put(path, descList);
        }
        descList.add(description);
    }

    public synchronized void removeFilter(IPath path, FilterDescription description) {
        LinkedList<FilterDescription> descList;
        if (this.filterDescriptions != null && (descList = this.filterDescriptions.get(path)) != null) {
            descList.remove(description);
            if (descList.size() == 0) {
                this.filterDescriptions.remove(path);
                if (this.filterDescriptions.size() == 0) {
                    this.filterDescriptions = null;
                }
            }
        }
    }

    public boolean setVariableDescription(String name, VariableDescription description) {
        HashMap<String, VariableDescription> tempMap = this.variableDescriptions;
        if (description != null) {
            VariableDescription oldValue = (tempMap = tempMap == null ? new HashMap<String, VariableDescription>(10) : (HashMap<String, VariableDescription>)tempMap.clone()).put(name, description);
            if (oldValue != null && description.equals(oldValue)) {
                return false;
            }
            this.variableDescriptions = tempMap;
        } else {
            if (tempMap == null) {
                return false;
            }
            HashMap newMap = (HashMap)tempMap.clone();
            Object oldValue = newMap.remove(name);
            if (oldValue == null) {
                return false;
            }
            this.variableDescriptions = newMap.size() == 0 ? null : newMap;
        }
        return true;
    }

    public synchronized boolean setFilters(IPath path, LinkedList<FilterDescription> descriptions) {
        if (descriptions != null) {
            LinkedList<FilterDescription> oldValue;
            if (this.filterDescriptions == null) {
                this.filterDescriptions = new HashMap(10);
            }
            if ((oldValue = this.filterDescriptions.put(path, descriptions)) != null && descriptions.equals(oldValue)) {
                return false;
            }
        } else {
            if (this.filterDescriptions == null) {
                return false;
            }
            LinkedList<FilterDescription> oldValue = this.filterDescriptions.remove(path);
            if (oldValue == null) {
                return false;
            }
            if (this.filterDescriptions.size() == 0) {
                this.filterDescriptions = null;
            }
        }
        return true;
    }

    @Override
    public void setLocation(IPath path) {
        this.location = path == null ? null : URIUtil.toURI((IPath)path);
    }

    @Override
    public void setLocationURI(URI location) {
        this.location = location;
    }

    @Override
    public void setName(String value) {
        super.setName(value);
    }

    @Override
    public void setNatureIds(String[] value) {
        this.natures = (String[])value.clone();
    }

    @Override
    public void setReferencedProjects(IProject[] value) {
        Assert.isLegal((value != null ? 1 : 0) != 0);
        this.staticRefs = this.copyAndRemoveDuplicates(value);
        this.clearCachedReferences(null);
    }

    public void setSnapshotLocationURI(URI snapshotLocation) {
        this.snapshotLocation = snapshotLocation;
    }

    public URI getGroupLocationURI(IPath projectRelativePath) {
        return LinkDescription.VIRTUAL_LOCATION;
    }

    public boolean updateDynamicState(ProjectDescription description) {
        boolean changed = false;
        if (!this.activeConfiguration.equals(description.activeConfiguration)) {
            changed = true;
            this.activeConfiguration = description.activeConfiguration;
        }
        if (!Arrays.equals(this.dynamicRefs, description.dynamicRefs)) {
            changed = true;
            this.setDynamicReferences(description.dynamicRefs);
        }
        if (!Arrays.equals(this.configNames, description.configNames)) {
            changed = true;
            this.setBuildConfigs(description.configNames);
        }
        if (ProjectDescription.configRefsHaveChanges(this.dynamicConfigRefs, description.dynamicConfigRefs)) {
            changed = true;
            this.dynamicConfigRefs = new HashMap<String, IBuildConfiguration[]>(description.dynamicConfigRefs);
        }
        if (changed) {
            this.clearCachedReferences(null);
        }
        return changed;
    }
}

