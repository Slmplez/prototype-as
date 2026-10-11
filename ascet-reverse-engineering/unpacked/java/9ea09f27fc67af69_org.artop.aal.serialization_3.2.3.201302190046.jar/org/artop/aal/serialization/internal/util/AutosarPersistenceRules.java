/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.artop.aal.serialization.internal.util;

import java.util.Map;
import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class AutosarPersistenceRules {
    private AutosarPersistenceRules() {
    }

    public static boolean isCompositePropertyRepresentation0012(EStructuralFeature feature) {
        return AutosarPersistenceRules.isCompositePropertyRepresentation0012(null, feature);
    }

    public static boolean isCompositePropertyRepresentation0012(Map<EModelElement, AutosarTaggedValues> cache, EStructuralFeature feature) {
        EReference reference;
        if (feature instanceof EReference && (reference = (EReference)feature).getUpperBound() <= 1) {
            AutosarTaggedValues taggedValues = AutosarTaggedValues.get(cache, (EModelElement)reference);
            if (taggedValues.isDefault) {
                return false;
            }
            if (!taggedValues.isRoleWrapperElement && taggedValues.isRoleElement && !taggedValues.isTypeWrapperElement && taggedValues.isTypeElement) {
                return true;
            }
        }
        return false;
    }

    public static boolean isCompositePropertyRepresentation0013(EStructuralFeature feature) {
        return AutosarPersistenceRules.isCompositePropertyRepresentation0013(null, feature);
    }

    public static boolean isCompositePropertyRepresentation0013(Map<EModelElement, AutosarTaggedValues> cache, EStructuralFeature feature) {
        EReference reference;
        if (feature instanceof EReference && (reference = (EReference)feature).getUpperBound() <= 1) {
            AutosarTaggedValues taggedValues = AutosarTaggedValues.get(cache, (EModelElement)reference);
            if (taggedValues.isDefault) {
                return false;
            }
            if (!taggedValues.isRoleWrapperElement && taggedValues.isRoleElement && !taggedValues.isTypeWrapperElement && !taggedValues.isTypeElement) {
                return true;
            }
        }
        return false;
    }

    public static boolean isCompositePropertyRepresentation0015(EStructuralFeature feature) {
        return AutosarPersistenceRules.isCompositePropertyRepresentation0015(null, feature);
    }

    public static boolean isCompositePropertyRepresentation0015(Map<EModelElement, AutosarTaggedValues> cache, EStructuralFeature feature) {
        AutosarTaggedValues taggedValues = AutosarTaggedValues.get(cache, (EModelElement)feature);
        if (taggedValues.isDefault) {
            return false;
        }
        return !taggedValues.isRoleWrapperElement && !taggedValues.isRoleElement && !taggedValues.isTypeWrapperElement && taggedValues.isTypeElement;
    }

    public static boolean isCompositePropertyRepresentation0016(EStructuralFeature feature) {
        return AutosarPersistenceRules.isCompositePropertyRepresentation0016(null, feature);
    }

    public static boolean isCompositePropertyRepresentation0016(Map<EModelElement, AutosarTaggedValues> cache, EStructuralFeature feature) {
        AutosarTaggedValues taggedValues = AutosarTaggedValues.get(cache, (EModelElement)feature);
        if (taggedValues.isDefault) {
            return false;
        }
        return !taggedValues.isRoleWrapperElement && !taggedValues.isRoleElement && !taggedValues.isTypeWrapperElement && !taggedValues.isTypeElement;
    }
}

