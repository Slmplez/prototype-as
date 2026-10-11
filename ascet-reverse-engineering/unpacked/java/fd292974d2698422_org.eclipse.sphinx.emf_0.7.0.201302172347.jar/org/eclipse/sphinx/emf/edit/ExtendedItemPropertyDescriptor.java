/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.edit.provider.IEditingDomainItemProvider
 *  org.eclipse.emf.edit.provider.IItemLabelProvider
 *  org.eclipse.emf.edit.provider.ItemPropertyDescriptor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.sphinx.emf.edit;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.edit.ExtendedItemProviderAdapter;
import org.eclipse.sphinx.emf.internal.EcorePerformanceStats;
import org.eclipse.sphinx.emf.internal.messages.Messages;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedItemPropertyDescriptor
extends ItemPropertyDescriptor {
    public ExtendedItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, null, null, null);
    }

    public ExtendedItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, staticImage, null, null);
    }

    public ExtendedItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, String category, String[] filterFlags) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, null, category, filterFlags);
    }

    public ExtendedItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage, String category, String[] filterFlags) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, staticImage, category, filterFlags);
    }

    public ExtendedItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, boolean multiLine, boolean sortChoices, Object staticImage, String category, String[] filterFlags) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, multiLine, sortChoices, staticImage, category, filterFlags);
    }

    public ExtendedItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EReference[] parentReferences, boolean isSettable) {
        this(adapterFactory, resourceLocator, displayName, description, parentReferences, isSettable, null, null);
    }

    public ExtendedItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EReference[] parentReferences, boolean isSettable, String category, String[] filterFlags) {
        super(adapterFactory, resourceLocator, displayName, description, parentReferences, isSettable, category, filterFlags);
    }

    public IItemLabelProvider getLabelProvider(Object object) {
        final IItemLabelProvider delegate = super.getLabelProvider(object);
        return new IItemLabelProvider(){

            public String getText(Object object) {
                if (object instanceof EList) {
                    StringBuffer text = new StringBuffer();
                    for (Object child : (List)object) {
                        if (text.length() != 0) {
                            text.append(", ");
                        }
                        text.append(this.getText(child));
                    }
                    return text.toString();
                }
                if (object instanceof EObject && ((EObject)object).eIsProxy()) {
                    URI proxyURI = EcoreUtil.getURI((EObject)((EObject)object));
                    return proxyURI != null ? proxyURI.toString() : Messages.label_unknownProxyURI;
                }
                return delegate.getText(object);
            }

            public Object getImage(Object object) {
                if (object instanceof EList) {
                    for (Object item : (EList)object) {
                        if (!(item instanceof EObject) || !((EObject)item).eIsProxy()) continue;
                        return this.getImage(item);
                    }
                    Iterator iterator = ((List)object).iterator();
                    if (iterator.hasNext()) {
                        Object item;
                        item = iterator.next();
                        return this.getImage(item);
                    }
                    return null;
                }
                return delegate.getImage(object);
            }
        };
    }

    protected Object getValue(EObject object, EStructuralFeature feature) {
        if (feature instanceof EAttribute && !feature.isMany() && feature.isUnsettable() && !object.eIsSet(feature)) {
            return null;
        }
        return super.getValue(object, feature);
    }

    public String getDescription(Object object) {
        EAttribute attribute;
        Class instanceClass;
        StringBuilder description = new StringBuilder(super.getDescription(object));
        Object feature = this.getFeature(object);
        if (feature instanceof EAttribute && String.class != (instanceClass = (attribute = (EAttribute)feature).getEType().getInstanceClass())) {
            description.append(" ");
            if (attribute.getDefaultValueLiteral() != null && attribute.getDefaultValueLiteral().length() > 0) {
                description.append(NLS.bind((String)Messages.propertyDescriptionPostfix_mustBeADataTypeEgDefaultValue, (Object)instanceClass.getSimpleName(), (Object)attribute.getDefaultValueLiteral()));
            } else {
                description.append(NLS.bind((String)Messages.propertyDescriptionPostfix_mustBeADataType, (Object)instanceClass.getSimpleName()));
            }
        }
        return description.toString();
    }

    public Collection<?> getChoiceOfValues(Object object) {
        EcorePerformanceStats.INSTANCE.startEvent(EcorePerformanceStats.EcoreEvent.EVENT_CHOICES_OF_VALUES, object);
        ExtendedItemProviderAdapter adapt = (ExtendedItemProviderAdapter)((Object)this.adapterFactory.adapt(object, IEditingDomainItemProvider.class));
        Collection<?> result = adapt.getChoiceOfValues(object, this.parentReferences, this.feature);
        EcorePerformanceStats.INSTANCE.endEvent(EcorePerformanceStats.EcoreEvent.EVENT_CHOICES_OF_VALUES, object);
        return result;
    }
}

