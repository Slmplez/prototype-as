/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.core.commands;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.StringWriter;
import org.eclipse.core.commands.Category;
import org.eclipse.core.commands.CommandEvent;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.HandlerEvent;
import org.eclipse.core.commands.ICommandListener;
import org.eclipse.core.commands.IExecutionListener;
import org.eclipse.core.commands.IExecutionListenerWithChecks;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.IHandler2;
import org.eclipse.core.commands.IHandlerListener;
import org.eclipse.core.commands.IObjectWithState;
import org.eclipse.core.commands.IParameter;
import org.eclipse.core.commands.ITypedParameter;
import org.eclipse.core.commands.NamedHandleObjectWithState;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterType;
import org.eclipse.core.commands.State;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.commands.util.Tracing;
import org.eclipse.core.internal.commands.util.Util;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;

public final class Command
extends NamedHandleObjectWithState
implements Comparable {
    public static boolean DEBUG_COMMAND_EXECUTION = false;
    public static boolean DEBUG_HANDLERS = false;
    public static String DEBUG_HANDLERS_COMMAND_ID = null;
    private Category category = null;
    private transient ListenerList executionListeners = null;
    private transient IHandler handler = null;
    private String helpContextId;
    private IParameter[] parameters = null;
    private ParameterType returnType = null;
    private IHandlerListener handlerListener;

    Command(String id) {
        super(id);
    }

    public final void addCommandListener(ICommandListener commandListener) {
        if (commandListener == null) {
            throw new NullPointerException("Cannot add a null command listener");
        }
        this.addListenerObject(commandListener);
    }

    public final void addExecutionListener(IExecutionListener executionListener) {
        if (executionListener == null) {
            throw new NullPointerException("Cannot add a null execution listener");
        }
        if (this.executionListeners == null) {
            this.executionListeners = new ListenerList(1);
        }
        this.executionListeners.add((Object)executionListener);
    }

    public void addState(String id, State state) {
        super.addState(id, state);
        state.setId(id);
        if (this.handler instanceof IObjectWithState) {
            ((IObjectWithState)((Object)this.handler)).addState(id, state);
        }
    }

    public final int compareTo(Object object) {
        Command castedObject = (Command)object;
        int compareTo = Util.compare(this.category, castedObject.category);
        if (compareTo == 0 && (compareTo = Util.compare(this.defined, castedObject.defined)) == 0 && (compareTo = Util.compare((Comparable)((Object)this.description), (Comparable)((Object)castedObject.description))) == 0 && (compareTo = Util.compare(this.handler, castedObject.handler)) == 0 && (compareTo = Util.compare((Comparable)((Object)this.id), (Comparable)((Object)castedObject.id))) == 0 && (compareTo = Util.compare((Comparable)((Object)this.name), (Comparable)((Object)castedObject.name))) == 0) {
            compareTo = Util.compare(this.parameters, castedObject.parameters);
        }
        return compareTo;
    }

    public final void define(String name, String description, Category category) {
        this.define(name, description, category, null);
    }

    public final void define(String name, String description, Category category, IParameter[] parameters) {
        this.define(name, description, category, parameters, null);
    }

    public final void define(String name, String description, Category category, IParameter[] parameters, ParameterType returnType) {
        this.define(name, description, category, parameters, returnType, null);
    }

    public final void define(String name, String description, Category category, IParameter[] parameters, ParameterType returnType, String helpContextId) {
        if (name == null) {
            throw new NullPointerException("The name of a command cannot be null");
        }
        if (category == null) {
            throw new NullPointerException("The category of a command cannot be null");
        }
        boolean definedChanged = !this.defined;
        this.defined = true;
        boolean nameChanged = !Util.equals(this.name, name);
        this.name = name;
        boolean descriptionChanged = !Util.equals(this.description, description);
        this.description = description;
        boolean categoryChanged = !Util.equals(this.category, category);
        this.category = category;
        boolean parametersChanged = !Util.equals(this.parameters, parameters);
        this.parameters = parameters;
        boolean returnTypeChanged = !Util.equals(this.returnType, returnType);
        this.returnType = returnType;
        boolean helpContextIdChanged = !Util.equals(this.helpContextId, helpContextId);
        this.helpContextId = helpContextId;
        this.fireCommandChanged(new CommandEvent(this, categoryChanged, definedChanged, descriptionChanged, false, nameChanged, parametersChanged, returnTypeChanged, helpContextIdChanged));
    }

    public final Object execute(ExecutionEvent event) throws ExecutionException, NotHandledException {
        this.firePreExecute(event);
        IHandler handler = this.handler;
        if (handler != null && handler.isHandled()) {
            try {
                Object returnValue = handler.execute(event);
                this.firePostExecuteSuccess(returnValue);
                return returnValue;
            }
            catch (ExecutionException e) {
                this.firePostExecuteFailure(e);
                throw e;
            }
        }
        NotHandledException e = new NotHandledException("There is no handler to execute. " + this.getId());
        this.fireNotHandled(e);
        throw e;
    }

    public final Object executeWithChecks(ExecutionEvent event) throws ExecutionException, NotDefinedException, NotEnabledException, NotHandledException {
        this.firePreExecute(event);
        IHandler handler = this.handler;
        if (!this.isDefined()) {
            NotDefinedException exception = new NotDefinedException("Trying to execute a command that is not defined. " + this.getId());
            this.fireNotDefined(exception);
            throw exception;
        }
        if (handler != null && handler.isHandled()) {
            this.setEnabled(event.getApplicationContext());
            if (!this.isEnabled()) {
                NotEnabledException exception = new NotEnabledException("Trying to execute the disabled command " + this.getId());
                this.fireNotEnabled(exception);
                throw exception;
            }
            try {
                Object returnValue = handler.execute(event);
                this.firePostExecuteSuccess(returnValue);
                return returnValue;
            }
            catch (ExecutionException e) {
                this.firePostExecuteFailure(e);
                throw e;
            }
        }
        NotHandledException e = new NotHandledException("There is no handler to execute for command " + this.getId());
        this.fireNotHandled(e);
        throw e;
    }

    private final void fireCommandChanged(final CommandEvent commandEvent) {
        if (commandEvent == null) {
            throw new NullPointerException("Cannot fire a null event");
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            final ICommandListener listener = (ICommandListener)listeners[i];
            SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.commandChanged(commandEvent);
                }
            });
            ++i;
        }
    }

    private final void fireNotDefined(NotDefinedException e) {
        if (DEBUG_COMMAND_EXECUTION) {
            Tracing.printTrace("COMMANDS", "execute >>> not defined: id=" + this.getId() + "; exception=" + e);
        }
        if (this.executionListeners != null) {
            Object[] listeners = this.executionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                Object object = listeners[i];
                if (object instanceof IExecutionListenerWithChecks) {
                    IExecutionListenerWithChecks listener = (IExecutionListenerWithChecks)object;
                    listener.notDefined(this.getId(), e);
                }
                ++i;
            }
        }
    }

    private final void fireNotEnabled(NotEnabledException e) {
        if (DEBUG_COMMAND_EXECUTION) {
            Tracing.printTrace("COMMANDS", "execute >>> not enabled: id=" + this.getId() + "; exception=" + e);
        }
        if (this.executionListeners != null) {
            Object[] listeners = this.executionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                Object object = listeners[i];
                if (object instanceof IExecutionListenerWithChecks) {
                    IExecutionListenerWithChecks listener = (IExecutionListenerWithChecks)object;
                    listener.notEnabled(this.getId(), e);
                }
                ++i;
            }
        }
    }

    private final void fireNotHandled(NotHandledException e) {
        if (DEBUG_COMMAND_EXECUTION) {
            Tracing.printTrace("COMMANDS", "execute >>> not handled: id=" + this.getId() + "; exception=" + e);
        }
        if (this.executionListeners != null) {
            Object[] listeners = this.executionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                IExecutionListener listener = (IExecutionListener)listeners[i];
                listener.notHandled(this.getId(), e);
                ++i;
            }
        }
    }

    private final void firePostExecuteFailure(ExecutionException e) {
        if (DEBUG_COMMAND_EXECUTION) {
            Tracing.printTrace("COMMANDS", "execute >>> failure: id=" + this.getId() + "; exception=" + e);
        }
        if (this.executionListeners != null) {
            Object[] listeners = this.executionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                IExecutionListener listener = (IExecutionListener)listeners[i];
                listener.postExecuteFailure(this.getId(), e);
                ++i;
            }
        }
    }

    private final void firePostExecuteSuccess(Object returnValue) {
        if (DEBUG_COMMAND_EXECUTION) {
            Tracing.printTrace("COMMANDS", "execute >>> success: id=" + this.getId() + "; returnValue=" + returnValue);
        }
        if (this.executionListeners != null) {
            Object[] listeners = this.executionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                IExecutionListener listener = (IExecutionListener)listeners[i];
                listener.postExecuteSuccess(this.getId(), returnValue);
                ++i;
            }
        }
    }

    private final void firePreExecute(ExecutionEvent event) {
        if (DEBUG_COMMAND_EXECUTION) {
            Tracing.printTrace("COMMANDS", "execute >>> starting: id=" + this.getId() + "; event=" + event);
        }
        if (this.executionListeners != null) {
            Object[] listeners = this.executionListeners.getListeners();
            int i = 0;
            while (i < listeners.length) {
                IExecutionListener listener = (IExecutionListener)listeners[i];
                listener.preExecute(this.getId(), event);
                ++i;
            }
        }
    }

    public final Category getCategory() throws NotDefinedException {
        if (!this.isDefined()) {
            throw new NotDefinedException("Cannot get the category from an undefined command. " + this.id);
        }
        return this.category;
    }

    public final IHandler getHandler() {
        return this.handler;
    }

    final String getHelpContextId() {
        return this.helpContextId;
    }

    public final IParameter getParameter(String parameterId) throws NotDefinedException {
        if (!this.isDefined()) {
            throw new NotDefinedException("Cannot get a parameter from an undefined command. " + this.id);
        }
        if (this.parameters == null) {
            return null;
        }
        int i = 0;
        while (i < this.parameters.length) {
            IParameter parameter = this.parameters[i];
            if (parameter.getId().equals(parameterId)) {
                return parameter;
            }
            ++i;
        }
        return null;
    }

    public final IParameter[] getParameters() throws NotDefinedException {
        if (!this.isDefined()) {
            throw new NotDefinedException("Cannot get the parameters from an undefined command. " + this.id);
        }
        if (this.parameters == null || this.parameters.length == 0) {
            return null;
        }
        IParameter[] returnValue = new IParameter[this.parameters.length];
        System.arraycopy(this.parameters, 0, returnValue, 0, this.parameters.length);
        return returnValue;
    }

    public final ParameterType getParameterType(String parameterId) throws NotDefinedException {
        IParameter parameter = this.getParameter(parameterId);
        if (parameter instanceof ITypedParameter) {
            ITypedParameter parameterWithType = (ITypedParameter)((Object)parameter);
            return parameterWithType.getParameterType();
        }
        return null;
    }

    public final ParameterType getReturnType() throws NotDefinedException {
        if (!this.isDefined()) {
            throw new NotDefinedException("Cannot get the return type of an undefined command. " + this.id);
        }
        return this.returnType;
    }

    public final boolean isEnabled() {
        if (this.handler == null) {
            return false;
        }
        try {
            return this.handler.isEnabled();
        }
        catch (Exception e) {
            if (DEBUG_HANDLERS) {
                Tracing.printTrace("HANDLERS", "Handler " + this.handler + " for " + this.id + " threw unexpected exception");
                e.printStackTrace(System.out);
            }
            return false;
        }
    }

    public void setEnabled(Object evaluationContext) {
        if (this.handler instanceof IHandler2) {
            ((IHandler2)this.handler).setEnabled(evaluationContext);
        }
    }

    public final boolean isHandled() {
        if (this.handler == null) {
            return false;
        }
        return this.handler.isHandled();
    }

    public final void removeCommandListener(ICommandListener commandListener) {
        if (commandListener == null) {
            throw new NullPointerException("Cannot remove a null command listener");
        }
        this.removeListenerObject(commandListener);
    }

    public final void removeExecutionListener(IExecutionListener executionListener) {
        if (executionListener == null) {
            throw new NullPointerException("Cannot remove a null execution listener");
        }
        if (this.executionListeners != null) {
            this.executionListeners.remove((Object)executionListener);
            if (this.executionListeners.isEmpty()) {
                this.executionListeners = null;
            }
        }
    }

    public void removeState(String stateId) {
        if (this.handler instanceof IObjectWithState) {
            ((IObjectWithState)((Object)this.handler)).removeState(stateId);
        }
        super.removeState(stateId);
    }

    public final boolean setHandler(IHandler handler) {
        if (Util.equals(handler, this.handler)) {
            return false;
        }
        String[] stateIds = this.getStateIds();
        if (stateIds != null) {
            int i = 0;
            while (i < stateIds.length) {
                String stateId = stateIds[i];
                if (this.handler instanceof IObjectWithState) {
                    ((IObjectWithState)((Object)this.handler)).removeState(stateId);
                }
                if (handler instanceof IObjectWithState) {
                    State stateToAdd = this.getState(stateId);
                    ((IObjectWithState)((Object)handler)).addState(stateId, stateToAdd);
                }
                ++i;
            }
        }
        boolean enabled = this.isEnabled();
        if (this.handler != null) {
            this.handler.removeHandlerListener(this.getHandlerListener());
        }
        this.handler = handler;
        if (this.handler != null) {
            this.handler.addHandlerListener(this.getHandlerListener());
        }
        this.string = null;
        if (DEBUG_HANDLERS && (DEBUG_HANDLERS_COMMAND_ID == null || DEBUG_HANDLERS_COMMAND_ID.equals(this.id))) {
            StringBuffer buffer = new StringBuffer("Command('");
            buffer.append(this.id);
            buffer.append("') has changed to ");
            if (handler == null) {
                buffer.append("no handler");
            } else {
                buffer.append('\'');
                buffer.append(handler);
                buffer.append("' as its handler");
            }
            Tracing.printTrace("HANDLERS", buffer.toString());
        }
        this.fireCommandChanged(new CommandEvent(this, false, false, false, true, false, false, false, false, enabled ^ this.isEnabled()));
        return true;
    }

    private IHandlerListener getHandlerListener() {
        if (this.handlerListener == null) {
            this.handlerListener = new IHandlerListener(){

                public void handlerChanged(HandlerEvent handlerEvent) {
                    boolean enabledChanged = handlerEvent.isEnabledChanged();
                    boolean handledChanged = handlerEvent.isHandledChanged();
                    Command.this.fireCommandChanged(new CommandEvent(Command.this, false, false, false, handledChanged, false, false, false, false, enabledChanged));
                }
            };
        }
        return this.handlerListener;
    }

    public final String toString() {
        if (this.string == null) {
            StringWriter sw = new StringWriter();
            BufferedWriter buffer = new BufferedWriter(sw);
            try {
                buffer.write("Command(");
                buffer.write(this.id);
                buffer.write(44);
                buffer.write(this.name == null ? "" : this.name);
                buffer.write(44);
                buffer.newLine();
                buffer.write("\t\t");
                buffer.write(this.description == null ? "" : this.description);
                buffer.write(44);
                buffer.newLine();
                buffer.write("\t\t");
                buffer.write(this.category == null ? "" : this.category.toString());
                buffer.write(44);
                buffer.newLine();
                buffer.write("\t\t");
                buffer.write(this.handler == null ? "" : this.handler.toString());
                buffer.write(44);
                buffer.newLine();
                buffer.write("\t\t");
                buffer.write(this.parameters == null ? "" : this.parameters.toString());
                buffer.write(44);
                buffer.write(this.returnType == null ? "" : this.returnType.toString());
                buffer.write(44);
                buffer.write("" + this.defined);
                buffer.write(41);
                buffer.flush();
            }
            catch (IOException iOException) {}
            this.string = sw.toString();
        }
        return this.string;
    }

    public final void undefine() {
        boolean enabledChanged = this.isEnabled();
        this.string = null;
        boolean definedChanged = this.defined;
        this.defined = false;
        boolean nameChanged = this.name != null;
        this.name = null;
        boolean descriptionChanged = this.description != null;
        this.description = null;
        boolean categoryChanged = this.category != null;
        this.category = null;
        boolean parametersChanged = this.parameters != null;
        this.parameters = null;
        boolean returnTypeChanged = this.returnType != null;
        this.returnType = null;
        String[] stateIds = this.getStateIds();
        if (stateIds != null) {
            if (this.handler instanceof IObjectWithState) {
                IObjectWithState handlerWithState = (IObjectWithState)((Object)this.handler);
                int i = 0;
                while (i < stateIds.length) {
                    String stateId = stateIds[i];
                    handlerWithState.removeState(stateId);
                    State state = this.getState(stateId);
                    this.removeState(stateId);
                    state.dispose();
                    ++i;
                }
            } else {
                int i = 0;
                while (i < stateIds.length) {
                    String stateId = stateIds[i];
                    State state = this.getState(stateId);
                    this.removeState(stateId);
                    state.dispose();
                    ++i;
                }
            }
        }
        this.fireCommandChanged(new CommandEvent(this, categoryChanged, definedChanged, descriptionChanged, false, nameChanged, parametersChanged, returnTypeChanged, false, enabledChanged));
    }
}

