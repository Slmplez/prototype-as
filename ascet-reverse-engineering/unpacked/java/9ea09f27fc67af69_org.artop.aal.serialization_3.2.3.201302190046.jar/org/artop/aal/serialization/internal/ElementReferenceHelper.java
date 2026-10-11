/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EModelElement
 *  org.eclipse.emf.ecore.EReference
 */
package org.artop.aal.serialization.internal;

import org.artop.aal.serialization.internal.AutosarReferenceHelper;
import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EReference;

public class ElementReferenceHelper
extends AutosarReferenceHelper {
    public ElementReferenceHelper(EReference reference) {
        super(reference);
    }

    public String getReferenceName(EReference reference) {
        String referenceName = "";
        if (reference != null) {
            referenceName = AutosarTaggedValues.get((EModelElement)reference).xmlName;
        }
        return referenceName;
    }
}

