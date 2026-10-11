/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.IToolBarManager
 *  org.eclipse.jface.action.SubMenuManager
 *  org.eclipse.jface.action.SubStatusLineManager
 *  org.eclipse.jface.action.SubToolBarManager
 *  org.eclipse.jface.commands.ActionHandler
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.ui;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.SubMenuManager;
import org.eclipse.jface.action.SubStatusLineManager;
import org.eclipse.jface.action.SubToolBarManager;
import org.eclipse.jface.commands.ActionHandler;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.EditorActionBars;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.actions.CommandAction;
import org.eclipse.ui.internal.handlers.CommandLegacyActionWrapper;
import org.eclipse.ui.internal.handlers.IActionCommandMappingService;
import org.eclipse.ui.services.IServiceLocator;

public class SubActionBars
extends EventManager
implements IActionBars {
    private static final Expression EXPRESSION = new Expression(){

        public final EvaluationResult evaluate(IEvaluationContext context) {
            return EvaluationResult.TRUE;
        }

        public final void collectExpressionInfo(ExpressionInfo info) {
            info.addVariableNameAccess("LEGACY");
        }
    };
    public static final String P_ACTION_HANDLERS = "org.eclipse.ui.internal.actionHandlers";
    private Map actionHandlers;
    private boolean actionHandlersChanged;
    private Map activationsByActionIdByServiceLocator;
    private boolean active = false;
    private SubMenuManager menuMgr;
    private IActionBars parent;
    private IServiceLocator serviceLocator;
    private SubStatusLineManager statusLineMgr;
    private SubToolBarManager toolBarMgr;
    private Map actionIdByCommandId = new HashMap();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public SubActionBars(IActionBars parent) {
        this(parent, null);
    }

    public SubActionBars(IActionBars parent, IServiceLocator serviceLocator) {
        if (parent == null) {
            throw new NullPointerException("The parent cannot be null");
        }
        this.parent = parent;
        this.serviceLocator = serviceLocator;
    }

    public void activate() {
        this.activate(true);
    }

    public void activate(boolean forceVisibility) {
        this.setActive(true);
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    protected final void basicSetActive(boolean active) {
        this.active = active;
    }

    public void clearGlobalActionHandlers() {
        if (this.actionHandlers != null) {
            this.actionHandlers.clear();
            this.actionHandlersChanged = true;
        }
        if (this.activationsByActionIdByServiceLocator != null) {
            Iterator activationItr = this.activationsByActionIdByServiceLocator.entrySet().iterator();
            while (activationItr.hasNext()) {
                Map.Entry value = activationItr.next();
                IServiceLocator locator = (IServiceLocator)value.getKey();
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IHandlerService service = (IHandlerService)locator.getService(clazz);
                Map activationsByActionId = (Map)value.getValue();
                Iterator iterator = activationsByActionId.values().iterator();
                while (iterator.hasNext()) {
                    IHandlerActivation activation = (IHandlerActivation)iterator.next();
                    if (service != null) {
                        service.deactivateHandler(activation);
                    }
                    activation.getHandler().dispose();
                }
            }
            this.activationsByActionIdByServiceLocator.clear();
        }
    }

    protected SubMenuManager createSubMenuManager(IMenuManager parent) {
        return new SubMenuManager(parent);
    }

    protected SubToolBarManager createSubToolBarManager(IToolBarManager parent) {
        return new SubToolBarManager(parent);
    }

    public void deactivate() {
        this.deactivate(true);
    }

    public void deactivate(boolean forceHide) {
        this.setActive(false);
    }

    public void dispose() {
        this.clearGlobalActionHandlers();
        if (this.menuMgr != null) {
            this.menuMgr.dispose();
            this.menuMgr.disposeManager();
        }
        if (this.statusLineMgr != null) {
            this.statusLineMgr.disposeManager();
        }
        if (this.toolBarMgr != null) {
            this.toolBarMgr.disposeManager();
        }
        this.clearListeners();
    }

    protected void fireActionHandlersChanged() {
        if (this.actionHandlersChanged) {
            this.firePropertyChange(new PropertyChangeEvent((Object)this, P_ACTION_HANDLERS, null, null));
            this.actionHandlersChanged = false;
        }
    }

    protected void firePropertyChange(PropertyChangeEvent event) {
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyChangeListener)listeners[i]).propertyChange(event);
            ++i;
        }
    }

    protected final boolean getActive() {
        return this.active;
    }

    public IAction getGlobalActionHandler(String actionID) {
        if (this.actionHandlers == null) {
            return null;
        }
        return (IAction)this.actionHandlers.get(actionID);
    }

    public Map getGlobalActionHandlers() {
        return this.actionHandlers;
    }

    public IMenuManager getMenuManager() {
        if (this.menuMgr == null) {
            this.menuMgr = this.createSubMenuManager(this.parent.getMenuManager());
            this.menuMgr.setVisible(this.active);
        }
        return this.menuMgr;
    }

    protected final IActionBars getParent() {
        return this.parent;
    }

    public final IServiceLocator getServiceLocator() {
        if (this.serviceLocator != null) {
            return this.serviceLocator;
        }
        return this.parent.getServiceLocator();
    }

    public IStatusLineManager getStatusLineManager() {
        if (this.statusLineMgr == null) {
            this.statusLineMgr = new SubStatusLineManager(this.parent.getStatusLineManager());
            this.statusLineMgr.setVisible(this.active);
        }
        return this.statusLineMgr;
    }

    public IToolBarManager getToolBarManager() {
        if (this.toolBarMgr == null) {
            this.toolBarMgr = this.createSubToolBarManager(this.parent.getToolBarManager());
            this.toolBarMgr.setVisible(this.active);
        }
        return this.toolBarMgr;
    }

    protected final boolean isSubMenuManagerCreated() {
        return this.menuMgr != null;
    }

    protected final boolean isSubStatusLineManagerCreated() {
        return this.statusLineMgr != null;
    }

    protected final boolean isSubToolBarManagerCreated() {
        return this.toolBarMgr != null;
    }

    public void partChanged(IWorkbenchPart part) {
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }

    protected void setActive(boolean set) {
        this.active = set;
        if (this.menuMgr != null) {
            this.menuMgr.setVisible(set);
        }
        if (this.statusLineMgr != null) {
            this.statusLineMgr.setVisible(set);
        }
        if (this.toolBarMgr != null) {
            this.toolBarMgr.setVisible(set);
        }
    }

    public void setGlobalActionHandler(String actionID, IAction handler) {
        if (actionID == null) {
            WorkbenchPlugin.log("Cannot set the global action handler for a null action id");
            return;
        }
        if (handler instanceof CommandLegacyActionWrapper) {
            WorkbenchPlugin.log("Cannot feed a CommandLegacyActionWrapper back into the system");
            return;
        }
        if (handler instanceof CommandAction) {
            return;
        }
        if (handler != null) {
            if (this.actionHandlers == null) {
                this.actionHandlers = new HashMap(11);
            }
            this.actionHandlers.put(actionID, handler);
            if (this.serviceLocator != null) {
                Class<?> clazz;
                IActionCommandMappingService mappingService;
                String commandId = null;
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$1 = Class.forName("org.eclipse.ui.internal.handlers.IActionCommandMappingService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((mappingService = (IActionCommandMappingService)this.serviceLocator.getService(clazz2)) != null) {
                    commandId = mappingService.getCommandId(actionID);
                }
                if (commandId == null) {
                    commandId = handler.getActionDefinitionId();
                }
                if ((clazz = class$0) == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IHandlerService service = (IHandlerService)this.serviceLocator.getService(clazz);
                HashMap<String, IHandlerActivation> activationsByActionId = null;
                if (this.activationsByActionIdByServiceLocator == null) {
                    this.activationsByActionIdByServiceLocator = new WeakHashMap();
                    activationsByActionId = new HashMap<String, IHandlerActivation>();
                    this.activationsByActionIdByServiceLocator.put(this.serviceLocator, activationsByActionId);
                } else {
                    IHandlerActivation activation;
                    Object value;
                    activationsByActionId = (HashMap<String, IHandlerActivation>)this.activationsByActionIdByServiceLocator.get(this.serviceLocator);
                    if (activationsByActionId == null) {
                        activationsByActionId = new HashMap();
                        this.activationsByActionIdByServiceLocator.put(this.serviceLocator, activationsByActionId);
                    } else if (activationsByActionId.containsKey(actionID)) {
                        value = activationsByActionId.remove(actionID);
                        if (value instanceof IHandlerActivation) {
                            activation = (IHandlerActivation)value;
                            this.actionIdByCommandId.remove(activation.getCommandId());
                            if (service != null) {
                                service.deactivateHandler(activation);
                            }
                            activation.getHandler().dispose();
                        }
                    } else if (commandId != null && this.actionIdByCommandId.containsKey(commandId) && (value = activationsByActionId.remove(this.actionIdByCommandId.remove(commandId))) instanceof IHandlerActivation) {
                        activation = (IHandlerActivation)value;
                        if (service != null) {
                            service.deactivateHandler(activation);
                        }
                        activation.getHandler().dispose();
                    }
                }
                if (commandId != null) {
                    this.actionIdByCommandId.put(commandId, actionID);
                    ActionHandler actionHandler = new ActionHandler(handler);
                    Expression handlerExpression = EXPRESSION;
                    if (this instanceof EditorActionBars) {
                        handlerExpression = ((EditorActionBars)this).getHandlerExpression();
                    }
                    if (service != null) {
                        IHandlerActivation activation = service.activateHandler(commandId, (IHandler)actionHandler, handlerExpression);
                        activationsByActionId.put(actionID, activation);
                    }
                }
            }
        } else {
            if (this.actionHandlers != null) {
                this.actionHandlers.remove(actionID);
            }
            if (this.serviceLocator != null) {
                Object value;
                Map activationsByActionId;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IHandlerService service = (IHandlerService)this.serviceLocator.getService(clazz);
                if (this.activationsByActionIdByServiceLocator != null && (activationsByActionId = (Map)this.activationsByActionIdByServiceLocator.get(this.serviceLocator)) != null && activationsByActionId.containsKey(actionID) && (value = activationsByActionId.remove(actionID)) instanceof IHandlerActivation) {
                    IHandlerActivation activation = (IHandlerActivation)value;
                    this.actionIdByCommandId.remove(activation.getCommandId());
                    service.deactivateHandler(activation);
                    activation.getHandler().dispose();
                }
            }
        }
        this.actionHandlersChanged = true;
    }

    protected final void setServiceLocator(IServiceLocator locator) {
        if (locator == null) {
            throw new NullPointerException("The service locator cannot be null");
        }
        this.serviceLocator = locator;
    }

    public void updateActionBars() {
        this.parent.updateActionBars();
        this.fireActionHandlersChanged();
    }
}

