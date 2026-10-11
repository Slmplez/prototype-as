/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.artop.aal.serialization.internal.messages;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.artop.aal.serialization.internal.messages.Messages";
    public static String error_UnableToCreateValueFeature;
    public static String error_ElementRefElementNotLoaded;
    public static String error_TypeRefElementNotLoaded;
    public static String error_MultipleErrorsWhenLoading;
    public static String error_InvalidReference;
    public static String error_ElementInInvalidReference;
    public static String error_MultipleNestedOccurrencesOfRoleWrapperElement;
    public static String error_UnableToRecordUnknownTypeReference;
    public static String error_UnableToRecordUnknownElementReference;
    public static String error_UnableToRecordUnknownInstanceReference;
    public static String error_NoSupportForAbstractDest;
    public static String warn_DestAndFeatureTypesNotCompatible;

    static {
        NLS.initializeMessages((String)BUNDLE_NAME, Messages.class);
    }

    private Messages() {
    }
}

