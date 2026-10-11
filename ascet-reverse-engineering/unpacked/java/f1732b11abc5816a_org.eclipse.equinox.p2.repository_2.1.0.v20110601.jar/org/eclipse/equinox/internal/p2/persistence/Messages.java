/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.persistence;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.p2.persistence.messages";
    public static String XMLParser_No_SAX_Parser;
    public static String XMLParser_Error_At_Line;
    public static String XMLParser_Error_At_Line_Column;
    public static String XMLParser_Error_At_Name_Line;
    public static String XMLParser_Error_At_Name_Line_Column;
    public static String XMLParser_Missing_Required_Attribute;
    public static String XMLParser_Illegal_Value_For_Attribute;
    public static String XMLParser_Duplicate_Element;
    public static String io_failedRead;
    public static String io_IncompatibleVersion;
    public static String io_parseError;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.persistence.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

