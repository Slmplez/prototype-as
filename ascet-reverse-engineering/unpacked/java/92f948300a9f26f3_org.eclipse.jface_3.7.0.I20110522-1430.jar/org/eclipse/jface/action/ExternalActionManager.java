/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandEvent
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.ICommandListener
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.widgets.Event
 */
package org.eclipse.jface.action;

import java.text.MessageFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandEvent;
import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.ICommandListener;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.BindingManagerEvent;
import org.eclipse.jface.bindings.IBindingManagerListener;
import org.eclipse.jface.bindings.Trigger;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.bindings.keys.SWTKeySupport;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.widgets.Event;

public final class ExternalActionManager {
    private static ExternalActionManager instance;
    private ICallback callback;
    static /* synthetic */ Class class$0;

    public static ExternalActionManager getInstance() {
        if (instance == null) {
            instance = new ExternalActionManager();
        }
        return instance;
    }

    private ExternalActionManager() {
    }

    public ICallback getCallback() {
        return this.callback;
    }

    public void setCallback(ICallback callbackToUse) {
        this.callback = callbackToUse;
    }

    public static class CommandCallback
    implements IBindingManagerListener,
    IBindingManagerCallback,
    IExecuteCallback {
        private static final ResourceBundle RESOURCE_BUNDLE;
        private final IActiveChecker activeChecker;
        private final IExecuteApplicable applicabilityChecker;
        private final BindingManager bindingManager;
        private boolean bindingManagerListenerAttached = false;
        private final CommandManager commandManager;
        private final Set loggedCommandIds = new HashSet();
        private final Map registeredListeners = new HashMap();

        static {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.action.ExternalActionManager");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
        }

        public CommandCallback(BindingManager bindingManager, CommandManager commandManager) {
            this(bindingManager, commandManager, new IActiveChecker(){

                public boolean isActive(String commandId) {
                    return true;
                }
            }, new IExecuteApplicable(){

                public boolean isApplicable(IAction action) {
                    return true;
                }
            });
        }

        public CommandCallback(BindingManager bindingManager, CommandManager commandManager, IActiveChecker activeChecker) {
            this(bindingManager, commandManager, activeChecker, new IExecuteApplicable(){

                public boolean isApplicable(IAction action) {
                    return true;
                }
            });
        }

        public CommandCallback(BindingManager bindingManager, CommandManager commandManager, IActiveChecker activeChecker, IExecuteApplicable checker) {
            if (bindingManager == null) {
                throw new NullPointerException("The callback needs a binding manager");
            }
            if (commandManager == null) {
                throw new NullPointerException("The callback needs a command manager");
            }
            if (activeChecker == null) {
                throw new NullPointerException("The callback needs an active callback");
            }
            if (checker == null) {
                throw new NullPointerException("The callback needs an applicable callback");
            }
            this.activeChecker = activeChecker;
            this.bindingManager = bindingManager;
            this.commandManager = commandManager;
            this.applicabilityChecker = checker;
        }

        public final void addPropertyChangeListener(String commandId, IPropertyChangeListener listener) {
            Object existing = this.registeredListeners.get(commandId);
            if (existing instanceof ListenerList) {
                ((ListenerList)existing).add((Object)listener);
            } else if (existing != null) {
                ListenerList listeners = new ListenerList(1);
                listeners.add(existing);
                listeners.add((Object)listener);
                this.registeredListeners.put(commandId, listeners);
            } else {
                this.registeredListeners.put(commandId, listener);
            }
            if (!this.bindingManagerListenerAttached) {
                this.bindingManager.addBindingManagerListener(this);
                this.bindingManagerListenerAttached = true;
            }
        }

        public final void bindingManagerChanged(BindingManagerEvent event) {
            if (event.isActiveBindingsChanged()) {
                Iterator listenerItr = this.registeredListeners.entrySet().iterator();
                while (listenerItr.hasNext()) {
                    Map.Entry entry = listenerItr.next();
                    String commandId = (String)entry.getKey();
                    Command command = this.commandManager.getCommand(commandId);
                    ParameterizedCommand parameterizedCommand = new ParameterizedCommand(command, null);
                    if (!event.isActiveBindingsChangedFor(parameterizedCommand)) continue;
                    Object value = entry.getValue();
                    PropertyChangeEvent propertyChangeEvent = new PropertyChangeEvent(event.getManager(), "text", null, null);
                    if (value instanceof ListenerList) {
                        Object[] listeners = ((ListenerList)value).getListeners();
                        int i = 0;
                        while (i < listeners.length) {
                            IPropertyChangeListener listener = (IPropertyChangeListener)listeners[i];
                            listener.propertyChange(propertyChangeEvent);
                            ++i;
                        }
                        continue;
                    }
                    IPropertyChangeListener listener = (IPropertyChangeListener)value;
                    listener.propertyChange(propertyChangeEvent);
                }
            }
        }

        public final Integer getAccelerator(String commandId) {
            Trigger trigger;
            Trigger[] triggers;
            TriggerSequence triggerSequence = this.bindingManager.getBestActiveBindingFor(commandId);
            if (triggerSequence != null && (triggers = triggerSequence.getTriggers()).length == 1 && (trigger = triggers[0]) instanceof KeyStroke) {
                KeyStroke keyStroke = (KeyStroke)trigger;
                int accelerator = SWTKeySupport.convertKeyStrokeToAccelerator(keyStroke);
                return new Integer(accelerator);
            }
            return null;
        }

        public final String getAcceleratorText(String commandId) {
            TriggerSequence triggerSequence = this.bindingManager.getBestActiveBindingFor(commandId);
            if (triggerSequence == null) {
                return null;
            }
            return triggerSequence.format();
        }

        public final TriggerSequence[] getActiveBindingsFor(String commandId) {
            return this.bindingManager.getActiveBindingsFor(commandId);
        }

        public final boolean isAcceleratorInUse(int accelerator) {
            KeySequence keySequence = KeySequence.getInstance(SWTKeySupport.convertAcceleratorToKeyStroke(accelerator));
            return this.bindingManager.isPerfectMatch(keySequence) || this.bindingManager.isPartialMatch(keySequence);
        }

        public final boolean isActive(String commandId) {
            if (commandId != null) {
                Command command = this.commandManager.getCommand(commandId);
                if (!command.isDefined() && !this.loggedCommandIds.contains(commandId)) {
                    String message = MessageFormat.format(Util.translateString(RESOURCE_BUNDLE, "undefinedCommand.WarningMessage", null), command.getId());
                    Status status = new Status(4, "org.eclipse.jface", 0, message, (Throwable)new Exception());
                    Policy.getLog().log((IStatus)status);
                    this.loggedCommandIds.add(commandId);
                    command.addCommandListener(new ICommandListener(this, command, commandId){
                        final /* synthetic */ CommandCallback this$1;
                        private final /* synthetic */ Command val$command;
                        private final /* synthetic */ String val$commandId;
                        {
                            this.this$1 = commandCallback;
                            this.val$command = command;
                            this.val$commandId = string;
                        }

                        public final void commandChanged(CommandEvent commandEvent) {
                            if (this.val$command.isDefined()) {
                                this.val$command.removeCommandListener((ICommandListener)this);
                                CommandCallback.access$0(this.this$1).remove(this.val$commandId);
                            }
                        }
                    });
                    return true;
                }
                return this.activeChecker.isActive(commandId);
            }
            return true;
        }

        public final void removePropertyChangeListener(String commandId, IPropertyChangeListener listener) {
            Object existing = this.registeredListeners.get(commandId);
            if (existing == listener) {
                this.registeredListeners.remove(commandId);
                if (this.registeredListeners.isEmpty()) {
                    this.bindingManager.removeBindingManagerListener(this);
                    this.bindingManagerListenerAttached = false;
                }
            } else if (existing instanceof ListenerList) {
                ListenerList existingList = (ListenerList)existing;
                existingList.remove((Object)listener);
                if (existingList.size() == 1) {
                    this.registeredListeners.put(commandId, existingList.getListeners()[0]);
                }
            }
        }

        public void preExecute(IAction action, Event event) {
            String actionDefinitionId = action.getActionDefinitionId();
            if (actionDefinitionId == null || !this.applicabilityChecker.isApplicable(action)) {
                return;
            }
            Command command = this.commandManager.getCommand(actionDefinitionId);
            ExecutionEvent executionEvent = new ExecutionEvent(command, Collections.EMPTY_MAP, (Object)event, null);
            this.commandManager.firePreExecute(actionDefinitionId, executionEvent);
        }

        public void postExecuteSuccess(IAction action, Object returnValue) {
            String actionDefinitionId = action.getActionDefinitionId();
            if (actionDefinitionId == null || !this.applicabilityChecker.isApplicable(action)) {
                return;
            }
            this.commandManager.firePostExecuteSuccess(actionDefinitionId, returnValue);
        }

        public void postExecuteFailure(IAction action, ExecutionException exception) {
            String actionDefinitionId = action.getActionDefinitionId();
            if (actionDefinitionId == null || !this.applicabilityChecker.isApplicable(action)) {
                return;
            }
            this.commandManager.firePostExecuteFailure(actionDefinitionId, exception);
        }

        public void notDefined(IAction action, NotDefinedException exception) {
            String actionDefinitionId = action.getActionDefinitionId();
            if (actionDefinitionId == null || !this.applicabilityChecker.isApplicable(action)) {
                return;
            }
            this.commandManager.fireNotDefined(actionDefinitionId, exception);
        }

        public void notEnabled(IAction action, NotEnabledException exception) {
            String actionDefinitionId = action.getActionDefinitionId();
            if (actionDefinitionId == null || !this.applicabilityChecker.isApplicable(action)) {
                return;
            }
            this.commandManager.fireNotEnabled(actionDefinitionId, exception);
        }

        static /* synthetic */ Set access$0(CommandCallback commandCallback) {
            return commandCallback.loggedCommandIds;
        }
    }

    public static interface IActiveChecker {
        public boolean isActive(String var1);
    }

    public static interface IBindingManagerCallback
    extends ICallback {
        public TriggerSequence[] getActiveBindingsFor(String var1);
    }

    public static interface ICallback {
        public void addPropertyChangeListener(String var1, IPropertyChangeListener var2);

        public Integer getAccelerator(String var1);

        public String getAcceleratorText(String var1);

        public boolean isAcceleratorInUse(int var1);

        public boolean isActive(String var1);

        public void removePropertyChangeListener(String var1, IPropertyChangeListener var2);
    }

    public static interface IExecuteApplicable {
        public boolean isApplicable(IAction var1);
    }

    public static interface IExecuteCallback {
        public void notEnabled(IAction var1, NotEnabledException var2);

        public void notDefined(IAction var1, NotDefinedException var2);

        public void preExecute(IAction var1, Event var2);

        public void postExecuteSuccess(IAction var1, Object var2);

        public void postExecuteFailure(IAction var1, ExecutionException var2);
    }
}

