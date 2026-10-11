/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.console;

import org.eclipse.ui.console.IConsoleConstants;

public interface IConsoleHelpContextIds {
    public static final String PREFIX = String.valueOf(IConsoleConstants.PLUGIN_ID) + ".";
    public static final String CLEAR_CONSOLE_ACTION = String.valueOf(PREFIX) + "clear_console_action_context";
    public static final String CONSOLE_SCROLL_LOCK_ACTION = String.valueOf(PREFIX) + "console_scroll_lock_action_context";
    public static final String CONSOLE_SELECT_ALL_ACTION = String.valueOf(PREFIX) + "console_select_all_action_context";
    public static final String CONSOLE_COPY_ACTION = String.valueOf(PREFIX) + "copy_to_clipboard_action_context";
    public static final String CONSOLE_CUT_ACTION = String.valueOf(PREFIX) + "console_cut_action_context";
    public static final String CONSOLE_PASTE_ACTION = String.valueOf(PREFIX) + "console_paste_action_context";
    public static final String CONSOLE_FIND_REPLACE_ACTION = String.valueOf(PREFIX) + "console_find_replace_action_context";
    public static final String CONSOLE_OPEN_LINK_ACTION = String.valueOf(PREFIX) + "console_open_link_action_context";
    public static final String CONSOLE_OPEN_CONSOLE_ACTION = String.valueOf(PREFIX) + "console_open_console_action_context";
    public static final String CONSOLE_DISPLAY_CONSOLE_ACTION = String.valueOf(PREFIX) + "console_display_console_action";
    public static final String CONSOLE_PIN_CONSOLE_ACITON = String.valueOf(PREFIX) + "console_pin_console_action";
    public static final String CONSOLE_VIEW = String.valueOf(PREFIX) + "console_view_context";
    public static final String CONSOLE_PREFERENCE_PAGE = String.valueOf(PREFIX) + "console_preference_page_context";
}

