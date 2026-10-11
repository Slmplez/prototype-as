/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.IContentTypeManager
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.team.internal.core;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.team.core.RepositoryProviderType;
import org.eclipse.team.core.Team;
import org.eclipse.team.core.TeamException;
import org.eclipse.team.internal.core.ResourceVariantCache;
import org.eclipse.team.internal.core.mapping.IStreamMergerDelegate;
import org.osgi.framework.BundleContext;

public final class TeamPlugin
extends Plugin {
    public static final String ID = "org.eclipse.team.core";
    public static final String PROVIDER_EXTENSION = "repository-provider-type";
    public static final String FILE_TYPES_EXTENSION = "fileTypes";
    public static final String IGNORE_EXTENSION = "ignore";
    public static final String PROJECT_SET_EXTENSION = "projectSets";
    public static final String REPOSITORY_EXTENSION = "repository";
    public static final String DEFAULT_FILE_MODIFICATION_VALIDATOR_EXTENSION = "defaultFileModificationValidator";
    public static final QualifiedName PROVIDER_PROP_KEY = new QualifiedName("org.eclipse.team.core", "repository");
    public static final String EXTENSION_POINT_BUNDLE_IMPORTERS = "org.eclipse.team.core.bundleImporters";
    private static TeamPlugin plugin;
    private IStreamMergerDelegate mergerDelegate;

    public TeamPlugin() {
        plugin = this;
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        Team.startup();
    }

    public void stop(BundleContext context) throws Exception {
        try {
            Team.shutdown();
            ResourceVariantCache.shutdown();
        }
        finally {
            super.stop(context);
        }
    }

    public static TeamPlugin getPlugin() {
        return plugin;
    }

    public static void log(int severity, String message, Throwable e) {
        plugin.getLog().log((IStatus)new Status(severity, ID, 0, message, e));
    }

    public static void log(CoreException e) {
        TeamPlugin.log(e.getStatus().getSeverity(), e.getMessage(), e);
    }

    public static TeamException wrapException(CoreException e) {
        IStatus status = e.getStatus();
        return new TeamException((IStatus)new Status(status.getSeverity(), ID, status.getCode(), status.getMessage(), (Throwable)e));
    }

    public static String getCharset(String name, InputStream stream) throws IOException {
        IContentDescription description = TeamPlugin.getContentDescription(name, stream);
        return description == null ? null : description.getCharset();
    }

    public static IContentDescription getContentDescription(String name, InputStream stream) throws IOException {
        IContentDescription iContentDescription;
        block7: {
            IContentTypeManager contentTypeManager = Platform.getContentTypeManager();
            try {
                iContentDescription = contentTypeManager.getDescriptionFor(stream, name, IContentDescription.ALL);
                if (stream == null) break block7;
            }
            catch (Throwable throwable) {
                if (stream != null) {
                    try {
                        stream.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            try {
                stream.close();
            }
            catch (IOException iOException) {}
        }
        return iContentDescription;
    }

    public static RepositoryProviderType getAliasType(String id) {
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint(ID, REPOSITORY_EXTENSION);
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String extensionId;
                    String aliasId = configElements[j].getAttribute("canImportId");
                    if (aliasId != null && aliasId.equals(id) && (extensionId = configElements[j].getAttribute("id")) != null) {
                        return RepositoryProviderType.getProviderType(extensionId);
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    public static IPath[] getMetaFilePaths(String id) {
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint(ID, REPOSITORY_EXTENSION);
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String extensionId = configElements[j].getAttribute("id");
                    String metaFilePaths = configElements[j].getAttribute("metaFilePaths");
                    if (extensionId != null && extensionId.equals(id) && metaFilePaths != null) {
                        return TeamPlugin.getPaths(metaFilePaths);
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    private static IPath[] getPaths(String metaFilePaths) {
        ArrayList<Path> result = new ArrayList<Path>();
        StringTokenizer t = new StringTokenizer(metaFilePaths, ",");
        while (t.hasMoreTokens()) {
            String next = t.nextToken();
            Path path = new Path(null, next);
            result.add(path);
        }
        return result.toArray(new IPath[result.size()]);
    }

    public void setMergerDelegate(IStreamMergerDelegate merger) {
        this.mergerDelegate = merger;
    }

    public IStreamMergerDelegate getMergerDelegate() {
        return this.mergerDelegate;
    }
}

