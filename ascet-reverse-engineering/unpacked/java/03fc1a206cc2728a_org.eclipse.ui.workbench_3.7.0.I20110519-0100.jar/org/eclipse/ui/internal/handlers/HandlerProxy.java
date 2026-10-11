/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandlerWithState
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.HandlerEvent
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.IHandler2
 *  org.eclipse.core.commands.IHandlerListener
 *  org.eclipse.core.commands.IStateListener
 *  org.eclipse.core.commands.State
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.commands.AbstractHandlerWithState;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.HandlerEvent;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.IHandler2;
import org.eclipse.core.commands.IHandlerListener;
import org.eclipse.core.commands.IStateListener;
import org.eclipse.core.commands.State;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.commands.IElementUpdater;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.UIElement;
import org.eclipse.ui.services.IEvaluationReference;
import org.eclipse.ui.services.IEvaluationService;

public final class HandlerProxy
extends AbstractHandlerWithState
implements IElementUpdater {
    private static Map CEToProxyMap = new HashMap();
    private static final String PROP_ENABLED = "enabled";
    private IConfigurationElement configurationElement;
    private final Expression enabledWhenExpression;
    private IHandler handler = null;
    private final String handlerAttributeName;
    private IHandlerListener handlerListener;
    private IEvaluationService evaluationService;
    private IPropertyChangeListener enablementListener;
    private IEvaluationReference enablementRef;
    private boolean proxyEnabled;
    private String commandId;
    private State checkedState;
    private State radioState;
    private Exception loadException;
    static /* synthetic */ Class class$0;

    public HandlerProxy(String commandId, IConfigurationElement configurationElement, String handlerAttributeName) {
        this(commandId, configurationElement, handlerAttributeName, null, null);
    }

    public HandlerProxy(String commandId, IConfigurationElement configurationElement, String handlerAttributeName, Expression enabledWhenExpression, IEvaluationService evaluationService) {
        if (configurationElement == null) {
            throw new NullPointerException("The configuration element backing a handler proxy cannot be null");
        }
        if (handlerAttributeName == null) {
            throw new NullPointerException("The attribute containing the handler class must be known");
        }
        if (enabledWhenExpression != null && evaluationService == null) {
            throw new NullPointerException("We must have a handler service and evaluation service to support the enabledWhen expression");
        }
        this.commandId = commandId;
        this.configurationElement = configurationElement;
        this.handlerAttributeName = handlerAttributeName;
        this.enabledWhenExpression = enabledWhenExpression;
        this.evaluationService = evaluationService;
        if (enabledWhenExpression != null) {
            this.setProxyEnabled(false);
            this.registerEnablement();
        } else {
            this.setProxyEnabled(true);
        }
        CEToProxyMap.put(configurationElement, this);
    }

    public static void updateStaleCEs(IConfigurationElement[] replacements) {
        int i = 0;
        while (i < replacements.length) {
            HandlerProxy proxy = (HandlerProxy)CEToProxyMap.get(replacements[i]);
            if (proxy != null) {
                proxy.configurationElement = replacements[i];
            }
            ++i;
        }
    }

    private void registerEnablement() {
        this.enablementRef = this.evaluationService.addEvaluationListener(this.enabledWhenExpression, this.getEnablementListener(), PROP_ENABLED);
    }

    public void setEnabled(Object evaluationContext) {
        if (!(evaluationContext instanceof IEvaluationContext)) {
            return;
        }
        IEvaluationContext context = (IEvaluationContext)evaluationContext;
        if (this.enabledWhenExpression != null) {
            try {
                this.setProxyEnabled(this.enabledWhenExpression.evaluate(context) == EvaluationResult.TRUE);
            }
            catch (CoreException coreException) {}
        }
        if (this.isOkToLoad() && this.loadHandler() && this.handler instanceof IHandler2) {
            ((IHandler2)this.handler).setEnabled(evaluationContext);
        }
    }

    void setProxyEnabled(boolean enabled) {
        this.proxyEnabled = enabled;
    }

    boolean getProxyEnabled() {
        return this.proxyEnabled;
    }

    private IPropertyChangeListener getEnablementListener() {
        if (this.enablementListener == null) {
            this.enablementListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    if (event.getProperty() == HandlerProxy.PROP_ENABLED) {
                        HandlerProxy.this.setProxyEnabled(event.getNewValue() == null ? false : (Boolean)event.getNewValue());
                        HandlerProxy.this.fireHandlerChanged(new HandlerEvent((IHandler)HandlerProxy.this, true, false));
                    }
                }
            };
        }
        return this.enablementListener;
    }

    public final void dispose() {
        if (this.handler != null) {
            if (this.handlerListener != null) {
                this.handler.removeHandlerListener(this.handlerListener);
                this.handlerListener = null;
            }
            this.handler.dispose();
            this.handler = null;
        }
        if (this.enablementListener != null) {
            this.evaluationService.removeEvaluationListener(this.enablementRef);
            this.enablementRef = null;
            this.enablementListener = null;
        }
    }

    public final Object execute(ExecutionEvent event) throws ExecutionException {
        if (this.loadHandler()) {
            if (!this.isEnabled()) {
                MessageDialog.openInformation((Shell)Util.getShellToParentOn(), (String)WorkbenchMessages.Information, (String)WorkbenchMessages.PluginAction_disabledMessage);
                return null;
            }
            return this.handler.execute(event);
        }
        if (this.loadException != null) {
            throw new ExecutionException("Exception occured when loading the handler", (Throwable)this.loadException);
        }
        return null;
    }

    public final boolean isEnabled() {
        if (this.enabledWhenExpression != null) {
            if (!this.getProxyEnabled()) {
                return false;
            }
            if (this.isOkToLoad() && this.loadHandler()) {
                return this.handler.isEnabled();
            }
            return true;
        }
        if (this.isOkToLoad() && this.loadHandler()) {
            return this.handler.isEnabled();
        }
        return true;
    }

    public final boolean isHandled() {
        if (this.configurationElement != null && this.handler == null) {
            return true;
        }
        if (this.isOkToLoad() && this.loadHandler()) {
            return this.handler.isHandled();
        }
        return false;
    }

    private final boolean loadHandler() {
        if (this.handler == null) {
            try {
                if (this.configurationElement != null) {
                    this.handler = (IHandler)this.configurationElement.createExecutableExtension(this.handlerAttributeName);
                    this.handler.addHandlerListener(this.getHandlerListener());
                    this.setEnabled(this.evaluationService == null ? null : this.evaluationService.getCurrentState());
                    this.refreshElements();
                    return true;
                }
            }
            catch (ClassCastException e) {
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, "The proxied handler was the wrong class", (Throwable)e);
                WorkbenchPlugin.log("The proxied handler was the wrong class", (IStatus)status);
                this.configurationElement = null;
                this.loadException = e;
            }
            catch (CoreException e) {
                String message = "The proxied handler for '" + this.configurationElement.getAttribute(this.handlerAttributeName) + "' could not be loaded";
                Status status = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 0, message, (Throwable)e);
                WorkbenchPlugin.log(message, (IStatus)status);
                this.configurationElement = null;
                this.loadException = e;
            }
            return false;
        }
        return true;
    }

    private IHandlerListener getHandlerListener() {
        if (this.handlerListener == null) {
            this.handlerListener = new IHandlerListener(){

                public void handlerChanged(HandlerEvent handlerEvent) {
                    HandlerProxy.this.fireHandlerChanged(new HandlerEvent((IHandler)HandlerProxy.this, handlerEvent.isEnabledChanged(), handlerEvent.isHandledChanged()));
                }
            };
        }
        return this.handlerListener;
    }

    public final String toString() {
        if (this.handler == null) {
            String configurationElementAttribute;
            if (this.configurationElement != null && (configurationElementAttribute = this.getConfigurationElementAttribute()) != null) {
                return configurationElementAttribute;
            }
            return "HandlerProxy()";
        }
        return this.handler.toString();
    }

    private String getConfigurationElementAttribute() {
        String attribute = this.configurationElement.getAttribute(this.handlerAttributeName);
        if (attribute == null) {
            IConfigurationElement[] children = this.configurationElement.getChildren(this.handlerAttributeName);
            int i = 0;
            while (i < children.length) {
                String childAttribute = children[i].getAttribute("class");
                if (childAttribute != null) {
                    return childAttribute;
                }
                ++i;
            }
        }
        return attribute;
    }

    private boolean isOkToLoad() {
        if (this.configurationElement != null && this.handler == null) {
            String bundleId = this.configurationElement.getContributor().getName();
            return BundleUtility.isActive(bundleId);
        }
        return true;
    }

    public void updateElement(UIElement element, Map parameters) {
        if (this.checkedState != null) {
            Boolean value = (Boolean)this.checkedState.getValue();
            element.setChecked(value);
        } else if (this.radioState != null) {
            String value = (String)this.radioState.getValue();
            Object parameter = parameters.get("org.eclipse.ui.commands.radioStateParameter");
            element.setChecked(value != null && value.equals(parameter));
        }
        if (this.handler != null && this.handler instanceof IElementUpdater) {
            ((IElementUpdater)this.handler).updateElement(element, parameters);
        }
    }

    private void refreshElements() {
        if (this.commandId == null || !(this.handler instanceof IElementUpdater) && this.checkedState == null && this.radioState == null) {
            return;
        }
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ICommandService cs = (ICommandService)iWorkbench.getService(clazz);
        cs.refreshElements(this.commandId, null);
    }

    public void handleStateChange(State state, Object oldValue) {
        if (state.getId().equals("org.eclipse.ui.commands.toggleState")) {
            this.checkedState = state;
            this.refreshElements();
        } else if (state.getId().equals("org.eclipse.ui.commands.radioState")) {
            this.radioState = state;
            this.refreshElements();
        }
        if (this.handler instanceof IStateListener) {
            ((IStateListener)this.handler).handleStateChange(state, oldValue);
        }
    }

    public IConfigurationElement getConfigurationElement() {
        return this.configurationElement;
    }

    public String getAttributeName() {
        return this.handlerAttributeName;
    }

    public IHandler getHandler() {
        return this.handler;
    }
}

