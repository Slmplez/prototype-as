/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.menus.AbstractWorkbenchTrimWidget;
import org.eclipse.ui.menus.IWorkbenchWidget;

final class WidgetProxy
implements IWorkbenchWidget {
    private boolean firstLoad = true;
    private IConfigurationElement configurationElement;
    private IWorkbenchWidget widget = null;
    private final String widgetAttributeName;

    public WidgetProxy(IConfigurationElement configurationElement, String widgetAttributeName) {
        if (configurationElement == null) {
            throw new NullPointerException("The configuration element backing a widget proxy cannot be null");
        }
        if (widgetAttributeName == null) {
            throw new NullPointerException("The attribute containing the widget class must be known");
        }
        this.configurationElement = configurationElement;
        this.widgetAttributeName = widgetAttributeName;
    }

    public final void dispose() {
        if (this.loadWidget()) {
            this.widget.dispose();
        }
    }

    public final void fill(Composite parent) {
        if (this.loadWidget()) {
            this.widget.fill(parent);
        }
    }

    public final void fill(CoolBar parent, int index) {
        if (this.loadWidget()) {
            this.widget.fill(parent, index);
        }
    }

    public final void fill(Menu parent, int index) {
        if (this.loadWidget()) {
            this.widget.fill(parent, index);
        }
    }

    public final void fill(ToolBar parent, int index) {
        if (this.loadWidget()) {
            this.widget.fill(parent, index);
        }
    }

    public void init(IWorkbenchWindow workbenchWindow) {
        if (this.loadWidget()) {
            this.widget.init(workbenchWindow);
        }
    }

    public final void fill(Composite parent, int oldSide, int newSide) {
        if (this.loadWidget()) {
            if (this.isMoveableTrimWidget()) {
                ((AbstractWorkbenchTrimWidget)this.widget).fill(parent, oldSide, newSide);
            } else {
                this.widget.fill(parent);
            }
        }
    }

    private final boolean loadWidget() {
        if (this.firstLoad) {
            try {
                this.widget = (IWorkbenchWidget)this.configurationElement.createExecutableExtension(this.widgetAttributeName);
                this.configurationElement = null;
            }
            catch (ClassCastException e) {
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, "The proxied widget was the wrong class", (Throwable)e);
                WorkbenchPlugin.log("The proxied widget was the wrong class", (IStatus)status);
            }
            catch (CoreException e) {
                String message = "The proxied widget for '" + this.configurationElement.getAttribute(this.widgetAttributeName) + "' could not be loaded";
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
                WorkbenchPlugin.log(message, (IStatus)status);
            }
        }
        this.firstLoad = false;
        return this.widget != null;
    }

    private final boolean isMoveableTrimWidget() {
        if (this.loadWidget()) {
            return this.widget instanceof AbstractWorkbenchTrimWidget;
        }
        return false;
    }

    public final String toString() {
        if (this.widget == null) {
            return this.configurationElement.getAttribute(this.widgetAttributeName);
        }
        return this.widget.toString();
    }
}

