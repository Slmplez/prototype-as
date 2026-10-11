/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourceAttributes
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource.impl;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourceAttributes;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.plugin.EcorePlugin;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;
import org.eclipse.emf.ecore.resource.impl.URIHandlerImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PlatformResourceURIHandlerImpl
extends URIHandlerImpl {
    protected static IWorkspaceRoot workspaceRoot = EcorePlugin.getWorkspaceRoot();

    @Override
    public boolean canHandle(URI uri) {
        return uri.isPlatformResource();
    }

    @Override
    public OutputStream createOutputStream(URI uri, Map<?, ?> options) throws IOException {
        String platformResourcePath = uri.toPlatformString(true);
        if (workspaceRoot != null) {
            return WorkbenchHelper.createPlatformResourceOutputStream(platformResourcePath, options);
        }
        URI resolvedLocation = EcorePlugin.resolvePlatformResourcePath(platformResourcePath);
        if (resolvedLocation != null) {
            return ((URIConverter)options.get("URI_CONVERTER")).createOutputStream(resolvedLocation, options);
        }
        throw new IOException("The path '" + platformResourcePath + "' is unmapped");
    }

    @Override
    public InputStream createInputStream(URI uri, Map<?, ?> options) throws IOException {
        String platformResourcePath = uri.toPlatformString(true);
        if (workspaceRoot != null) {
            return WorkbenchHelper.createPlatformResourceInputStream(platformResourcePath, options);
        }
        URI resolvedLocation = EcorePlugin.resolvePlatformResourcePath(platformResourcePath);
        if (resolvedLocation != null) {
            return this.getURIConverter(options).createInputStream(resolvedLocation, options);
        }
        throw new IOException("The path '" + platformResourcePath + "' is unmapped");
    }

    @Override
    public void delete(URI uri, Map<?, ?> options) throws IOException {
        String platformResourcePath = uri.toPlatformString(true);
        if (workspaceRoot != null) {
            WorkbenchHelper.delete(platformResourcePath, options);
        } else {
            URI resolvedLocation = EcorePlugin.resolvePlatformResourcePath(platformResourcePath);
            if (resolvedLocation != null) {
                this.getURIConverter(options).delete(resolvedLocation, options);
            } else {
                throw new IOException("The path '" + platformResourcePath + "' is unmapped");
            }
        }
    }

    @Override
    public boolean exists(URI uri, Map<?, ?> options) {
        String platformResourcePath = uri.toPlatformString(true);
        if (workspaceRoot != null) {
            return WorkbenchHelper.exists(platformResourcePath, options);
        }
        URI resolvedLocation = EcorePlugin.resolvePlatformResourcePath(platformResourcePath);
        return resolvedLocation != null && this.getURIConverter(options).exists(resolvedLocation, options);
    }

    @Override
    public Map<String, ?> getAttributes(URI uri, Map<?, ?> options) {
        String platformResourcePath = uri.toPlatformString(true);
        if (workspaceRoot != null) {
            return WorkbenchHelper.attributes(platformResourcePath, options);
        }
        URI resolvedLocation = EcorePlugin.resolvePlatformResourcePath(platformResourcePath);
        return resolvedLocation == null ? Collections.emptyMap() : this.getURIConverter(options).getAttributes(resolvedLocation, options);
    }

    @Override
    public void setAttributes(URI uri, Map<String, ?> attributes, Map<?, ?> options) throws IOException {
        String platformResourcePath = uri.toPlatformString(true);
        if (workspaceRoot != null) {
            WorkbenchHelper.updateAttributes(platformResourcePath, attributes, options);
        } else {
            URI resolvedLocation = EcorePlugin.resolvePlatformResourcePath(platformResourcePath);
            if (resolvedLocation != null) {
                this.getURIConverter(options).setAttributes(resolvedLocation, attributes, options);
            } else {
                throw new IOException("The platform resource path '" + platformResourcePath + "' does not resolve");
            }
        }
    }

    public static class PlatformResourceOutputStream
    extends ByteArrayOutputStream {
        protected IFile file;
        protected boolean force;
        protected boolean keepHistory;
        protected IProgressMonitor progressMonitor;
        protected boolean previouslyFlushed;

        public PlatformResourceOutputStream(IFile file, boolean force, boolean keepHistory, IProgressMonitor progressMonitor) {
            this.file = file;
            this.force = force;
            this.keepHistory = keepHistory;
            this.progressMonitor = progressMonitor;
        }

        protected void createContainer(IContainer container) throws IOException {
            if (!container.exists() && container.getType() == 2) {
                this.createContainer(container.getParent());
                try {
                    ((IFolder)container).create(this.force, this.keepHistory, this.progressMonitor);
                }
                catch (CoreException exception) {
                    throw new Resource.IOWrappedException((Exception)((Object)exception));
                }
            }
        }

        public void close() throws IOException {
            this.flush();
            super.close();
        }

        public void flush() throws IOException {
            super.flush();
            if (this.previouslyFlushed) {
                if (this.count == 0) {
                    return;
                }
            } else {
                this.createContainer(this.file.getParent());
            }
            byte[] contents = this.toByteArray();
            ByteArrayInputStream inputStream = new ByteArrayInputStream(contents, 0, contents.length);
            try {
                if (this.previouslyFlushed) {
                    this.file.appendContents((InputStream)inputStream, this.force, false, this.progressMonitor);
                } else {
                    if (!this.file.isSynchronized(1)) {
                        this.file.refreshLocal(1, this.progressMonitor);
                    }
                    if (!this.file.exists()) {
                        this.file.create((InputStream)inputStream, false, null);
                        this.previouslyFlushed = true;
                    } else {
                        this.file.setContents((InputStream)inputStream, this.force, this.keepHistory, this.progressMonitor);
                        this.previouslyFlushed = true;
                    }
                }
                this.reset();
            }
            catch (CoreException exception) {
                throw new Resource.IOWrappedException((Exception)((Object)exception));
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class WorkbenchHelper {
        public static OutputStream createPlatformResourceOutputStream(String platformResourcePath, Map<?, ?> options) throws IOException {
            IFile file = workspaceRoot.getFile((IPath)new Path(platformResourcePath));
            final Map response = options == null ? null : (Map)options.get("RESPONSE");
            return new PlatformResourceOutputStream(file, false, true, null){

                public void close() throws IOException {
                    try {
                        super.close();
                    }
                    finally {
                        if (response != null) {
                            response.put("TIME_STAMP", this.file.getLocalTimeStamp());
                        }
                    }
                }
            };
        }

        public static InputStream createPlatformResourceInputStream(String platformResourcePath, Map<?, ?> options) throws IOException {
            IFile file = workspaceRoot.getFile((IPath)new Path(platformResourcePath));
            try {
                Map response;
                if (!file.isSynchronized(1)) {
                    file.refreshLocal(1, null);
                }
                InputStream result = file.getContents();
                if (options != null && (response = (Map)options.get("RESPONSE")) != null) {
                    response.put("TIME_STAMP", file.getLocalTimeStamp());
                }
                return result;
            }
            catch (CoreException exception) {
                throw new Resource.IOWrappedException((Exception)((Object)exception));
            }
        }

        public static void delete(String platformResourcePath, Map<?, ?> options) throws IOException {
            IFile file = workspaceRoot.getFile((IPath)new Path(platformResourcePath));
            try {
                file.delete(true, null);
            }
            catch (CoreException exception) {
                throw new Resource.IOWrappedException((Exception)((Object)exception));
            }
        }

        public static boolean exists(String platformResourcePath, Map<?, ?> options) {
            IResource resource = workspaceRoot.findMember((IPath)new Path(platformResourcePath));
            return resource != null;
        }

        public static Map<String, ?> attributes(String platformResourcePath, Map<?, ?> options) {
            IResource resource = workspaceRoot.findMember((IPath)new Path(platformResourcePath));
            HashMap<String, Comparable<Long>> result = new HashMap<String, Comparable<Long>>();
            if (resource != null) {
                Set requestedAttributes;
                Set set = requestedAttributes = options == null ? null : (Set)options.get("requestedAttributes");
                if (requestedAttributes == null || requestedAttributes.contains("timeStamp")) {
                    result.put("timeStamp", Long.valueOf(resource.getLocalTimeStamp()));
                }
                ResourceAttributes resourceAttributes = null;
                if (requestedAttributes == null || requestedAttributes.contains("readOnly")) {
                    resourceAttributes = resource.getResourceAttributes();
                    result.put("readOnly", Boolean.valueOf(resourceAttributes.isReadOnly()));
                }
                if (requestedAttributes == null || requestedAttributes.contains("archive")) {
                    if (resourceAttributes == null) {
                        resourceAttributes = resource.getResourceAttributes();
                    }
                    result.put("archive", Boolean.valueOf(resourceAttributes.isArchive()));
                }
                if (requestedAttributes == null || requestedAttributes.contains("executable")) {
                    if (resourceAttributes == null) {
                        resourceAttributes = resource.getResourceAttributes();
                    }
                    result.put("executable", Boolean.valueOf(resourceAttributes.isExecutable()));
                }
                if (requestedAttributes == null || requestedAttributes.contains("hidden")) {
                    if (resourceAttributes == null) {
                        resourceAttributes = resource.getResourceAttributes();
                    }
                    result.put("hidden", Boolean.valueOf(resourceAttributes.isHidden()));
                }
                if (requestedAttributes == null || requestedAttributes.contains("directory")) {
                    if (resourceAttributes == null) {
                        resourceAttributes = resource.getResourceAttributes();
                    }
                    result.put("directory", Boolean.valueOf(resource instanceof IContainer));
                }
            }
            return result;
        }

        public static void updateAttributes(String platformResourcePath, Map<String, ?> attributes, Map<?, ?> options) throws IOException {
            IResource resource = workspaceRoot.findMember((IPath)new Path(platformResourcePath));
            if (resource == null) {
                throw new FileNotFoundException("The resource " + platformResourcePath + " does not exist");
            }
            try {
                Boolean hidden;
                Boolean executable;
                Boolean archive;
                Long timeStamp = (Long)attributes.get("timeStamp");
                if (timeStamp != null) {
                    resource.setLocalTimeStamp(timeStamp.longValue());
                }
                ResourceAttributes resourceAttributes = null;
                Boolean readOnly = (Boolean)attributes.get("readOnly");
                if (readOnly != null) {
                    resourceAttributes = resource.getResourceAttributes();
                    resourceAttributes.setReadOnly(readOnly.booleanValue());
                }
                if ((archive = (Boolean)attributes.get("archive")) != null) {
                    if (resourceAttributes == null) {
                        resourceAttributes = resource.getResourceAttributes();
                    }
                    resourceAttributes.setArchive(archive.booleanValue());
                }
                if ((executable = (Boolean)attributes.get("executable")) != null) {
                    if (resourceAttributes == null) {
                        resourceAttributes = resource.getResourceAttributes();
                    }
                    resourceAttributes.setExecutable(executable.booleanValue());
                }
                if ((hidden = (Boolean)attributes.get("hidden")) != null) {
                    if (resourceAttributes == null) {
                        resourceAttributes = resource.getResourceAttributes();
                    }
                    resourceAttributes.setHidden(hidden.booleanValue());
                }
                if (resourceAttributes != null) {
                    resource.setResourceAttributes(resourceAttributes);
                }
            }
            catch (CoreException exception) {
                throw new Resource.IOWrappedException((Exception)((Object)exception));
            }
        }

        public static IContentDescription getContentDescription(String platformResourcePath, Map<?, ?> options) throws IOException {
            IFile file = workspaceRoot.getFile((IPath)new Path(platformResourcePath));
            try {
                return file.getContentDescription();
            }
            catch (CoreException exception) {
                throw new Resource.IOWrappedException((Exception)((Object)exception));
            }
        }
    }
}

