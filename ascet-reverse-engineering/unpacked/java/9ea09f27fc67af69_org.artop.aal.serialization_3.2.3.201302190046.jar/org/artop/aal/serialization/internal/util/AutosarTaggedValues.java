/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EModelElement
 */
package org.artop.aal.serialization.internal.util;

import java.util.Map;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EModelElement;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarTaggedValues {
    private static final AutosarTaggedValues DEFAULT_VALUES = new AutosarTaggedValues(true, false, false, false, false, null, null);
    public final boolean isDefault;
    public final boolean isRoleElement;
    public final boolean isTypeElement;
    public final boolean isRoleWrapperElement;
    public final boolean isTypeWrapperElement;
    public final String xmlName;
    public final String xmlNamePlural;

    public static AutosarTaggedValues get(Map<EModelElement, AutosarTaggedValues> cache, EModelElement element) {
        if (cache == null) {
            return AutosarTaggedValues.get(element);
        }
        AutosarTaggedValues taggedValues = cache.get(element);
        if (taggedValues == null) {
            taggedValues = AutosarTaggedValues.get(element);
            cache.put(element, taggedValues);
        }
        return taggedValues;
    }

    public static AutosarTaggedValues get(EModelElement element) {
        EAnnotation taggedValuesAnnotation = element.getEAnnotation("TaggedValues");
        if (taggedValuesAnnotation != null) {
            boolean isRoleElement = AutosarTaggedValues.DEFAULT_VALUES.isRoleElement;
            boolean isTypeElement = AutosarTaggedValues.DEFAULT_VALUES.isTypeElement;
            boolean isRoleWrapperElement = AutosarTaggedValues.DEFAULT_VALUES.isRoleWrapperElement;
            boolean isTypeWrapperElement = AutosarTaggedValues.DEFAULT_VALUES.isTypeWrapperElement;
            String xmlName = AutosarTaggedValues.DEFAULT_VALUES.xmlName;
            String xmlNamePlural = AutosarTaggedValues.DEFAULT_VALUES.xmlNamePlural;
            isRoleElement = AutosarTaggedValues.isTrue(taggedValuesAnnotation, "xml.roleElement");
            isTypeElement = AutosarTaggedValues.isTrue(taggedValuesAnnotation, "xml.typeElement");
            isRoleWrapperElement = AutosarTaggedValues.isTrue(taggedValuesAnnotation, "xml.roleWrapperElement");
            isTypeWrapperElement = AutosarTaggedValues.isTrue(taggedValuesAnnotation, "xml.typeWrapperElement");
            xmlName = (String)taggedValuesAnnotation.getDetails().get((Object)"xml.name");
            xmlNamePlural = (String)taggedValuesAnnotation.getDetails().get((Object)"xml.namePlural");
            return new AutosarTaggedValues(false, isRoleElement, isTypeElement, isRoleWrapperElement, isTypeWrapperElement, xmlName, xmlNamePlural);
        }
        return DEFAULT_VALUES;
    }

    private AutosarTaggedValues(boolean isDefault, boolean isRoleElement, boolean isTypeElement, boolean isRoleWrapperElement, boolean isTypeWrapperElement, String xmlName, String xmlNamePlural) {
        this.isDefault = isDefault;
        this.isRoleElement = isRoleElement;
        this.isTypeElement = isTypeElement;
        this.isRoleWrapperElement = isRoleWrapperElement;
        this.isTypeWrapperElement = isTypeWrapperElement;
        this.xmlName = xmlName;
        this.xmlNamePlural = xmlNamePlural;
    }

    static boolean isTrue(EAnnotation taggedValuesAnnotation, String key) {
        return "true".equalsIgnoreCase((String)taggedValuesAnnotation.getDetails().get((Object)key));
    }
}

