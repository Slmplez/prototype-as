/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.jdi.internal.jdwp;

import org.eclipse.osgi.util.NLS;

public class JDWPMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.jdi.internal.jdwp.JDWPMessages";
    public static String JdwpString_Second_byte_input_does_not_match_UTF_Specification_1;
    public static String JdwpString_Second_or_third_byte_input_does_not_mach_UTF_Specification_2;
    public static String JdwpString_Input_does_not_match_UTF_Specification_3;
    public static String JdwpString_str_is_null_4;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName(BUNDLE_NAME);
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

