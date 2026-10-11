/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.UniqueEList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.edit.provider;

import java.net.URL;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.MissingResourceException;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.CommandActionDelegate;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CopyCommand;
import org.eclipse.emf.edit.command.CreateChildCommand;
import org.eclipse.emf.edit.command.CreateCopyCommand;
import org.eclipse.emf.edit.command.DragAndDropCommand;
import org.eclipse.emf.edit.command.InitializeCopyCommand;
import org.eclipse.emf.edit.command.MoveCommand;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.command.ReplaceCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.AttributeValueWrapperItemProvider;
import org.eclipse.emf.edit.provider.ChangeNotifier;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.ComposedImage;
import org.eclipse.emf.edit.provider.DelegatingWrapperItemProvider;
import org.eclipse.emf.edit.provider.Disposable;
import org.eclipse.emf.edit.provider.FeatureMapEntryWrapperItemProvider;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.IChildCreationExtender;
import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.INotifyChangedListener;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ItemProviderAdapter
extends AdapterImpl
implements IChangeNotifier,
IDisposable,
CreateChildCommand.Helper,
ResourceLocator {
    protected AdapterFactory adapterFactory;
    protected List<IItemPropertyDescriptor> itemPropertyDescriptors;
    protected List<EStructuralFeature> childrenFeatures;
    @Deprecated
    protected List<EReference> childrenReferences;
    protected IChangeNotifier changeNotifier;
    protected List<Notifier> targets;
    protected Map<Object, ChildrenStore> childrenStoreMap;
    protected Disposable wrappers;
    protected Boolean wrappingNeeded;

    public ItemProviderAdapter(AdapterFactory adapterFactory) {
        this.adapterFactory = adapterFactory;
    }

    protected boolean isResolveProxies() {
        return true;
    }

    protected Object getValue(EObject eObject, EStructuralFeature eStructuralFeature) {
        boolean isResolveProxies = this.isResolveProxies();
        Object result = eObject.eGet(eStructuralFeature, isResolveProxies);
        return !isResolveProxies && result instanceof InternalEList ? ((InternalEList)result).basicList() : result;
    }

    public boolean isAdapterForType(Object type) {
        return type == this.adapterFactory;
    }

    public AdapterFactory getAdapterFactory() {
        return this.adapterFactory;
    }

    @Override
    public void addListener(INotifyChangedListener listener) {
        if (this.changeNotifier == null) {
            this.changeNotifier = new ChangeNotifier();
        }
        this.changeNotifier.addListener(listener);
    }

    @Override
    public void removeListener(INotifyChangedListener listener) {
        if (this.changeNotifier != null) {
            this.changeNotifier.removeListener(listener);
        }
    }

    @Override
    public void fireNotifyChanged(Notification notification) {
        if (this.changeNotifier != null) {
            this.changeNotifier.fireNotifyChanged(notification);
        }
        if (this.adapterFactory instanceof IChangeNotifier) {
            IChangeNotifier changeNotifier = (IChangeNotifier)this.adapterFactory;
            changeNotifier.fireNotifyChanged(notification);
        }
    }

    public Object getEditableValue(Object object) {
        return object;
    }

    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        if (this.itemPropertyDescriptors == null) {
            this.itemPropertyDescriptors = new ArrayList<IItemPropertyDescriptor>();
        }
        return this.itemPropertyDescriptors;
    }

    public IItemPropertyDescriptor getPropertyDescriptor(Object object, Object propertyId) {
        for (IItemPropertyDescriptor itemPropertyDescriptor : this.getPropertyDescriptors(object)) {
            if (!propertyId.equals(itemPropertyDescriptor.getId(object)) && !propertyId.equals(itemPropertyDescriptor.getFeature(object))) continue;
            return itemPropertyDescriptor;
        }
        return null;
    }

    public Object getPropertyValue(Object object, String property) {
        return this.getPropertyDescriptor(object, property).getPropertyValue(object);
    }

    public boolean isPropertySet(Object object, String property) {
        return this.getPropertyDescriptor(object, property).isPropertySet(object);
    }

    public void resetPropertyValue(Object object, String property) {
        this.getPropertyDescriptor(object, property).resetPropertyValue(object);
    }

    public void setPropertyValue(Object object, String property, Object value) {
        this.getPropertyDescriptor(object, property).setPropertyValue(object, value);
    }

    public Collection<?> getElements(Object object) {
        return this.getChildren(object);
    }

    public Collection<?> getChildren(Object object) {
        ChildrenStore store = this.getChildrenStore(object);
        if (store != null) {
            return store.getChildren();
        }
        store = this.createChildrenStore(object);
        ArrayList<Object> result = store != null ? null : new ArrayList<Object>();
        EObject eObject = (EObject)object;
        for (EStructuralFeature eStructuralFeature : this.getAnyChildrenFeatures(object)) {
            if (eStructuralFeature.isMany()) {
                List children = (List)this.getValue(eObject, eStructuralFeature);
                int index = 0;
                for (Object unwrappedChild : children) {
                    Object child = this.wrap(eObject, eStructuralFeature, unwrappedChild, index);
                    if (store != null) {
                        store.getList(eStructuralFeature).add(child);
                    } else {
                        result.add(child);
                    }
                    ++index;
                }
                continue;
            }
            Object child = this.getValue(eObject, eStructuralFeature);
            if (child == null) continue;
            child = this.wrap(eObject, eStructuralFeature, child, -1);
            if (store != null) {
                store.setValue(eStructuralFeature, child);
                continue;
            }
            result.add(child);
        }
        return store != null ? store.getChildren() : result;
    }

    public boolean hasChildren(Object object) {
        return this.hasChildren(object, false);
    }

    protected boolean hasChildren(Object object, boolean optimized) {
        if (!optimized) {
            return !this.getChildren(object).isEmpty();
        }
        EObject eObject = (EObject)object;
        for (EStructuralFeature eStructuralFeature : this.getAnyChildrenFeatures(object)) {
            List children;
            if (!(eStructuralFeature.isMany() ? !(children = (List)this.getValue(eObject, eStructuralFeature)).isEmpty() : eObject.eGet(eStructuralFeature, false) != null)) continue;
            return true;
        }
        return false;
    }

    protected Collection<? extends EStructuralFeature> getChildrenFeatures(Object object) {
        if (this.childrenFeatures == null) {
            this.childrenFeatures = new ArrayList<EStructuralFeature>();
        }
        return this.childrenFeatures;
    }

    @Deprecated
    protected Collection<? extends EReference> getChildrenReferences(Object object) {
        if (this.childrenReferences == null) {
            this.childrenReferences = new ArrayList<EReference>();
        }
        return this.childrenReferences;
    }

    private Collection<? extends EStructuralFeature> getAnyChildrenFeatures(Object object) {
        Collection<? extends EStructuralFeature> result = this.getChildrenFeatures(object);
        return result.isEmpty() ? this.getChildrenReferences(object) : result;
    }

    protected Object getFeatureValue(EObject object, EStructuralFeature feature) {
        if (feature instanceof EReference) {
            return this.getReferenceValue(object, (EReference)feature);
        }
        return this.getValue(object, feature);
    }

    @Deprecated
    protected Object getReferenceValue(EObject object, EReference reference) {
        return this.getValue(object, (EStructuralFeature)reference);
    }

    protected EStructuralFeature getChildFeature(Object object, Object child) {
        EReference oldFeature = this.getChildReference(object, child);
        if (oldFeature != null) {
            return oldFeature;
        }
        for (EStructuralFeature eStructuralFeature : this.getAnyChildrenFeatures(object)) {
            if (!this.isValidValue(object, child, eStructuralFeature)) continue;
            return eStructuralFeature;
        }
        return null;
    }

    protected boolean isValidValue(Object object, Object value, EStructuralFeature feature) {
        if (feature.getEType().isInstance(value)) {
            if (FeatureMapUtil.isFeatureMap((EStructuralFeature)feature)) {
                return FeatureMapUtil.getValidator((EClass)(object instanceof EObject ? ((EObject)object).eClass() : feature.getEContainingClass()), (EStructuralFeature)feature).isValid(((FeatureMap.Entry)value).getEStructuralFeature());
            }
            return true;
        }
        return false;
    }

    @Deprecated
    protected EReference getChildReference(Object object, Object child) {
        if (child instanceof EObject) {
            for (EReference eReference : this.getChildrenReferences(object)) {
                if (!this.isValidValue(object, child, (EStructuralFeature)eReference)) continue;
                return eReference;
            }
        }
        return null;
    }

    protected Collection<? extends EStructuralFeature> getSetFeatures(Object object) {
        return Collections.emptyList();
    }

    protected EStructuralFeature getSetFeature(Object object, Object value) {
        for (EStructuralFeature eStructuralFeature : this.getSetFeatures(object)) {
            if (!this.isValidValue(object, value, eStructuralFeature)) continue;
            return eStructuralFeature;
        }
        return null;
    }

    public Object getParent(Object object) {
        EObject eObject = (EObject)object;
        EObject result = eObject.eContainer();
        if (result == null) {
            result = eObject.eResource();
        }
        return result;
    }

    public Object getImage(Object object) {
        return null;
    }

    public Object getColumnImage(Object object, int columnIndex) {
        return null;
    }

    protected Object overlayImage(Object object, Object image) {
        if (AdapterFactoryEditingDomain.isControlled(object)) {
            ArrayList<Object> images = new ArrayList<Object>(2);
            images.add(image);
            images.add(EMFEditPlugin.INSTANCE.getImage("full/ovr16/ControlledObject"));
            image = new ComposedImage(images);
        }
        return image;
    }

    public String getText(Object object) {
        return object.toString();
    }

    public String getColumnText(Object object, int columnIndex) {
        return "";
    }

    public Object getFont(Object object) {
        return null;
    }

    public Object getFont(Object object, int columnIndex) {
        return null;
    }

    public Object getForeground(Object object) {
        return null;
    }

    public Object getForeground(Object object, int columnIndex) {
        return null;
    }

    public Object getBackground(Object object) {
        return null;
    }

    public Object getBackground(Object object, int columnIndex) {
        return null;
    }

    public String getUpdateableText(Object object) {
        return this.getText(object);
    }

    public String crop(String text) {
        if (text != null) {
            char[] chars = text.toCharArray();
            int i = 0;
            while (i < chars.length) {
                if (Character.isISOControl(chars[i])) {
                    return String.valueOf(text.substring(0, i)) + "...";
                }
                ++i;
            }
        }
        return text;
    }

    public Collection<?> getNewChildDescriptors(Object object, EditingDomain editingDomain, Object sibling) {
        EObject eObject = (EObject)object;
        ArrayList<Object> newChildDescriptors = new ArrayList<Object>();
        this.collectNewChildDescriptors(newChildDescriptors, object);
        if (this.adapterFactory instanceof IChildCreationExtender) {
            newChildDescriptors.addAll(((IChildCreationExtender)this.adapterFactory).getNewChildDescriptors(object, editingDomain));
        }
        if (sibling != null) {
            sibling = this.unwrap(sibling);
            Collection<? extends EStructuralFeature> childrenFeatures = this.getAnyChildrenFeatures(object);
            int siblingFeatureIndex = -1;
            int i = 0;
            block0: for (EStructuralFeature eStructuralFeature : childrenFeatures) {
                Object featureValue = this.getValue(eObject, eStructuralFeature);
                if (eStructuralFeature.isMany()) {
                    for (Object value : (Collection)featureValue) {
                        if (!this.isEquivalentValue(sibling, value)) continue;
                        siblingFeatureIndex = i;
                        break block0;
                    }
                } else if (this.isEquivalentValue(sibling, featureValue)) {
                    siblingFeatureIndex = i;
                    break;
                }
                ++i;
            }
            block2: for (Object object2 : newChildDescriptors) {
                CommandParameter parameter;
                EStructuralFeature childFeature;
                if (!(object2 instanceof CommandParameter) || (childFeature = (parameter = (CommandParameter)object2).getEStructuralFeature()) == null || !childFeature.isMany()) continue;
                i = 0;
                for (Object e : (Collection)this.getValue(eObject, childFeature)) {
                    if (this.isEquivalentValue(sibling, e)) {
                        parameter.index = i + 1;
                        continue block2;
                    }
                    ++i;
                }
                if (siblingFeatureIndex == -1) continue;
                i = 0;
                for (EStructuralFeature eStructuralFeature : childrenFeatures) {
                    if (eStructuralFeature == childFeature) {
                        if (i <= siblingFeatureIndex) continue block2;
                        parameter.index = 0;
                        continue block2;
                    }
                    ++i;
                }
            }
        }
        return newChildDescriptors;
    }

    protected boolean isEquivalentValue(Object value, Object referenceValue) {
        Object entryValue;
        if (value == referenceValue) {
            return true;
        }
        return value instanceof FeatureMap.Entry && (entryValue = ((FeatureMap.Entry)value).getValue()) == referenceValue;
    }

    protected void collectNewChildDescriptors(Collection<Object> newChildDescriptors, Object object) {
    }

    public Command createCommand(Object object, EditingDomain domain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        CommandParameter oldCommandParameter = commandParameter;
        commandParameter = this.unwrapCommandValues(commandParameter, commandClass);
        UnexecutableCommand result = UnexecutableCommand.INSTANCE;
        if (commandClass == SetCommand.class) {
            result = this.createSetCommand(domain, commandParameter.getEOwner(), commandParameter.getEStructuralFeature() != null ? commandParameter.getEStructuralFeature() : this.getSetFeature(commandParameter.getEOwner(), commandParameter.getValue()), commandParameter.getValue(), commandParameter.getIndex());
        } else if (commandClass == CopyCommand.class) {
            result = this.createCopyCommand(domain, commandParameter.getEOwner(), (CopyCommand.Helper)commandParameter.getValue());
        } else if (commandClass == CreateCopyCommand.class) {
            result = this.createCreateCopyCommand(domain, commandParameter.getEOwner(), (CopyCommand.Helper)commandParameter.getValue());
        } else if (commandClass == InitializeCopyCommand.class) {
            result = this.createInitializeCopyCommand(domain, commandParameter.getEOwner(), (CopyCommand.Helper)commandParameter.getValue());
        } else if (commandClass == RemoveCommand.class) {
            result = commandParameter.getEStructuralFeature() != null ? this.createRemoveCommand(domain, commandParameter.getEOwner(), commandParameter.getEStructuralFeature(), commandParameter.getCollection()) : this.factorRemoveCommand(domain, commandParameter);
        } else if (commandClass == AddCommand.class) {
            result = commandParameter.getEStructuralFeature() != null ? this.createAddCommand(domain, commandParameter.getEOwner(), commandParameter.getEStructuralFeature(), commandParameter.getCollection(), commandParameter.getIndex()) : this.factorAddCommand(domain, commandParameter);
        } else if (commandClass == MoveCommand.class) {
            result = commandParameter.getEStructuralFeature() != null ? this.createMoveCommand(domain, commandParameter.getEOwner(), commandParameter.getEStructuralFeature(), commandParameter.getValue(), commandParameter.getIndex()) : this.factorMoveCommand(domain, commandParameter);
        } else if (commandClass == ReplaceCommand.class) {
            result = this.createReplaceCommand(domain, commandParameter.getEOwner(), commandParameter.getEStructuralFeature(), (EObject)commandParameter.getValue(), commandParameter.getCollection());
        } else if (commandClass == DragAndDropCommand.class) {
            DragAndDropCommand.Detail detail = (DragAndDropCommand.Detail)commandParameter.getFeature();
            result = this.createDragAndDropCommand(domain, commandParameter.getOwner(), detail.location, detail.operations, detail.operation, commandParameter.getCollection());
        } else if (commandClass == CreateChildCommand.class) {
            CommandParameter newChildParameter = (CommandParameter)commandParameter.getValue();
            result = this.createCreateChildCommand(domain, commandParameter.getEOwner(), newChildParameter.getEStructuralFeature(), newChildParameter.getValue(), newChildParameter.getIndex(), commandParameter.getCollection());
        }
        return this.wrapCommand((Command)result, object, commandClass, commandParameter, oldCommandParameter);
    }

    protected Command createSetCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, int index) {
        if (index == -1) {
            return this.createSetCommand(domain, owner, feature, value);
        }
        return new SetCommand(domain, owner, feature, value, index);
    }

    protected Command createSetCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value) {
        return new SetCommand(domain, owner, feature, value);
    }

    protected Command createCopyCommand(EditingDomain domain, EObject owner, CopyCommand.Helper helper) {
        return new CopyCommand(domain, owner, helper, domain.getOptimizeCopy());
    }

    protected Command createCreateCopyCommand(EditingDomain domain, EObject owner, CopyCommand.Helper helper) {
        return new CreateCopyCommand(domain, owner, helper);
    }

    protected Command createInitializeCopyCommand(EditingDomain domain, EObject owner, CopyCommand.Helper helper) {
        return new InitializeCopyCommand(domain, owner, helper);
    }

    protected Command createRemoveCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection) {
        if (feature instanceof EReference) {
            return this.createRemoveCommand(domain, owner, (EReference)feature, collection);
        }
        return new RemoveCommand(domain, owner, feature, collection);
    }

    @Deprecated
    protected Command createRemoveCommand(EditingDomain domain, EObject owner, EReference feature, Collection<?> collection) {
        return new RemoveCommand(domain, owner, (EStructuralFeature)feature, collection);
    }

    protected Command createReplaceCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, EObject value, Collection<?> collection) {
        if (feature instanceof EReference) {
            return this.createReplaceCommand(domain, owner, (EReference)feature, value, collection);
        }
        return new ReplaceCommand(domain, owner, feature, (Object)value, collection);
    }

    @Deprecated
    protected Command createReplaceCommand(EditingDomain domain, EObject owner, EReference feature, EObject value, Collection<?> collection) {
        return new ReplaceCommand(domain, owner, (EStructuralFeature)feature, (Object)value, collection);
    }

    protected Command createAddCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection, int index) {
        if (feature instanceof EReference) {
            return this.createAddCommand(domain, owner, (EReference)feature, collection, index);
        }
        return new AddCommand(domain, owner, feature, collection, index);
    }

    @Deprecated
    protected Command createAddCommand(EditingDomain domain, EObject owner, EReference feature, Collection<?> collection, int index) {
        return new AddCommand(domain, owner, (EStructuralFeature)feature, collection, index);
    }

    protected Command createMoveCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, int index) {
        if (feature instanceof EReference && value instanceof EObject) {
            return this.createMoveCommand(domain, owner, (EReference)feature, (EObject)value, index);
        }
        return new MoveCommand(domain, owner, feature, value, index);
    }

    @Deprecated
    protected Command createMoveCommand(EditingDomain domain, EObject owner, EReference feature, EObject value, int index) {
        return new MoveCommand(domain, owner, (EStructuralFeature)feature, value, index);
    }

    protected Command createDragAndDropCommand(EditingDomain domain, Object owner, float location, int operations, int operation, Collection<?> collection) {
        return new DragAndDropCommand(domain, owner, location, operations, operation, collection);
    }

    protected Command createCreateChildCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, int index, Collection<?> collection) {
        if (feature instanceof EReference && value instanceof EObject) {
            return this.createCreateChildCommand(domain, owner, (EReference)feature, (EObject)value, index, collection);
        }
        return new CreateChildCommand(domain, owner, feature, value, index, collection, this);
    }

    @Deprecated
    protected Command createCreateChildCommand(EditingDomain domain, EObject owner, EReference feature, EObject value, int index, Collection<?> collection) {
        return new CreateChildCommand(domain, owner, (EStructuralFeature)feature, value, index, collection, this);
    }

    protected Command factorRemoveCommand(EditingDomain domain, CommandParameter commandParameter) {
        if (commandParameter.getCollection() == null || commandParameter.getCollection().isEmpty()) {
            return UnexecutableCommand.INSTANCE;
        }
        final EObject eObject = commandParameter.getEOwner();
        ArrayList list = new ArrayList(commandParameter.getCollection());
        CompoundCommand removeCommand = new CompoundCommand(Integer.MAX_VALUE);
        block0: for (EStructuralFeature eStructuralFeature : this.getAnyChildrenFeatures(eObject)) {
            Object value;
            if (eStructuralFeature.isMany()) {
                value = (List)this.getFeatureValue(eObject, eStructuralFeature);
                ArrayList childrenOfThisFeature = new ArrayList();
                ListIterator objects = list.listIterator();
                while (objects.hasNext()) {
                    Object o = objects.next();
                    if (!value.contains(o)) continue;
                    childrenOfThisFeature.add(o);
                    objects.remove();
                }
                if (childrenOfThisFeature.isEmpty()) continue;
                removeCommand.append(this.createRemoveCommand(domain, eObject, eStructuralFeature, childrenOfThisFeature));
                continue;
            }
            value = this.getFeatureValue(eObject, eStructuralFeature);
            ListIterator objects = list.listIterator();
            while (objects.hasNext()) {
                Object o = objects.next();
                if (o != value) continue;
                Command setCommand = this.createSetCommand(domain, eObject, eStructuralFeature, SetCommand.UNSET_VALUE);
                removeCommand.append((Command)new CommandWrapper(setCommand){
                    protected Collection<?> affected;

                    public void execute() {
                        super.execute();
                        this.affected = Collections.singleton(eObject);
                    }

                    public void undo() {
                        super.undo();
                        this.affected = Collections.singleton(value);
                    }

                    public void redo() {
                        super.redo();
                        this.affected = Collections.singleton(eObject);
                    }

                    public Collection<?> getResult() {
                        return Collections.singleton(value);
                    }

                    public Collection<?> getAffectedObjects() {
                        return this.affected;
                    }
                });
                objects.remove();
                continue block0;
            }
        }
        if (list.isEmpty()) {
            return removeCommand.unwrap();
        }
        removeCommand.dispose();
        return UnexecutableCommand.INSTANCE;
    }

    protected Command factorAddCommand(EditingDomain domain, CommandParameter commandParameter) {
        if (commandParameter.getCollection() == null || commandParameter.getCollection().isEmpty()) {
            return UnexecutableCommand.INSTANCE;
        }
        final EObject eObject = commandParameter.getEOwner();
        ArrayList list = new ArrayList(commandParameter.getCollection());
        int index = commandParameter.getIndex();
        CompoundCommand addCommand = new CompoundCommand(Integer.MAX_VALUE);
        while (!list.isEmpty()) {
            ListIterator children = list.listIterator();
            final Object firstChild = children.next();
            EStructuralFeature childFeature = this.getChildFeature(eObject, firstChild);
            if (childFeature == null) break;
            if (childFeature.isMany()) {
                if (index != -1) {
                    for (EStructuralFeature eStructuralFeature : this.getAnyChildrenFeatures(eObject)) {
                        if (eStructuralFeature == childFeature) break;
                        if (eStructuralFeature.isMany()) {
                            index -= ((List)this.getValue(eObject, eStructuralFeature)).size();
                            continue;
                        }
                        if (this.getValue(eObject, eStructuralFeature) == null) continue;
                        --index;
                    }
                    if (index < 0) break;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(firstChild);
                children.remove();
                while (children.hasNext()) {
                    Object child = children.next();
                    if (this.getChildFeature(eObject, child) != childFeature) continue;
                    arrayList.add(child);
                    children.remove();
                }
                addCommand.append(this.createAddCommand(domain, eObject, childFeature, arrayList, index));
                if (index >= arrayList.size()) {
                    index -= arrayList.size();
                    continue;
                }
                index = -1;
                continue;
            }
            if (this.getValue(eObject, childFeature) != null) break;
            Command command = this.createSetCommand(domain, eObject, childFeature, firstChild);
            addCommand.append((Command)new CommandWrapper(command){
                protected Collection<?> affected;

                public void execute() {
                    super.execute();
                    this.affected = Collections.singleton(firstChild);
                }

                public void undo() {
                    super.undo();
                    this.affected = Collections.singleton(eObject);
                }

                public void redo() {
                    super.redo();
                    this.affected = Collections.singleton(firstChild);
                }

                public Collection<?> getResult() {
                    return Collections.singleton(firstChild);
                }

                public Collection<?> getAffectedObjects() {
                    return this.affected;
                }
            });
            children.remove();
        }
        if (list.isEmpty()) {
            return addCommand.unwrap();
        }
        addCommand.dispose();
        return UnexecutableCommand.INSTANCE;
    }

    protected Command factorMoveCommand(EditingDomain domain, CommandParameter commandParameter) {
        EObject eObject = commandParameter.getEOwner();
        Object value = commandParameter.getValue();
        int index = commandParameter.getIndex();
        EStructuralFeature childFeature = this.getChildFeature(eObject, value);
        if (childFeature != null && childFeature.isMany()) {
            for (EStructuralFeature eStructuralFeature : this.getAnyChildrenFeatures(eObject)) {
                if (eStructuralFeature == childFeature) break;
                if (eStructuralFeature.isMany()) {
                    index -= ((List)this.getValue(eObject, eStructuralFeature)).size();
                    continue;
                }
                if (this.getValue(eObject, eStructuralFeature) == null) continue;
                --index;
            }
            return this.createMoveCommand(domain, eObject, childFeature, value, index);
        }
        return UnexecutableCommand.INSTANCE;
    }

    public void setTarget(Notifier target) {
        if (this.target != null) {
            if (this.target != target) {
                if (this.targets == null) {
                    this.targets = new ArrayList<Notifier>();
                }
                this.targets.add(this.target);
                super.setTarget(target);
            }
        } else {
            super.setTarget(target);
        }
    }

    public void unsetTarget(Notifier target) {
        ChildrenStore store;
        if (target == this.target) {
            if (this.targets == null || this.targets.isEmpty()) {
                super.setTarget(null);
            } else {
                super.setTarget(this.targets.remove(this.targets.size() - 1));
            }
        } else if (this.targets != null) {
            this.targets.remove(target);
        }
        if (this.childrenStoreMap != null && (store = this.childrenStoreMap.remove(target)) != null && this.wrappers != null) {
            for (Object child : store.getChildren()) {
                if (!this.wrappers.remove(child)) continue;
                ((IDisposable)child).dispose();
            }
        }
    }

    @Override
    public void dispose() {
        Notifier oldTarget = this.target;
        this.target = null;
        List<Notifier> oldTargets = this.targets;
        this.targets = null;
        if (oldTarget != null) {
            oldTarget.eAdapters().remove((Object)this);
        }
        if (oldTargets != null) {
            for (Notifier otherTarget : oldTargets) {
                otherTarget.eAdapters().remove((Object)this);
            }
        }
        if (this.wrappers != null) {
            this.wrappers.dispose();
        }
    }

    protected CommandParameter createChildParameter(Object feature, Object child) {
        return new CommandParameter(null, feature, child);
    }

    @Override
    public Collection<?> getCreateChildResult(Object child) {
        return Collections.singletonList(child);
    }

    @Override
    public String getCreateChildText(Object owner, Object feature, Object child, Collection<?> selection) {
        if (feature instanceof EStructuralFeature && FeatureMapUtil.isFeatureMap((EStructuralFeature)((EStructuralFeature)feature))) {
            FeatureMap.Entry entry = (FeatureMap.Entry)child;
            feature = entry.getEStructuralFeature();
            child = entry.getValue();
        }
        String childType = feature instanceof EAttribute ? this.getTypeText((EAttribute)feature) : this.getTypeText(child);
        try {
            return this.getResourceLocator().getString(feature instanceof EAttribute ? "_UI_CreateChild_text3" : "_UI_CreateChild_text", new Object[]{childType, this.getFeatureText(feature), this.getTypeText(owner)});
        }
        catch (MissingResourceException e) {
            return this.getResourceLocator().getString("_UI_CreateChild_label", new Object[]{childType, this.getFeatureText(feature), this.getTypeText(owner)});
        }
    }

    @Override
    public String getCreateChildDescription(Object owner, Object feature, Object child, Collection<?> selection) {
        Object selectionObject;
        if (feature instanceof EStructuralFeature && FeatureMapUtil.isFeatureMap((EStructuralFeature)((EStructuralFeature)feature))) {
            FeatureMap.Entry entry = (FeatureMap.Entry)child;
            feature = entry.getEStructuralFeature();
            child = entry.getValue();
        }
        String childType = feature instanceof EAttribute ? this.getTypeText((EAttribute)feature) : this.getTypeText(child);
        Object object = selectionObject = selection == null || selection.isEmpty() ? null : (Object)selection.iterator().next();
        if (selectionObject == owner) {
            return this.getResourceLocator().getString("_UI_CreateChild_description", new Object[]{childType, this.getFeatureText(feature), this.getTypeText(owner)});
        }
        Object sibling = selectionObject;
        EStructuralFeature siblingFeature = this.getChildFeature(owner, sibling);
        if (siblingFeature != null && FeatureMapUtil.isFeatureMap((EStructuralFeature)siblingFeature)) {
            FeatureMap.Entry entry = (FeatureMap.Entry)sibling;
            siblingFeature = entry.getEStructuralFeature();
            sibling = entry.getValue();
        }
        String siblingType = siblingFeature instanceof EAttribute ? this.getTypeText((EAttribute)siblingFeature) : this.getTypeText(sibling);
        return this.getResourceLocator().getString("_UI_CreateSibling_description", new Object[]{childType, this.getFeatureText(feature), siblingType});
    }

    @Override
    public String getCreateChildToolTipText(Object owner, Object feature, Object child, Collection<?> selection) {
        if (feature instanceof EStructuralFeature && FeatureMapUtil.isFeatureMap((EStructuralFeature)((EStructuralFeature)feature))) {
            FeatureMap.Entry entry = (FeatureMap.Entry)child;
            feature = entry.getEStructuralFeature();
            child = entry.getValue();
        }
        String childType = feature instanceof EAttribute ? this.getTypeText((EAttribute)feature) : this.getTypeText(child);
        return this.getResourceLocator().getString("_UI_CreateChild_tooltip", new Object[]{childType, this.getFeatureText(feature), this.getTypeText(owner)});
    }

    @Override
    public Object getCreateChildImage(Object owner, Object feature, Object child, Collection<?> selection) {
        if (feature instanceof EStructuralFeature && FeatureMapUtil.isFeatureMap((EStructuralFeature)((EStructuralFeature)feature))) {
            FeatureMap.Entry entry = (FeatureMap.Entry)child;
            feature = entry.getEStructuralFeature();
            child = entry.getValue();
        }
        if (feature instanceof EReference) {
            if (!this.shouldComposeCreationImage()) {
                EStructuralFeature eFeature = (EStructuralFeature)feature;
                String name = "full/ctool16/Create" + eFeature.getEContainingClass().getName() + "_" + eFeature.getName();
                if (child instanceof EObject) {
                    name = String.valueOf(name) + "_" + ((EObject)child).eClass().getName();
                }
                try {
                    return this.getResourceLocator().getImage(name);
                }
                catch (Exception exception) {
                    // empty catch block
                }
            }
            ArrayList<Object> images = new ArrayList<Object>();
            IItemLabelProvider itemLabelProvider = (IItemLabelProvider)((ComposeableAdapterFactory)this.adapterFactory).getRootAdapterFactory().adapt(child, IItemLabelProvider.class);
            images.add(itemLabelProvider.getImage(child));
            images.add(EMFEditPlugin.INSTANCE.getImage("full/ovr16/CreateChild"));
            return new ComposedImage(images){

                @Override
                public List<ComposedImage.Point> getDrawPoints(ComposedImage.Size size) {
                    List<ComposedImage.Point> result = super.getDrawPoints(size);
                    result.get((int)1).x = size.width - 7;
                    return result;
                }
            };
        }
        return EMFEditPlugin.INSTANCE.getImage("full/ctool16/CreateChild");
    }

    protected boolean shouldComposeCreationImage() {
        return false;
    }

    protected String getTypeText(Object object) {
        if (object instanceof EObject) {
            EObject eObject = (EObject)object;
            String typeKey = eObject.eClass().getName();
            ArrayList originalAdapters = new ArrayList(eObject.eAdapters());
            try {
                String string = this.getResourceLocator(object).getString("_UI_" + typeKey + "_type");
                return string;
            }
            catch (MissingResourceException e) {
                String string = typeKey;
                return string;
            }
            finally {
                eObject.eAdapters().retainAll(originalAdapters);
            }
        }
        return this.getString("_UI_Unknown_type");
    }

    protected String getTypeText(EAttribute attribute) {
        String typeKey = attribute.getEAttributeType().getName();
        try {
            return this.getString("_UI_" + typeKey + "_datatype");
        }
        catch (MissingResourceException missingResourceException) {
            return this.getString("_UI_Unknown_datatype");
        }
    }

    protected String getFeatureText(Object feature) {
        String featureKey;
        if (feature instanceof EStructuralFeature) {
            EStructuralFeature eFeature = (EStructuralFeature)feature;
            featureKey = String.valueOf(eFeature.getEContainingClass().getName()) + "_" + eFeature.getName();
        } else {
            featureKey = "Unknown";
        }
        return this.getResourceLocator().getString("_UI_" + featureKey + "_feature");
    }

    protected ResourceLocator getResourceLocator() {
        return EMFEditPlugin.INSTANCE;
    }

    protected ResourceLocator getResourceLocator(Object anyObject) {
        Object adapter;
        if (this.adapterFactory instanceof ComposeableAdapterFactory && (adapter = ((ComposeableAdapterFactory)this.adapterFactory).getRootAdapterFactory().adapt(anyObject, IItemLabelProvider.class)) instanceof ResourceLocator) {
            return (ResourceLocator)adapter;
        }
        return this.getResourceLocator();
    }

    protected AdapterFactory getRootAdapterFactory() {
        if (this.adapterFactory instanceof ComposeableAdapterFactory) {
            return ((ComposeableAdapterFactory)this.adapterFactory).getRootAdapterFactory();
        }
        return this.adapterFactory;
    }

    public URL getBaseURL() {
        return this.getResourceLocator().getBaseURL();
    }

    public Object getImage(String key) {
        return this.getResourceLocator().getImage(key);
    }

    protected boolean shouldTranslate() {
        return true;
    }

    public String getString(String key) {
        return this.getString(key, this.shouldTranslate());
    }

    public String getString(String key, boolean translate) {
        return this.getResourceLocator().getString(key, translate);
    }

    public String getString(String key, Object[] substitutions) {
        return this.getString(key, substitutions, this.shouldTranslate());
    }

    public String getString(String key, Object[] substitutions, boolean translate) {
        return this.getResourceLocator().getString(key, substitutions, translate);
    }

    protected String getString(String key, String s0) {
        return this.getString(key, s0, this.shouldTranslate());
    }

    protected String getString(String key, String s0, boolean translate) {
        ResourceLocator resourceLocator = this.getResourceLocator();
        return resourceLocator.getString(key, new Object[]{resourceLocator.getString(s0, translate)}, translate);
    }

    protected String getString(String key, String s0, String s1) {
        return this.getString(key, s0, s1, this.shouldTranslate());
    }

    protected String getString(String key, String s0, String s1, boolean translate) {
        ResourceLocator resourceLocator = this.getResourceLocator();
        return resourceLocator.getString(key, new Object[]{resourceLocator.getString(s0, translate), resourceLocator.getString(s1, translate)}, translate);
    }

    protected boolean isWrappingNeeded(Object object) {
        if (this.wrappingNeeded == null) {
            this.wrappingNeeded = Boolean.FALSE;
            for (EStructuralFeature eStructuralFeature : this.getAnyChildrenFeatures(object)) {
                if (!(eStructuralFeature instanceof EAttribute)) continue;
                this.wrappingNeeded = Boolean.TRUE;
            }
        }
        return this.wrappingNeeded;
    }

    protected ChildrenStore getChildrenStore(Object object) {
        return this.childrenStoreMap == null ? null : this.childrenStoreMap.get(object);
    }

    protected ChildrenStore createChildrenStore(Object object) {
        ChildrenStore store = null;
        if (this.isWrappingNeeded(object)) {
            if (this.childrenStoreMap == null) {
                this.childrenStoreMap = new HashMap<Object, ChildrenStore>();
            }
            store = new ChildrenStore(this.getAnyChildrenFeatures(object));
            this.childrenStoreMap.put(object, store);
        }
        return store;
    }

    protected Object wrap(EObject object, EStructuralFeature feature, Object value, int index) {
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

    protected Object createWrapper(EObject object, EStructuralFeature feature, Object value, int index) {
        if (!this.isWrappingNeeded(object)) {
            return value;
        }
        if (FeatureMapUtil.isFeatureMap((EStructuralFeature)feature)) {
            value = new FeatureMapEntryWrapperItemProvider((FeatureMap.Entry)value, object, (EAttribute)feature, index, this.adapterFactory, this.getResourceLocator());
        } else if (feature instanceof EAttribute) {
            value = new AttributeValueWrapperItemProvider(value, object, (EAttribute)feature, index, this.adapterFactory, this.getResourceLocator());
        } else if (!((EReference)feature).isContainment()) {
            value = new DelegatingWrapperItemProvider(value, object, feature, index, this.adapterFactory);
        }
        return value;
    }

    protected Object unwrap(Object object) {
        while (object instanceof IWrapperItemProvider) {
            object = ((IWrapperItemProvider)object).getValue();
        }
        return object;
    }

    protected void disposeWrapper(Object object) {
        if (object instanceof IWrapperItemProvider) {
            ((IWrapperItemProvider)object).dispose();
            if (this.wrappers != null) {
                this.wrappers.remove(object);
            }
        }
    }

    protected void disposeWrappers(List<?> objects) {
        for (Object object : objects) {
            this.disposeWrapper(object);
        }
    }

    protected void adjustWrapperIndex(Object object, int increment) {
        IWrapperItemProvider wrapper;
        int index;
        if (object instanceof IWrapperItemProvider && (index = (wrapper = (IWrapperItemProvider)object).getIndex()) != -1) {
            wrapper.setIndex(index + increment);
        }
    }

    protected void adjustWrapperIndices(List<Object> objects, int from, int increment) {
        ListIterator<Object> i = objects.listIterator(from);
        while (i.hasNext()) {
            this.adjustWrapperIndex(i.next(), increment);
        }
    }

    protected void adjustWrapperIndices(List<Object> objects, int from, int to, int increment) {
        ListIterator<Object> i = objects.listIterator(from);
        while (from < to && i.hasNext()) {
            this.adjustWrapperIndex(i.next(), increment);
            ++from;
        }
    }

    protected void updateChildren(Notification notification) {
        EStructuralFeature feature;
        EList<Object> children;
        EObject object = (EObject)notification.getNotifier();
        ChildrenStore childrenStore = this.getChildrenStore(object);
        if (childrenStore != null && (children = childrenStore.getList(feature = (EStructuralFeature)notification.getFeature())) != null) {
            int index = notification.getPosition();
            switch (notification.getEventType()) {
                case 2: {
                    if (feature.isMany()) break;
                }
                case 1: 
                case 9: {
                    Object oldChild = childrenStore.get(feature, index);
                    Object newValue = notification.getNewValue();
                    if (this.unwrap(oldChild) == newValue) break;
                    if (feature.isMany() && index == -1) {
                        this.disposeWrappers((List)oldChild);
                    } else {
                        this.disposeWrapper(oldChild);
                    }
                    Object newChild = newValue == null && index == -1 ? null : this.wrap(object, feature, newValue, index);
                    childrenStore.set(feature, index, newChild);
                    break;
                }
                case 3: {
                    EList values = (EList)this.getValue(object, feature);
                    if (children.size() == values.size()) break;
                    Object newValue = notification.getNewValue();
                    this.adjustWrapperIndices((List<Object>)children, index, 1);
                    children.add(index, this.wrap(object, feature, newValue, index));
                    break;
                }
                case 4: {
                    EList values = (EList)this.getValue(object, feature);
                    if (children.size() == values.size()) break;
                    this.disposeWrapper(children.remove(index));
                    this.adjustWrapperIndices((List<Object>)children, index, -1);
                    break;
                }
                case 5: {
                    EList values = (EList)this.getValue(object, feature);
                    if (children.size() == values.size()) break;
                    if (notification.getOldValue() != null) {
                        throw new IllegalArgumentException("No old value expected");
                    }
                    List newValues = (List)notification.getNewValue();
                    ArrayList<Object> newChildren = new ArrayList<Object>(newValues.size());
                    int offset = 0;
                    for (Object newValue : newValues) {
                        newChildren.add(this.wrap(object, feature, newValue, index + offset++));
                    }
                    this.adjustWrapperIndices((List<Object>)children, index, offset);
                    children.addAll(index, newChildren);
                    break;
                }
                case 6: {
                    if (index == -1) {
                        index = 0;
                    }
                    EList values = (EList)this.getValue(object, feature);
                    if (children.size() == values.size()) break;
                    if (notification.getNewValue() instanceof int[]) {
                        int[] indices = (int[])notification.getNewValue();
                        int i = indices.length - 1;
                        while (i >= 0) {
                            this.disposeWrapper(children.remove(indices[i]));
                            this.adjustWrapperIndices((List<Object>)children, indices[i], -1);
                            --i;
                        }
                        break;
                    }
                    int len = ((List)notification.getOldValue()).size();
                    List sl = children.subList(index, index + len);
                    this.disposeWrappers(sl);
                    sl.clear();
                    this.adjustWrapperIndices((List<Object>)children, index, -len);
                    break;
                }
                case 7: {
                    int oldIndex = (Integer)notification.getOldValue();
                    EList values = (EList)this.getValue(object, feature);
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
                        this.adjustWrapperIndices((List<Object>)children, index, oldIndex, 1);
                    }
                    children.move(index, oldIndex);
                    this.adjustWrapperIndex(children.get(index), delta);
                    if (delta <= 0) break;
                    this.adjustWrapperIndices((List<Object>)children, oldIndex, index, -1);
                }
            }
        }
    }

    protected CommandParameter unwrapCommandValues(CommandParameter commandParameter, Class<? extends Command> commandClass) {
        Object oldValue2;
        if (commandClass == DragAndDropCommand.class) {
            return commandParameter;
        }
        ArrayList newCollection = null;
        Collection<?> oldCollection = commandParameter.getCollection();
        if (oldCollection != null) {
            for (Object oldValue2 : oldCollection) {
                Object newValue = this.unwrap(oldValue2);
                if (newValue != oldValue2 && newCollection == null) {
                    newCollection = new ArrayList(oldCollection.size());
                    for (Object o : oldCollection) {
                        if (o == oldValue2) break;
                        newCollection.add(o);
                    }
                }
                if (newCollection == null) continue;
                newCollection.add(newValue);
            }
        }
        oldValue2 = commandParameter.getValue();
        Object newValue = this.unwrap(oldValue2);
        if (newCollection != null || newValue != oldValue2) {
            commandParameter = new CommandParameter(commandParameter.owner, commandParameter.feature, newValue, newCollection, commandParameter.index);
        }
        return commandParameter;
    }

    protected Command wrapCommand(Command command, Object object, Class<? extends Command> commandClass, CommandParameter commandParameter, CommandParameter oldCommandParameter) {
        if (this.isWrappingNeeded(object) && commandClass != DragAndDropCommand.class) {
            Collection<Object> oldWrappers = commandParameter != oldCommandParameter ? this.getWrappedValues(oldCommandParameter) : Collections.emptyList();
            command = command instanceof CommandActionDelegate ? new ResultAndAffectedObjectsWrappingCommandActionDelegate((CommandActionDelegate)command, oldWrappers) : new ResultAndAffectedObjectsWrappingCommand((Command)command, (Collection<? extends IWrapperItemProvider>)oldWrappers);
        }
        return command;
    }

    protected Collection<? extends IWrapperItemProvider> getWrappedValues(CommandParameter commandParameter) {
        Collection<?> collection = commandParameter.getCollection();
        Object value = commandParameter.getValue();
        if (collection != null) {
            ArrayList<IWrapperItemProvider> result = new ArrayList<IWrapperItemProvider>(collection.size() + 1);
            for (Object o : collection) {
                if (!(o instanceof IWrapperItemProvider)) continue;
                result.add((IWrapperItemProvider)o);
            }
            if (value instanceof IWrapperItemProvider) {
                result.add((IWrapperItemProvider)value);
            }
            return result;
        }
        if (value instanceof IWrapperItemProvider) {
            return Collections.singletonList((IWrapperItemProvider)value);
        }
        return Collections.emptyList();
    }

    protected ItemPropertyDescriptor createItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage, String category, String[] filterFlags) {
        return this.createItemPropertyDescriptor(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, staticImage, category, filterFlags);
    }

    protected ItemPropertyDescriptor createItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, boolean multiLine, boolean sortChoices, Object staticImage, String category, String[] filterFlags) {
        return new ItemPropertyDescriptor(adapterFactory, resourceLocator, displayName, description, feature, isSettable, multiLine, sortChoices, staticImage, category, filterFlags);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class ChildrenStore {
        protected Entry[] entries;

        public ChildrenStore(Collection<? extends EStructuralFeature> features) {
            this.entries = new Entry[features.size()];
            int i = 0;
            for (EStructuralFeature eStructuralFeature : features) {
                this.entries[i++] = new Entry(eStructuralFeature);
            }
        }

        protected Entry getEntry(EStructuralFeature feature) {
            int i = 0;
            while (i < this.entries.length) {
                if (this.entries[i].feature == feature) {
                    return this.entries[i];
                }
                ++i;
            }
            return null;
        }

        protected EList<Object> createList(EStructuralFeature feature) {
            return feature.isMany() ? new BasicEList() : new ModifiableSingletonEList();
        }

        public boolean contains(EStructuralFeature feature) {
            return this.getEntry(feature) != null;
        }

        public EList<Object> getList(EStructuralFeature feature) {
            Entry entry = this.getEntry(feature);
            if (entry == null) {
                return null;
            }
            if (entry.list == null) {
                entry.list = this.createList(feature);
            }
            return entry.list;
        }

        public Object getValue(EStructuralFeature feature) {
            Entry entry = this.getEntry(feature);
            if (entry == null) {
                return null;
            }
            Object result = null;
            if (feature.isMany()) {
                if (entry.list == null) {
                    entry.list = this.createList(feature);
                }
                result = entry.list;
            } else if (entry.list != null) {
                result = entry.list.get(0);
            }
            return result;
        }

        public boolean setValue(EStructuralFeature feature, Object value) {
            Entry entry = this.getEntry(feature);
            if (entry == null) {
                return false;
            }
            if (entry.list == null && value != null) {
                entry.list = this.createList(feature);
            }
            if (entry.list != null) {
                if (feature.isMany()) {
                    entry.list.clear();
                    if (value != null) {
                        entry.list.addAll((Collection)value);
                    }
                } else {
                    entry.list.set(0, value);
                }
            }
            return true;
        }

        public Object get(EStructuralFeature feature, int index) {
            if (index == -1) {
                return this.getValue(feature);
            }
            EList<Object> list = this.getList(feature);
            return list != null ? list.get(index) : null;
        }

        public boolean set(EStructuralFeature feature, int index, Object object) {
            if (index == -1) {
                return this.setValue(feature, object);
            }
            EList<Object> list = this.getList(feature);
            if (list != null) {
                list.set(index, object);
                return true;
            }
            return false;
        }

        public List<Object> getChildren() {
            int size = 0;
            int i = 0;
            while (i < this.entries.length) {
                if (this.entries[i].list != null) {
                    size += this.entries[i].feature.isMany() ? this.entries[i].list.size() : (this.entries[i].list.get(0) != null ? 1 : 0);
                }
                ++i;
            }
            ArrayList<Object> result = new ArrayList<Object>(size);
            int i2 = 0;
            while (i2 < this.entries.length) {
                if (this.entries[i2].list != null) {
                    if (this.entries[i2].feature.isMany()) {
                        result.addAll((Collection<Object>)this.entries[i2].list);
                    } else if (this.entries[i2].list.get(0) != null) {
                        result.add(this.entries[i2].list.get(0));
                    }
                }
                ++i2;
            }
            return result;
        }

        public int getOffset(EStructuralFeature feature) {
            int i = 0;
            int offset = 0;
            while (i < this.entries.length) {
                if (this.entries[i].feature == feature) {
                    return offset;
                }
                if (this.entries[i].list != null) {
                    offset += this.entries[i].feature.isMany() ? this.entries[i].list.size() : (this.entries[i].list.get(0) != null ? 1 : 0);
                }
                ++i;
            }
            return -1;
        }

        public void clear() {
            int i = 0;
            while (i < this.entries.length) {
                if (this.entries[i].list != null) {
                    if (this.entries[i].feature.isMany()) {
                        this.entries[i].list.clear();
                    } else {
                        this.entries[i].list.set(0, null);
                    }
                }
                ++i;
            }
        }

        protected static class Entry {
            public EStructuralFeature feature;
            public EList<Object> list;

            public Entry(EStructuralFeature feature) {
                this.feature = feature;
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected static class ModifiableSingletonEList<E>
    extends AbstractList<E>
    implements EList<E> {
        private E singleElement;

        ModifiableSingletonEList() {
            this.singleElement = null;
        }

        ModifiableSingletonEList(E element) {
            this.singleElement = element;
        }

        @Override
        public int size() {
            return 1;
        }

        @Override
        public E get(int index) {
            if (index != 0) {
                throw new IndexOutOfBoundsException("index=" + index + ", size=1");
            }
            return this.singleElement;
        }

        @Override
        public E set(int index, E element) {
            if (index != 0) {
                throw new IndexOutOfBoundsException("index=" + index + ", size=1");
            }
            E oldElement = this.singleElement;
            this.singleElement = element;
            return oldElement;
        }

        @Override
        public boolean contains(Object o) {
            return o == null ? this.singleElement == null : o.equals(this.singleElement);
        }

        public void move(int index, E o) {
            if (index != 0 || !this.contains(o)) {
                throw new IndexOutOfBoundsException("index=" + index + ", size=1");
            }
        }

        public E move(int targetIndex, int sourceIndex) {
            if (targetIndex != 0) {
                throw new IndexOutOfBoundsException("targetIndex=" + targetIndex + ", size=1");
            }
            if (sourceIndex != 0) {
                throw new IndexOutOfBoundsException("sourceIndex=" + sourceIndex + ", size=1");
            }
            return this.singleElement;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class ResultAndAffectedObjectsWrappingCommand
    extends CommandWrapper {
        protected List<Object> owners;
        protected Collection<? extends IWrapperItemProvider> additionalWrappers;

        public ResultAndAffectedObjectsWrappingCommand(Command command) {
            super(command);
        }

        public ResultAndAffectedObjectsWrappingCommand(Command command, Collection<? extends IWrapperItemProvider> additionalResultWrappers) {
            super(command);
            this.additionalWrappers = additionalResultWrappers;
        }

        public Collection<?> getResult() {
            return this.wrapValues(super.getResult(), true);
        }

        public Collection<?> getAffectedObjects() {
            return this.wrapValues(super.getAffectedObjects(), false);
        }

        /*
         * WARNING - void declaration
         */
        protected Collection<? extends IWrapperItemProvider> wrapValues(Collection<?> unwrappedValues, boolean useAdditionalWrappers) {
            ArrayList result = new ArrayList(unwrappedValues);
            ArrayList<? extends IWrapperItemProvider> wrappers = new ArrayList<IWrapperItemProvider>();
            AdapterFactory af = ItemProviderAdapter.this.adapterFactory instanceof ComposeableAdapterFactory ? ((ComposeableAdapterFactory)ItemProviderAdapter.this.adapterFactory).getRootAdapterFactory() : ItemProviderAdapter.this.adapterFactory;
            for (Object owner : this.getOwners()) {
                void var8_8;
                List list = Collections.EMPTY_LIST;
                Object adapter = af.adapt(owner, IEditingDomainItemProvider.class);
                if (adapter instanceof IEditingDomainItemProvider) {
                    Collection<?> collection = ((IEditingDomainItemProvider)adapter).getChildren(owner);
                } else {
                    adapter = af.adapt(owner, ITreeItemContentProvider.class);
                    if (adapter instanceof ITreeItemContentProvider) {
                        Collection<?> collection = ((ITreeItemContentProvider)adapter).getChildren(owner);
                    }
                }
                for (Object child : var8_8) {
                    if (!(child instanceof IWrapperItemProvider)) continue;
                    wrappers.add((IWrapperItemProvider)child);
                }
            }
            if (useAdditionalWrappers && this.additionalWrappers != null) {
                wrappers.addAll(this.additionalWrappers);
            }
            ListIterator<IWrapperItemProvider> i = result.listIterator();
            block2: while (i.hasNext()) {
                Object resultObject = i.next();
                for (IWrapperItemProvider iWrapperItemProvider : wrappers) {
                    if (!ItemProviderAdapter.this.isEquivalentValue(ItemProviderAdapter.this.unwrap(iWrapperItemProvider), resultObject)) continue;
                    i.set(iWrapperItemProvider);
                    continue block2;
                }
            }
            ArrayList collection = result;
            return collection;
        }

        public List<Object> getOwners() {
            if (this.owners == null) {
                this.owners = new UniqueEList();
                this.addOwners(this.getCommand());
            }
            return this.owners;
        }

        protected void addOwners(Command command) {
            if (command instanceof CommandWrapper) {
                this.addOwners(((CommandWrapper)command).getCommand());
            } else if (command instanceof CompoundCommand) {
                CompoundCommand compoundCommand = (CompoundCommand)command;
                List commandList = compoundCommand.getCommandList();
                int resultIndex = compoundCommand.getResultIndex();
                if (resultIndex == Integer.MAX_VALUE) {
                    for (Command childCommand : commandList) {
                        this.addOwners(childCommand);
                    }
                } else {
                    if (resultIndex == Integer.MIN_VALUE) {
                        resultIndex = commandList.size() - 1;
                    }
                    if (resultIndex >= 0) {
                        this.addOwners((Command)commandList.get(resultIndex));
                    }
                }
            } else if (command instanceof AddCommand) {
                this.owners.add(((AddCommand)command).getOwner());
            } else if (command instanceof CreateCopyCommand) {
                this.owners.add(((CreateCopyCommand)command).getOwner());
            } else if (command instanceof InitializeCopyCommand) {
                this.owners.add(((InitializeCopyCommand)command).getOwner());
            } else if (command instanceof MoveCommand) {
                this.owners.add(((MoveCommand)command).getOwner());
            } else if (command instanceof RemoveCommand) {
                this.owners.add(((RemoveCommand)command).getOwner());
            } else if (command instanceof ReplaceCommand) {
                this.owners.add(((ReplaceCommand)command).getOwner());
            } else if (command instanceof SetCommand) {
                this.owners.add(((SetCommand)command).getOwner());
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class ResultAndAffectedObjectsWrappingCommandActionDelegate
    extends ResultAndAffectedObjectsWrappingCommand
    implements CommandActionDelegate {
        CommandActionDelegate commandActionDelegate;

        public ResultAndAffectedObjectsWrappingCommandActionDelegate(CommandActionDelegate command) {
            super((Command)command);
            this.commandActionDelegate = command;
        }

        public ResultAndAffectedObjectsWrappingCommandActionDelegate(CommandActionDelegate command, Collection<? extends IWrapperItemProvider> additionalWrappers) {
            super((Command)command, additionalWrappers);
            this.commandActionDelegate = command;
        }

        @Override
        public Object getImage() {
            return this.commandActionDelegate.getImage();
        }

        @Override
        public String getText() {
            return this.commandActionDelegate.getText();
        }

        @Override
        public String getDescription() {
            return this.commandActionDelegate.getDescription();
        }

        @Override
        public String getToolTipText() {
            return this.commandActionDelegate.getToolTipText();
        }
    }
}

