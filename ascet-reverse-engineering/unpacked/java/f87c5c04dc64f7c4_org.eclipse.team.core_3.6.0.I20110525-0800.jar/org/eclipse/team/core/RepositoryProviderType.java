/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.team.core;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.team.core.DefaultRepositoryProviderType;
import org.eclipse.team.core.IProjectSetSerializer;
import org.eclipse.team.core.ProjectSetCapability;
import org.eclipse.team.core.Team;
import org.eclipse.team.core.subscribers.Subscriber;
import org.eclipse.team.internal.core.DefaultProjectSetCapability;
import org.eclipse.team.internal.core.TeamPlugin;

public abstract class RepositoryProviderType
extends PlatformObject {
    private static Map allProviderTypes = new HashMap();
    private String id;
    private String scheme;

    public static RepositoryProviderType getProviderType(String id) {
        RepositoryProviderType type = (RepositoryProviderType)((Object)allProviderTypes.get(id));
        if (type != null) {
            return type;
        }
        return RepositoryProviderType.newProviderType(id);
    }

    public static RepositoryProviderType getTypeForScheme(String scheme) {
        Iterator iter = allProviderTypes.values().iterator();
        while (iter.hasNext()) {
            RepositoryProviderType type = (RepositoryProviderType)((Object)iter.next());
            if (type.getFileSystemScheme() == null || !type.getFileSystemScheme().equals(scheme)) continue;
            return type;
        }
        return RepositoryProviderType.findProviderForScheme(scheme);
    }

    private static RepositoryProviderType findProviderForScheme(String scheme) {
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.team.core", "repository");
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String extensionId = configElements[j].getAttribute("id");
                    String typeScheme = configElements[j].getAttribute("fileSystemScheme");
                    if (typeScheme != null && typeScheme.equals(scheme) && extensionId != null) {
                        return RepositoryProviderType.newProviderType(extensionId);
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    private void setID(String id) {
        this.id = id;
    }

    private static RepositoryProviderType newProviderType(String id) {
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.team.core", "repository");
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String extensionId = configElements[j].getAttribute("id");
                    if (extensionId != null && extensionId.equals(id)) {
                        try {
                            RepositoryProviderType providerType = configElements[j].getAttribute("typeClass") == null ? new DefaultRepositoryProviderType() : (RepositoryProviderType)((Object)configElements[j].createExecutableExtension("typeClass"));
                            super.setID(id);
                            allProviderTypes.put(id, providerType);
                            String scheme = configElements[j].getAttribute("fileSystemScheme");
                            super.setFileSystemScheme(scheme);
                            return providerType;
                        }
                        catch (CoreException e) {
                            TeamPlugin.log(e);
                        }
                        catch (ClassCastException e) {
                            String className = configElements[j].getAttribute("typeClass");
                            TeamPlugin.log(4, "Class " + className + " registered for repository provider type id " + id + " is not a subclass of RepositoryProviderType", e);
                        }
                        return null;
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    private void setFileSystemScheme(String scheme) {
        this.scheme = scheme;
    }

    public final String getID() {
        return this.id;
    }

    public ProjectSetCapability getProjectSetCapability() {
        IProjectSetSerializer oldSerializer = Team.getProjectSetSerializer(this.getID());
        if (oldSerializer != null) {
            DefaultProjectSetCapability capability = new DefaultProjectSetCapability();
            capability.setSerializer(oldSerializer);
            return capability;
        }
        return null;
    }

    public void metaFilesDetected(IProject project, IContainer[] containers) {
    }

    public Subscriber getSubscriber() {
        return null;
    }

    public final String getFileSystemScheme() {
        return this.scheme;
    }
}

