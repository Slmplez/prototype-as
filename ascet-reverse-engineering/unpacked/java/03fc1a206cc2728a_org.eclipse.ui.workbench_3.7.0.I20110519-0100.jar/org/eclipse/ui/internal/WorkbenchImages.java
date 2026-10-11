/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal;

import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.misc.ProgramImageDescriptor;
import org.eclipse.ui.internal.util.BundleUtility;

public class WorkbenchImages {
    private static Map descriptors;
    private static ImageRegistry imageRegistry;
    public static final String ICONS_PATH = "$nl$/icons/full/";
    private static final String PATH_ETOOL = "$nl$/icons/full/etool16/";
    private static final String PATH_DTOOL = "$nl$/icons/full/dtool16/";
    private static final String PATH_ELOCALTOOL = "$nl$/icons/full/elcl16/";
    private static final String PATH_DLOCALTOOL = "$nl$/icons/full/dlcl16/";
    private static final String PATH_EVIEW = "$nl$/icons/full/eview16/";
    private static final String PATH_OVERLAY = "$nl$/icons/full/ovr16/";
    private static final String PATH_OBJECT = "$nl$/icons/full/obj16/";
    private static final String PATH_POINTER = "$nl$/icons/full/pointer/";
    private static final String PATH_WIZBAN = "$nl$/icons/full/wizban/";

    private static final void declareImage(String key, String path, boolean shared) {
        URL url = BundleUtility.find("org.eclipse.ui", path);
        ImageDescriptor desc = ImageDescriptor.createFromURL((URL)url);
        WorkbenchImages.declareImage(key, desc, shared);
    }

    private static void drawViewMenu(GC gc, GC maskgc) {
        Display display = Display.getCurrent();
        gc.setForeground(display.getSystemColor(17));
        gc.setBackground(display.getSystemColor(25));
        int[] shapeArray = new int[]{1, 1, 10, 1, 6, 5, 5, 5};
        gc.fillPolygon(shapeArray);
        gc.drawPolygon(shapeArray);
        Color black = display.getSystemColor(2);
        Color white = display.getSystemColor(1);
        maskgc.setBackground(black);
        maskgc.fillRectangle(0, 0, 12, 16);
        maskgc.setBackground(white);
        maskgc.setForeground(white);
        maskgc.fillPolygon(shapeArray);
        maskgc.drawPolygon(shapeArray);
    }

