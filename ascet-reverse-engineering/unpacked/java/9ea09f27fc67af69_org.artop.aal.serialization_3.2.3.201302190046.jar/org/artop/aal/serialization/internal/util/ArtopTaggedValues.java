/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EModelElement
 */
package org.artop.aal.serialization.internal.util;

import org.artop.aal.serialization.internal.util.AutosarTaggedValues;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EModelElement;

public class ArtopTaggedValues {
    public final boolean isAbstract;
    public final String numericalGetter;
    public final String numericalSetter;

    public static ArtopTaggedValues get(EModelElement element) {
        EAnnotation taggedValuesAnnotation = element.getEAnnotation("TaggedValues");
        boolean isAbstract = false;
        String numericalGetter = null;
        String numericalSetter = null;
        if (taggedValuesAnnotation != null) {
            isAbstract = AutosarTaggedValues.isTrue(taggedValuesAnnotation, "artop.abstract");
            numericalGetter = (String)taggedValuesAnnotation.getDetails().get((Object)"artop.numericalGetter");
            numericalSetter = (String)taggedValuesAnnotation.getDetails().get((Object)"artop.numericalSetter");
        }
        return new ArtopTaggedValues(isAbstract, numericalGetter, numericalSetter);
    }

    private ArtopTaggedValues(boolean isAbstract, String numericalGetter, String numericalSetter) {
        this.isAbstract = isAbstract;
        this.numericalGetter = numericalGetter;
        this.numericalSetter = numericalSetter;
    }
}

