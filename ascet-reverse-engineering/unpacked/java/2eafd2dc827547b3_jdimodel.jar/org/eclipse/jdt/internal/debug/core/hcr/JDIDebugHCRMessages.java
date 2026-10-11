/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.jdt.internal.debug.core.hcr;

import org.eclipse.osgi.util.NLS;

public class JDIDebugHCRMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.jdt.internal.debug.core.hcr.JDIDebugHCRMessages";
    public static String JavaHotCodeReplaceManager_Drop_to_frame_not_supported;
    public static String JavaHotCodeReplaceManager_does_not_support_hcr;
    public static String JavaHotCodeReplaceManager_exception_replacing_types;
    public static String JavaHotCodeReplaceManager_hcr_failed;
    public static String JavaHotCodeReplaceManager_hcr_ignored;
    public static String JavaHotCodeReplaceManager_hcr_unsupported_redefinition;
    public static String JavaHotCodeReplaceManager_hcr_unsupported_operation;
    public static String JavaHotCodeReplaceManager_hcr_bad_bytes;
    public static String JavaHotCodeReplaceManager_hcr_verify_error;
    public static String JavaHotCodeReplaceManager_hcr_unsupported_class_version;
    public static String JavaHotCodeReplaceManager_hcr_class_format_error;
    public static String JavaHotCodeReplaceManager_hcr_class_circularity_error;
    public static String JavaHotCodeReplaceManager_Hot_code_replace_failed___VM_disconnected__1;
    public static String JavaHotCodeReplaceManager_Hot_code_replace_failed___VM_disconnected__2;
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

