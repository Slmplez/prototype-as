/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.util.ResourceLocator
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.edit.provider.ItemPropertyDescriptor
 *  org.eclipse.sphinx.emf.edit.ExtendedItemProviderAdapter
 */
package org.artop.aal.common.edit;

import java.lang.reflect.Proxy;
import org.artop.aal.common.edit.AutosarItemProperyDescriptor;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.util.ResourceLocator;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptor;
import org.eclipse.sphinx.emf.edit.ExtendedItemProviderAdapter;

public class AutosarItemProviderAdapter
extends ExtendedItemProviderAdapter {
    public AutosarItemProviderAdapter(AdapterFactory adapterFactory) {
        super(adapterFactory);
    }

    protected ItemPropertyDescriptor createItemPropertyDescriptor(AdapterFactory adapterFactory, ResourceLocator resourceLocator, String displayName, String description, EStructuralFeature feature, boolean isSettable, boolean multiLine, boolean sortChoices, Object staticImage, String category, String[] filterFlags) {
        return new AutosarItemProperyDescriptor(adapterFactory, resourceLocator, displayName, description, feature, isSettable, multiLine, sortChoices, staticImage, category, filterFlags);
    }

    protected EStructuralFeature getChildFeature(Object object, Object child) {
        EStructuralFeature cntFeature;
        if (child instanceof EObject && object instanceof EObject && (cntFeature = ((EObject)child).eContainingFeature()) != null && cntFeature.getEContainingClass() == ((EObject)object).eClass()) {
            return cntFeature;
        }
        return super.getChildFeature(object, child);
    }

    protected boolean isWrappingNeeded(Object object) {
        if (object instanceof Proxy) {
            return false;
        }
        return super.isWrappingNeeded(object);
    }
}

