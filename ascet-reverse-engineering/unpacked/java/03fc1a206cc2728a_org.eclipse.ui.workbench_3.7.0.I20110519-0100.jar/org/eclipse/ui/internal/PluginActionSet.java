/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.action.IAction;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.ActionSetActionBars;
import org.eclipse.ui.internal.WWinPluginAction;
import org.eclipse.ui.internal.registry.ActionSetDescriptor;
import org.eclipse.ui.internal.registry.IActionSet;
import org.eclipse.ui.services.IDisposable;

public class PluginActionSet
implements IActionSet {
    private ActionSetDescriptor desc;
    private ArrayList pluginActions = new ArrayList(4);
    private ActionSetActionBars bars;
    private IDisposable disposableBuilder;

    public PluginActionSet(ActionSetDescriptor desc) {
        this.desc = desc;
    }

    public void addPluginAction(WWinPluginAction action) {
        this.pluginActions.add(action);
    }

    public IAction[] getPluginActions() {
        IAction[] result = new IAction[this.pluginActions.size()];
        this.pluginActions.toArray(result);
        return result;
    }

    public void dispose() {
        Iterator iter = this.pluginActions.iterator();
        while (iter.hasNext()) {
            WWinPluginAction action = (WWinPluginAction)iter.next();
            action.dispose();
        }
        this.pluginActions.clear();
        this.bars = null;
        if (this.disposableBuilder != null) {
            this.disposableBuilder.dispose();
            this.disposableBuilder = null;
        }
    }

    ActionSetActionBars getBars() {
        return this.bars;
    }

    public IConfigurationElement getConfigElement() {
        return this.desc.getConfigurationElement();
    }

    public ActionSetDescriptor getDesc() {
        return this.desc;
    }

    public void init(IWorkbenchWindow window, IActionBars bars) {
        this.bars = (ActionSetActionBars)bars;
    }

    public void setBuilder(IDisposable builder) {
        if (this.disposableBuilder != null) {
            this.disposableBuilder.dispose();
        }
        this.disposableBuilder = builder;
    }
}

