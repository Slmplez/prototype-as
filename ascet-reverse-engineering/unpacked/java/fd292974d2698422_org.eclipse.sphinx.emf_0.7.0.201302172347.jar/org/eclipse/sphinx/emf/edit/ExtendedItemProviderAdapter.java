/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.Enumerator
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.UniqueEList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EEnumLiteral
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.edit.EMFEditPlugin
 *  org.eclipse.emf.edit.command.AddCommand
 *  org.eclipse.emf.edit.command.CommandParameter
 *  org.eclipse.emf.edit.command.CreateChildCommand$Helper
 *  org.eclipse.emf.edit.command.RemoveCommand
 *  org.eclipse.emf.edit.command.SetCommand
 *  org.eclipse.emf.edit.domain.EditingDomain
 *  org.eclipse.emf.edit.provider.ComposedImage
 *  org.eclipse.emf.edit.provider.ItemPropertyDescriptor
 *  org.eclipse.emf.edit.provider.ItemProviderAdapter
 */
package org.eclipse.sphinx.emf.edit;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.MissingResourceException;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AddCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.CreateChildCommand;
import org.eclipse.emf.edit.command.RemoveCommand;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.ComposedImage;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.ItemProviderAdapter;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.ecore.DefaultEcoreTraversalHelper;
import org.eclipse.sphinx.emf.ecore.EcoreTraversalHelper;
import org.eclipse.sphinx.emf.edit.CustomCommandRegistry;
import org.eclipse.sphinx.emf.edit.ExtendedCreateChildCommand;
import org.eclipse.sphinx.emf.edit.ExtendedItemPropertyDescriptor;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedItemProviderAdapter
extends ItemProviderAdapter {
    public ExtendedItemProviderAdapter(AdapterFactory adapterFactory) {
        super(adapterFactory);
    }

    protected ItemPropertyDescriptor createItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, boolean multiLine, boolean sortChoices, Object staticImage, String category, String[] filterFlags) {
        return new ExtendedItemPropertyDescriptor(adapterFactory, resourceLocator, displayName, description, feature, isSettable, multiLine, sortChoices, staticImage, category, filterFlags);
    }

    public Collection<?> getChoiceOfValues(Object object, EReference[] parentReferences, EStructuralFeature feature) {
        if (object instanceof EObject) {
            EObject eObject = (EObject)object;
            if (parentReferences != null) {
                UniqueEList result = new UniqueEList();
                int i = 0;
                while (i < parentReferences.length) {
                    result.addAll(this.getTraversalHelper().getReachableEObjects(eObject, parentReferences[i]));
                    ++i;
                }
                return result;
            }
            if (feature != null) {
                if (feature instanceof EReference) {
                    Collection<EObject> result = this.getTraversalHelper().getReachableEObjects(eObject, (EReference)feature);
                    if (!feature.isMany() && !result.contains(null)) {
                        result.add(null);
                    }
                    return result;
                }
                if (feature.getEType() instanceof EEnum) {
                    EEnum eEnum = (EEnum)feature.getEType();
                    ArrayList<Enumerator> enumerators = new ArrayList<Enumerator>();
                    for (EEnumLiteral eEnumLiteral : eEnum.getELiterals()) {
                        enumerators.add(eEnumLiteral.getInstance());
                    }
                    return enumerators;
                }
                EDataType eDataType = (EDataType)feature.getEType();
                List enumeration = ExtendedMetaData.INSTANCE.getEnumerationFacet(eDataType);
                if (!enumeration.isEmpty()) {
                    ArrayList<Object> enumerators = new ArrayList<Object>();
                    for (String enumerator : enumeration) {
                        enumerators.add(EcoreUtil.createFromString((EDataType)eDataType, (String)enumerator));
                    }
                    return enumerators;
                }
            }
        }
        return null;
    }

    protected EcoreTraversalHelper getTraversalHelper() {
        return new DefaultEcoreTraversalHelper();
    }

    protected Command factorRemoveCommand(EditingDomain domain, CommandParameter commandParameter) {
        Object parentOfOwner;
        if (commandParameter.getCollection() == null || commandParameter.getCollection().isEmpty()) {
            return UnexecutableCommand.INSTANCE;
        }
        EObject eOwner = commandParameter.getEOwner();
        if (eOwner == null && (parentOfOwner = domain.getParent(commandParameter.getOwner())) instanceof EObject) {
            eOwner = (EObject)parentOfOwner;
        }
        final EObject eObject = eOwner;
        ArrayList list = new ArrayList(commandParameter.getCollection());
        CompoundCommand removeCommand = new CompoundCommand(Integer.MAX_VALUE);
        block0: for (EStructuralFeature feature : this.getChildrenFeatures(commandParameter.getOwner())) {
            Object value;
            if (feature.isMany()) {
                value = (List)this.getFeatureValue(eObject, feature);
                ArrayList childrenOfThisFeature = new ArrayList();
                ListIterator objects = list.listIterator();
                while (objects.hasNext()) {
                    Object o = objects.next();
                    if (!value.contains(o)) continue;
                    childrenOfThisFeature.add(o);
                    objects.remove();
                }
                if (childrenOfThisFeature.isEmpty()) continue;
                removeCommand.append(this.createRemoveCommand(domain, eObject, feature, childrenOfThisFeature));
                continue;
            }
            value = this.getFeatureValue(eObject, feature);
            ListIterator objects = list.listIterator();
            while (objects.hasNext()) {
                Object o = objects.next();
                if (o != value) continue;
                Command setCommand = this.createSetCommand(domain, eObject, feature, SetCommand.UNSET_VALUE);
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
        block3: for (Object object : new ArrayList(list)) {
            Object value;
            if (!(object instanceof EObject)) continue;
            final EObject fallBackOwner = ((EObject)object).eContainer();
            EStructuralFeature containingFeature = ((EObject)object).eContainingFeature();
            if (containingFeature == null) continue;
            if (containingFeature.isMany()) {
                value = (List)this.getFeatureValue(fallBackOwner, containingFeature);
                ArrayList childrenOfThisFeature = new ArrayList();
                ListIterator objects = list.listIterator();
                while (objects.hasNext()) {
                    Object o = objects.next();
                    if (!value.contains(o)) continue;
                    childrenOfThisFeature.add(o);
                    objects.remove();
                }
                if (childrenOfThisFeature.isEmpty()) continue;
                removeCommand.append(this.createRemoveCommand(domain, fallBackOwner, containingFeature, childrenOfThisFeature));
                continue;
            }
            value = this.getFeatureValue(fallBackOwner, containingFeature);
            ListIterator objects = list.listIterator();
            while (objects.hasNext()) {
                Object o = objects.next();
                if (o != value) continue;
                Command setCommand = domain.createCommand(SetCommand.class, new CommandParameter((Object)fallBackOwner, (Object)containingFeature, null));
                removeCommand.append((Command)new CommandWrapper(setCommand){
                    protected Collection<?> affected;

                    public void execute() {
                        this.affected = Collections.singleton(fallBackOwner.eContainer() != null ? fallBackOwner.eContainer() : fallBackOwner);
                        super.execute();
                    }

                    public void undo() {
                        super.undo();
                        this.affected = Collections.singleton(value);
                    }

                    public void redo() {
                        super.redo();
                        this.affected = Collections.singleton(fallBackOwner.eContainer() != null ? fallBackOwner.eContainer() : fallBackOwner);
                    }

                    public Collection<?> getResult() {
                        return Collections.singleton(value);
                    }

                    public Collection<?> getAffectedObjects() {
                        return this.affected;
                    }
                });
                objects.remove();
                continue block3;
            }
        }
        if (list.isEmpty()) {
            return removeCommand.unwrap();
        }
        removeCommand.dispose();
        return UnexecutableCommand.INSTANCE;
    }

    protected Command factorAddCommand(EditingDomain domain, CommandParameter commandParameter) {
        Object parentOfOwner;
        if (commandParameter.getCollection() == null || commandParameter.getCollection().isEmpty()) {
            return UnexecutableCommand.INSTANCE;
        }
        EObject eOwner = commandParameter.getEOwner();
        if (eOwner == null && (parentOfOwner = domain.getParent(commandParameter.getOwner())) instanceof EObject) {
            eOwner = (EObject)parentOfOwner;
        }
        final EObject eObject = eOwner;
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
                    for (EStructuralFeature feature : this.getChildrenFeatures(commandParameter.getOwner())) {
                        if (feature == childFeature) break;
                        if (feature.isMany()) {
                            index -= ((List)eObject.eGet(feature)).size();
                            continue;
                        }
                        if (eObject.eGet(feature) == null) continue;
                        --index;
                    }
                    if (index < 0) break;
                }
                ArrayList childrenOfThisFeature = new ArrayList();
                childrenOfThisFeature.add(firstChild);
                children.remove();
                while (children.hasNext()) {
                    Object child = children.next();
                    if (this.getChildFeature(eObject, child) != childFeature) continue;
                    childrenOfThisFeature.add(child);
                    children.remove();
                }
                addCommand.append(this.createAddCommand(domain, eObject, childFeature, childrenOfThisFeature, index));
                if (index >= childrenOfThisFeature.size()) {
                    index -= childrenOfThisFeature.size();
                    continue;
                }
                index = -1;
                continue;
            }
            if (eObject.eGet(childFeature) != null) break;
            Command setCommand = this.createSetCommand(domain, eObject, childFeature, firstChild);
            addCommand.append((Command)new CommandWrapper(setCommand){
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

    protected Command createSetCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, int index) {
        Command setCommand = CustomCommandRegistry.INSTANCE.createCustomCommand(domain, new CommandParameter((Object)owner, (Object)feature, value, index), SetCommand.class);
        if (setCommand != null) {
            return setCommand;
        }
        return super.createSetCommand(domain, owner, feature, value, index);
    }

    protected Command createAddCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection, int index) {
        Command addCommand = CustomCommandRegistry.INSTANCE.createCustomCommand(domain, new CommandParameter((Object)owner, (Object)feature, collection, index), AddCommand.class);
        if (addCommand != null) {
            return addCommand;
        }
        return super.createAddCommand(domain, owner, feature, collection, index);
    }

    protected Command createRemoveCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection) {
        Command removeCommand = CustomCommandRegistry.INSTANCE.createCustomCommand(domain, new CommandParameter((Object)owner, (Object)feature, collection), RemoveCommand.class);
        if (removeCommand != null) {
            return removeCommand;
        }
        return super.createRemoveCommand(domain, owner, feature, collection);
    }

    public String getCreateChildText(Object owner, Object feature, Object child, Collection<?> selection) {
        return this.getCreateChildText(owner, feature, child, selection, false);
    }

    public String getCreateChildText(Object owner, Object feature, Object child, Collection<?> selection, boolean qualified) {
        String childTypeText;
        if (feature instanceof EStructuralFeature && FeatureMapUtil.isFeatureMap((EStructuralFeature)((EStructuralFeature)feature))) {
            FeatureMap.Entry entry = (FeatureMap.Entry)child;
            feature = entry.getEStructuralFeature();
            child = entry.getValue();
        }
        String featureText = this.getFeatureText(feature);
        String string = childTypeText = feature instanceof EAttribute ? this.getTypeText((EAttribute)feature) : this.getTypeText(child);
        if (feature instanceof EAttribute) {
            return this.getResourceLocator().getString("_UI_CreateChild_text3", new Object[]{childTypeText, featureText});
        }
        if (!childTypeText.equals(featureText) && qualified) {
            try {
                return this.getResourceLocator().getString("_UI_CreateChild_text1", new Object[]{childTypeText, featureText});
            }
            catch (MissingResourceException missingResourceException) {
                return this.getResourceLocator().getString("_UI_CreateChild_text", new Object[]{childTypeText, featureText});
            }
        }
        return this.getResourceLocator().getString("_UI_CreateChild_text", new Object[]{childTypeText, featureText});
    }

    public Object getCreateChildImage(Object owner, Object feature, Object child, Collection<?> selection) {
        try {
            return super.getCreateChildImage(owner, feature, child, selection);
        }
        catch (NullPointerException nullPointerException) {
            return EMFEditPlugin.INSTANCE.getImage("full/ctool16/CreateChild");
        }
    }

    protected Command createCreateChildCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value, int index, Collection<?> collection) {
        return new ExtendedCreateChildCommand(domain, owner, feature, value, index, collection, (CreateChildCommand.Helper)this);
    }

    protected Object overlayImage(Object object, Object image) {
        if (object instanceof EObject && ((EObject)object).eIsProxy()) {
            ArrayList<Object> images = new ArrayList<Object>(2);
            images.add(image);
            images.add(Activator.INSTANCE.getImage("full/ovr16/exclampt_ovr"));
            image = new ComposedImage(images);
            return image;
        }
        return super.overlayImage(object, image);
    }
}

