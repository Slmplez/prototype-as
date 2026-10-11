/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CompoundCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.Enumerator
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.UniqueEList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EEnumLiteral
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 */
package org.eclipse.emf.edit.provider;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.MissingResourceException;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CompoundCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.UniqueEList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EEnumLiteral;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.SetCommand;
import org.eclipse.emf.edit.domain.AdapterFactoryEditingDomain;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.domain.IEditingDomainProvider;
import org.eclipse.emf.edit.provider.AdapterFactoryItemDelegator;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptorDecorator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ItemPropertyDescriptor
implements IItemPropertyDescriptor,
IItemPropertyDescriptor.OverrideableCommandOwner {
    public static final Object BOOLEAN_VALUE_IMAGE = EMFEditPlugin.INSTANCE.getImage("full/obj16/BooleanValue");
    public static final Object GENERIC_VALUE_IMAGE = EMFEditPlugin.INSTANCE.getImage("full/obj16/GenericValue");
    public static final Object INTEGRAL_VALUE_IMAGE = EMFEditPlugin.INSTANCE.getImage("full/obj16/IntegralValue");
    public static final Object REAL_VALUE_IMAGE = EMFEditPlugin.INSTANCE.getImage("full/obj16/RealValue");
    public static final Object TEXT_VALUE_IMAGE = EMFEditPlugin.INSTANCE.getImage("full/obj16/TextValue");
    protected AdapterFactory adapterFactory;
    protected ResourceLocator resourceLocator;
    protected AdapterFactoryItemDelegator itemDelegator;
    protected boolean isSettable;
    protected String displayName;
    protected String description;
    protected EStructuralFeature feature;
    protected EReference[] parentReferences;
    protected boolean multiLine;
    protected boolean sortChoices;
    protected String category;
    protected String[] filterFlags;
    protected Object staticImage;
    protected Object commandOwner;
    protected static final EcorePackage ecorePackage = EcorePackage.eINSTANCE;

    public static String getDefaultId(EStructuralFeature eStructuralFeature) {
        return eStructuralFeature.getName();
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EStructuralFeature feature) {
        this(adapterFactory, null, displayName, description, feature, true, false, false, null, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature) {
        this(adapterFactory, resourceLocator, displayName, description, feature, true, false, false, null, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EStructuralFeature feature, boolean isSettable) {
        this(adapterFactory, null, displayName, description, feature, isSettable, false, false, null, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable) {
        this(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, null, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage) {
        this(adapterFactory, null, displayName, description, feature, isSettable, false, false, staticImage, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage) {
        this(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, staticImage, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EStructuralFeature feature, boolean isSettable, String category) {
        this(adapterFactory, null, displayName, description, feature, isSettable, false, false, null, category, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, String category) {
        this(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, null, category, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage, String category) {
        this(adapterFactory, null, displayName, description, feature, isSettable, false, false, staticImage, category, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage, String category) {
        this(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, staticImage, category, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EStructuralFeature feature, boolean isSettable, String category, String[] filterFlags) {
        this(adapterFactory, null, displayName, description, feature, isSettable, false, false, null, category, filterFlags);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, String category, String[] filterFlags) {
        this(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, null, category, filterFlags);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage, String category, String[] filterFlags) {
        this(adapterFactory, null, displayName, description, feature, isSettable, false, false, staticImage, category, filterFlags);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage, String category, String[] filterFlags) {
        this(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, staticImage, category, filterFlags);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, boolean multiLine, boolean sortChoices, Object staticImage, String category, String[] filterFlags) {
        this.adapterFactory = adapterFactory;
        this.resourceLocator = resourceLocator;
        this.itemDelegator = new ItemDelegator(adapterFactory, resourceLocator);
        this.displayName = displayName;
        this.description = description;
        this.feature = feature;
        this.isSettable = isSettable;
        this.multiLine = multiLine;
        this.sortChoices = sortChoices;
        this.staticImage = staticImage;
        this.category = category;
        this.filterFlags = filterFlags;
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EReference[] parentReferences) {
        this(adapterFactory, null, displayName, description, parentReferences, true, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EReference[] parentReferences) {
        this(adapterFactory, resourceLocator, displayName, description, parentReferences, true, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EReference[] parentReferences, boolean isSettable) {
        this(adapterFactory, null, displayName, description, parentReferences, isSettable, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EReference[] parentReferences, boolean isSettable) {
        this(adapterFactory, resourceLocator, displayName, description, parentReferences, isSettable, null, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EReference[] parentReferences, boolean isSettable, String category) {
        this(adapterFactory, null, displayName, description, parentReferences, isSettable, category, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EReference[] parentReferences, boolean isSettable, String category) {
        this(adapterFactory, resourceLocator, displayName, description, parentReferences, isSettable, category, null);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, String displayName, String description, EReference[] parentReferences, boolean isSettable, String category, String[] filterFlags) {
        this(adapterFactory, null, displayName, description, parentReferences, isSettable, category, filterFlags);
    }

    public ItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EReference[] parentReferences, boolean isSettable, String category, String[] filterFlags) {
        this.adapterFactory = adapterFactory;
        this.resourceLocator = resourceLocator;
        this.itemDelegator = new ItemDelegator(adapterFactory, resourceLocator);
        this.displayName = displayName;
        this.description = description;
        this.parentReferences = parentReferences;
        this.isSettable = isSettable;
        this.category = category;
        this.filterFlags = filterFlags;
    }

    @Override
    public String getCategory(Object object) {
        return this.category;
    }

    @Override
    public String getDescription(Object object) {
        return this.description;
    }

    @Override
    public String getDisplayName(Object object) {
        return this.displayName;
    }

    @Override
    public String[] getFilterFlags(Object object) {
        return this.filterFlags;
    }

    @Override
    public String getId(Object object) {
        if (this.feature != null) {
            return ItemPropertyDescriptor.getDefaultId(this.feature);
        }
        if (this.parentReferences != null && this.parentReferences.length != 0) {
            StringBuffer result = new StringBuffer(ItemPropertyDescriptor.getDefaultId((EStructuralFeature)this.parentReferences[0]));
            int i = 1;
            while (i < this.parentReferences.length) {
                result.append('-');
                result.append(ItemPropertyDescriptor.getDefaultId((EStructuralFeature)this.parentReferences[i]));
                ++i;
            }
            return result.toString();
        }
        return this.displayName;
    }

    @Override
    public Object getHelpContextIds(Object object) {
        return null;
    }

    protected Collection<?> getComboBoxObjects(Object object) {
        if (object instanceof EObject) {
            if (this.parentReferences != null) {
                UniqueEList result = new UniqueEList();
                int i = 0;
                while (i < this.parentReferences.length) {
                    result.addAll(ItemPropertyDescriptor.getReachableObjectsOfType((EObject)object, this.parentReferences[i].getEType()));
                    ++i;
                }
                return result;
            }
            if (this.feature != null) {
                if (this.feature instanceof EReference) {
                    Collection<EObject> result = ItemPropertyDescriptor.getReachableObjectsOfType((EObject)object, this.feature.getEType());
                    if (!this.feature.isMany() && !result.contains(null)) {
                        result.add(null);
                    }
                    return result;
                }
                if (this.feature.getEType() instanceof EEnum) {
                    EEnum eEnum = (EEnum)this.feature.getEType();
                    ArrayList<Enumerator> enumerators = new ArrayList<Enumerator>();
                    for (EEnumLiteral eEnumLiteral : eEnum.getELiterals()) {
                        enumerators.add(eEnumLiteral.getInstance());
                    }
                    return enumerators;
                }
                EDataType eDataType = (EDataType)this.feature.getEType();
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

    public static Collection<EObject> getReachableObjectsOfType(EObject object, EClassifier type) {
        LinkedList<EObject> itemQueue = new LinkedList<EObject>();
        HashSet<EObject> visited = new HashSet<EObject>();
        ArrayList<EObject> result = new ArrayList<EObject>();
        Resource resource = object.eResource();
        if (resource != null) {
            ResourceSet resourceSet = resource.getResourceSet();
            if (resourceSet != null) {
                TreeIterator i = resourceSet.getAllContents();
                while (i.hasNext()) {
                    Object child = i.next();
                    if (!(child instanceof EObject)) continue;
                    ItemPropertyDescriptor.collectReachableObjectsOfType(visited, itemQueue, result, (EObject)child, type);
                    i.prune();
                }
            } else {
                for (EObject eObject : resource.getContents()) {
                    ItemPropertyDescriptor.collectReachableObjectsOfType(visited, itemQueue, result, eObject, type);
                }
            }
        } else {
            ItemPropertyDescriptor.collectReachableObjectsOfType(visited, itemQueue, result, EcoreUtil.getRootContainer((EObject)object), type);
        }
        while (!itemQueue.isEmpty()) {
            EObject nextItem = itemQueue.removeFirst();
            ItemPropertyDescriptor.collectReachableObjectsOfType(visited, itemQueue, result, nextItem, type);
        }
        return result;
    }

    public static void collectReachableObjectsOfType(Collection<EObject> visited, Collection<EObject> result, EObject object, EClassifier type) {
        LinkedList<EObject> itemQueue = new LinkedList<EObject>();
        ItemPropertyDescriptor.collectReachableObjectsOfType(visited, itemQueue, result, object, type);
        while (!itemQueue.isEmpty()) {
            EObject nextItem = itemQueue.removeFirst();
            ItemPropertyDescriptor.collectReachableObjectsOfType(visited, itemQueue, result, nextItem, type);
        }
    }

    private static void collectReachableObjectsOfType(Collection<EObject> visited, LinkedList<EObject> itemQueue, Collection<EObject> result, EObject object, EClassifier type) {
        if (visited.add(object)) {
            if (type.isInstance((Object)object)) {
                result.add(object);
            }
            if (object != EcorePackage.Literals.EOBJECT) {
                EClass eClass = object.eClass();
                for (EStructuralFeature eStructuralFeature : eClass.getEAllStructuralFeatures()) {
                    if (eStructuralFeature.isDerived()) continue;
                    if (eStructuralFeature instanceof EReference) {
                        EReference eReference = (EReference)eStructuralFeature;
                        if (eReference.isMany()) {
                            List list = (List)object.eGet((EStructuralFeature)eReference);
                            itemQueue.addAll(list);
                            continue;
                        }
                        EObject eObject = (EObject)object.eGet((EStructuralFeature)eReference);
                        if (eObject == null || eObject == EcorePackage.eINSTANCE && eStructuralFeature == EcorePackage.Literals.ECLASSIFIER__EPACKAGE && !(object instanceof EClass)) continue;
                        itemQueue.addLast(eObject);
                        continue;
                    }
                    if (!FeatureMapUtil.isFeatureMap((EStructuralFeature)eStructuralFeature)) continue;
                    for (FeatureMap.Entry entry : (FeatureMap)object.eGet(eStructuralFeature)) {
                        if (!(entry.getEStructuralFeature() instanceof EReference) || entry.getValue() == null) continue;
                        itemQueue.addLast((EObject)entry.getValue());
                    }
                }
            }
        }
    }

    @Override
    public IItemLabelProvider getLabelProvider(Object object) {
        return this.itemDelegator;
    }

    @Override
    public boolean isCompatibleWith(Object object, Object anotherObject, IItemPropertyDescriptor anotherItemPropertyDescriptor) {
        return false;
    }

    protected Object createPropertyValueWrapper(Object object, Object propertyValue) {
        return new PropertyValueWrapper(this.adapterFactory, object, propertyValue, null);
    }

    public static Object getDefaultValue(EClassifier eType) {
        if (eType.getEPackage() == EcorePackage.eINSTANCE) {
            switch (eType.getClassifierID()) {
                case 22: 
                case 23: {
                    return Boolean.FALSE;
                }
                case 24: 
                case 26: {
                    return (byte)0;
                }
                case 27: 
                case 28: {
                    return Character.valueOf(' ');
                }
                case 31: 
                case 32: {
                    return 0.0;
                }
                case 37: 
                case 38: {
                    return Float.valueOf(0.0f);
                }
                case 39: 
                case 40: {
                    return 0;
                }
                case 43: 
                case 44: {
                    return 0L;
                }
                case 48: 
                case 49: {
                    return (short)0;
                }
                case 50: {
                    return "";
                }
            }
        } else {
            EDataType eDataType;
            List enumeration;
            if (eType instanceof EEnum) {
                return ((EEnumLiteral)((EEnum)eType).getELiterals().get(0)).getInstance();
            }
            if (eType instanceof EDataType && !(enumeration = ExtendedMetaData.INSTANCE.getEnumerationFacet(eDataType = (EDataType)eType)).isEmpty()) {
                return EcoreUtil.createFromString((EDataType)eDataType, (String)((String)enumeration.get(0)));
            }
        }
        return null;
    }

    protected Object getValue(EObject object, EStructuralFeature feature) {
        try {
            return object.eGet(feature);
        }
        catch (Throwable exception) {
            return null;
        }
    }

    @Override
    public Object getPropertyValue(Object object) {
        EObject eObject = (EObject)object;
        if (this.feature instanceof EAttribute) {
            EAttribute attribute = (EAttribute)this.feature;
            Object result = this.getValue(eObject, (EStructuralFeature)attribute);
            if (result == null) {
                return null;
            }
            return this.createPropertyValueWrapper(object, result);
        }
        if (this.parentReferences != null) {
            int i = 0;
            while (i < this.parentReferences.length) {
                Object result = this.getValue(eObject, (EStructuralFeature)this.parentReferences[i]);
                if (result != null) {
                    return this.createPropertyValueWrapper(object, result);
                }
                ++i;
            }
            return "";
        }
        return this.createPropertyValueWrapper(object, this.getValue(eObject, this.feature));
    }

    @Override
    public boolean isPropertySet(Object object) {
        EObject eObject = (EObject)object;
        if (this.parentReferences != null) {
            int i = 0;
            while (i < this.parentReferences.length) {
                if (eObject.eGet((EStructuralFeature)this.parentReferences[i]) != null) {
                    return true;
                }
                ++i;
            }
            return false;
        }
        try {
            return this.feature instanceof EAttribute ? (this.feature.isMany() ? !((List)eObject.eGet(this.feature)).isEmpty() : eObject.eIsSet(this.feature)) : eObject.eGet(this.feature) != null;
        }
        catch (Throwable exception) {
            return false;
        }
    }

    @Override
    public boolean canSetProperty(Object object) {
        if (this.isSettable) {
            EditingDomain editingDomain = this.getEditingDomain(object);
            if (editingDomain != null) {
                Resource resource;
                Object object2 = object instanceof EObject ? ((EObject)object).eResource() : (resource = object instanceof Resource ? (Resource)object : null);
                return resource == null || !editingDomain.isReadOnly(resource);
            }
            return true;
        }
        return false;
    }

    @Override
    public void setCommandOwner(Object commandOwner) {
        this.commandOwner = commandOwner;
    }

    @Override
    public Object getCommandOwner() {
        return this.commandOwner;
    }

    protected Object getCommandOwner(Object fallback) {
        return this.commandOwner != null ? this.commandOwner : fallback;
    }

    @Override
    public void resetPropertyValue(Object object) {
        EObject eObject = (EObject)object;
        EditingDomain editingDomain = this.getEditingDomain(object);
        if (this.parentReferences != null) {
            int i = 0;
            while (i < this.parentReferences.length) {
                EReference parentReference = this.parentReferences[i];
                if (eObject.eIsSet((EStructuralFeature)parentReference)) {
                    if (editingDomain == null) {
                        eObject.eUnset((EStructuralFeature)this.parentReferences[i]);
                    } else {
                        editingDomain.getCommandStack().execute(SetCommand.create(editingDomain, this.getCommandOwner(eObject), parentReference, SetCommand.UNSET_VALUE));
                    }
                    break;
                }
                ++i;
            }
        } else if (editingDomain == null) {
            eObject.eUnset(this.feature);
        } else {
            editingDomain.getCommandStack().execute(SetCommand.create(editingDomain, this.getCommandOwner(eObject), this.feature, SetCommand.UNSET_VALUE));
        }
    }

    public EditingDomain getEditingDomain(Object object) {
        EObject eObject = (EObject)object;
        EditingDomain result = AdapterFactoryEditingDomain.getEditingDomainFor(eObject);
        if (result == null) {
            ComposeableAdapterFactory rootAdapterFactory;
            if (this.adapterFactory instanceof IEditingDomainProvider) {
                result = ((IEditingDomainProvider)this.adapterFactory).getEditingDomain();
            }
            if (result == null && this.adapterFactory instanceof ComposeableAdapterFactory && (rootAdapterFactory = ((ComposeableAdapterFactory)this.adapterFactory).getRootAdapterFactory()) instanceof IEditingDomainProvider) {
                result = ((IEditingDomainProvider)((Object)rootAdapterFactory)).getEditingDomain();
            }
        }
        return result;
    }

    @Override
    public void setPropertyValue(Object object, Object value) {
        EObject eObject = (EObject)object;
        EditingDomain editingDomain = this.getEditingDomain(object);
        if (this.parentReferences != null) {
            Command removeCommand = null;
            int i = 0;
            while (i < this.parentReferences.length) {
                Object oldValue = eObject.eGet((EStructuralFeature)this.parentReferences[i]);
                if (oldValue != null) {
                    EReference parentReference = this.parentReferences[i];
                    if (oldValue == value) {
                        return;
                    }
                    if (parentReference.getEType().isInstance(value)) {
                        if (editingDomain == null) {
                            eObject.eSet((EStructuralFeature)parentReference, value);
                        } else {
                            editingDomain.getCommandStack().execute(SetCommand.create(editingDomain, this.getCommandOwner(eObject), parentReference, value));
                        }
                        return;
                    }
                    if (editingDomain == null) {
                        eObject.eSet((EStructuralFeature)parentReference, null);
                        break;
                    }
                    removeCommand = SetCommand.create(editingDomain, this.getCommandOwner(eObject), parentReference, null);
                    break;
                }
                ++i;
            }
            i = 0;
            while (i < this.parentReferences.length) {
                EReference parentReference = this.parentReferences[i];
                if (parentReference.getEType().isInstance(value)) {
                    if (editingDomain == null) {
                        eObject.eSet((EStructuralFeature)this.parentReferences[i], value);
                    } else if (removeCommand != null) {
                        CompoundCommand compoundCommand = new CompoundCommand(Integer.MIN_VALUE);
                        compoundCommand.append(removeCommand);
                        compoundCommand.append(SetCommand.create(editingDomain, this.getCommandOwner(eObject), parentReference, value));
                        editingDomain.getCommandStack().execute((Command)compoundCommand);
                    } else {
                        editingDomain.getCommandStack().execute(SetCommand.create(editingDomain, this.getCommandOwner(eObject), parentReference, value));
                    }
                    break;
                }
                ++i;
            }
        } else if (editingDomain == null) {
            eObject.eSet(this.feature, value);
        } else {
            editingDomain.getCommandStack().execute(SetCommand.create(editingDomain, this.getCommandOwner(eObject), this.feature, value));
        }
    }

    @Override
    public Object getFeature(Object object) {
        if (this.feature != null) {
            return this.feature;
        }
        if (this.parentReferences != null) {
            return this.parentReferences;
        }
        return null;
    }

    @Override
    public boolean isMany(Object object) {
        return this.parentReferences == null && this.feature != null && this.feature.isMany();
    }

    @Override
    public Collection<?> getChoiceOfValues(Object object) {
        return this.getComboBoxObjects(object);
    }

    @Override
    public boolean isMultiLine(Object object) {
        return this.multiLine;
    }

    @Override
    public boolean isSortChoices(Object object) {
        return this.sortChoices;
    }

    protected class ItemDelegator
    extends AdapterFactoryItemDelegator {
        protected ResourceLocator resourceLocator;

        public ItemDelegator(AdapterFactory adapterFactory) {
            super(adapterFactory);
        }

        public ItemDelegator(AdapterFactory adapterFactory, ResourceLocator resourceLocator) {
            super(adapterFactory);
            this.resourceLocator = resourceLocator;
        }

        public String getText(Object object) {
            EDataType eDataType;
            if (ItemPropertyDescriptor.this.feature instanceof EAttribute && (eDataType = ((EAttribute)ItemPropertyDescriptor.this.feature).getEAttributeType()).isSerializable() && (eDataType != EcorePackage.Literals.EJAVA_OBJECT || !ItemPropertyDescriptor.this.feature.isTransient())) {
                if (ItemPropertyDescriptor.this.isMany(object) && object instanceof List) {
                    StringBuffer result = new StringBuffer();
                    Iterator i = ((List)object).iterator();
                    while (i.hasNext()) {
                        Object value = i.next();
                        result.append(this.convert(eDataType, value));
                        if (!i.hasNext()) continue;
                        result.append(", ");
                    }
                    return result.toString();
                }
                if (eDataType.isInstance(object)) {
                    return this.convert(eDataType, object);
                }
            }
            return super.getText(object);
        }

        protected String convert(EDataType eDataType, Object value) {
            if (this.resourceLocator != null) {
                if (eDataType instanceof EEnum) {
                    try {
                        return this.resourceLocator.getString("_UI_" + eDataType.getName() + "_" + ((Enumerator)value).getName() + "_literal");
                    }
                    catch (MissingResourceException missingResourceException) {
                    }
                } else if (value instanceof Boolean) {
                    try {
                        return this.resourceLocator.getString(Boolean.TRUE.equals(value) ? "_UI_Boolean_true_literal" : "_UI_Boolean_false_literal");
                    }
                    catch (MissingResourceException missingResourceException) {
                        // empty catch block
                    }
                }
            }
            return this.crop(EcoreUtil.convertToString((EDataType)eDataType, (Object)value));
        }

        protected String crop(String text) {
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

        public Object getImage(Object object) {
            return ItemPropertyDescriptor.this.staticImage == null ? super.getImage(object) : ItemPropertyDescriptor.this.staticImage;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class PropertyValueWrapper
    implements IItemLabelProvider,
    IItemPropertySource {
        protected Object object;
        protected Object propertyValue;
        protected Object nestedPropertySource;
        protected AdapterFactoryItemDelegator itemDelegator;

        public PropertyValueWrapper(AdapterFactory adapterFactory, Object object, Object propertyValue, Object nestedPropertySource) {
            this.object = object;
            this.propertyValue = propertyValue;
            this.nestedPropertySource = nestedPropertySource;
            this.itemDelegator = new AdapterFactoryItemDelegator(adapterFactory);
        }

        @Override
        public String getText(Object thisObject) {
            return this.itemDelegator.getText(this.propertyValue);
        }

        @Override
        public Object getImage(Object thisObject) {
            return this.itemDelegator.getImage(this.propertyValue);
        }

        @Override
        public List<IItemPropertyDescriptor> getPropertyDescriptors(Object thisObject) {
            List<IItemPropertyDescriptor> list = this.itemDelegator.getPropertyDescriptors(this.nestedPropertySource);
            if (list != null) {
                ArrayList<IItemPropertyDescriptor> result = new ArrayList<IItemPropertyDescriptor>(list.size());
                for (IItemPropertyDescriptor itemPropertyDescriptor : list) {
                    result.add(this.createPropertyDescriptorDecorator(this.nestedPropertySource, itemPropertyDescriptor));
                }
                return result;
            }
            return Collections.emptyList();
        }

        @Override
        public IItemPropertyDescriptor getPropertyDescriptor(Object thisObject, Object propertyId) {
            return this.createPropertyDescriptorDecorator(this.nestedPropertySource, this.itemDelegator.getPropertyDescriptor(this.nestedPropertySource, propertyId));
        }

        @Override
        public Object getEditableValue(Object thisObject) {
            return this.propertyValue;
        }

        protected IItemPropertyDescriptor createPropertyDescriptorDecorator(Object object, IItemPropertyDescriptor itemPropertyDescriptor) {
            return new ItemPropertyDescriptorDecorator(object, itemPropertyDescriptor);
        }
    }
}

