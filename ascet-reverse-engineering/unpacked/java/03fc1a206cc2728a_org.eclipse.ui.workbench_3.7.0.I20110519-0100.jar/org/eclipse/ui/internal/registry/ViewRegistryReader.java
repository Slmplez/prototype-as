/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 */
package org.eclipse.ui.internal.registry;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.registry.Category;
import org.eclipse.ui.internal.registry.RegistryReader;
import org.eclipse.ui.internal.registry.StickyViewDescriptor;
import org.eclipse.ui.internal.registry.ViewDescriptor;
import org.eclipse.ui.internal.registry.ViewRegistry;

public class ViewRegistryReader
extends RegistryReader {
    public static String GENERAL_VIEW_ID = "org.eclipse.ui";
    private ViewRegistry viewRegistry;

    protected void readCategory(IConfigurationElement element) {
        try {
            this.viewRegistry.add(new Category(element));
        }
        catch (CoreException e) {
            WorkbenchPlugin.log("Unable to create view category.", e.getStatus());
        }
    }

    protected boolean readElement(IConfigurationElement element) {
        String elementName = element.getName();
        if (elementName.equals("view")) {
            this.readView(element);
            return true;
        }
        if (elementName.equals("category")) {
            this.readCategory(element);
            this.readElementChildren(element);
            return true;
        }
        if (elementName.equals("stickyView")) {
            this.readSticky(element);
            return true;
        }
        return false;
    }

    protected void readSticky(IConfigurationElement element) {
        try {
            this.viewRegistry.add(new StickyViewDescriptor(element));
        }
        catch (CoreException e) {
            WorkbenchPlugin.log("Unable to create sticky view descriptor.", e.getStatus());
        }
    }

    protected void readView(IConfigurationElement element) {
        try {
            this.viewRegistry.add(new ViewDescriptor(element));
        }
        catch (CoreException e) {
            WorkbenchPlugin.log("Unable to create view descriptor.", e.getStatus());
        }
    }

    public void readViews(IExtensionRegistry in, ViewRegistry out) {
        this.viewRegistry = out;
        this.readRegistry(in, "org.eclipse.ui", "views");
    }
}

