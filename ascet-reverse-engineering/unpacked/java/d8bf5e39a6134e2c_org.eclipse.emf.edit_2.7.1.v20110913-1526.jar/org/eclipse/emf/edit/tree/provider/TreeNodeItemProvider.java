/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.tree.provider;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.provider.AdapterFactoryItemDelegator;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.INotifyChangedListener;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptorDecorator;
import org.eclipse.emf.edit.provider.ItemProviderAdapter;
import org.eclipse.emf.edit.provider.ViewerNotification;
import org.eclipse.emf.edit.tree.TreeNode;
import org.eclipse.emf.edit.tree.TreePackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TreeNodeItemProvider
extends ItemProviderAdapter
implements IEditingDomainItemProvider,
INotifyChangedListener,
IStructuredItemContentProvider,
ITreeItemContentProvider,
IItemLabelProvider,
IItemPropertySource {
    protected IChangeNotifier delegateItemProvider;
    protected AdapterFactoryItemDelegator itemDelegator;

    public TreeNodeItemProvider(AdapterFactory adapterFactory) {
        super(adapterFactory);
        this.itemDelegator = new AdapterFactoryItemDelegator(((ComposeableAdapterFactory)adapterFactory).getRootAdapterFactory());
    }

    @Override
    public void setTarget(Notifier target) {
        super.setTarget(target);
        if (target == null) {
            if (this.delegateItemProvider != null) {
                this.delegateItemProvider.removeListener(this);
                this.delegateItemProvider = null;
            }
        } else {
            TreeNode treeNode = (TreeNode)target;
            this.delegateItemProvider = (IChangeNotifier)((ComposeableAdapterFactory)this.adapterFactory).getRootAdapterFactory().adapt((Notifier)treeNode.getData(), IItemLabelProvider.class);
            this.delegateItemProvider.addListener(this);
        }
    }

    @Override
    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        TreeNode treeNode = (TreeNode)object;
        this.itemPropertyDescriptors = new ArrayList();
        for (IItemPropertyDescriptor itemPropertyDescriptor : this.itemDelegator.getPropertyDescriptors(treeNode.getData())) {
            this.itemPropertyDescriptors.add(new ItemPropertyDescriptorDecorator(treeNode.getData(), itemPropertyDescriptor));
        }
        return this.itemPropertyDescriptors;
    }

    @Override
    public Collection<? extends EStructuralFeature> getChildrenFeatures(Object object) {
        if (this.childrenFeatures == null) {
            super.getChildrenFeatures(object);
            this.childrenFeatures.add(TreePackage.eINSTANCE.getTreeNode_Children());
        }
        return this.childrenFeatures;
    }

    @Override
    public Object getParent(Object object) {
        return ((EObject)object).eContainer();
    }

    @Override
    public Object getImage(Object object) {
        TreeNode treeNode = (TreeNode)object;
        return this.itemDelegator.getImage(treeNode.getData());
    }

    @Override
    public String getText(Object object) {
        TreeNode treeNode = (TreeNode)object;
        return this.itemDelegator.getText(treeNode.getData());
    }

    @Override
    public void notifyChanged(Notification notification) {
        this.fireNotifyChanged(ViewerNotification.wrapNotification(notification, this.target));
    }

    @Override
    protected void collectNewChildDescriptors(Collection<Object> newChildDescriptors, Object object) {
    }

    @Override
    public void dispose() {
        super.dispose();
        if (this.delegateItemProvider != null) {
            this.delegateItemProvider.removeListener(this);
        }
    }
}

