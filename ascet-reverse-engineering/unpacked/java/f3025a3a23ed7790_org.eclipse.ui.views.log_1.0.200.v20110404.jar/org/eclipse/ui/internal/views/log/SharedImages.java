/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.views.log;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.views.log.Activator;

public final class SharedImages {
    public static final String ICONS_PATH = "icons/";
    private static final String PATH_OBJ = "icons/obj16/";
    private static final String PATH_LCL = "icons/elcl16/";
    private static final String PATH_LCL_DISABLED = "icons/dlcl16/";
    private static final String PATH_EVENTS = "icons/eview16/";
    public static final String DESC_PREV_EVENT = "icons/eview16/event_prev.gif";
    public static final String DESC_NEXT_EVENT = "icons/eview16/event_next.gif";
    public static final String DESC_CLEAR = "icons/elcl16/clear.gif";
    public static final String DESC_CLEAR_DISABLED = "icons/dlcl16/clear.gif";
    public static final String DESC_REMOVE_LOG = "icons/elcl16/remove.gif";
    public static final String DESC_REMOVE_LOG_DISABLED = "icons/dlcl16/remove.gif";
    public static final String DESC_EXPORT = "icons/elcl16/export_log.gif";
    public static final String DESC_EXPORT_DISABLED = "icons/dlcl16/export_log.gif";
    public static final String DESC_FILTER = "icons/elcl16/filter_ps.gif";
    public static final String DESC_FILTER_DISABLED = "icons/dlcl16/filter_ps.gif";
    public static final String DESC_IMPORT = "icons/elcl16/import_log.gif";
    public static final String DESC_IMPORT_DISABLED = "icons/dlcl16/import_log.gif";
    public static final String DESC_OPEN_LOG = "icons/elcl16/open_log.gif";
    public static final String DESC_OPEN_LOG_DISABLED = "icons/dlcl16/open_log.gif";
    public static final String DESC_PROPERTIES = "icons/elcl16/properties.gif";
    public static final String DESC_PROPERTIES_DISABLED = "icons/dlcl16/properties.gif";
    public static final String DESC_READ_LOG = "icons/elcl16/restore_log.gif";
    public static final String DESC_READ_LOG_DISABLED = "icons/dlcl16/restore_log.gif";
    public static final String DESC_ERROR_ST_OBJ = "icons/obj16/error_st_obj.gif";
    public static final String DESC_ERROR_STACK_OBJ = "icons/obj16/error_stack.gif";
    public static final String DESC_INFO_ST_OBJ = "icons/obj16/info_st_obj.gif";
    public static final String DESC_OK_ST_OBJ = "icons/obj16/ok_st_obj.gif";
    public static final String DESC_WARNING_ST_OBJ = "icons/obj16/warning_st_obj.gif";
    public static final String DESC_HIERARCHICAL_LAYOUT_OBJ = "icons/obj16/hierarchical.gif";

    private SharedImages() {
    }

    public static ImageDescriptor getImageDescriptor(String key) {
        return Activator.getDefault().getImageRegistry().getDescriptor(key);
    }

    public static Image getImage(String key) {
        return Activator.getDefault().getImageRegistry().get(key);
    }
}

