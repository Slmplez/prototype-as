/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.edit.provider.IItemLabelProvider
 *  org.eclipse.sphinx.emf.edit.ExtendedItemPropertyDescriptor
 *  org.eclipse.sphinx.emf.internal.messages.Messages
 */
package org.artop.aal.common.edit;

import java.util.List;
import org.artop.aal.common.resource.AutosarURIFactory;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.sphinx.emf.edit.ExtendedItemPropertyDescriptor;
import org.eclipse.sphinx.emf.internal.messages.Messages;

public class AutosarItemProperyDescriptor
extends ExtendedItemPropertyDescriptor {
    public AutosarItemProperyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, null, null, null);
    }

    public AutosarItemProperyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, staticImage, null, null);
    }

    public AutosarItemProperyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, String category, String[] filterFlags) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, null, category, filterFlags);
    }

    public AutosarItemProperyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, Object staticImage, String category, String[] filterFlags) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, false, false, staticImage, category, filterFlags);
    }

    public AutosarItemProperyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, boolean multiLine, boolean sortChoices, Object staticImage, String category, String[] filterFlags) {
        super(adapterFactory, resourceLocator, displayName, description, feature, isSettable, multiLine, sortChoices, staticImage, category, filterFlags);
    }

    public AutosarItemProperyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EReference[] parentReferences, boolean isSettable) {
        this(adapterFactory, resourceLocator, displayName, description, parentReferences, isSettable, null, null);
    }

    public AutosarItemProperyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EReference[] parentReferences, boolean isSettable, String category, String[] filterFlags) {
        super(adapterFactory, resourceLocator, displayName, description, parentReferences, isSettable, category, filterFlags);
    }

    public IItemLabelProvider getLabelProvider(Object object) {
        final IItemLabelProvider itemLabelProvider = super.getLabelProvider(object);
        return new IItemLabelProvider(){

            public String getText(Object object) {
                if (object instanceof EObject) {
                    String absoluteQualifiedName;
                    EObject eObject = (EObject)object;
                    if (eObject.eIsProxy()) {
                        URI proxyUri = EcoreUtil.getURI((EObject)eObject);
                        if (proxyUri != null) {
                            return proxyUri.toString();
                        }
                        return Messages.label_unknownProxyURI;
                    }
                    if (AutosarItemProperyDescriptor.this.feature instanceof EReference && (absoluteQualifiedName = AutosarURIFactory.getAbsoluteQualifiedName(eObject)).length() > 0) {
                        return String.valueOf(itemLabelProvider.getText(object)) + " [" + absoluteQualifiedName + "]";
                    }
                } else if (object instanceof EList) {
                    StringBuffer result = new StringBuffer();
                    for (Object child : (List)object) {
                        if (result.length() != 0) {
                            result.append(", ");
                        }
                        result.append(this.getText(child));
                    }
                    return result.toString();
                }
                return itemLabelProvider.getText(object);
            }

            public Object getImage(Object object) {
                return itemLabelProvider.getImage(object);
            }
        };
    }
}

