/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.ActionDescriptor;
import org.eclipse.ui.internal.ActionExpression;
import org.eclipse.ui.internal.PluginAction;
import org.eclipse.ui.internal.PluginActionBuilder;

public class ViewerActionBuilder
extends PluginActionBuilder {
    private ISelectionProvider provider;
    private IWorkbenchPart part;

    protected ActionDescriptor createActionDescriptor(IConfigurationElement element) {
        if (this.part instanceof IViewPart) {
            return new ActionDescriptor(element, 2, this.part);
        }
        return new ActionDescriptor(element, 4, this.part);
    }

    protected PluginActionBuilder.BasicContribution createContribution() {
        return new ViewerContribution(this.provider);
    }

    public void dispose() {
        if (this.cache != null) {
            int i = 0;
            while (i < this.cache.size()) {
                ((PluginActionBuilder.BasicContribution)this.cache.get(i)).dispose();
                ++i;
            }
            this.cache = null;
        }
    }

    protected boolean readElement(IConfigurationElement element) {
        String tag = element.getName();
        if (this.currentContribution != null && tag.equals("visibility")) {
            ((ViewerContribution)this.currentContribution).setVisibilityTest(element);
            return true;
        }
        return super.readElement(element);
    }

    public boolean readViewerContributions(String id, ISelectionProvider prov, IWorkbenchPart part) {
        Assert.isTrue((part instanceof IViewPart || part instanceof IEditorPart ? 1 : 0) != 0);
        this.provider = prov;
        this.part = part;
        this.readContributions(id, "viewerContribution", "popupMenus");
        return this.cache != null;
    }

    private static class ViewerContribution
    extends PluginActionBuilder.BasicContribution
    implements ISelectionChangedListener {
        private ISelectionProvider selProvider;
        private ActionExpression visibilityTest;

        public ViewerContribution(ISelectionProvider selProvider) {
            this.selProvider = selProvider;
            if (selProvider != null) {
                selProvider.addSelectionChangedListener((ISelectionChangedListener)this);
            }
        }

        public void setVisibilityTest(IConfigurationElement element) {
            this.visibilityTest = new ActionExpression(element);
        }

        public void contribute(IMenuManager menu, boolean menuAppendIfMissing, IToolBarManager toolbar, boolean toolAppendIfMissing) {
            boolean visible = true;
            if (this.visibilityTest != null) {
                ISelection selection = this.selProvider.getSelection();
                visible = selection instanceof IStructuredSelection ? this.visibilityTest.isEnabledFor((IStructuredSelection)selection) : this.visibilityTest.isEnabledFor(selection);
            }
            if (visible) {
                super.contribute(menu, menuAppendIfMissing, toolbar, toolAppendIfMissing);
            }
        }

        public void dispose() {
            if (this.selProvider != null) {
                this.selProvider.removeSelectionChangedListener((ISelectionChangedListener)this);
            }
            this.disposeActions();
            super.dispose();
        }

        public void selectionChanged(SelectionChangedEvent event) {
            if (this.actions != null && this.actions != null) {
                int i = 0;
                while (i < this.actions.size()) {
                    PluginAction proxy = ((ActionDescriptor)this.actions.get(i)).getAction();
                    proxy.selectionChanged(event);
                    ++i;
                }
            }
        }
    }
}

