/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.IHandler2
 *  org.eclipse.core.commands.IHandlerListener
 *  org.eclipse.core.commands.IObjectWithState
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.State
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.IHandler2;
import org.eclipse.core.commands.IHandlerListener;
import org.eclipse.core.commands.IObjectWithState;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.State;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.swt.widgets.Event;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IActionDelegate2;
import org.eclipse.ui.IActionDelegateWithEvent;
import org.eclipse.ui.IEditorActionDelegate;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.INullSelectionListener;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IPartListener2;
import org.eclipse.ui.ISelectionListener;
import org.eclipse.ui.IViewActionDelegate;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartReference;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkbenchWindowActionDelegate;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.handlers.CommandLegacyActionWrapper;

public final class ActionDelegateHandlerProxy
implements ISelectionListener,
ISelectionChangedListener,
INullSelectionListener,
IHandler2,
IObjectWithState,
IPartListener2 {
    private CommandLegacyActionWrapper action;
    private String actionId;
    private ParameterizedCommand command;
    private ISelection currentSelection;
    private IActionDelegate delegate;
    private IEditorActionDelegate editorDelegate = null;
    private IViewActionDelegate viewDelegate = null;
    private IObjectActionDelegate objectDelegate = null;
    private IWorkbenchWindowActionDelegate windowDelegate = null;
    private IWorkbenchPart currentPart = null;
    private String delegateAttributeName;
    private IConfigurationElement element;
    private final Expression enabledWhenExpression;
    private transient ListenerList listenerList = null;
    private final String style;
    private final String viewId;
    private final IWorkbenchWindow window;

    public ActionDelegateHandlerProxy(IConfigurationElement element, String delegateAttributeName, String actionId, ParameterizedCommand command, IWorkbenchWindow window, String style, Expression enabledWhenExpression, String viewId) {
        if (element == null) {
            throw new NullPointerException("The configuration element backing a handler proxy cannot be null");
        }
        if (delegateAttributeName == null) {
            throw new NullPointerException("The attribute containing the action delegate must be known");
        }
        if (window == null) {
            throw new NullPointerException("The workbench window for a delegate must not be null");
        }
        this.element = element;
        this.enabledWhenExpression = enabledWhenExpression;
        this.delegateAttributeName = delegateAttributeName;
        this.window = window;
        this.command = command;
        this.actionId = actionId;
        this.style = style;
        this.viewId = viewId;
    }

    public final void addHandlerListener(IHandlerListener handlerListener) {
        if (this.listenerList == null) {
            this.listenerList = new ListenerList(1);
        }
        this.listenerList.add((Object)handlerListener);
    }

    public void addState(String id, State state) {
    }

    public final void dispose() {
        this.disposeDelegate();
    }

    private void disposeDelegate() {
        IActionDelegate actDel = this.getDelegate();
        if (actDel instanceof IWorkbenchWindowActionDelegate) {
            IWorkbenchWindowActionDelegate workbenchWindowDelegate = (IWorkbenchWindowActionDelegate)actDel;
            workbenchWindowDelegate.dispose();
        } else if (actDel instanceof IActionDelegate2) {
            IActionDelegate2 delegate2 = (IActionDelegate2)actDel;
            delegate2.dispose();
        }
        this.delegate = null;
        this.editorDelegate = null;
        this.objectDelegate = null;
        this.viewDelegate = null;
        this.windowDelegate = null;
        this.currentSelection = null;
    }

    public final Object execute(ExecutionEvent event) {
        CommandLegacyActionWrapper action = this.getAction();
        if (this.loadDelegate() && action != null) {
            Object trigger = event.getTrigger();
            Object applicationContext = event.getApplicationContext();
            if (applicationContext instanceof IEvaluationContext) {
                IEvaluationContext context = (IEvaluationContext)applicationContext;
                this.updateDelegate((IAction)action, context);
            }
            if (this.delegate instanceof IActionDelegate2 && trigger instanceof Event) {
                IActionDelegate2 delegate2 = (IActionDelegate2)this.delegate;
                Event triggeringEvent = (Event)trigger;
                delegate2.runWithEvent((IAction)action, triggeringEvent);
            } else if (this.delegate instanceof IActionDelegateWithEvent && trigger instanceof Event) {
                IActionDelegateWithEvent delegateWithEvent = (IActionDelegateWithEvent)((Object)this.delegate);
                Event triggeringEvent = (Event)trigger;
                delegateWithEvent.runWithEvent((IAction)action, triggeringEvent);
            } else {
                this.delegate.run((IAction)action);
            }
        }
        return null;
    }

    private void updateDelegate(IAction action, IEvaluationContext context) {
        if (action == null || this.delegate == null) {
            return;
        }
        if (this.editorDelegate != null) {
            Object activeEditor = context.getVariable("activeEditor");
            if (activeEditor != IEvaluationContext.UNDEFINED_VARIABLE) {
                this.editorDelegate.setActiveEditor(action, (IEditorPart)activeEditor);
            }
            this.updateActivePart(activeEditor == IEvaluationContext.UNDEFINED_VARIABLE ? null : (IWorkbenchPart)activeEditor);
        } else if (this.objectDelegate != null) {
            Object activePart = context.getVariable("activePart");
            if (activePart != IEvaluationContext.UNDEFINED_VARIABLE) {
                this.objectDelegate.setActivePart(action, (IWorkbenchPart)activePart);
            }
            this.updateActivePart(activePart == IEvaluationContext.UNDEFINED_VARIABLE ? null : (IWorkbenchPart)activePart);
        }
        Object selectionObject = this.getCurrentSelection(context);
        this.currentSelection = selectionObject instanceof ISelection ? (ISelection)selectionObject : null;
        if (this.delegate != null) {
            this.delegate.selectionChanged(action, this.currentSelection);
        }
    }

    private void updateActivePart(IWorkbenchPart activePart) {
        if (this.currentPart == activePart) {
            return;
        }
        if (this.currentPart != null) {
            this.currentPart.getSite().getPage().removePartListener(this);
        }
        if (activePart != null) {
            activePart.getSite().getPage().addPartListener(this);
        } else {
            this.selectionChanged((ISelection)StructuredSelection.EMPTY);
            this.disposeDelegate();
            if (this.action != null) {
                this.action.setEnabled(true);
            }
        }
        this.currentPart = activePart;
    }

    private Object getCurrentSelection(IEvaluationContext context) {
        Object obj = context.getVariable("activeMenuEditorInput");
        if (!(obj != null && obj != IEvaluationContext.UNDEFINED_VARIABLE || (obj = context.getVariable("activeMenuSelection")) != null && obj != IEvaluationContext.UNDEFINED_VARIABLE)) {
            obj = context.getVariable("selection");
        }
        return obj;
    }

    private final CommandLegacyActionWrapper getAction() {
        if (this.action == null) {
            this.action = new CommandLegacyActionWrapper(this.actionId, this.command, this.style, this.window);
            this.action.addPropertyChangeListener(new IPropertyChangeListener(){

                public final void propertyChange(PropertyChangeEvent event) {
                }
            });
        }
        return this.action;
    }

    private final IActionDelegate getDelegate() {
        return this.delegate;
    }

    public State getState(String stateId) {
        return null;
    }

    public String[] getStateIds() {
        return null;
    }

    public final void handleStateChange(State state, Object oldValue) {
    }

    private final boolean initDelegate() {
        IViewPart viewPart;
        IEditorPart activeEditor;
        IWorkbenchPart activePart;
        IWorkbenchPage page = this.window.getActivePage();
        if (page == null) {
            activePart = null;
            activeEditor = null;
        } else {
            activePart = page.getActivePart();
            activeEditor = page.getActiveEditor();
        }
        final IActionDelegate delegate = this.getDelegate();
        CommandLegacyActionWrapper action = this.getAction();
        if (this.viewId != null && page != null && this.viewDelegate != null && (viewPart = page.findView(this.viewId)) == null) {
            return false;
        }
        ISafeRunnable runnable = new ISafeRunnable((IAction)action, activePart, activeEditor, page){
            private final /* synthetic */ IAction val$action;
            private final /* synthetic */ IWorkbenchPart val$activePart;
            private final /* synthetic */ IEditorPart val$activeEditor;
            private final /* synthetic */ IWorkbenchPage val$page;
            {
                this.val$action = iAction;
                this.val$activePart = iWorkbenchPart;
                this.val$activeEditor = iEditorPart;
                this.val$page = iWorkbenchPage;
            }

            public final void handleException(Throwable exception) {
            }

            public final void run() {
                if (delegate instanceof IActionDelegate2) {
                    IActionDelegate2 delegate2 = (IActionDelegate2)delegate;
                    delegate2.init(this.val$action);
                }
                if (ActionDelegateHandlerProxy.this.objectDelegate != null && this.val$activePart != null) {
                    ActionDelegateHandlerProxy.this.objectDelegate.setActivePart(this.val$action, this.val$activePart);
                    ActionDelegateHandlerProxy.this.updateActivePart(this.val$activePart);
                } else if (ActionDelegateHandlerProxy.this.editorDelegate != null) {
                    ActionDelegateHandlerProxy.this.editorDelegate.setActiveEditor(this.val$action, this.val$activeEditor);
                    ActionDelegateHandlerProxy.this.updateActivePart(this.val$activeEditor);
                } else if (ActionDelegateHandlerProxy.this.viewId != null && this.val$page != null && ActionDelegateHandlerProxy.this.viewDelegate != null) {
                    IViewPart viewPart = this.val$page.findView(ActionDelegateHandlerProxy.this.viewId);
                    ActionDelegateHandlerProxy.this.viewDelegate.init(viewPart);
                } else if (ActionDelegateHandlerProxy.this.windowDelegate != null) {
                    ActionDelegateHandlerProxy.this.windowDelegate.init(ActionDelegateHandlerProxy.this.window);
                }
            }
        };
        SafeRunner.run((ISafeRunnable)runnable);
        return true;
    }

    public void setEnabled(Object evaluationContext) {
        if (!(evaluationContext instanceof IEvaluationContext)) {
            return;
        }
        IEvaluationContext context = (IEvaluationContext)evaluationContext;
        CommandLegacyActionWrapper action = this.getAction();
        if (this.enabledWhenExpression != null) {
            try {
                EvaluationResult result = this.enabledWhenExpression.evaluate(context);
                if (action != null) {
                    action.setEnabled(result != EvaluationResult.FALSE);
                }
            }
            catch (CoreException e) {
                StringBuffer message = new StringBuffer("An exception occurred while evaluating the enabledWhen expression for ");
                if (this.delegate != null) {
                    message.append(this.delegate);
                } else {
                    message.append(this.element.getAttribute(this.delegateAttributeName));
                }
                message.append("' could not be loaded");
                Status status = new Status(2, WorkbenchPlugin.PI_WORKBENCH, 0, e.getMessage(), (Throwable)e);
                WorkbenchPlugin.log(message.toString(), (IStatus)status);
                return;
            }
        }
        this.updateDelegate((IAction)action, context);
    }

    public final boolean isEnabled() {
        return this.action == null || this.action.isEnabledDisregardingCommand();
    }

    public final boolean isHandled() {
        return true;
    }

    private final boolean isSafeToLoadDelegate() {
        return false;
    }

    private final boolean loadDelegate() {
        if (this.delegate == null) {
            block21: {
                if (this.viewId != null) {
                    IWorkbenchPage activePage = this.window.getActivePage();
                    if (activePage != null) {
                        IViewPart part = activePage.findView(this.viewId);
                        if (part == null) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                }
                this.delegate = (IActionDelegate)this.element.createExecutableExtension(this.delegateAttributeName);
                String name = this.element.getDeclaringExtension().getExtensionPointUniqueIdentifier();
                if ("org.eclipse.ui.actionSets".equals(name) && this.delegate instanceof IWorkbenchWindowActionDelegate) {
                    this.windowDelegate = (IWorkbenchWindowActionDelegate)this.delegate;
                } else if ("org.eclipse.ui.editorActions".equals(name) && this.delegate instanceof IEditorActionDelegate) {
                    this.editorDelegate = (IEditorActionDelegate)this.delegate;
                } else if ("org.eclipse.ui.viewActions".equals(name) && this.delegate instanceof IViewActionDelegate) {
                    this.viewDelegate = (IViewActionDelegate)this.delegate;
                } else if ("org.eclipse.ui.popupMenus".equals(name)) {
                    IConfigurationElement parent = (IConfigurationElement)this.element.getParent();
                    if ("objectContribution".equals(parent.getName()) && this.delegate instanceof IObjectActionDelegate) {
                        this.objectDelegate = (IObjectActionDelegate)this.delegate;
                    } else if (this.viewId == null && this.delegate instanceof IEditorActionDelegate) {
                        this.editorDelegate = (IEditorActionDelegate)this.delegate;
                    } else if (this.viewId != null && this.delegate instanceof IViewActionDelegate) {
                        this.viewDelegate = (IViewActionDelegate)this.delegate;
                    }
                }
                if (!this.initDelegate()) break block21;
                return true;
            }
            try {
                this.delegate = null;
                this.objectDelegate = null;
                this.viewDelegate = null;
                this.editorDelegate = null;
                this.windowDelegate = null;
                return false;
            }
            catch (ClassCastException e) {
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, "The proxied delegate was the wrong class", (Throwable)e);
                WorkbenchPlugin.log("The proxied delegate was the wrong class", (IStatus)status);
                return false;
            }
            catch (CoreException e) {
                String message = "The proxied delegate for '" + this.element.getAttribute(this.delegateAttributeName) + "' could not be loaded";
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
                WorkbenchPlugin.log(message, (IStatus)status);
                return false;
            }
        }
        return true;
    }

    private final void refreshEnablement() {
        IActionDelegate delegate = this.getDelegate();
        CommandLegacyActionWrapper action = this.getAction();
        if (delegate != null && action != null) {
            delegate.selectionChanged((IAction)action, this.currentSelection);
        }
    }

    public void removeHandlerListener(IHandlerListener handlerListener) {
        if (this.listenerList != null) {
            this.listenerList.remove((Object)handlerListener);
            if (this.listenerList.isEmpty()) {
                this.listenerList = null;
            }
        }
    }

    public void removeState(String stateId) {
    }

    private final void selectionChanged(ISelection selection) {
        IActionDelegate delegate;
        this.currentSelection = selection;
        if (this.currentSelection == null) {
            this.currentSelection = StructuredSelection.EMPTY;
        }
        if ((delegate = this.getDelegate()) == null && this.isSafeToLoadDelegate()) {
            this.loadDelegate();
        }
        this.refreshEnablement();
    }

    public final void selectionChanged(IWorkbenchPart part, ISelection selection) {
        this.selectionChanged(selection);
    }

    public final void selectionChanged(SelectionChangedEvent event) {
        ISelection selection = event.getSelection();
        this.selectionChanged(selection);
    }

    public final String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("ActionDelegateHandlerProxy(");
        buffer.append(this.getDelegate());
        if (this.element != null) {
            buffer.append(',');
            try {
                String className = this.element.getAttribute(this.delegateAttributeName);
                buffer.append(className);
            }
            catch (InvalidRegistryObjectException invalidRegistryObjectException) {
                buffer.append(this.actionId);
            }
        }
        buffer.append(')');
        return buffer.toString();
    }

    public void partActivated(IWorkbenchPartReference partRef) {
    }

    public void partBroughtToTop(IWorkbenchPartReference partRef) {
    }

    public void partClosed(IWorkbenchPartReference partRef) {
        if (this.currentPart != null && partRef.getPart(false) == this.currentPart) {
            this.updateActivePart(null);
        }
    }

    public void partDeactivated(IWorkbenchPartReference partRef) {
    }

    public void partHidden(IWorkbenchPartReference partRef) {
    }

    public void partInputChanged(IWorkbenchPartReference partRef) {
    }

    public void partOpened(IWorkbenchPartReference partRef) {
    }

    public void partVisible(IWorkbenchPartReference partRef) {
    }
}

