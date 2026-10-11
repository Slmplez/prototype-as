/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ui.internal.texteditor.quickdiff;

import java.util.ResourceBundle;
import org.eclipse.osgi.util.NLS;

public final class QuickDiffMessages
extends NLS {
    private static final String BUNDLE_FOR_CONSTRUCTED_KEYS = "org.eclipse.ui.internal.texteditor.quickdiff.ConstructedQuickDiffMessages";
    private static ResourceBundle fgBundleForConstructedKeys = ResourceBundle.getBundle("org.eclipse.ui.internal.texteditor.quickdiff.ConstructedQuickDiffMessages");
    private static final String BUNDLE_NAME;
    public static String quickdiff_toggle_enable;
    public static String quickdiff_toggle_disable;
    public static String quickdiff_initialize;
    public static String quickdiff_nonsynchronized;
    public static String quickdiff_annotation_changed;
    public static String quickdiff_annotation_added;
    public static String quickdiff_annotation_deleted;
    public static String quickdiff_annotation_line_singular;
    public static String quickdiff_annotation_line_plural;
    public static String quickdiff_menu_label;
    public static String quickdiff_error_getting_document_content;
    public static String RestoreAction_label;
    public static String RestoreAction_multiple_label;
    public static String RevertLineAction_label;
    public static String RevertLineAction_delete_label;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        BUNDLE_NAME = clazz.getName();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.ui.internal.texteditor.quickdiff.QuickDiffMessages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz2);
    }

    public static ResourceBundle getBundleForConstructedKeys() {
        return fgBundleForConstructedKeys;
    }

    private QuickDiffMessages() {
    }
}

