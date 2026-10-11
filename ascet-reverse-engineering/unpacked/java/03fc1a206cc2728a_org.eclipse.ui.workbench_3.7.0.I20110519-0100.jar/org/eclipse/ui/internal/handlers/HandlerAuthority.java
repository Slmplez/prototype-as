/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.util.Tracing
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.handlers.HandlerActivation;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.services.EvaluationResultCacheComparator;
import org.eclipse.ui.internal.services.EvaluationService;
import org.eclipse.ui.internal.services.IEvaluationResultCache;
import org.eclipse.ui.services.IEvaluationService;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.services.ISourceProviderService;

final class HandlerAuthority {
    private static final boolean DEBUG = Policy.DEBUG_HANDLERS;
    private static final boolean DEBUG_PERFORMANCE = Policy.DEBUG_HANDLERS_PERFORMANCE;
    private static final boolean DEBUG_VERBOSE = Policy.DEBUG_HANDLERS && Policy.DEBUG_HANDLERS_VERBOSE;
    private static final String DEBUG_VERBOSE_COMMAND_ID = Policy.DEBUG_HANDLERS_VERBOSE_COMMAND_ID;
    private static final String TRACING_COMPONENT = "HANDLERS";
    private static final String[] SELECTION_VARIABLES = new String[]{"selection", "activeFocusControlId", "activeFocusControl", "activeMenuEditorInput", "activeMenu", "activeMenuSelection"};
    private final ICommandService commandService;
    private final Map handlerActivationsByCommandId = new HashMap();
    private Set previousLogs = new HashSet();
    private IServiceLocator locator;
    private Collection changedCommandIds = new HashSet();
    private IPropertyChangeListener serviceListener;
    private IEvaluationService evalService = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    HandlerAuthority(ICommandService commandService, IServiceLocator locator) {
        if (commandService == null) {
            throw new NullPointerException("The handler authority needs a command service");
        }
        this.commandService = commandService;
        this.locator = locator;
    }

    private IEvaluationService getEvaluationService() {
        if (this.evalService == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.ui.services.IEvaluationService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.evalService = (IEvaluationService)this.locator.getService(clazz);
            this.evalService.addServiceListener(this.getServiceListener());
        }
        return this.evalService;
    }

