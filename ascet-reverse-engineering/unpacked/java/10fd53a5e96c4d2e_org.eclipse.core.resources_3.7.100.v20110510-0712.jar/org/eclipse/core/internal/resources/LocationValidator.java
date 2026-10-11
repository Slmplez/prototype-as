/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.resources.OS;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

public class LocationValidator {
    private final Workspace workspace;

    public LocationValidator(Workspace workspace) {
        this.workspace = workspace;
    }

    private String toString(URI uri) {
        try {
            return EFS.getStore((URI)uri).toString();
        }
        catch (CoreException coreException) {
            return uri.toString();
        }
    }

    private IStatus validateAbsolute(URI location, boolean error) {
        if (!location.isAbsolute()) {
            Path pathPart;
            String message = location.getSchemeSpecificPart() == null ? Messages.links_noPath : ((pathPart = new Path(location.getSchemeSpecificPart())).segmentCount() > 0 ? NLS.bind((String)Messages.pathvar_undefined, (Object)location.toString(), (Object)pathPart.segment(0)) : Messages.links_noPath);
            int code = error ? 379 : 333;
            return new ResourceStatus(code, null, message);
        }
        return Status.OK_STATUS;
    }

    public IStatus validateLinkLocation(IResource resource, IPath unresolvedLocation) {
        IPath location = resource.getPathVariableManager().resolvePath(unresolvedLocation);
        if (location.isEmpty()) {
            return new ResourceStatus(77, resource.getFullPath(), Messages.links_noPath);
        }
        if (!location.isAbsolute()) {
            String message = NLS.bind((String)Messages.pathvar_undefined, (Object)location.toOSString(), (Object)location.segment(0));
            return new ResourceStatus(333, resource.getFullPath(), message);
        }
        if (location.getDevice() == null) {
            location = new Path(location.toFile().getAbsolutePath());
        }
        return this.validateLinkLocationURI(resource, URIUtil.toURI((IPath)location));
    }

