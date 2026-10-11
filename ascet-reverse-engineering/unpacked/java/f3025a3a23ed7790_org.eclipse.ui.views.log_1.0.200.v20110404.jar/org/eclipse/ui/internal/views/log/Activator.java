/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.ui.plugin.AbstractUIPlugin
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.ui.internal.views.log;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;

public class Activator
extends AbstractUIPlugin {
    public static final String PLUGIN_ID = "org.eclipse.ui.views.log";
    private static Activator plugin;

    public void start(BundleContext context) throws Exception {
        super.start(context);
        plugin = this;
    }

    public void stop(BundleContext context) throws Exception {
        plugin = null;
        super.stop(context);
    }

    public static Activator getDefault() {
        return plugin;
    }

    protected void initializeImageRegistry(ImageRegistry registry) {
        registry.put("icons/eview16/event_prev.gif", this.createImageDescriptor("icons/eview16/event_prev.gif"));
        registry.put("icons/eview16/event_next.gif", this.createImageDescriptor("icons/eview16/event_next.gif"));
        registry.put("icons/obj16/error_st_obj.gif", this.createImageDescriptor("icons/obj16/error_st_obj.gif"));
        registry.put("icons/obj16/error_stack.gif", this.createImageDescriptor("icons/obj16/error_stack.gif"));
        registry.put("icons/obj16/info_st_obj.gif", this.createImageDescriptor("icons/obj16/info_st_obj.gif"));
        registry.put("icons/obj16/ok_st_obj.gif", this.createImageDescriptor("icons/obj16/ok_st_obj.gif"));
        registry.put("icons/obj16/warning_st_obj.gif", this.createImageDescriptor("icons/obj16/warning_st_obj.gif"));
        registry.put("icons/obj16/hierarchical.gif", this.createImageDescriptor("icons/obj16/hierarchical.gif"));
        registry.put("icons/elcl16/clear.gif", this.createImageDescriptor("icons/elcl16/clear.gif"));
        registry.put("icons/dlcl16/clear.gif", this.createImageDescriptor("icons/dlcl16/clear.gif"));
        registry.put("icons/elcl16/remove.gif", this.createImageDescriptor("icons/elcl16/remove.gif"));
        registry.put("icons/dlcl16/remove.gif", this.createImageDescriptor("icons/dlcl16/remove.gif"));
        registry.put("icons/elcl16/export_log.gif", this.createImageDescriptor("icons/elcl16/export_log.gif"));
        registry.put("icons/dlcl16/export_log.gif", this.createImageDescriptor("icons/dlcl16/export_log.gif"));
        registry.put("icons/elcl16/filter_ps.gif", this.createImageDescriptor("icons/elcl16/filter_ps.gif"));
        registry.put("icons/dlcl16/filter_ps.gif", this.createImageDescriptor("icons/dlcl16/filter_ps.gif"));
        registry.put("icons/elcl16/import_log.gif", this.createImageDescriptor("icons/elcl16/import_log.gif"));
        registry.put("icons/dlcl16/import_log.gif", this.createImageDescriptor("icons/dlcl16/import_log.gif"));
        registry.put("icons/elcl16/open_log.gif", this.createImageDescriptor("icons/elcl16/open_log.gif"));
        registry.put("icons/dlcl16/open_log.gif", this.createImageDescriptor("icons/dlcl16/open_log.gif"));
        registry.put("icons/elcl16/properties.gif", this.createImageDescriptor("icons/elcl16/properties.gif"));
        registry.put("icons/dlcl16/properties.gif", this.createImageDescriptor("icons/dlcl16/properties.gif"));
        registry.put("icons/elcl16/restore_log.gif", this.createImageDescriptor("icons/elcl16/restore_log.gif"));
        registry.put("icons/dlcl16/restore_log.gif", this.createImageDescriptor("icons/dlcl16/restore_log.gif"));
    }

    private ImageDescriptor createImageDescriptor(String id) {
        return Activator.imageDescriptorFromPlugin((String)PLUGIN_ID, (String)id);
    }
}

