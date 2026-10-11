/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuCreator
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuCreator;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IActionDelegate2;
import org.eclipse.ui.IActionDelegateWithEvent;
import org.eclipse.ui.INullSelectionListener;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.ISelectionListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindowActionDelegate;
import org.eclipse.ui.SelectionEnabler;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.internal.util.Util;

public abstract class PluginAction
extends Action
implements ISelectionListener,
ISelectionChangedListener,
INullSelectionListener,
IPluginContribution {
    private IActionDelegate delegate;
    private SelectionEnabler enabler;
    private ISelection selection;
    private IConfigurationElement configElement;
    private String pluginId;
    private String runAttribute = "class";
    private static int actionCount = 0;

    public PluginAction(IConfigurationElement actionElement, String id, int style) {
        super(null, style);
        this.configElement = actionElement;
        if (id != null) {
            this.setId(id);
        } else {
            this.setId("PluginAction." + Integer.toString(actionCount));
            ++actionCount;
        }
        String defId = actionElement.getAttribute("definitionId");
        this.setActionDefinitionId(defId);
        this.pluginId = this.configElement.getNamespace();
        if (this.configElement.getAttribute("enablesFor") != null) {
            this.enabler = new SelectionEnabler(this.configElement);
        } else {
            IConfigurationElement[] kids = this.configElement.getChildren("enablement");
            IConfigurationElement[] kids2 = this.configElement.getChildren("selection");
            if (kids.length > 0 || kids2.length > 0) {
                this.enabler = new SelectionEnabler(this.configElement);
            }
        }
        this.selectionChanged((ISelection)StructuredSelection.EMPTY);
    }

    protected final void createDelegate() {
        if (this.delegate == null && this.runAttribute != null) {
            try {
                Object obj = WorkbenchPlugin.createExtension(this.configElement, this.runAttribute);
                this.delegate = this.validateDelegate(obj);
                this.initDelegate();
                this.refreshEnablement();
            }
            catch (Throwable e) {
                this.runAttribute = null;
                IStatus status = null;
                status = e instanceof CoreException ? ((CoreException)e).getStatus() : StatusUtil.newStatus(4, "Internal plug-in action delegate error on creation.", e);
                String id = this.configElement.getAttribute("id");
                WorkbenchPlugin.log("Could not create action delegate for id: " + id, status);
                return;
            }
        }
    }

    protected IActionDelegate validateDelegate(Object obj) throws WorkbenchException {
        if (obj instanceof IActionDelegate) {
            return (IActionDelegate)obj;
        }
        throw new WorkbenchException("Action must implement IActionDelegate");
    }

    protected void initDelegate() {
        if (this.delegate instanceof IActionDelegate2) {
            ((IActionDelegate2)this.delegate).init((IAction)this);
        }
    }

    protected IActionDelegate getDelegate() {
        return this.delegate;
    }

    protected boolean isOkToCreateDelegate() {
        String bundleId = this.configElement.getContributor().getName();
        return BundleUtility.isActive(bundleId);
    }

    protected void refreshEnablement() {
        if (this.enabler != null) {
            this.setEnabled(this.enabler.isEnabledForSelection(this.selection));
        }
        if (this.delegate != null) {
            this.delegate.selectionChanged((IAction)this, this.selection);
        }
    }

    public void run() {
        this.runWithEvent(null);
    }

    public void runWithEvent(Event event) {
        if (this.delegate == null) {
            this.createDelegate();
            if (this.delegate == null) {
                MessageDialog.openInformation((Shell)Util.getShellToParentOn(), (String)WorkbenchMessages.Information, (String)WorkbenchMessages.PluginAction_operationNotAvailableMessage);
                return;
            }
            if (!this.isEnabled()) {
                MessageDialog.openInformation((Shell)Util.getShellToParentOn(), (String)WorkbenchMessages.Information, (String)WorkbenchMessages.PluginAction_disabledMessage);
                return;
            }
        }
        if (event != null) {
            if (this.delegate instanceof IActionDelegate2) {
                ((IActionDelegate2)this.delegate).runWithEvent((IAction)this, event);
                return;
            }
            if (this.delegate instanceof IActionDelegateWithEvent) {
                ((IActionDelegateWithEvent)((Object)this.delegate)).runWithEvent((IAction)this, event);
                return;
            }
        }
        this.delegate.run((IAction)this);
    }

    public void selectionChanged(ISelection newSelection) {
        this.selection = newSelection;
        if (this.selection == null) {
            this.selection = StructuredSelection.EMPTY;
        }
        if (this.delegate == null && this.isOkToCreateDelegate()) {
            this.createDelegate();
        } else {
            this.refreshEnablement();
        }
    }

    public void selectionChanged(SelectionChangedEvent event) {
        ISelection sel = event.getSelection();
        this.selectionChanged(sel);
    }

    public void selectionChanged(IWorkbenchPart part, ISelection sel) {
        this.selectionChanged(sel);
    }

    public ISelection getSelection() {
        return this.selection;
    }

    public String getOverrideActionId() {
        return null;
    }

    protected IConfigurationElement getConfigElement() {
        return this.configElement;
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public void disposeDelegate() {
        if (this.getDelegate() instanceof IActionDelegate2) {
            ((IActionDelegate2)this.getDelegate()).dispose();
        } else if (this.getDelegate() instanceof IWorkbenchWindowActionDelegate) {
            ((IWorkbenchWindowActionDelegate)this.getDelegate()).dispose();
        }
        this.delegate = null;
    }

    public void dispose() {
        this.disposeDelegate();
        this.selection = null;
    }

    public IMenuCreator getMenuCreator() {
        if (this.getDelegate() == null) {
            this.createDelegate();
        }
        return super.getMenuCreator();
    }
}

