/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

public interface ISources {
    public static final int WORKBENCH = 0;
    public static final int LEGACY_LEGACY = 1;
    public static final int LEGACY_LOW = 2;
    public static final int LEGACY_MEDIUM = 4;
    public static final int ACTIVE_CONTEXT = 64;
    public static final String ACTIVE_CONTEXT_NAME = "activeContexts";
    public static final int ACTIVE_ACTION_SETS = 256;
    public static final String ACTIVE_ACTION_SETS_NAME = "activeActionSets";
    public static final int ACTIVE_SHELL = 1024;
    public static final String ACTIVE_SHELL_NAME = "activeShell";
    public static final int ACTIVE_WORKBENCH_WINDOW_SHELL = 4096;
    public static final String ACTIVE_WORKBENCH_WINDOW_SHELL_NAME = "activeWorkbenchWindowShell";
    public static final int ACTIVE_WORKBENCH_WINDOW = 16384;
    public static final String ACTIVE_WORKBENCH_WINDOW_NAME = "activeWorkbenchWindow";
    public static final int ACTIVE_WORKBENCH_WINDOW_SUBORDINATE = 32768;
    public static final String ACTIVE_WORKBENCH_WINDOW_IS_COOLBAR_VISIBLE_NAME = "activeWorkbenchWindow.isCoolbarVisible";
    public static final String ACTIVE_WORKBENCH_WINDOW_IS_PERSPECTIVEBAR_VISIBLE_NAME = "activeWorkbenchWindow.isPerspectiveBarVisible";
    public static final String ACTIVE_WORKBENCH_WINDOW_ACTIVE_PERSPECTIVE_NAME = "activeWorkbenchWindow.activePerspective";
    public static final int ACTIVE_EDITOR = 65536;
    public static final String ACTIVE_EDITOR_NAME = "activeEditor";
    public static final String ACTIVE_EDITOR_INPUT_NAME = "activeEditorInput";
    public static final int ACTIVE_EDITOR_ID = 262144;
    public static final String ACTIVE_EDITOR_ID_NAME = "activeEditorId";
    public static final int ACTIVE_PART = 0x100000;
    public static final String ACTIVE_PART_NAME = "activePart";
    public static final int ACTIVE_PART_ID = 0x400000;
    public static final String ACTIVE_PART_ID_NAME = "activePartId";
    public static final int ACTIVE_SITE = 0x4000000;
    public static final String ACTIVE_SITE_NAME = "activeSite";
    public static final String SHOW_IN_SELECTION = "showInSelection";
    public static final String SHOW_IN_INPUT = "showInInput";
    public static final int ACTIVE_CURRENT_SELECTION = 0x40000000;
    public static final String ACTIVE_CURRENT_SELECTION_NAME = "selection";
    public static final int ACTIVE_MENU = Integer.MIN_VALUE;
    public static final String ACTIVE_MENU_NAME = "activeMenu";
    public static final String ACTIVE_MENU_SELECTION_NAME = "activeMenuSelection";
    public static final String ACTIVE_MENU_EDITOR_INPUT_NAME = "activeMenuEditorInput";
    public static final String ACTIVE_FOCUS_CONTROL_NAME = "activeFocusControl";
    public static final String ACTIVE_FOCUS_CONTROL_ID_NAME = "activeFocusControlId";
}

