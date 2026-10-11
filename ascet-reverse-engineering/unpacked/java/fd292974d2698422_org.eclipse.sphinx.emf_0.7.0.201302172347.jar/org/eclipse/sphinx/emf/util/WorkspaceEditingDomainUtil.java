/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain
 *  org.eclipse.emf.edit.domain.EditingDomain
 *  org.eclipse.emf.edit.domain.IEditingDomainProvider
 *  org.eclipse.emf.edit.provider.IWrapperItemProvider
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.emf.transaction.util.TransactionUtil
 */
package org.eclipse.sphinx.emf.util;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.domain.IEditingDomainProvider;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.emf.transaction.util.TransactionUtil;
import org.eclipse.sphinx.emf.domain.IContainerEditingDomainProvider;
import org.eclipse.sphinx.emf.edit.TransientItemProvider;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.util.EcorePlatformUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class WorkspaceEditingDomainUtil {
    private WorkspaceEditingDomainUtil() {
    }

    public static TransactionalEditingDomain getCurrentEditingDomain(IFile file) {
        for (TransactionalEditingDomain editingDomain : WorkspaceEditingDomainUtil.getEditingDomains((IContainer)ResourcesPlugin.getWorkspace().getRoot())) {
            if (!EcorePlatformUtil.isFileLoaded(editingDomain, file)) continue;
            return editingDomain;
        }
        return null;
    }

    public static TransactionalEditingDomain getMappedEditingDomain(IFile file) {
        EditingDomain editingDomain;
        IEditingDomainProvider provider;
        if (file != null && (provider = (IEditingDomainProvider)Platform.getAdapterManager().loadAdapter((Object)file, IEditingDomainProvider.class.getName())) != null && (editingDomain = provider.getEditingDomain()) instanceof TransactionalEditingDomain) {
            return (TransactionalEditingDomain)editingDomain;
        }
        return null;
    }

    public static TransactionalEditingDomain getEditingDomain(Object object) {
        if (object instanceof IModelDescriptor) {
            return WorkspaceEditingDomainUtil.getEditingDomain((IModelDescriptor)object);
        }
        if (object instanceof IFile) {
            return WorkspaceEditingDomainUtil.getEditingDomain((IFile)object);
        }
        if (object instanceof URI) {
            return WorkspaceEditingDomainUtil.getEditingDomain((URI)object);
        }
        if (object instanceof Resource) {
            Resource resource = (Resource)object;
            if (resource.getResourceSet() == null) {
                return WorkspaceEditingDomainUtil.getEditingDomain(EcorePlatformUtil.getFile(resource));
            }
        } else {
            if (object instanceof IWrapperItemProvider) {
                return WorkspaceEditingDomainUtil.getEditingDomain((IWrapperItemProvider)object);
            }
            if (object instanceof FeatureMap.Entry) {
                return WorkspaceEditingDomainUtil.getEditingDomain((FeatureMap.Entry)object);
            }
            if (object instanceof TransientItemProvider) {
                return WorkspaceEditingDomainUtil.getEditingDomain((TransientItemProvider)((Object)object));
            }
        }
        return object != null ? TransactionUtil.getEditingDomain((Object)object) : null;
    }

    public static TransactionalEditingDomain getEditingDomain(IModelDescriptor modelDescriptor) {
        if (modelDescriptor != null) {
            return modelDescriptor.getEditingDomain();
        }
        return null;
    }

    public static TransactionalEditingDomain getEditingDomain(IFile file) {
        TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getCurrentEditingDomain(file);
        if (editingDomain != null) {
            return editingDomain;
        }
        return WorkspaceEditingDomainUtil.getMappedEditingDomain(file);
    }

    public static TransactionalEditingDomain getEditingDomain(URI uri) {
        IFile file = EcorePlatformUtil.getFile(uri);
        return WorkspaceEditingDomainUtil.getEditingDomain(file);
    }

    public static TransactionalEditingDomain getEditingDomain(IWrapperItemProvider wrapperItemProvider) {
        if (wrapperItemProvider != null) {
            Object unwrapped = AdapterFactoryEditingDomain.unwrap((Object)wrapperItemProvider);
            TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain(unwrapped);
            if (editingDomain != null) {
                return editingDomain;
            }
            return WorkspaceEditingDomainUtil.getEditingDomain(wrapperItemProvider.getOwner());
        }
        return null;
    }

    public static TransactionalEditingDomain getEditingDomain(FeatureMap.Entry entry) {
        Object unwrapped = AdapterFactoryEditingDomain.unwrap((Object)entry);
        return WorkspaceEditingDomainUtil.getEditingDomain(unwrapped);
    }

    public static TransactionalEditingDomain getEditingDomain(TransientItemProvider provider) {
        Notifier target = provider.getTarget();
        return WorkspaceEditingDomainUtil.getEditingDomain(target);
    }

    public static TransactionalEditingDomain getEditingDomain(IContainer container, IMetaModelDescriptor mmDescriptor) {
        IContainerEditingDomainProvider provider;
        if (container != null && (provider = (IContainerEditingDomainProvider)Platform.getAdapterManager().loadAdapter((Object)container, IContainerEditingDomainProvider.class.getName())) != null) {
            return provider.getEditingDomain(mmDescriptor);
        }
        return null;
    }

    public static Collection<TransactionalEditingDomain> getEditingDomains(IContainer container) {
        IContainerEditingDomainProvider provider = (IContainerEditingDomainProvider)Platform.getAdapterManager().loadAdapter((Object)container, IContainerEditingDomainProvider.class.getName());
        if (provider != null) {
            return provider.getEditingDomains();
        }
        return Collections.emptyList();
    }

    public static Collection<TransactionalEditingDomain> getAllEditingDomains() {
        return WorkspaceEditingDomainUtil.getEditingDomains((IContainer)ResourcesPlugin.getWorkspace().getRoot());
    }
}

