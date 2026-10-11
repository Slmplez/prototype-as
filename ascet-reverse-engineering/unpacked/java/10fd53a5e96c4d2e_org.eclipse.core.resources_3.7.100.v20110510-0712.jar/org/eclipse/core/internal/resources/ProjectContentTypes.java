/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.core.runtime.content.IContentTypeManager$ISelectionPolicy
 *  org.eclipse.core.runtime.content.IContentTypeMatcher
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.core.internal.resources;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectInfo;
import org.eclipse.core.internal.resources.ProjectNatureDescriptor;
import org.eclipse.core.internal.resources.ResourceInfo;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Cache;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.ProjectScope;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.content.IContentTypeMatcher;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProjectContentTypes {
    private static final String CONTENT_TYPE_PREF_NODE = "content-types";
    static final InstanceScope INSTANCE_SCOPE = new InstanceScope();
    private static final String PREF_LOCAL_CONTENT_TYPE_SETTINGS = "enabled";
    private static final Preferences PROJECT_SCOPE = Platform.getPreferencesService().getRootNode().node("project");
    private Cache contentTypesPerProject;
    private Workspace workspace;

    static boolean usesContentTypePreferences(String projectName) {
        Preferences node;
        block7: {
            block6: {
                block5: {
                    try {
                        node = PROJECT_SCOPE;
                        if (node.nodeExists(projectName)) break block5;
                        return false;
                    }
                    catch (BackingStoreException backingStoreException) {
                        return false;
                    }
                }
                node = node.node(projectName);
                if (node.nodeExists("org.eclipse.core.runtime")) break block6;
                return false;
            }
            node = node.node("org.eclipse.core.runtime");
            if (node.nodeExists(CONTENT_TYPE_PREF_NODE)) break block7;
            return false;
        }
        node = node.node(CONTENT_TYPE_PREF_NODE);
        return node.getBoolean(PREF_LOCAL_CONTENT_TYPE_SETTINGS, false);
    }

    public ProjectContentTypes(Workspace workspace) {
        this.workspace = workspace;
        this.contentTypesPerProject = new Cache(5, 30, 0.4);
    }

    private Set<String> collectAssociatedContentTypes(Project project) {
        String[] enabledNatures = this.workspace.getNatureManager().getEnabledNatures(project);
        if (enabledNatures.length == 0) {
            return Collections.EMPTY_SET;
        }
        HashSet<String> related = new HashSet<String>(enabledNatures.length);
        int i = 0;
        while (i < enabledNatures.length) {
            ProjectNatureDescriptor descriptor = (ProjectNatureDescriptor)this.workspace.getNatureDescriptor(enabledNatures[i]);
            if (descriptor != null) {
                String[] natureContentTypes = descriptor.getContentTypeIds();
                int j = 0;
                while (j < natureContentTypes.length) {
                    related.add(natureContentTypes[j]);
                    ++j;
                }
            }
            ++i;
        }
        return related;
    }

    public void contentTypePreferencesChanged(IProject project) {
        ProjectInfo info = (ProjectInfo)((Project)project).getResourceInfo(false, false);
        if (info != null) {
            info.setMatcher(null);
        }
    }

    private IContentTypeMatcher createMatcher(Project project) {
        ProjectContentTypeSelectionPolicy projectContentTypeSelectionPolicy = new ProjectContentTypeSelectionPolicy(project);
        return Platform.getContentTypeManager().getMatcher((IContentTypeManager.ISelectionPolicy)projectContentTypeSelectionPolicy, (IScopeContext)projectContentTypeSelectionPolicy);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Set<String> getAssociatedContentTypes(Project project) {
        ResourceInfo info = project.getResourceInfo(false, false);
        if (info == null) {
            return null;
        }
        String projectName = project.getName();
        Cache cache = this.contentTypesPerProject;
        synchronized (cache) {
            Cache.Entry entry = this.contentTypesPerProject.getEntry(projectName);
            if (entry != null && entry.getTimestamp() == (long)info.getContentId()) {
                return (Set)entry.getCached();
            }
            Set<String> result = this.collectAssociatedContentTypes(project);
            if (entry == null) {
                entry = this.contentTypesPerProject.addEntry(projectName, result, info.getContentId());
            } else {
                entry.setTimestamp(info.getContentId());
                entry.setCached(result);
            }
            return result;
        }
    }

    public IContentTypeMatcher getMatcherFor(Project project) throws CoreException {
        IContentTypeMatcher matcher;
        ProjectInfo info = (ProjectInfo)project.getResourceInfo(false, false);
        if (info == null) {
            project.checkAccessible(project.getFlags(info));
        }
        if ((matcher = info.getMatcher()) != null) {
            return matcher;
        }
        matcher = this.createMatcher(project);
        info.setMatcher(matcher);
        return matcher;
    }

    final IContentType[] select(Project project, IContentType[] candidates, boolean fileName, boolean content) {
        if (candidates.length < 2) {
            return candidates;
        }
        Set<String> associated = this.getAssociatedContentTypes(project);
        if (associated == null || associated.isEmpty()) {
            return candidates;
        }
        int associatedCount = 0;
        int i = 0;
        while (i < candidates.length) {
            if (associated.contains(candidates[i].getId())) {
                if (associatedCount < i) {
                    IContentType promoted = candidates[i];
                    int j = i;
                    while (j > associatedCount) {
                        candidates[j] = candidates[j - 1];
                        --j;
                    }
                    candidates[associatedCount] = promoted;
                }
                ++associatedCount;
            }
            ++i;
        }
        return candidates;
    }

    private class ProjectContentTypeSelectionPolicy
    implements IContentTypeManager.ISelectionPolicy,
    IScopeContext {
        private Project project;
        private IScopeContext projectScope;

        public ProjectContentTypeSelectionPolicy(Project project) {
            this.project = project;
            this.projectScope = new ProjectScope(project);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IScopeContext)) {
                return false;
            }
            IScopeContext other = (IScopeContext)obj;
            if (!this.getName().equals(other.getName())) {
                return false;
            }
            IPath location = this.getLocation();
            return location == null ? other.getLocation() == null : location.equals((Object)other.getLocation());
        }

        private IScopeContext getDelegate() {
            if (!ProjectContentTypes.usesContentTypePreferences(this.project.getName())) {
                return INSTANCE_SCOPE;
            }
            return this.projectScope;
        }

        public IPath getLocation() {
            return this.getDelegate().getLocation();
        }

        public String getName() {
            return this.getDelegate().getName();
        }

        public IEclipsePreferences getNode(String qualifier) {
            return this.getDelegate().getNode(qualifier);
        }

        public int hashCode() {
            return this.getName().hashCode();
        }

        public IContentType[] select(IContentType[] candidates, boolean fileName, boolean content) {
            return ProjectContentTypes.this.select(this.project, candidates, fileName, content);
        }
    }
}