    private IPropertyChangeListener getServiceListener() {
        if (this.serviceListener == null) {
            this.serviceListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    if ("org.eclipse.ui.services.notifying".equals(event.getProperty()) && event.getNewValue() instanceof Boolean) {
                        boolean startNotifying = (Boolean)event.getNewValue();
                        if (startNotifying) {
                            HandlerAuthority.this.changedCommandIds.clear();
                        } else {
                            HandlerAuthority.this.processChangedCommands();
                        }
                    }
                }
            };
        }
        return this.serviceListener;
    }

    public void dispose() {
        if (this.serviceListener != null) {
            this.getEvaluationService().removeServiceListener(this.serviceListener);
            this.serviceListener = null;
        }
    }

    final void activateHandler(IHandlerActivation activation) {
        HandlerActivation handler = (HandlerActivation)activation;
        String commandId = handler.getCommandId();
        MultiStatus conflicts = new MultiStatus("org.eclipse.ui.workbench", 0, "A handler conflict occurred.  This may disable some commands.", null);
        Object value = this.handlerActivationsByCommandId.get(commandId);
        if (value instanceof SortedSet) {
            SortedSet handlerActivations = (SortedSet)value;
            if (!handlerActivations.contains(handler)) {
                handlerActivations.add(handler);
                if (handler.getExpression() != null) {
                    HandlerPropertyListener l = new HandlerPropertyListener(handler);
                    handler.setReference(this.getEvaluationService().addEvaluationListener(handler.getExpression(), l, handler.getCommandId()));
                }
                this.updateCommand(commandId, this.resolveConflicts(commandId, handlerActivations, conflicts));
            }
        } else if (value instanceof IHandlerActivation) {
            if (value != handler) {
                TreeSet<Object> handlerActivations = new TreeSet<Object>(new EvaluationResultCacheComparator());
                handlerActivations.add(value);
                handlerActivations.add(handler);
                if (handler.getExpression() != null) {
                    HandlerPropertyListener l = new HandlerPropertyListener(handler);
                    handler.setReference(this.getEvaluationService().addEvaluationListener(handler.getExpression(), l, handler.getCommandId()));
                }
                this.handlerActivationsByCommandId.put(commandId, handlerActivations);
                this.updateCommand(commandId, this.resolveConflicts(commandId, handlerActivations, conflicts));
            }
        } else {
            this.handlerActivationsByCommandId.put(commandId, handler);
            if (handler.getExpression() != null) {
                HandlerPropertyListener l = new HandlerPropertyListener(handler);
                handler.setReference(this.getEvaluationService().addEvaluationListener(handler.getExpression(), l, handler.getCommandId()));
            }
            this.updateCommand(commandId, this.evaluate(handler) ? handler : null);
        }
        if (conflicts.getSeverity() != 0) {
            WorkbenchPlugin.log((IStatus)conflicts);
        }
    }

    final void deactivateHandler(IHandlerActivation activation) {
        HandlerActivation handler = (HandlerActivation)activation;
        String commandId = handler.getCommandId();
        MultiStatus conflicts = new MultiStatus("org.eclipse.ui.workbench", 0, "A handler conflict occurred.  This may disable some commands.", null);
        Object value = this.handlerActivationsByCommandId.get(commandId);
        if (value instanceof SortedSet) {
            SortedSet handlerActivations = (SortedSet)value;
            if (handlerActivations.contains(handler)) {
                handlerActivations.remove(handler);
                if (handler.getReference() != null) {
                    this.getEvaluationService().removeEvaluationListener(handler.getReference());
                    handler.setReference(null);
                    handler.setListener(null);
                }
                if (handlerActivations.isEmpty()) {
                    this.handlerActivationsByCommandId.remove(commandId);
                    this.updateCommand(commandId, null);
                } else if (handlerActivations.size() == 1) {
                    IHandlerActivation remainingActivation = (IHandlerActivation)handlerActivations.iterator().next();
                    this.handlerActivationsByCommandId.put(commandId, remainingActivation);
                    this.updateCommand(commandId, this.evaluate(remainingActivation) ? remainingActivation : null);
                } else {
                    this.updateCommand(commandId, this.resolveConflicts(commandId, handlerActivations, conflicts));
                }
            }
        } else if (value instanceof IHandlerActivation && value == handler) {
            if (handler.getReference() != null) {
                this.getEvaluationService().removeEvaluationListener(handler.getReference());
                handler.setReference(null);
                handler.setListener(null);
            }
            this.handlerActivationsByCommandId.remove(commandId);
            this.updateCommand(commandId, null);
        }
        if (conflicts.getSeverity() != 0) {
            WorkbenchPlugin.log((IStatus)conflicts);
        }
    }

    private final IHandlerActivation resolveConflicts(String commandId, SortedSet activations, MultiStatus conflicts) {
        if (activations.isEmpty()) {
            return null;
        }
        Iterator activationItr = activations.iterator();
        IHandlerActivation bestActivation = null;
        IHandlerActivation currentActivation = null;
        boolean conflict = false;
        while (activationItr.hasNext()) {
            currentActivation = (IHandlerActivation)activationItr.next();
            if (!this.evaluate(currentActivation)) continue;
            if (DEBUG_VERBOSE && (DEBUG_VERBOSE_COMMAND_ID == null || DEBUG_VERBOSE_COMMAND_ID.equals(commandId))) {
                Tracing.printTrace((String)TRACING_COMPONENT, (String)("    resolveConflicts: eval: " + currentActivation));
            }
            if (bestActivation == null) {
                bestActivation = currentActivation;
                conflict = false;
                continue;
            }
            int comparison = bestActivation.compareTo(currentActivation);
            if (comparison < 0) {
                bestActivation = currentActivation;
                conflict = false;
                continue;
            }
            if (comparison != 0) break;
            if (currentActivation.getHandler() == bestActivation.getHandler()) continue;
            conflict = true;
            break;
        }
        if (DEBUG) {
            if (conflict) {
                Tracing.printTrace((String)TRACING_COMPONENT, (String)("Unresolved conflict detected for '" + commandId + '\''));
            } else if (bestActivation != null && DEBUG_VERBOSE && (DEBUG_VERBOSE_COMMAND_ID == null || DEBUG_VERBOSE_COMMAND_ID.equals(commandId))) {
                Tracing.printTrace((String)TRACING_COMPONENT, (String)"Resolved conflict detected.  The following activation won: ");
                Tracing.printTrace((String)TRACING_COMPONENT, (String)("    " + bestActivation));
            }
        }
        if (conflict) {
            if (this.previousLogs.add(commandId)) {
                StringWriter sw = new StringWriter();
                BufferedWriter buffer = new BufferedWriter(sw);
                try {
                    buffer.write("Conflict for '");
                    buffer.write(commandId);
                    buffer.write("':");
                    buffer.newLine();
                    buffer.write(bestActivation.toString());
                    buffer.newLine();
                    buffer.write(currentActivation.toString());
                    buffer.flush();
                }
                catch (IOException iOException) {}
                Status s = new Status(2, "org.eclipse.ui.workbench", sw.toString());
                conflicts.add((IStatus)s);
            }
            return null;
        }
        return bestActivation;
    }

    protected final void sourceChanged(int sourcePriority) {
    }

    private final void updateCommand(String commandId, IHandlerActivation activation) {
        Command command = this.commandService.getCommand(commandId);
        if (activation == null) {
            command.setHandler(null);
        } else {
            command.setHandler(activation.getHandler());
            this.commandService.refreshElements(commandId, null);
        }
    }

    public final IHandler findHandler(String commandId, IEvaluationContext context) {
        Object o = this.handlerActivationsByCommandId.get(commandId);
        if (o instanceof IHandlerActivation) {
            IHandlerActivation activation = (IHandlerActivation)o;
            try {
                if (this.eval(context, activation)) {
                    return activation.getHandler();
                }
            }
            catch (CoreException coreException) {}
        } else if (o instanceof SortedSet) {
            SortedSet activations = (SortedSet)o;
            IEvaluationResultCache lastActivation = null;
            IHandlerActivation currentActivation = null;
            Iterator i = activations.iterator();
            while (i.hasNext() && lastActivation == null) {
                IHandlerActivation activation = (IHandlerActivation)i.next();
                try {
                    if (!this.eval(context, activation)) continue;
                    lastActivation = currentActivation;
                    currentActivation = activation;
                }
                catch (CoreException coreException) {}
            }
            if (currentActivation != null) {
                if (lastActivation == null) {
                    return currentActivation.getHandler();
                }
                if (lastActivation.getSourcePriority() != currentActivation.getSourcePriority()) {
                    return lastActivation.getHandler();
                }
            }
        }
        return null;
    }

    private boolean eval(IEvaluationContext context, IHandlerActivation activation) throws CoreException {
        Expression expression = activation.getExpression();
        if (expression == null) {
            return true;
        }
        return expression.evaluate(context) == EvaluationResult.TRUE;
    }

    public IEvaluationContext createContextSnapshot(boolean includeSelection) {
        Class<?> clazz;
        IEvaluationContext tmpContext = this.getCurrentState();
        EvaluationContext context = null;
        if (includeSelection) {
            context = new EvaluationContext(null, tmpContext.getDefaultVariable());
            int i = 0;
            while (i < SELECTION_VARIABLES.length) {
                this.copyVariable((IEvaluationContext)context, tmpContext, SELECTION_VARIABLES[i]);
                ++i;
            }
        } else {
            context = new EvaluationContext(null, (Object)Collections.EMPTY_LIST);
        }
        if ((clazz = class$1) == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.ui.services.ISourceProviderService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ISourceProviderService sp = (ISourceProviderService)this.locator.getService(clazz);
        ISourceProvider[] providers = sp.getSourceProviders();
        int i = 0;
        while (i < providers.length) {
            String[] names = providers[i].getProvidedSourceNames();
            int j = 0;
            while (j < names.length) {
                if (!this.isSelectionVariable(names[j])) {
                    this.copyVariable((IEvaluationContext)context, tmpContext, names[j]);
                }
                ++j;
            }
            ++i;
        }
        return context;
    }

    private boolean isSelectionVariable(String name) {
        int i = 0;
        while (i < SELECTION_VARIABLES.length) {
            if (SELECTION_VARIABLES[i].equals(name)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private void copyVariable(IEvaluationContext context, IEvaluationContext tmpContext, String var) {
        Object o = tmpContext.getVariable(var);
        if (o != null) {
            context.addVariable(var, o);
        }
    }

    private void processChangedCommands() {
        long startTime = 0L;
        if (DEBUG_PERFORMANCE) {
            startTime = System.currentTimeMillis();
        }
        MultiStatus conflicts = new MultiStatus("org.eclipse.ui.workbench", 0, "A handler conflict occurred.  This may disable some commands.", null);
        String[] changedIds = this.changedCommandIds.toArray(new String[this.changedCommandIds.size()]);
        this.changedCommandIds.clear();
        int i = 0;
        while (i < changedIds.length) {
            IHandlerActivation activation;
            String commandId = changedIds[i];
            Object value = this.handlerActivationsByCommandId.get(commandId);
            if (value instanceof IHandlerActivation) {
                activation = (IHandlerActivation)value;
                this.updateCommand(commandId, this.evaluate(activation) ? activation : null);
            } else if (value instanceof SortedSet) {
                activation = this.resolveConflicts(commandId, (SortedSet)value, conflicts);
                this.updateCommand(commandId, activation);
            } else {
                this.updateCommand(commandId, null);
            }
            ++i;
        }
        if (conflicts.getSeverity() != 0) {
            WorkbenchPlugin.log((IStatus)conflicts);
        }
        if (DEBUG_PERFORMANCE) {
            long elapsedTime = System.currentTimeMillis() - startTime;
            int size = this.changedCommandIds.size();
            if (size > 0) {
                Tracing.printTrace((String)TRACING_COMPONENT, (String)(String.valueOf(size) + " command ids changed in " + elapsedTime + "ms"));
            }
        }
    }

    protected final boolean evaluate(IEvaluationResultCache expression) {
        IEvaluationContext contextWithDefaultVariable = this.getCurrentState();
        return expression.evaluate(contextWithDefaultVariable);
    }

    public final IEvaluationContext getCurrentState() {
        return this.getEvaluationService().getCurrentState();
    }

    public void updateShellKludge() {
        ((EvaluationService)this.getEvaluationService()).updateShellKludge();
    }

    public void updateShellKludge(Shell shell) {
        ((EvaluationService)this.getEvaluationService()).updateShellKludge(shell);
    }

    private class HandlerPropertyListener
    implements IPropertyChangeListener {
        private HandlerActivation handler;

        public HandlerPropertyListener(HandlerActivation activation) {
            this.handler = activation;
            this.handler.setListener(this);
        }

        public void propertyChange(PropertyChangeEvent event) {
            if (this.handler.getCommandId().equals(event.getProperty())) {
                boolean val = false;
                if (event.getNewValue() instanceof Boolean) {
                    val = (Boolean)event.getNewValue();
                }
                this.handler.setResult(val);
                HandlerAuthority.this.changedCommandIds.add(this.handler.getCommandId());
            }
        }
    }
}

