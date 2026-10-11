/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.commands.util.Tracing
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.contexts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.runtime.Assert;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.ActiveShellExpression;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.internal.contexts.ContextActivation;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.services.ExpressionAuthority;

public final class ContextAuthority
extends ExpressionAuthority {
    private static final int ACTIVATIONS_TO_RECOMPUTE_SIZE = 4;
    private static final boolean DEBUG = Policy.DEBUG_CONTEXTS;
    private static final boolean DEBUG_PERFORMANCE = Policy.DEBUG_CONTEXTS_PERFORMANCE;
    private static final String DISPOSE_LISTENER = "org.eclipse.ui.internal.contexts.ContextAuthority";
    private static final String TRACING_COMPONENT = "CONTEXTS";
    private final Set[] activationsBySourcePriority = new Set[33];
    private final Map contextActivationsByContextId = new HashMap();
    private final ContextManager contextManager;
    private final IContextService contextService;
    private final Map registeredWindows = new WeakHashMap();

    ContextAuthority(ContextManager contextManager, IContextService contextService) {
        if (contextManager == null) {
            throw new NullPointerException("The context authority needs a context manager");
        }
        if (contextService == null) {
            throw new NullPointerException("The context authority needs an evaluation context");
        }
        this.contextManager = contextManager;
        this.contextService = contextService;
    }

    final void activateContext(IContextActivation activation) {
        ArrayList<IContextActivation> contextActivations;
        String contextId = activation.getContextId();
        Object value = this.contextActivationsByContextId.get(contextId);
        if (value instanceof Collection) {
            contextActivations = (ArrayList<IContextActivation>)value;
            if (!contextActivations.contains(activation)) {
                contextActivations.add(activation);
                this.updateContext(contextId, this.containsActive(contextActivations));
            }
        } else if (value instanceof IContextActivation) {
            if (value != activation) {
                contextActivations = new ArrayList<IContextActivation>(2);
                contextActivations.add((IContextActivation)value);
                contextActivations.add(activation);
                this.contextActivationsByContextId.put(contextId, contextActivations);
                this.updateContext(contextId, this.containsActive(contextActivations));
            }
        } else {
            this.contextActivationsByContextId.put(contextId, activation);
            this.updateContext(contextId, this.evaluate(activation));
        }
        int sourcePriority = activation.getSourcePriority();
        int i = 1;
        while (i <= 32) {
            if ((sourcePriority & 1 << i) != 0) {
                HashSet<IContextActivation> activations = this.activationsBySourcePriority[i];
                if (activations == null) {
                    this.activationsBySourcePriority[i] = activations = new HashSet<IContextActivation>(1);
                }
                activations.add(activation);
            }
            ++i;
        }
    }

    private final void checkWindowType(final Shell newShell, Shell oldShell) {
        Collection oldActivations = (Collection)this.registeredWindows.get(oldShell);
        if (oldActivations == null && (oldActivations = (Collection)this.registeredWindows.get(null)) != null) {
            Iterator oldActivationItr = oldActivations.iterator();
            while (oldActivationItr.hasNext()) {
                IContextActivation activation = (IContextActivation)oldActivationItr.next();
                this.deactivateContext(activation);
            }
        }
        if (newShell != null && !newShell.isDisposed()) {
            if (newShell.getParent() != null && this.registeredWindows.get(newShell) == null) {
                final ArrayList<ContextActivation> newActivations = new ArrayList<ContextActivation>();
                ActiveShellExpression expression = new ActiveShellExpression(newShell);
                ContextActivation dialogWindowActivation = new ContextActivation("org.eclipse.ui.contexts.dialogAndWindow", expression, this.contextService);
                this.activateContext(dialogWindowActivation);
                newActivations.add(dialogWindowActivation);
                ContextActivation dialogActivation = new ContextActivation("org.eclipse.ui.contexts.dialog", expression, this.contextService);
                this.activateContext(dialogActivation);
                newActivations.add(dialogActivation);
                this.registeredWindows.put(null, newActivations);
                newShell.addDisposeListener(new DisposeListener(){

                    public void widgetDisposed(DisposeEvent e) {
                        ContextAuthority.this.registeredWindows.remove(null);
                        if (!newShell.isDisposed()) {
                            newShell.removeDisposeListener((DisposeListener)this);
                        }
                        Iterator newActivationItr = newActivations.iterator();
                        while (newActivationItr.hasNext()) {
                            ContextAuthority.this.deactivateContext((IContextActivation)newActivationItr.next());
                        }
                    }
                });
            } else {
                Object var4_4 = null;
            }
        }
    }

    private final boolean containsActive(Collection activations) {
        Iterator activationItr = activations.iterator();
        while (activationItr.hasNext()) {
            IContextActivation activation = (IContextActivation)activationItr.next();
            if (!this.evaluate(activation)) continue;
            return true;
        }
        return false;
    }

    final void deactivateContext(IContextActivation activation) {
        String contextId = activation.getContextId();
        Object value = this.contextActivationsByContextId.get(contextId);
        if (value instanceof Collection) {
            Collection contextActivations = (Collection)value;
            if (contextActivations.contains(activation)) {
                contextActivations.remove(activation);
                if (contextActivations.isEmpty()) {
                    this.contextActivationsByContextId.remove(contextId);
                    this.updateContext(contextId, false);
                } else if (contextActivations.size() == 1) {
                    IContextActivation remainingActivation = (IContextActivation)contextActivations.iterator().next();
                    this.contextActivationsByContextId.put(contextId, remainingActivation);
                    this.updateContext(contextId, this.evaluate(remainingActivation));
                } else {
                    this.updateContext(contextId, this.containsActive(contextActivations));
                }
            }
        } else if (value instanceof IContextActivation && value == activation) {
            this.contextActivationsByContextId.remove(contextId);
            this.updateContext(contextId, false);
        }
        int sourcePriority = activation.getSourcePriority();
        int i = 1;
        while (i <= 32) {
            Set activations;
            if ((sourcePriority & 1 << i) != 0 && (activations = this.activationsBySourcePriority[i]) != null) {
                activations.remove(activation);
                if (activations.isEmpty()) {
                    this.activationsBySourcePriority[i] = null;
                }
            }
            ++i;
        }
    }

    final Shell getActiveShell() {
        return (Shell)this.getVariable("activeShell");
    }

    public final int getShellType(Shell shell) {
        if (shell == null) {
            return 1;
        }
        Collection activations = (Collection)this.registeredWindows.get(shell);
        if (activations != null) {
            if (activations.isEmpty()) {
                return 1;
            }
            Iterator activationItr = activations.iterator();
            while (activationItr.hasNext()) {
                IContextActivation activation = (IContextActivation)activationItr.next();
                String contextId = activation.getContextId();
                if (contextId == "org.eclipse.ui.contexts.dialog") {
                    return 0;
                }
                if (contextId != "org.eclipse.ui.contexts.window") continue;
                return 2;
            }
            Assert.isTrue((boolean)false, (String)"A registered shell should have at least one submission matching TYPE_WINDOW or TYPE_DIALOG");
            return 1;
        }
        if (shell.getParent() != null) {
            return 0;
        }
        return 1;
    }

    public final boolean registerShell(final Shell shell, int type) {
        if (shell == null) {
            throw new NullPointerException("The shell was null");
        }
        if (DEBUG) {
            StringBuffer buffer = new StringBuffer("register shell '");
            buffer.append(shell);
            buffer.append("' as ");
            switch (type) {
                case 0: {
                    buffer.append("dialog");
                    break;
                }
                case 2: {
                    buffer.append("window");
                    break;
                }
                case 1: {
                    buffer.append("none");
                    break;
                }
                default: {
                    buffer.append("unknown");
                }
            }
            Tracing.printTrace((String)TRACING_COMPONENT, (String)buffer.toString());
        }
        final ArrayList<ContextActivation> activations = new ArrayList<ContextActivation>();
        switch (type) {
            case 0: {
                ActiveShellExpression expression = new ActiveShellExpression(shell);
                ContextActivation dialogWindowActivation = new ContextActivation("org.eclipse.ui.contexts.dialogAndWindow", expression, this.contextService);
                this.activateContext(dialogWindowActivation);
                activations.add(dialogWindowActivation);
                ContextActivation dialogActivation = new ContextActivation("org.eclipse.ui.contexts.dialog", expression, this.contextService);
                this.activateContext(dialogActivation);
                activations.add(dialogActivation);
                break;
            }
            case 1: {
                break;
            }
            case 2: {
                ActiveShellExpression expression = new ActiveShellExpression(shell);
                ContextActivation dialogWindowActivation = new ContextActivation("org.eclipse.ui.contexts.dialogAndWindow", expression, this.contextService);
                this.activateContext(dialogWindowActivation);
                activations.add(dialogWindowActivation);
                ContextActivation windowActivation = new ContextActivation("org.eclipse.ui.contexts.window", expression, this.contextService);
                this.activateContext(windowActivation);
                activations.add(windowActivation);
                break;
            }
            default: {
                throw new IllegalArgumentException("The type is not recognized: " + type);
            }
        }
        boolean returnValue = false;
        Collection previousActivations = (Collection)this.registeredWindows.get(shell);
        if (previousActivations != null) {
            returnValue = true;
            Iterator previousActivationItr = previousActivations.iterator();
            while (previousActivationItr.hasNext()) {
                IContextActivation activation = (IContextActivation)previousActivationItr.next();
                this.deactivateContext(activation);
            }
        }
        this.registeredWindows.put(shell, activations);
        DisposeListener shellDisposeListener = new DisposeListener(){

            public void widgetDisposed(DisposeEvent e) {
                ContextAuthority.this.registeredWindows.remove(shell);
                if (!shell.isDisposed()) {
                    shell.removeDisposeListener((DisposeListener)this);
                }
                Iterator activationItr = activations.iterator();
                while (activationItr.hasNext()) {
                    ContextAuthority.this.deactivateContext((IContextActivation)activationItr.next());
                }
            }
        };
        shell.addDisposeListener(shellDisposeListener);
        shell.setData(DISPOSE_LISTENER, (Object)shellDisposeListener);
        return returnValue;
    }

    protected final void sourceChanged(int sourcePriority) {
        long startTime = 0L;
        if (DEBUG_PERFORMANCE) {
            startTime = System.currentTimeMillis();
        }
        HashSet activationsToRecompute = new HashSet(4);
        int i = 1;
        while (i <= 32) {
            Set activations;
            if ((sourcePriority & 1 << i) != 0 && (activations = this.activationsBySourcePriority[i]) != null) {
                Iterator activationItr = activations.iterator();
                while (activationItr.hasNext()) {
                    activationsToRecompute.add(activationItr.next());
                }
            }
            ++i;
        }
        ArrayList<String> changedContextIds = new ArrayList<String>(activationsToRecompute.size());
        Iterator activationItr = activationsToRecompute.iterator();
        while (activationItr.hasNext()) {
            IContextActivation activation = (IContextActivation)activationItr.next();
            boolean currentActive = this.evaluate(activation);
            activation.clearResult();
            boolean newActive = this.evaluate(activation);
            if (newActive == currentActive) continue;
            changedContextIds.add(activation.getContextId());
        }
        try {
            this.contextManager.deferUpdates(true);
            Iterator changedContextIdItr = changedContextIds.iterator();
            while (changedContextIdItr.hasNext()) {
                String contextId = (String)changedContextIdItr.next();
                Object value = this.contextActivationsByContextId.get(contextId);
                if (value instanceof IContextActivation) {
                    IContextActivation activation = (IContextActivation)value;
                    this.updateContext(contextId, this.evaluate(activation));
                    continue;
                }
                if (value instanceof Collection) {
                    this.updateContext(contextId, this.containsActive((Collection)value));
                    continue;
                }
                this.updateContext(contextId, false);
            }
        }
        finally {
            this.contextManager.deferUpdates(false);
        }
        if (DEBUG_PERFORMANCE) {
            long elapsedTime = System.currentTimeMillis() - startTime;
            int size = activationsToRecompute.size();
            if (size > 0) {
                Tracing.printTrace((String)TRACING_COMPONENT, (String)(String.valueOf(size) + " activations recomputed in " + elapsedTime + "ms"));
            }
        }
    }

    public final boolean unregisterShell(Shell shell) {
        Collection previousActivations;
        DisposeListener oldListener;
        if (shell == null) {
            return false;
        }
        if (!shell.isDisposed() && (oldListener = (DisposeListener)shell.getData(DISPOSE_LISTENER)) != null) {
            shell.removeDisposeListener(oldListener);
        }
        if ((previousActivations = (Collection)this.registeredWindows.get(shell)) != null) {
            this.registeredWindows.remove(shell);
            Iterator previousActivationItr = previousActivations.iterator();
            while (previousActivationItr.hasNext()) {
                IContextActivation activation = (IContextActivation)previousActivationItr.next();
                this.deactivateContext(activation);
            }
            return true;
        }
        return false;
    }

    private final void updateContext(String contextId, boolean active) {
        if (active) {
            this.contextManager.addActiveContext(contextId);
        } else {
            this.contextManager.removeActiveContext(contextId);
        }
    }

    protected final void updateEvaluationContext(String name, Object value) {
        if (name != null && !"activeWorkbenchWindowShell".equals(name)) {
            if ("activeShell".equals(name)) {
                this.checkWindowType((Shell)value, (Shell)this.getVariable("activeShell"));
            }
            this.changeVariable(name, value);
        }
    }

    final void updateShellKludge() {
        this.updateCurrentState();
        this.sourceChanged(1024);
    }
}

