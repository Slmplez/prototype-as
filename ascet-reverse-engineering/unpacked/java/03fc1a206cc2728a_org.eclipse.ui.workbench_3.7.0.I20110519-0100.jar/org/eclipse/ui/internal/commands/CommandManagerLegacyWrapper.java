/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.CommandManagerEvent
 *  org.eclipse.core.commands.ICommandManagerListener
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.commands.contexts.ContextManagerEvent
 *  org.eclipse.core.commands.contexts.IContextManagerListener
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.BindingManagerEvent
 *  org.eclipse.jface.bindings.IBindingManagerListener
 *  org.eclipse.jface.bindings.Scheme
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.ParseException
 */
package org.eclipse.ui.internal.commands;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.CommandManagerEvent;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.commands.contexts.ContextManagerEvent;
import org.eclipse.core.commands.contexts.IContextManagerListener;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.BindingManagerEvent;
import org.eclipse.jface.bindings.IBindingManagerListener;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.ParseException;
import org.eclipse.ui.commands.ICategory;
import org.eclipse.ui.commands.ICommand;
import org.eclipse.ui.commands.ICommandManager;
import org.eclipse.ui.commands.ICommandManagerListener;
import org.eclipse.ui.commands.IHandler;
import org.eclipse.ui.commands.IKeyConfiguration;
import org.eclipse.ui.internal.commands.CommandLegacyWrapper;
import org.eclipse.ui.internal.handlers.LegacyHandlerWrapper;
import org.eclipse.ui.internal.keys.SchemeLegacyWrapper;

