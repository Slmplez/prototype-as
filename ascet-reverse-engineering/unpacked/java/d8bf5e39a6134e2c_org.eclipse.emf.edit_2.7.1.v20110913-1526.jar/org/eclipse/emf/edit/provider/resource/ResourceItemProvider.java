/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.edit.provider.resource;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.ComposedImage;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.ItemProviderAdapter;
import org.eclipse.emf.edit.provider.ViewerNotification;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ResourceItemProvider
extends ItemProviderAdapter
implements IEditingDomainItemProvider,
IStructuredItemContentProvider,
ITreeItemContentProvider,
IItemLabelProvider,
IItemPropertySource {
    public ResourceItemProvider(AdapterFactory adapterFactory) {
        super(adapterFactory);
    }

    @Override
    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        return super.getPropertyDescriptors(object);
    }

    @Override
    public Collection<?> getChildren(Object object) {
        EList contents = ((Resource)object).getContents();
        ArrayList result = new ArrayList(contents.size());
        for (Object o : contents) {
            if (AdapterFactoryEditingDomain.isControlled(o)) continue;
            result.add(o);
        }
        return result;
    }

    @Override
    public Collection<? extends EStructuralFeature> getChildrenFeatures(Object object) {
        if (this.childrenFeatures == null) {
            super.getChildrenFeatures(object);
        }
        return this.childrenFeatures;
    }

    @Override
    public Object getParent(Object object) {
        return ((Resource)object).getResourceSet();
    }

    @Override
    public Object getImage(Object object) {
        Resource resource = (Resource)object;
        Object image = URI.createURI((String)(String.valueOf(this.getResourceLocator().getImage("full/obj16/Resource").toString()) + "#" + resource.getURI().fileExtension()));
        for (Object o : resource.getContents()) {
            if (!AdapterFactoryEditingDomain.isControlled(o)) continue;
            ArrayList<Object> images = new ArrayList<Object>(2);
            images.add(image);
            images.add(this.getImage("full/ovr16/ControlledObjectTarget"));
            image = new ComposedImage(images);
            break;
        }
        return image;
    }

    @Override
    public String getText(Object object) {
        Resource resource = (Resource)object;
        return resource.getURI() == null ? "" : resource.getURI().toString();
    }

    public void notifyChanged(Notification notification) {
        switch (notification.getFeatureID(Resource.class)) {
            case 1: {
                this.fireNotifyChanged(new ViewerNotification(notification, notification.getNotifier(), false, true));
                return;
            }
            case 2: {
                this.fireNotifyChanged(new ViewerNotification(notification, notification.getNotifier(), true, false));
                return;
            }
        }
        super.notifyChanged(notification);
    }

    @Override
    public Collection<?> getNewChildDescriptors(Object object, EditingDomain editingDomain, Object sibling) {
        return Collections.emptyList();
    }

    @Override
    protected void collectNewChildDescriptors(Collection<Object> newChildDescriptors, Object object) {
        super.collectNewChildDescriptors(newChildDescriptors, object);
    }

    @Override
    public ResourceLocator getResourceLocator() {
        return EMFEditPlugin.INSTANCE;
    }
}

