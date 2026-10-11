/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.menus;

public class MenuUtil {
    public static final String WORKBENCH_MENU = "menu:org.eclipse.ui.workbench.menu";
    public static final String MAIN_MENU = "menu:org.eclipse.ui.main.menu";
    public static final String MAIN_TOOLBAR = "toolbar:org.eclipse.ui.main.toolbar";
    public static final String ANY_POPUP = "popup:org.eclipse.ui.popup.any";
    public static final String TRIM_COMMAND1 = "toolbar:org.eclipse.ui.trim.command1";
    public static final String TRIM_COMMAND2 = "toolbar:org.eclipse.ui.trim.command2";
    public static final String TRIM_VERTICAL1 = "toolbar:org.eclipse.ui.trim.vertical1";
    public static final String TRIM_VERTICAL2 = "toolbar:org.eclipse.ui.trim.vertical2";
    public static final String TRIM_STATUS = "toolbar:org.eclipse.ui.trim.status";
    public static final String QUERY_BEFORE = "before";
    public static final String QUERY_AFTER = "after";
    public static final String QUERY_ENDOF = "endof";
    public static final String SHOW_IN_MENU_ID = "popup:org.eclipse.ui.menus.showInMenu";

    public static String menuUri(String id) {
        return "menu:" + id;
    }

    public static String menuAddition(String id, String location, String refId) {
        return String.valueOf(MenuUtil.menuUri(id)) + '?' + location + '=' + refId;
    }

    public static String menuAddition(String id) {
        return MenuUtil.menuAddition(id, QUERY_AFTER, "additions");
    }

    public static String toolbarUri(String id) {
        return "toolbar:" + id;
    }

    public static String toolbarAddition(String id, String location, String refId) {
        return String.valueOf(MenuUtil.toolbarUri(id)) + '?' + location + '=' + refId;
    }

    public static String toolbarAddition(String id) {
        return MenuUtil.toolbarAddition(id, QUERY_AFTER, "additions");
    }
}

