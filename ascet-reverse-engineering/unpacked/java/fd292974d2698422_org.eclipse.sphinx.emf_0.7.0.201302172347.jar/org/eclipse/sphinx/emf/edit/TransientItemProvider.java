/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.edit.command.CommandParameter
 *  org.eclipse.emf.edit.command.CreateChildCommand
 *  org.eclipse.emf.edit.domain.EditingDomain
 *  org.eclipse.emf.edit.provider.DelegatingWrapperItemProvider
 *  org.eclipse.emf.edit.provider.Disposable
 *  org.eclipse.emf.edit.provider.IEditingDomainItemProvider
 *  org.eclipse.emf.edit.provider.IItemLabelProvider
 *  org.eclipse.emf.edit.provider.IItemPropertySource
 *  org.eclipse.emf.edit.provider.IStructuredItemContentProvider
 *  org.eclipse.emf.edit.provider.ITreeItemContentProvider
 *  org.eclipse.emf.edit.provider.ItemProviderAdapter$ChildrenStore
 */
package org.eclipse.sphinx.emf.edit;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CreateChildCommand;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.DelegatingWrapperItemProvider;
import org.eclipse.emf.edit.provider.Disposable;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.ItemProviderAdapter;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.edit.ExtendedItemProviderAdapter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TransientItemProvider
extends ExtendedItemProviderAdapter
implements IEditingDomainItemProvider,
IStructuredItemContentProvider,
ITreeItemContentProvider,
IItemLabelProvider,
IItemPropertySource {
    public TransientItemProvider(AdapterFactory adapterFactory, Notifier parent) {
        super(adapterFactory);
        parent.eAdapters().add((Object)this);
    }

    protected boolean isWrappingNeeded(Object object) {
        if (this.wrappingNeeded == null) {
            this.wrappingNeeded = Boolean.FALSE;
            for (EStructuralFeature feature : this.getChildrenFeatures(object)) {
                if (!(feature instanceof EAttribute) && (!(feature instanceof EReference) || ((EReference)feature).isContainment())) continue;
                this.wrappingNeeded = Boolean.TRUE;
                break;
            }
        }
        return this.wrappingNeeded;
    }

    protected void updateTransientItemProviderChildren(Notification notification, TransientItemProvider transientItemProvider) {
        EStructuralFeature feature;
        EList children;
        EObject object = (EObject)notification.getNotifier();
        ItemProviderAdapter.ChildrenStore childrenStore = this.getChildrenStore((Object)transientItemProvider);
        if (childrenStore != null && (children = childrenStore.getList(feature = (EStructuralFeature)notification.getFeature())) != null) {
            int index = notification.getPosition();
            switch (notification.getEventType()) {
                case 2: {
                    if (feature.isMany()) break;
                }
                case 1: {
                    Object oldChild = childrenStore.get(feature, index);
                    Object newValue = notification.getNewValue();
                    if (this.unwrap(oldChild) == newValue) break;
                    if (feature.isMany() && index == -1) {
                        this.disposeWrappers((List)oldChild);
                    } else {
                        this.disposeWrapper(oldChild);
                    }
                    Object newChild = newValue == null && index == -1 ? null : this.wrap((Object)transientItemProvider, feature, newValue, index);
                    childrenStore.set(feature, index, newChild);
                    break;
                }
                case 3: {
                    EList values = (EList)object.eGet(feature);
                    if (children.size() == values.size()) break;
                    Object newValue = notification.getNewValue();
                    this.adjustWrapperIndices((List)children, index, 1);
                    children.add(index, this.wrap((Object)transientItemProvider, feature, newValue, index));
                    break;
                }
                case 4: {
                    EList values = (EList)object.eGet(feature);
                    if (children.size() == values.size()) break;
                    this.disposeWrapper(children.remove(index));
                    this.adjustWrapperIndices((List)children, index, -1);
                    break;
                }
                case 5: {
                    EList values = (EList)object.eGet(feature);
                    if (children.size() == values.size()) break;
                    if (notification.getOldValue() != null) {
                        throw new IllegalArgumentException("No old value expected");
                    }
                    List newValues = (List)notification.getNewValue();
                    ArrayList<Object> newChildren = new ArrayList<Object>(newValues.size());
                    int offset = 0;
                    for (Object newValue : newValues) {
                        newChildren.add(this.wrap((Object)transientItemProvider, feature, newValue, index + offset++));
                    }
                    this.adjustWrapperIndices((List)children, index, offset);
                    children.addAll(index, newChildren);
                    break;
                }
                case 6: {
                    if (index == -1) {
                        index = 0;
                    }
                    EList values = (EList)object.eGet(feature);
                    if (children.size() == values.size()) break;
                    if (notification.getNewValue() instanceof int[]) {
                        int[] indices = (int[])notification.getNewValue();
                        int i = indices.length - 1;
                        while (i >= 0) {
                            this.disposeWrapper(children.remove(indices[i]));
                            this.adjustWrapperIndices((List)children, indices[i], -1);
                            --i;
                        }
                        break;
                    }
                    int len = ((List)notification.getOldValue()).size();
                    List sl = children.subList(index, index + len);
                    this.disposeWrappers(sl);
                    sl.clear();
                    this.adjustWrapperIndices((List)children, index, -len);
                    break;
                }
                case 7: {
                    int oldIndex = (Integer)notification.getOldValue();
                    EList values = (EList)object.eGet(feature);
                    boolean didMove = true;
                    int i = Math.min(oldIndex, index);
                    int end = Math.max(oldIndex, index);
                    while (didMove && i <= end) {
                        didMove = this.unwrap(children.get(i)) == values.get(i);
                        ++i;
                    }
                    if (didMove) break;
                    int delta = index - oldIndex;
                    if (delta < 0) {
                        this.adjustWrapperIndices((List)children, index, oldIndex, 1);
                    }
                    children.move(index, oldIndex);
                    this.adjustWrapperIndex(children.get(index), delta);
                    if (delta <= 0) break;
                    this.adjustWrapperIndices((List)children, oldIndex, index, -1);
                }
            }
        }
    }

    public Collection<?> getChildren(Object object) {
        ItemProviderAdapter.ChildrenStore store = this.getChildrenStore(object);
        if (store != null) {
            return store.getChildren();
        }
        store = this.createChildrenStore(object);
        ArrayList<Object> result = store != null ? null : new ArrayList<Object>();
        EObject eObject = (EObject)this.target;
        for (EStructuralFeature feature : this.getChildrenFeatures(object)) {
            if (feature.isMany()) {
                List children = (List)eObject.eGet(feature);
                int index = 0;
                for (Object unwrappedChild : children) {
                    Object child = this.wrap(object, feature, unwrappedChild, index);
                    if (store != null) {
                        store.getList(feature).add(child);
                    } else {
                        result.add(child);
                    }
                    ++index;
                }
                continue;
            }
            Object child = eObject.eGet(feature);
            if (child == null) continue;
            child = this.wrap(object, feature, child, -1);
            if (store != null) {
                store.setValue(feature, child);
                continue;
            }
            result.add(child);
        }
        return store != null ? store.getChildren() : result;
    }

    protected Object wrap(Object object, EStructuralFeature feature, Object value, int index) {
        Object wrapper;
        if (!feature.isMany() && index != -1) {
            System.out.println("Bad wrap index.");
            System.out.println("  object: " + object);
            System.out.println("  feature: " + feature);
            System.out.println("  value: " + value);
            System.out.println("  index: " + index);
            new IllegalArgumentException("Bad wrap index.").printStackTrace();
        }
        if ((wrapper = this.createWrapper(object, feature, value, index)) == null) {
            wrapper = value;
        } else if (wrapper != value) {
            if (this.wrappers == null) {
                this.wrappers = new Disposable();
            }
            this.wrappers.add(wrapper);
        }
        return wrapper;
    }

    protected Object createWrapper(Object object, EStructuralFeature feature, Object value, int index) {
        if (!this.isWrappingNeeded(object)) {
            return value;
        }
        if (!((EReference)feature).isContainment()) {
            value = new DelegatingWrapperItemProvider(value, object, feature, index, this.adapterFactory);
        }
        return value;
    }

    public Object getParent(Object object) {
        return this.target;
    }

    @Override
    protected Command createRemoveCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection) {
        return this.createWrappedCommand(super.createRemoveCommand(domain, owner, feature, collection), owner);
    }

    @Override
    protected Command createAddCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection, int index) {
        return this.createWrappedCommand(super.createAddCommand(domain, owner, feature, collection, index), owner);
    }

    protected Command createWrappedCommand(Command command, final EObject owner) {
        return new CommandWrapper(command){

            public Collection<?> getAffectedObjects() {
                Set<TransientItemProvider> affected = super.getAffectedObjects();
                if (affected.contains(owner)) {
                    affected = Collections.singleton(TransientItemProvider.this);
                }
                return affected;
            }
        };
    }

    public Collection<?> getNewChildDescriptors(Object object, EditingDomain editingDomain, Object sibling) {
        return super.getNewChildDescriptors((Object)this.target, editingDomain, sibling);
    }

    public Command createCommand(Object object, EditingDomain domain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        if (commandClass == CreateChildCommand.class) {
            commandParameter.setOwner((Object)this.target);
        }
        return super.createCommand(object, domain, commandClass, commandParameter);
    }

    public Object getImage(Object object) {
        if (object != null) {
            return this.overlayImage(object, Activator.INSTANCE.getImage("full/obj16/folder_closed"));
        }
        return null;
    }
}

