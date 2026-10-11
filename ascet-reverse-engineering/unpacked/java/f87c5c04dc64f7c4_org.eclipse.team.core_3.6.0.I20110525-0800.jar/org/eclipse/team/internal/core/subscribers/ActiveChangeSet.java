/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.team.internal.core.subscribers;

import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.team.core.diff.IDiff;
import org.eclipse.team.core.mapping.provider.ResourceDiffTree;
import org.eclipse.team.internal.core.TeamPlugin;
import org.eclipse.team.internal.core.subscribers.ActiveChangeSetManager;
import org.eclipse.team.internal.core.subscribers.DiffChangeSet;
import org.osgi.service.prefs.Preferences;

public class ActiveChangeSet
extends DiffChangeSet {
    private static final String CTX_TITLE = "title";
    private static final String CTX_COMMENT = "comment";
    private static final String CTX_RESOURCES = "resources";
    private static final String CTX_USER_CREATED = "userCreated";
    private final ActiveChangeSetManager manager;
    private String comment;
    private boolean userCreated = true;

    public ActiveChangeSet(ActiveChangeSetManager manager, String title) {
        super(title);
        this.manager = manager;
    }

    public String getTitle() {
        return this.getName();
    }

    public void setTitle(String title) {
        this.setName(title);
        this.getManager().fireNameChangedEvent(this);
    }

    public String getComment() {
        if (this.comment == null) {
            return this.getTitle();
        }
        return this.comment;
    }

    public void setComment(String comment) {
        this.comment = comment != null && comment.equals(this.getTitle()) ? null : comment;
    }

    protected boolean isValidChange(IDiff diff) {
        return this.getManager().isModified(diff);
    }

    private void addResource(IResource resource) throws CoreException {
        IDiff diff = this.getManager().getDiff(resource);
        if (diff != null) {
            this.add(diff);
        }
    }

    private ActiveChangeSetManager getManager() {
        return this.manager;
    }

    public boolean hasComment() {
        return this.comment != null;
    }

    public void save(Preferences prefs) {
        prefs.put(CTX_TITLE, this.getTitle());
        if (this.comment != null) {
            prefs.put(CTX_COMMENT, this.comment);
        }
        if (!this.isEmpty()) {
            StringBuffer buffer = new StringBuffer();
            IResource[] resources = this.getResources();
            int i = 0;
            while (i < resources.length) {
                IResource resource = resources[i];
                buffer.append(resource.getFullPath().toString());
                buffer.append('\n');
                ++i;
            }
            prefs.put(CTX_RESOURCES, buffer.toString());
        }
        prefs.putBoolean(CTX_USER_CREATED, this.isUserCreated());
    }

    public void init(Preferences prefs) {
        this.setName(prefs.get(CTX_TITLE, ""));
        this.comment = prefs.get(CTX_COMMENT, null);
        String resourcePaths = prefs.get(CTX_RESOURCES, null);
        if (resourcePaths != null) {
            ResourceDiffTree tree = this.internalGetDiffTree();
            try {
                tree.beginInput();
                IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
                StringTokenizer tokenizer = new StringTokenizer(resourcePaths, "\n");
                while (tokenizer.hasMoreTokens()) {
                    String next = tokenizer.nextToken();
                    if (next.trim().length() <= 0) continue;
                    IResource resource = this.getResource(root, next);
                    try {
                        if (resource == null || this.getManager().getDiff(resource) == null) continue;
                        this.addResource(resource);
                    }
                    catch (CoreException e) {
                        TeamPlugin.log(e);
                    }
                }
            }
            finally {
                tree.endInput(null);
            }
        }
        this.userCreated = prefs.getBoolean(CTX_USER_CREATED, true);
    }

    private IResource getResource(IWorkspaceRoot root, String next) {
        Object resource = root.findMember(next);
        if (resource == null) {
            Path path = new Path(null, next);
            resource = next.charAt(next.length() - 1) == '/' ? (path.segmentCount() == 1 ? root.getProject(path.lastSegment()) : root.getFolder((IPath)path)) : root.getFile((IPath)path);
        }
        return resource;
    }

    public void add(IResource[] resources) throws CoreException {
        ArrayList<IDiff> toAdd = new ArrayList<IDiff>();
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            IDiff diff = this.getManager().getDiff(resource);
            if (diff != null) {
                toAdd.add(diff);
            }
            ++i;
        }
        if (!toAdd.isEmpty()) {
            this.add(toAdd.toArray(new IDiff[toAdd.size()]));
        }
    }

    public void setUserCreated(boolean userCreated) {
        this.userCreated = userCreated;
    }

    public boolean isUserCreated() {
        return this.userCreated;
    }
}

