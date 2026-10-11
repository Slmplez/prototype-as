/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.edit.domain.EditingDomain
 */
package org.eclipse.sphinx.emf.saving;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.sphinx.emf.model.IModelDescriptor;
import org.eclipse.sphinx.emf.saving.IModelSaveIndicator;
import org.eclipse.sphinx.emf.saving.IResourceSaveIndicator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SaveIndicatorUtil {
    private SaveIndicatorUtil() {
    }

    public static IResourceSaveIndicator getResourceSaveIndicator(EditingDomain editingDomain) {
        if (editingDomain != null) {
            return (IResourceSaveIndicator)Platform.getAdapterManager().loadAdapter((Object)editingDomain, IResourceSaveIndicator.class.getName());
        }
        return null;
    }

    public static IModelSaveIndicator getModelSaveIndicator(IModelDescriptor modelDescriptor) {
        if (modelDescriptor != null) {
            return (IModelSaveIndicator)Platform.getAdapterManager().loadAdapter((Object)modelDescriptor, IModelSaveIndicator.class.getName());
        }
        return null;
    }

    public static boolean isDirty(EditingDomain editingDomain, Resource resource) {
        IResourceSaveIndicator indicator = SaveIndicatorUtil.getResourceSaveIndicator(editingDomain);
        if (indicator != null) {
            return indicator.isDirty(resource);
        }
        return false;
    }

    public static boolean isDirty(IModelDescriptor modelDescriptor) {
        IModelSaveIndicator indicator = SaveIndicatorUtil.getModelSaveIndicator(modelDescriptor);
        if (indicator != null) {
            return indicator.isDirty(modelDescriptor);
        }
        return false;
    }

    public static void setDirty(EditingDomain editingDomain, Resource resource) {
        IResourceSaveIndicator indicator = SaveIndicatorUtil.getResourceSaveIndicator(editingDomain);
        if (indicator != null) {
            indicator.setDirty(resource);
        }
    }

    public static Collection<Resource> getDirtyResources(EditingDomain editingDomain) {
        IResourceSaveIndicator indicator = SaveIndicatorUtil.getResourceSaveIndicator(editingDomain);
        if (indicator != null) {
            return indicator.getDirtyResources();
        }
        return Collections.emptySet();
    }

    public static boolean isSaved(EditingDomain editingDomain, URI uri) {
        IResourceSaveIndicator indicator = SaveIndicatorUtil.getResourceSaveIndicator(editingDomain);
        if (indicator != null) {
            return indicator.isSaved(uri);
        }
        return false;
    }

    public static void setSaved(EditingDomain editingDomain, Resource resource) {
        IResourceSaveIndicator indicator = SaveIndicatorUtil.getResourceSaveIndicator(editingDomain);
        if (indicator != null) {
            indicator.setSaved(resource);
        }
    }

    public static void setSaved(EditingDomain editingDomain, Collection<Resource> resources) {
        IResourceSaveIndicator indicator = SaveIndicatorUtil.getResourceSaveIndicator(editingDomain);
        if (indicator != null) {
            indicator.setSaved(resources);
        }
    }

    public static void setSaved(IModelDescriptor modelDescriptor) {
        IModelSaveIndicator indicator = SaveIndicatorUtil.getModelSaveIndicator(modelDescriptor);
        if (indicator != null) {
            indicator.setSaved(modelDescriptor);
        }
    }
}

