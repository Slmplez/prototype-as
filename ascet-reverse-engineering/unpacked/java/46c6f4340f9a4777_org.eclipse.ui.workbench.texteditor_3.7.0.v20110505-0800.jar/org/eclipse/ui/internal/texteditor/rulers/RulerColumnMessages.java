/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.texteditor.rulers;

import org.eclipse.osgi.util.NLS;

public final class RulerColumnMessages
extends NLS {
    private static final String BUNDLE_NAME;
    public static String ExtensionPointHelper_invalid_contribution_msg;
    public static String ExtensionPointHelper_missing_attribute_msg;
    public static String ExtensionPointHelper_invalid_number_attribute_msg;
    public static String RulerColumnDescriptor_invalid_placement_msg;
    public static String RulerColumnDescriptor_missing_target_msg;
    public static String RulerColumnPlacement_illegal_child_msg;
    public static String RulerColumnPlacement_illegal_gravity_msg;
    public static String RulerColumnRegistry_cyclic_placement_msg;
    public static String RulerColumnRegistry_duplicate_id_msg;
    public static String RulerColumnRegistry_invalid_msg;
    public static String RulerColumnRegistry_unresolved_placement_msg;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.texteditor.rulers.RulerColumnMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BUNDLE_NAME = clazz.getName();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.ui.internal.texteditor.rulers.RulerColumnMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz2);
    }

    private RulerColumnMessages() {
    }
}