public final class CommandManagerLegacyWrapper
implements ICommandManager,
org.eclipse.core.commands.ICommandManagerListener,
IBindingManagerListener,
IContextManagerListener {
    public static boolean DEBUG_COMMAND_EXECUTION = false;
    public static boolean DEBUG_HANDLERS = false;
    public static String DEBUG_HANDLERS_COMMAND_ID = null;
    private final BindingManager bindingManager;
    private final CommandManager commandManager;
    private List commandManagerListeners;
    private final ContextManager contextManager;

    static boolean validateKeySequence(org.eclipse.ui.keys.KeySequence keySequence) {
        if (keySequence == null) {
            return false;
        }
        List keyStrokes = keySequence.getKeyStrokes();
        int size = keyStrokes.size();
        return size != 0 && size <= 4 && keySequence.isComplete();
    }

    public CommandManagerLegacyWrapper(BindingManager bindingManager, CommandManager commandManager, ContextManager contextManager) {
        if (contextManager == null) {
            throw new NullPointerException("The context manager cannot be null.");
        }
        this.bindingManager = bindingManager;
        this.commandManager = commandManager;
        this.contextManager = contextManager;
    }

    public final void addCommandManagerListener(ICommandManagerListener commandManagerListener) {
        if (commandManagerListener == null) {
            throw new NullPointerException("Cannot add a null listener.");
        }
        if (this.commandManagerListeners == null) {
            this.commandManagerListeners = new ArrayList();
            this.commandManager.addCommandManagerListener((org.eclipse.core.commands.ICommandManagerListener)this);
            this.bindingManager.addBindingManagerListener((IBindingManagerListener)this);
            this.contextManager.addContextManagerListener((IContextManagerListener)this);
        }
        if (!this.commandManagerListeners.contains(commandManagerListener)) {
            this.commandManagerListeners.add(commandManagerListener);
        }
    }

    public final void bindingManagerChanged(BindingManagerEvent event) {
        HashSet<String> previousSchemes;
        boolean schemeDefinitionsChanged;
        boolean bl = schemeDefinitionsChanged = event.getScheme() != null;
        if (schemeDefinitionsChanged) {
            previousSchemes = new HashSet<String>();
            Scheme scheme = event.getScheme();
            Scheme[] definedSchemes = event.getManager().getDefinedSchemes();
            int definedSchemesCount = definedSchemes.length;
            int i = 0;
            while (i < definedSchemesCount) {
                Scheme definedScheme = definedSchemes[0];
                if (definedScheme != scheme || !event.isSchemeDefined()) {
                    previousSchemes.add(definedSchemes[0].getId());
                }
                ++i;
            }
            if (!event.isSchemeDefined()) {
                previousSchemes.add(scheme.getId());
            }
        } else {
            previousSchemes = null;
        }
        this.fireCommandManagerChanged(new org.eclipse.ui.commands.CommandManagerEvent(this, false, event.isActiveSchemeChanged(), event.isLocaleChanged(), event.isPlatformChanged(), false, false, schemeDefinitionsChanged, null, null, previousSchemes));
    }

    public final void commandManagerChanged(CommandManagerEvent event) {
        HashSet<String> previousCommandIds;
        HashSet<String> previousCategoryIds;
        boolean categoryIdsChanged = event.isCategoryChanged();
        if (categoryIdsChanged) {
            previousCategoryIds = new HashSet<String>(this.commandManager.getDefinedCategoryIds());
            String categoryId = event.getCategoryId();
            if (event.isCategoryDefined()) {
                previousCategoryIds.remove(categoryId);
            } else {
                previousCategoryIds.add(categoryId);
            }
        } else {
            previousCategoryIds = null;
        }
        boolean commandIdsChanged = event.isCommandChanged();
        if (commandIdsChanged) {
            previousCommandIds = new HashSet<String>(this.commandManager.getDefinedCommandIds());
            String commandId = event.getCommandId();
            if (event.isCommandDefined()) {
                previousCommandIds.remove(commandId);
            } else {
                previousCommandIds.add(commandId);
            }
        } else {
            previousCommandIds = null;
        }
        this.fireCommandManagerChanged(new org.eclipse.ui.commands.CommandManagerEvent(this, false, false, false, false, categoryIdsChanged, commandIdsChanged, false, previousCategoryIds, previousCommandIds, null));
    }

    public final void contextManagerChanged(ContextManagerEvent event) {
        this.fireCommandManagerChanged(new org.eclipse.ui.commands.CommandManagerEvent(this, event.isActiveContextsChanged(), false, false, false, false, false, false, null, null, null));
    }

    private void fireCommandManagerChanged(org.eclipse.ui.commands.CommandManagerEvent commandManagerEvent) {
        if (commandManagerEvent == null) {
            throw new NullPointerException();
        }
        if (this.commandManagerListeners != null) {
            int i = 0;
            while (i < this.commandManagerListeners.size()) {
                ((ICommandManagerListener)this.commandManagerListeners.get(i)).commandManagerChanged(commandManagerEvent);
                ++i;
            }
        }
    }

    public Set getActiveContextIds() {
        return this.contextManager.getActiveContextIds();
    }

    public String getActiveKeyConfigurationId() {
        Scheme scheme = this.bindingManager.getActiveScheme();
        if (scheme != null) {
            return scheme.getId();
        }
        return "";
    }

    public String getActiveLocale() {
        return this.bindingManager.getLocale();
    }

    public String getActivePlatform() {
        return this.bindingManager.getPlatform();
    }

    public ICategory getCategory(String categoryId) {
        return null;
    }

    public ICommand getCommand(String commandId) {
        Command command = this.commandManager.getCommand(commandId);
        return new CommandLegacyWrapper(command, this.bindingManager);
    }

    public Set getDefinedCategoryIds() {
        return this.commandManager.getDefinedCategoryIds();
    }

    public Set getDefinedCommandIds() {
        return this.commandManager.getDefinedCommandIds();
    }

    public Set getDefinedKeyConfigurationIds() {
        HashSet<String> definedIds = new HashSet<String>();
        Scheme[] schemes = this.bindingManager.getDefinedSchemes();
        int i = 0;
        while (i < schemes.length) {
            definedIds.add(schemes[i].getId());
            ++i;
        }
        return definedIds;
    }

    public IKeyConfiguration getKeyConfiguration(String keyConfigurationId) {
        Scheme scheme = this.bindingManager.getScheme(keyConfigurationId);
        return new SchemeLegacyWrapper(scheme, this.bindingManager);
    }

    public Map getPartialMatches(org.eclipse.ui.keys.KeySequence keySequence) {
        try {
            KeySequence sequence = KeySequence.getInstance((String)keySequence.toString());
            Map partialMatches = this.bindingManager.getPartialMatches((TriggerSequence)sequence);
            HashMap returnValue = new HashMap();
            Iterator matchItr = partialMatches.entrySet().iterator();
            while (matchItr.hasNext()) {
                Map.Entry entry = matchItr.next();
                TriggerSequence trigger = (TriggerSequence)entry.getKey();
                if (!(trigger instanceof KeySequence)) continue;
                KeySequence triggerKey = (KeySequence)trigger;
                returnValue.put(org.eclipse.ui.keys.KeySequence.getInstance(triggerKey.toString()), entry.getValue());
            }
            return returnValue;
        }
        catch (ParseException parseException) {
            return new HashMap();
        }
        catch (org.eclipse.ui.keys.ParseException parseException) {
            return new HashMap();
        }
    }

    public String getPerfectMatch(org.eclipse.ui.keys.KeySequence keySequence) {
        Binding binding;
        block3: {
            try {
                KeySequence sequence = KeySequence.getInstance((String)keySequence.toString());
                binding = this.bindingManager.getPerfectMatch((TriggerSequence)sequence);
                if (binding != null) break block3;
                return null;
            }
            catch (ParseException parseException) {
                return null;
            }
        }
        return binding.getParameterizedCommand().getId();
    }

    public boolean isPartialMatch(org.eclipse.ui.keys.KeySequence keySequence) {
        try {
            KeySequence sequence = KeySequence.getInstance((String)keySequence.toString());
            return this.bindingManager.isPartialMatch((TriggerSequence)sequence);
        }
        catch (ParseException parseException) {
            return false;
        }
    }

    public boolean isPerfectMatch(org.eclipse.ui.keys.KeySequence keySequence) {
        try {
            KeySequence sequence = KeySequence.getInstance((String)keySequence.toString());
            return this.bindingManager.isPerfectMatch((TriggerSequence)sequence);
        }
        catch (ParseException parseException) {
            return false;
        }
    }

    public void removeCommandManagerListener(ICommandManagerListener commandManagerListener) {
        if (commandManagerListener == null) {
            throw new NullPointerException("Cannot remove a null listener");
        }
        if (this.commandManagerListeners != null) {
            this.commandManagerListeners.remove(commandManagerListener);
            if (this.commandManagerListeners.isEmpty()) {
                this.commandManagerListeners = null;
                this.commandManager.removeCommandManagerListener((org.eclipse.core.commands.ICommandManagerListener)this);
                this.bindingManager.removeBindingManagerListener((IBindingManagerListener)this);
                this.contextManager.removeContextManagerListener((IContextManagerListener)this);
            }
        }
    }

    public final void setHandlersByCommandId(Map handlersByCommandId) {
        Iterator entryItr = handlersByCommandId.entrySet().iterator();
        while (entryItr.hasNext()) {
            Map.Entry entry = entryItr.next();
            Object handler = entry.getValue();
            if (!(handler instanceof IHandler)) continue;
            String commandId = (String)entry.getKey();
            handlersByCommandId.put(commandId, new LegacyHandlerWrapper((IHandler)handler));
        }
        this.commandManager.setHandlersByCommandId(handlersByCommandId);
    }
}

