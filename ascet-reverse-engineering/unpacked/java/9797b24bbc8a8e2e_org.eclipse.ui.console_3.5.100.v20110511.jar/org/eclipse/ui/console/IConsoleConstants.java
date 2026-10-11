/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.console;

import org.eclipse.ui.console.ConsolePlugin;

public interface IConsoleConstants {
    public static final String PLUGIN_ID = ConsolePlugin.getUniqueIdentifier();
    public static final String ID_CONSOLE_VIEW = "org.eclipse.ui.console.ConsoleView";
    public static final String MESSAGE_CONSOLE_TYPE = "org.eclipse.ui.MessageConsole";
    public static final String CONSOLE_FONT = "org.eclipse.ui.console.ConsoleFont";
    public static final String LAUNCH_GROUP = "launchGroup";
    public static final String OUTPUT_GROUP = "outputGroup";
    public static final String IMG_VIEW_CONSOLE = "IMG_VIEW_CONSOLE";
    public static final String IMG_LCL_CLEAR = "IMG_LCL_CLEAR";
    public static final int INTERNAL_ERROR = 120;
    public static final String EXTENSION_POINT_CONSOLE_PATTERN_MATCH_LISTENERS = "consolePatternMatchListeners";
    public static final String EXTENSION_POINT_CONSOLE_PAGE_PARTICIPANTS = "consolePageParticipants";
    public static final String EXTENSION_POINT_CONSOLE_FACTORIES = "consoleFactories";
    public static final String P_FONT = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".P_FONT";
    public static final String P_FONT_STYLE = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".P_FONT_STYLE";
    public static final String P_STREAM_COLOR = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".P_STREAM_COLOR";
    public static final String P_TAB_SIZE = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".P_TAB_SIZE";
    public static final String P_CONSOLE_WIDTH = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".P_CONSOLE_WIDTH";
    public static final String P_CONSOLE_OUTPUT_COMPLETE = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".P_CONSOLE_STREAMS_CLOSED";
    public static final String P_BACKGROUND_COLOR = String.valueOf(ConsolePlugin.getUniqueIdentifier()) + ".P_BACKGROUND_COLOR";
    public static final int DEFAULT_TAB_SIZE = 8;
}

