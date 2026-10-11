/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Category
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.IExecutionListener
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.ParameterType
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.SerializationException
 *  org.eclipse.core.commands.common.NotDefinedException
 */
package org.eclipse.ui.internal.commands;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.Category;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.IExecutionListener;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.ParameterType;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.SerializationException;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.commands.IElementReference;
import org.eclipse.ui.internal.commands.ElementReference;
import org.eclipse.ui.menus.UIElement;

public class SlaveCommandService
implements ICommandService {
    private Collection fExecutionListeners = new ArrayList();
    private Set fCallbackCache = new HashSet();
    private ICommandService fParentService;
    private String fScopingName;
    private Object fScopingValue;

    public SlaveCommandService(ICommandService parent, String scopeName, Object scopeValue) {
        if (parent == null) {
            throw new NullPointerException("The parent command service must not be null");
        }
        this.fParentService = parent;
        this.fScopingName = scopeName;
        this.fScopingValue = scopeValue;
    }

    public void addExecutionListener(IExecutionListener listener) {
        if (!this.fExecutionListeners.contains(listener)) {
            this.fExecutionListeners.add(listener);
        }
        this.fParentService.addExecutionListener(listener);
    }

    public void defineUncategorizedCategory(String name, String description) {
        this.fParentService.defineUncategorizedCategory(name, description);
    }

    public ParameterizedCommand deserialize(String serializedParameterizedCommand) throws NotDefinedException, SerializationException {
        return this.fParentService.deserialize(serializedParameterizedCommand);
    }

    public void dispose() {
        int i;
        Object[] array;
        if (!this.fExecutionListeners.isEmpty()) {
            array = this.fExecutionListeners.toArray();
            i = 0;
            while (i < array.length) {
                this.removeExecutionListener((IExecutionListener)array[i]);
                ++i;
            }
            this.fExecutionListeners.clear();
        }
        if (!this.fCallbackCache.isEmpty()) {
            array = this.fCallbackCache.toArray();
            i = 0;
            while (i < array.length) {
                this.unregisterElement((IElementReference)array[i]);
                ++i;
            }
        }
    }

    public Category getCategory(String categoryId) {
        return this.fParentService.getCategory(categoryId);
    }

    public Command getCommand(String commandId) {
        return this.fParentService.getCommand(commandId);
    }

    public Category[] getDefinedCategories() {
        return this.fParentService.getDefinedCategories();
    }

    public Collection getDefinedCategoryIds() {
        return this.fParentService.getDefinedCategoryIds();
    }

    public Collection getDefinedCommandIds() {
        return this.fParentService.getDefinedCommandIds();
    }

    public Command[] getDefinedCommands() {
        return this.fParentService.getDefinedCommands();
    }

    public Collection getDefinedParameterTypeIds() {
        return this.fParentService.getDefinedParameterTypeIds();
    }

    public ParameterType[] getDefinedParameterTypes() {
        return this.fParentService.getDefinedParameterTypes();
    }

    public final String getHelpContextId(Command command) throws NotDefinedException {
        return this.fParentService.getHelpContextId(command);
    }

    public final String getHelpContextId(String commandId) throws NotDefinedException {
        return this.fParentService.getHelpContextId(commandId);
    }

    public ParameterType getParameterType(String parameterTypeId) {
        return this.fParentService.getParameterType(parameterTypeId);
    }

    public void readRegistry() {
        this.fParentService.readRegistry();
    }

    public void removeExecutionListener(IExecutionListener listener) {
        this.fExecutionListeners.remove(listener);
        this.fParentService.removeExecutionListener(listener);
    }

    public final void setHelpContextId(IHandler handler, String helpContextId) {
        this.fParentService.setHelpContextId(handler, helpContextId);
    }

    public void refreshElements(String commandId, Map filter) {
        this.fParentService.refreshElements(commandId, filter);
    }

    public IElementReference registerElementForCommand(ParameterizedCommand command, UIElement element) throws NotDefinedException {
        if (!command.getCommand().isDefined()) {
            throw new NotDefinedException("Cannot define a callback for undefined command " + command.getCommand().getId());
        }
        if (element == null) {
            throw new NotDefinedException("No callback defined for command " + command.getCommand().getId());
        }
        ElementReference ref = new ElementReference(command.getId(), element, command.getParameterMap());
        this.registerElement(ref);
        return ref;
    }

    public void registerElement(IElementReference elementReference) {
        this.fCallbackCache.add(elementReference);
        elementReference.getParameters().put(this.fScopingName, this.fScopingValue);
        this.fParentService.registerElement(elementReference);
    }

    public void unregisterElement(IElementReference elementReference) {
        this.fCallbackCache.remove(elementReference);
        this.fParentService.unregisterElement(elementReference);
    }
}

