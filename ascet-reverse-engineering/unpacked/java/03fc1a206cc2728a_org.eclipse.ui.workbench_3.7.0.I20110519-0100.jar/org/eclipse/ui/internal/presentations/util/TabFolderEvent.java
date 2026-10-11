/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.internal.presentations.util;

import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.internal.presentations.util.AbstractTabItem;

public class TabFolderEvent {
    public static final int EVENT_PANE_MENU = 1;
    public static final int EVENT_HIDE_TOOLBAR = 2;
    public static final int EVENT_SHOW_TOOLBAR = 3;
    public static final int EVENT_RESTORE = 4;
    public static final int EVENT_MINIMIZE = 5;
    public static final int EVENT_CLOSE = 6;
    public static final int EVENT_MAXIMIZE = 7;
    public static final int EVENT_TAB_SELECTED = 8;
    public static final int EVENT_GIVE_FOCUS_TO_PART = 9;
    public static final int EVENT_DRAG_START = 10;
    public static final int EVENT_SHOW_LIST = 11;
    public static final int EVENT_SYSTEM_MENU = 12;
    public static final int EVENT_PREFERRED_SIZE = 13;
    public AbstractTabItem tab;
    public int type;
    public int x;
    public int y;

    public static int eventIdToStackState(int eventId) {
        switch (eventId) {
            case 4: {
                return 2;
            }
            case 5: {
                return 0;
            }
            case 7: {
                return 1;
            }
        }
        return 0;
    }

    public static int stackStateToEventId(int stackState) {
        switch (stackState) {
            case 2: {
                return 4;
            }
            case 0: {
                return 5;
            }
            case 1: {
                return 7;
            }
        }
        return 0;
    }

    public TabFolderEvent(int type) {
        this.type = type;
    }

    public TabFolderEvent(int type, AbstractTabItem w, int x, int y) {
        this.type = type;
        this.tab = w;
        this.x = x;
        this.y = y;
    }

    public TabFolderEvent(int type, AbstractTabItem w, Point pos) {
        this.type = type;
        this.tab = w;
        this.x = pos.x;
        this.y = pos.y;
    }
}