    private static final void declareImages() {
        WorkbenchImages.declareImage("IMG_DEC_FIELD_ERROR", "$nl$/icons/full/ovr16/error_ovr.gif", true);
        WorkbenchImages.declareImage("IMG_DEC_FIELD_WARNING", "$nl$/icons/full/ovr16/warning_ovr.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_PIN_EDITOR", "$nl$/icons/full/etool16/pin_editor.gif", false);
        WorkbenchImages.declareImage("IMG_ETOOL_PIN_EDITOR_DISABLED", "$nl$/icons/full/dtool16/pin_editor.gif", false);
        WorkbenchImages.declareImage("IMG_ETOOL_SAVE_EDIT", "$nl$/icons/full/etool16/save_edit.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_SAVE_EDIT_DISABLED", "$nl$/icons/full/dtool16/save_edit.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_SAVEAS_EDIT", "$nl$/icons/full/etool16/saveas_edit.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_SAVEAS_EDIT_DISABLED", "$nl$/icons/full/dtool16/saveas_edit.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_SAVEALL_EDIT", "$nl$/icons/full/etool16/saveall_edit.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_SAVEALL_EDIT_DISABLED", "$nl$/icons/full/dtool16/saveall_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_UNDO", "$nl$/icons/full/etool16/undo_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_UNDO_DISABLED", "$nl$/icons/full/dtool16/undo_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_REDO", "$nl$/icons/full/etool16/redo_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_REDO_DISABLED", "$nl$/icons/full/dtool16/redo_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_CUT", "$nl$/icons/full/etool16/cut_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_CUT_DISABLED", "$nl$/icons/full/dtool16/cut_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_COPY", "$nl$/icons/full/etool16/copy_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_COPY_DISABLED", "$nl$/icons/full/dtool16/copy_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_PASTE", "$nl$/icons/full/etool16/paste_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_PASTE_DISABLED", "$nl$/icons/full/dtool16/paste_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_DELETE", "$nl$/icons/full/etool16/delete_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_DELETE_DISABLED", "$nl$/icons/full/dtool16/delete_edit.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_DELETE", "$nl$/icons/full/etool16/delete.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_DELETE_DISABLED", "$nl$/icons/full/dtool16/delete.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_CLEAR", "$nl$/icons/full/etool16/clear.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_CLEAR_DISABLED", "$nl$/icons/full/dtool16/clear.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_NEW_WIZARD", "$nl$/icons/full/etool16/new_wiz.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_NEW_WIZARD_DISABLED", "$nl$/icons/full/dtool16/new_wiz.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_PRINT_EDIT", "$nl$/icons/full/etool16/print_edit.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_PRINT_EDIT_DISABLED", "$nl$/icons/full/dtool16/print_edit.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_HELP_CONTENTS", "$nl$/icons/full/etool16/help_contents.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_HELP_SEARCH", "$nl$/icons/full/etool16/help_search.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_NEW_FASTVIEW", "$nl$/icons/full/etool16/new_fastview.gif", true);
        WorkbenchImages.declareImage("IMG_DTOOL_NEW_FASTVIEW", "$nl$/icons/full/dtool16/new_fastview.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_RESTORE_TRIMPART", "$nl$/icons/full/etool16/fastview_restore.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_EDITOR_TRIMPART", "$nl$/icons/full/etool16/editor_area.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_FORWARD", "$nl$/icons/full/elcl16/forward_nav.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_FORWARD_DISABLED", "$nl$/icons/full/dlcl16/forward_nav.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_BACK", "$nl$/icons/full/elcl16/backward_nav.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_BACK_DISABLED", "$nl$/icons/full/dlcl16/backward_nav.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_UP", "$nl$/icons/full/elcl16/up_nav.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_UP_DISABLED", "$nl$/icons/full/dlcl16/up_nav.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_SYNCED", "$nl$/icons/full/elcl16/synced.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_SYNCED_DISABLED", "$nl$/icons/full/dlcl16/synced.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_COLLAPSEALL", "$nl$/icons/full/elcl16/collapseall.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_COLLAPSEALL_DISABLED", "$nl$/icons/full/dlcl16/collapseall.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_REMOVE", "$nl$/icons/full/elcl16/remove.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_REMOVE_DISABLED", "$nl$/icons/full/dlcl16/remove.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_REMOVEALL", "$nl$/icons/full/elcl16/removeall.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_REMOVEALL_DISABLED", "$nl$/icons/full/dlcl16/removeall.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_COLLAPSEALL", "$nl$/icons/full/elcl16/collapseall.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_COLLAPSEALL_DISABLED", "$nl$/icons/full/dlcl16/collapseall.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_STOP", "$nl$/icons/full/elcl16/stop.gif", true);
        WorkbenchImages.declareImage("IMG_ELCL_STOP_DISABLED", "$nl$/icons/full/dlcl16/stop.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_NEW_PAGE", "$nl$/icons/full/eview16/new_persp.gif", false);
        WorkbenchImages.declareImage("IMG_ETOOL_HOME_NAV", "$nl$/icons/full/elcl16/home_nav.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_HOME_NAV_DISABLED", "$nl$/icons/full/dlcl16/home_nav.gif", true);
        WorkbenchImages.declareImage("IMG_ETOOL_DEF_PERSPECTIVE", "$nl$/icons/full/eview16/default_persp.gif", true);
        WorkbenchImages.declareImage("IMG_WIZBAN_NEW_WIZ", "$nl$/icons/full/wizban/new_wiz.png", false);
        WorkbenchImages.declareImage("IMG_ETOOL_IMPORT_WIZ", "$nl$/icons/full/etool16/import_wiz.gif", false);
        WorkbenchImages.declareImage("IMG_ETOOL_EXPORT_WIZ", "$nl$/icons/full/etool16/export_wiz.gif", false);
        WorkbenchImages.declareImage("IMG_WIZBAN_IMPORT_WIZ", "$nl$/icons/full/wizban/import_wiz.png", false);
        WorkbenchImages.declareImage("IMG_WIZBAN_EXPORT_WIZ", "$nl$/icons/full/wizban/export_wiz.png", false);
        WorkbenchImages.declareImage("IMG_WIZBAN_IMPORT_PREF_WIZ", "$nl$/icons/full/wizban/importpref_wiz.png", false);
        WorkbenchImages.declareImage("IMG_WIZBAN_EXPORT_PREF_WIZ", "$nl$/icons/full/wizban/exportpref_wiz.png", false);
        WorkbenchImages.declareImage("IMG_WIZBAN_WORKINGSET_WIZ", "$nl$/icons/full/wizban/workset_wiz.png", false);
        WorkbenchImages.declareImage("IMG_VIEW_DEFAULTVIEW_MISC", "$nl$/icons/full/eview16/defaultview_misc.gif", false);
        WorkbenchImages.declareImage("IMG_OBJ_FONT", "$nl$/icons/full/obj16/font.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_THEME_CATEGORY", "$nl$/icons/full/obj16/theme_category.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_ACTIVITY", "$nl$/icons/full/obj16/activity.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_ACTIVITY_CATEGORY", "$nl$/icons/full/obj16/activity_category.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_WORKING_SETS", "$nl$/icons/full/obj16/workingsets.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_SEPARATOR", "$nl$/icons/full/obj16/separator.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_NODE", "$nl$/icons/full/obj16/generic_elements.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_ELEMENT", "$nl$/icons/full/obj16/generic_element.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_ADD", "$nl$/icons/full/obj16/add_obj.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_FILE", "$nl$/icons/full/obj16/file_obj.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_FOLDER", "$nl$/icons/full/obj16/fldr_obj.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_ELEMENTS", "$nl$/icons/full/obj16/elements_obj.gif", true);
        WorkbenchImages.declareImage("IMG_DEF_VIEW", "$nl$/icons/full/eview16/defaultview_misc.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_CLOSE_VIEW", "$nl$/icons/full/elcl16/close_view.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_PIN_VIEW", "$nl$/icons/full/elcl16/pin_view.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_MIN_VIEW", "$nl$/icons/full/elcl16/min_view.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_VIEW_MENU", "$nl$/icons/full/elcl16/view_menu.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_BUTTON_MENU", "$nl$/icons/full/elcl16/button_menu.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_LINKTO_HELP", "$nl$/icons/full/elcl16/linkto_help.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_CLOSE_VIEW_THIN", "$nl$/icons/full/elcl16/thin_close_view.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_HIDE_TOOLBAR_THIN", "$nl$/icons/full/elcl16/thin_hide_toolbar.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_MAX_VIEW_THIN", "$nl$/icons/full/elcl16/thin_max_view.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_MIN_VIEW_THIN", "$nl$/icons/full/elcl16/thin_min_view.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_RESTORE_VIEW_THIN", "$nl$/icons/full/elcl16/thin_restore_view.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_SHOW_TOOLBAR_THIN", "$nl$/icons/full/elcl16/thin_show_toolbar.gif", true);
        WorkbenchImages.declareImage("IMG_LCL_VIEW_MENU_THIN", "$nl$/icons/full/elcl16/thin_view_menu.gif", true);
        WorkbenchImages.declareImage("IMG_OBJS_ERROR_TSK", "$nl$/icons/full/obj16/error_tsk.gif", true);
        WorkbenchImages.declareImage("IMG_OBJS_WARN_TSK", "$nl$/icons/full/obj16/warn_tsk.gif", true);
        WorkbenchImages.declareImage("IMG_OBJS_INFO_TSK", "$nl$/icons/full/obj16/info_tsk.gif", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_LEFT_SOURCE", "$nl$/icons/full/pointer/left_source.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_LEFT_MASK", "$nl$/icons/full/pointer/left_mask.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_RIGHT_SOURCE", "$nl$/icons/full/pointer/right_source.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_RIGHT_MASK", "$nl$/icons/full/pointer/right_mask.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_TOP_SOURCE", "$nl$/icons/full/pointer/top_source.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_TOP_MASK", "$nl$/icons/full/pointer/top_mask.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_BOTTOM_SOURCE", "$nl$/icons/full/pointer/bottom_source.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_BOTTOM_MASK", "$nl$/icons/full/pointer/bottom_mask.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_INVALID_SOURCE", "$nl$/icons/full/pointer/invalid_source.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_INVALID_MASK", "$nl$/icons/full/pointer/invalid_mask.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_STACK_SOURCE", "$nl$/icons/full/pointer/stack_source.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_STACK_MASK", "$nl$/icons/full/pointer/stack_mask.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_OFFSCREEN_SOURCE", "$nl$/icons/full/pointer/offscreen_source.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_OFFSCREEN_MASK", "$nl$/icons/full/pointer/offscreen_mask.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_TOFASTVIEW_SOURCE", "$nl$/icons/full/pointer/tofastview_source.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJS_DND_TOFASTVIEW_MASK", "$nl$/icons/full/pointer/tofastview_mask.bmp", true);
        WorkbenchImages.declareImage("IMG_OBJ_SIGNED_YES", "$nl$/icons/full/obj16/signed_yes_tbl.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_SIGNED_NO", "$nl$/icons/full/obj16/signed_no_tbl.gif", true);
        WorkbenchImages.declareImage("IMG_OBJ_SIGNED_UNKNOWN", "$nl$/icons/full/obj16/signed_unkn_tbl.gif", true);
        WorkbenchImages.declareHoverImages();
        Display d = Display.getCurrent();
        Image viewMenu = new Image((Device)d, 11, 16);
        Image viewMenuMask = new Image((Device)d, 11, 16);
        GC gc = new GC((Drawable)viewMenu);
        GC maskgc = new GC((Drawable)viewMenuMask);
        WorkbenchImages.drawViewMenu(gc, maskgc);
        gc.dispose();
        maskgc.dispose();
        ImageData data = viewMenu.getImageData();
        data.transparentPixel = data.getPixel(0, 0);
        Image vm2 = new Image((Device)d, viewMenu.getImageData(), viewMenuMask.getImageData());
        viewMenu.dispose();
        viewMenuMask.dispose();
        WorkbenchImages.getImageRegistry().put("IMG_LCL_RENDERED_VIEW_MENU", vm2);
    }

    private static final void declareHoverImages() {
        WorkbenchImages.declareImage("IMG_TOOL_UNDO_HOVER", "$nl$/icons/full/etool16/undo_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_REDO_HOVER", "$nl$/icons/full/etool16/redo_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_CUT_HOVER", "$nl$/icons/full/etool16/cut_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_COPY_HOVER", "$nl$/icons/full/etool16/copy_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_PASTE_HOVER", "$nl$/icons/full/etool16/paste_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_FORWARD_HOVER", "$nl$/icons/full/elcl16/forward_nav.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_DELETE_HOVER", "$nl$/icons/full/etool16/delete_edit.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_NEW_WIZARD_HOVER", "$nl$/icons/full/etool16/new_wiz.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_BACK_HOVER", "$nl$/icons/full/elcl16/backward_nav.gif", true);
        WorkbenchImages.declareImage("IMG_TOOL_UP_HOVER", "$nl$/icons/full/elcl16/up_nav.gif", true);
    }

    public static void declareImage(String symbolicName, ImageDescriptor descriptor, boolean shared) {
        if (Policy.DEBUG_DECLARED_IMAGES) {
            Image image = descriptor.createImage(false);
            if (image == null) {
                WorkbenchPlugin.log("Image not found in WorkbenchImages.declaredImage().  symbolicName=" + symbolicName + " descriptor=" + descriptor, new Exception("stack dump"));
            } else {
                image.dispose();
            }
        }
        WorkbenchImages.getDescriptors().put(symbolicName, descriptor);
        if (shared) {
            WorkbenchImages.getImageRegistry().put(symbolicName, descriptor);
        }
    }

    public static Map getDescriptors() {
        if (descriptors == null) {
            WorkbenchImages.initializeImageRegistry();
        }
        return descriptors;
    }

    public static Image getImage(String symbolicName) {
        return WorkbenchImages.getImageRegistry().get(symbolicName);
    }

    public static ImageDescriptor getImageDescriptor(String symbolicName) {
        return (ImageDescriptor)WorkbenchImages.getDescriptors().get(symbolicName);
    }

    public static ImageDescriptor getImageDescriptorFromProgram(String filename, int offset) {
        Assert.isNotNull((Object)filename);
        String key = String.valueOf(filename) + "*" + offset;
        ImageDescriptor desc = WorkbenchImages.getImageDescriptor(key);
        if (desc == null) {
            desc = new ProgramImageDescriptor(filename, offset);
            WorkbenchImages.getDescriptors().put(key, desc);
        }
        return desc;
    }

    public static ImageRegistry getImageRegistry() {
        if (imageRegistry == null) {
            WorkbenchImages.initializeImageRegistry();
        }
        return imageRegistry;
    }

    private static void initializeImageRegistry() {
        imageRegistry = new ImageRegistry();
        descriptors = new HashMap();
        WorkbenchImages.declareImages();
    }

    public static void dispose() {
        if (imageRegistry != null) {
            imageRegistry.dispose();
            imageRegistry = null;
            descriptors = null;
        }
    }

    public static ImageDescriptor getWorkbenchImageDescriptor(String relativePath) {
        return ImageDescriptor.createFromURL((URL)BundleUtility.find("org.eclipse.ui", ICONS_PATH + relativePath));
    }
}