    public IStatus validateLinkLocationURI(IResource resource, URI unresolvedLocation) {
        if (unresolvedLocation.getSchemeSpecificPart() == null) {
            return new ResourceStatus(77, resource.getFullPath(), Messages.links_noPath);
        }
        if (ResourcesPlugin.getPlugin().getPluginPreferences().getBoolean("description.disableLinking")) {
            String message = NLS.bind((String)Messages.links_workspaceVeto, (Object)resource.getName());
            return new ResourceStatus(77, resource.getFullPath(), message);
        }
        int type = resource.getType();
        if (type != 2 && type != 1) {
            String message = NLS.bind((String)Messages.links_notFileFolder, (Object)resource.getName());
            return new ResourceStatus(77, resource.getFullPath(), message);
        }
        IContainer parent = resource.getParent();
        if (!parent.isAccessible()) {
            String message = NLS.bind((String)Messages.links_parentNotAccessible, (Object)resource.getFullPath());
            return new ResourceStatus(77, resource.getFullPath(), message);
        }
        URI location = resource.getPathVariableManager().resolveURI(unresolvedLocation);
        String[] natureIds = ((Project)resource.getProject()).internalGetDescription().getNatureIds();
        IStatus result = this.workspace.getNatureManager().validateLinkCreation(natureIds);
        if (!result.isOK()) {
            return result;
        }
        result = resource.getType() == 1 ? this.workspace.getTeamHook().validateCreateLink((IFile)resource, 0, location) : this.workspace.getTeamHook().validateCreateLink((IFolder)resource, 0, location);
        if (!result.isOK()) {
            return result;
        }
        result = this.validateSegments(location);
        if (!result.isOK()) {
            return result;
        }
        result = this.validateAbsolute(location, false);
        if (!result.isOK()) {
            return result;
        }
        URI testLocation = this.workspace.getMetaArea().getLocation().toFile().toURI();
        if (FileUtil.isOverlapping(location, testLocation)) {
            String message = NLS.bind((String)Messages.links_invalidLocation, (Object)this.toString(location));
            return new ResourceStatus(77, resource.getFullPath(), message);
        }
        testLocation = resource.getProject().getLocationURI();
        if (testLocation != null && FileUtil.isPrefixOf(location, testLocation)) {
            String message = NLS.bind((String)Messages.links_locationOverlapsProject, (Object)this.toString(location));
            return new ResourceStatus(77, resource.getFullPath(), message);
        }
        IProject[] projects = this.workspace.getRoot().getProjects(8);
        int i = 0;
        while (i < projects.length) {
            IProject project = projects[i];
            ProjectDescription desc = ((Project)project).internalGetDescription();
            testLocation = desc.getLocationURI();
            if (testLocation != null && FileUtil.isOverlapping(location, testLocation)) {
                String message = NLS.bind((String)Messages.links_overlappingResource, (Object)this.toString(location));
                return new ResourceStatus(235, resource.getFullPath(), message);
            }
            if (project.isOpen()) {
                IResource[] children = null;
                try {
                    children = project.members();
                }
                catch (CoreException coreException) {}
                if (children != null) {
                    int j = 0;
                    while (j < children.length) {
                        if (children[j].isLinked() && (testLocation = children[j].getLocationURI()) != null && FileUtil.isOverlapping(location, testLocation)) {
                            String message = NLS.bind((String)Messages.links_overlappingResource, (Object)this.toString(location));
                            return new ResourceStatus(235, resource.getFullPath(), message);
                        }
                        ++j;
                    }
                }
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    public IStatus validateName(String segment, int type) {
        if (segment == null) {
            String message = Messages.resources_nameNull;
            return new ResourceStatus(77, null, message);
        }
        if (segment.length() == 0) {
            String message = Messages.resources_nameEmpty;
            return new ResourceStatus(77, null, message);
        }
        char[] chars = OS.INVALID_RESOURCE_CHARACTERS;
        int i = 0;
        while (i < chars.length) {
            if (segment.indexOf(chars[i]) != -1) {
                String message = NLS.bind((String)Messages.resources_invalidCharInName, (Object)String.valueOf(chars[i]), (Object)segment);
                return new ResourceStatus(77, null, message);
            }
            ++i;
        }
        if (!OS.isNameValid(segment)) {
            String message = NLS.bind((String)Messages.resources_invalidName, (Object)segment);
            return new ResourceStatus(77, null, message);
        }
        return Status.OK_STATUS;
    }

    public IStatus validatePath(IPath path, int type, boolean lastSegmentOnly) {
        if (path == null) {
            String message = Messages.resources_pathNull;
            return new ResourceStatus(77, null, message);
        }
        if (path.getDevice() != null) {
            String message = NLS.bind((String)Messages.resources_invalidCharInPath, (Object)String.valueOf(':'), (Object)path);
            return new ResourceStatus(77, null, message);
        }
        if (path.isRoot()) {
            String message = Messages.resources_invalidRoot;
            return new ResourceStatus(77, null, message);
        }
        if (!path.isAbsolute()) {
            String message = NLS.bind((String)Messages.resources_mustBeAbsolute, (Object)path);
            return new ResourceStatus(77, null, message);
        }
        int numberOfSegments = path.segmentCount();
        if ((type & 4) != 0) {
            if (numberOfSegments == 1) {
                return this.validateName(path.segment(0), 4);
            }
            if (type == 4) {
                String message = NLS.bind((String)Messages.resources_projectPath, (Object)path);
                return new ResourceStatus(77, null, message);
            }
        }
        if ((type & 3) != 0) {
            if (numberOfSegments < 2) {
                String message = NLS.bind((String)Messages.resources_resourcePath, (Object)path);
                return new ResourceStatus(77, null, message);
            }
            int fileFolderType = type &= 0xFFFFFFFB;
            int segmentCount = path.segmentCount();
            if (lastSegmentOnly) {
                return this.validateName(path.segment(segmentCount - 1), fileFolderType);
            }
            IStatus status = this.validateName(path.segment(0), 4);
            if (!status.isOK()) {
                return status;
            }
            int i = 1;
            while (i < segmentCount) {
                status = this.validateName(path.segment(i), fileFolderType);
                if (!status.isOK()) {
                    return status;
                }
                ++i;
            }
            return Status.OK_STATUS;
        }
        String message = NLS.bind((String)Messages.resources_invalidPath, (Object)path);
        return new ResourceStatus(77, null, message);
    }

    public IStatus validatePath(String path, int type) {
        if (path == null) {
            String message = Messages.resources_pathNull;
            return new ResourceStatus(77, null, message);
        }
        return this.validatePath(Path.fromOSString((String)path), type, false);
    }

    public IStatus validateProjectLocation(IProject context, IPath unresolvedLocation) {
        if (unresolvedLocation == null) {
            return this.validateProjectLocationURI(context, null);
        }
        IPath location = context != null ? context.getPathVariableManager().resolvePath(unresolvedLocation) : this.workspace.getPathVariableManager().resolvePath(unresolvedLocation);
        if (!location.isAbsolute()) {
            String message = location.segmentCount() > 0 ? NLS.bind((String)Messages.pathvar_undefined, (Object)location.toString(), (Object)location.segment(0)) : Messages.links_noPath;
            return new ResourceStatus(379, null, message);
        }
        return this.validateProjectLocationURI(context, URIUtil.toURI((IPath)location));
    }

    public IStatus validateProjectLocationURI(IProject context, URI unresolvedLocation) {
        URI testLocation;
        if (context == null && unresolvedLocation == null) {
            throw new IllegalArgumentException("Either a project or a location must be provided");
        }
        boolean isMetadataLocation = false;
        if (unresolvedLocation != null) {
            if (URIUtil.equals((URI)unresolvedLocation, (URI)URIUtil.toURI((IPath)Platform.getLocation().addTrailingSeparator().append(".metadata")))) {
                isMetadataLocation = true;
            }
        } else if (context != null && context.getName().equals(".metadata")) {
            isMetadataLocation = true;
        }
        if (isMetadataLocation) {
            String message = NLS.bind((String)Messages.resources_invalidPath, (Object)this.toString(URIUtil.toURI((IPath)Platform.getLocation().addTrailingSeparator().append(".metadata"))));
            return new ResourceStatus(77, null, message);
        }
        if (unresolvedLocation == null) {
            return Status.OK_STATUS;
        }
        URI location = context != null ? context.getPathVariableManager().resolveURI(unresolvedLocation) : this.workspace.getPathVariableManager().resolveURI(unresolvedLocation);
        IStatus result = this.validateSegments(location);
        if (!result.isOK()) {
            return result;
        }
        result = this.validateAbsolute(location, true);
        if (!result.isOK()) {
            return result;
        }
        try {
            EFS.getFileSystem((String)location.getScheme());
        }
        catch (CoreException e) {
            return e.getStatus();
        }
        if (location.getScheme().equals("file")) {
            IPath defaultDefaultLocation;
            IPath locationPath = URIUtil.toPath((URI)location);
            if (FileUtil.isPrefixOf(locationPath, defaultDefaultLocation = this.workspace.getRoot().getLocation())) {
                String message = NLS.bind((String)Messages.resources_overlapWorkspace, (Object)this.toString(location), (Object)defaultDefaultLocation.toOSString());
                return new ResourceStatus(77, null, message);
            }
            IPath parentPath = locationPath.removeLastSegments(1);
            if (FileUtil.isPrefixOf(parentPath, defaultDefaultLocation) && FileUtil.isPrefixOf(defaultDefaultLocation, parentPath)) {
                String message = NLS.bind((String)Messages.resources_overlapProject, (Object)this.toString(location), (Object)locationPath.lastSegment());
                return new ResourceStatus(77, null, message);
            }
        }
        IProject[] projects = this.workspace.getRoot().getProjects(8);
        int j = 0;
        while (j < projects.length) {
            IProject project = projects[j];
            testLocation = project.getLocationURI();
            if (!(context != null && project.equals(context) ? URIUtil.equals((URI)testLocation, (URI)location) || !FileUtil.isPrefixOf(testLocation, location) : !URIUtil.equals((URI)testLocation, (URI)location))) {
                String message = NLS.bind((String)Messages.resources_overlapProject, (Object)this.toString(location), (Object)project.getName());
                return new ResourceStatus(77, null, message);
            }
            ++j;
        }
        if (context != null && context.exists() && context.isOpen()) {
            IResource[] children = null;
            try {
                children = context.members();
            }
            catch (CoreException coreException) {}
            if (children != null) {
                int i = 0;
                while (i < children.length) {
                    if (children[i].isLinked() && (testLocation = children[i].getLocationURI()) != null && FileUtil.isPrefixOf(testLocation, location)) {
                        String message = NLS.bind((String)Messages.links_locationOverlapsLink, (Object)this.toString(location));
                        return new ResourceStatus(235, context.getFullPath(), message);
                    }
                    ++i;
                }
            }
        }
        return Status.OK_STATUS;
    }

    private IStatus validateSegments(URI location) {
        if ("file".equals(location.getScheme())) {
            Path pathPart = new Path(location.getSchemeSpecificPart());
            int segmentCount = pathPart.segmentCount();
            int i = 0;
            while (i < segmentCount) {
                IStatus result = this.validateName(pathPart.segment(i), 4);
                if (!result.isOK()) {
                    return result;
                }
                ++i;
            }
        }
        return Status.OK_STATUS;
    }
}

