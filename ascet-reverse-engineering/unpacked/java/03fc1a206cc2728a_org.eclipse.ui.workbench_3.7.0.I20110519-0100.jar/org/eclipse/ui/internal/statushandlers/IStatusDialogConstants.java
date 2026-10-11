/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.statushandlers;

public interface IStatusDialogConstants {
    public static final Object SHELL;
    public static final Object SHOW_SUPPORT;
    public static final Object ERRORLOG_LINK;
    public static final Object HANDLE_OK_STATUSES;
    public static final Object TITLE;
    public static final Object MASK;
    public static final Object DETAILS_OPENED;
    public static final Object TRAY_OPENED;
    public static final Object ENABLE_DEFAULT_SUPPORT_AREA;
    public static final Object HIDE_SUPPORT_BUTTON;
    public static final Object CUSTOM_SUPPORT_PROVIDER;
    public static final Object CUSTOM_DETAILS_PROVIDER;
    public static final Object CURRENT_STATUS_ADAPTER;
    public static final Object STATUS_ADAPTERS;
    public static final Object STATUS_MODALS;
    public static final Object SHELL_BOUNDS;
    public static final Object LABEL_PROVIDER;
    public static final Object CUSTOM_LABEL_PROVIDER;
    public static final Object DECORATOR;
    public static final Object MODALITY_SWITCH;
    public static final Object ANIMATION;
    public static final Object MANAGER_IMPL;

    static {
        Class<?> clazz;
        Class<?> clazz2;
        try {
            clazz2 = Class.forName("org.eclipse.swt.widgets.Shell");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        SHELL = clazz2;
        SHOW_SUPPORT = new Object();
        ERRORLOG_LINK = new Object();
        HANDLE_OK_STATUSES = new Object();
        TITLE = new Object();
        MASK = new Object();
        DETAILS_OPENED = new Object();
        TRAY_OPENED = new Object();
        ENABLE_DEFAULT_SUPPORT_AREA = new Object();
        HIDE_SUPPORT_BUTTON = new Object();
        CUSTOM_SUPPORT_PROVIDER = new Object();
        CUSTOM_DETAILS_PROVIDER = new Object();
        CURRENT_STATUS_ADAPTER = new Object();
        STATUS_ADAPTERS = new Object();
        STATUS_MODALS = new Object();
        SHELL_BOUNDS = new Object();
        LABEL_PROVIDER = new Object();
        CUSTOM_LABEL_PROVIDER = new Object();
        DECORATOR = new Object();
        MODALITY_SWITCH = new Object();
        ANIMATION = new Object();
        try {
            clazz = Class.forName("org.eclipse.ui.internal.statushandlers.WorkbenchStatusDialogManagerImpl");
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
        MANAGER_IMPL = clazz;
    }
}

