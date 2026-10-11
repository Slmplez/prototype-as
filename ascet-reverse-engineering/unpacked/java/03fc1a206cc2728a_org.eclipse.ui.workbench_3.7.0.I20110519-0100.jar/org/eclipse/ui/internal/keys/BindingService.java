/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.commands.NotEnabledException
 *  org.eclipse.core.commands.NotHandledException
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.common.NotDefinedException
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.IBindingManagerListener
 *  org.eclipse.jface.bindings.Scheme
 *  org.eclipse.jface.bindings.TriggerSequence
 *  org.eclipse.jface.bindings.keys.SWTKeySupport
 *  org.eclipse.jface.bindings.keys.formatting.IKeyFormatter
 *  org.eclipse.jface.bindings.keys.formatting.KeyFormatterFactory
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.internal.keys;

import java.io.IOException;
import java.util.Collection;
import java.util.Map;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.commands.NotEnabledException;
import org.eclipse.core.commands.NotHandledException;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.IBindingManagerListener;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.TriggerSequence;
import org.eclipse.jface.bindings.keys.SWTKeySupport;
import org.eclipse.jface.bindings.keys.formatting.IKeyFormatter;
import org.eclipse.jface.bindings.keys.formatting.KeyFormatterFactory;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.keys.BindingPersistence;
import org.eclipse.ui.internal.keys.WorkbenchKeyboard;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.keys.IBindingService;

public final class BindingService
implements IBindingService {
    private final BindingManager bindingManager;
    private final BindingPersistence bindingPersistence;
    private WorkbenchKeyboard keyboard;
    private IWorkbench workbench;
    private Listener backForwardListener;
    static /* synthetic */ Class class$0;

    public BindingService(BindingManager bindingManager, ICommandService commandService, final IWorkbench workbench) {
        if (bindingManager == null) {
            throw new NullPointerException("Cannot create a binding service with a null manager");
        }
        if (commandService == null) {
            throw new NullPointerException("Cannot create a binding service with a null command service");
        }
        this.bindingManager = bindingManager;
        this.bindingPersistence = new BindingPersistence(bindingManager, commandService);
        this.workbench = workbench;
        this.keyboard = new WorkbenchKeyboard(workbench);
        Display display = workbench.getDisplay();
        WorkbenchKeyboard.KeyDownFilter listener = this.keyboard.getKeyDownFilter();
        listener.setEnabled(false);
        display.addFilter(1, (Listener)listener);
        display.addFilter(31, (Listener)listener);
        KeyFormatterFactory.setDefault((IKeyFormatter)SWTKeySupport.getKeyFormatterForPlatform());
        this.backForwardListener = new Listener(){

            public void handleEvent(Event event) {
                Class<?> clazz;
                String commandId;
                switch (event.button) {
                    case 4: 
                    case 8: {
                        commandId = "org.eclipse.ui.navigate.backwardHistory";
                        break;
                    }
                    case 5: 
                    case 9: {
                        commandId = "org.eclipse.ui.navigate.forwardHistory";
                        break;
                    }
                    default: {
                        return;
                    }
                }
                if ((clazz = class$0) == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                IHandlerService handlerService = (IHandlerService)workbench.getService(clazz);
                try {
                    handlerService.executeCommand(commandId, event);
                    event.doit = false;
                }
                catch (NotDefinedException notDefinedException) {
                }
                catch (NotEnabledException notEnabledException) {
                }
                catch (NotHandledException notHandledException) {
                }
                catch (ExecutionException ex) {
                    StatusUtil.handleStatus(ex, 3);
                }
            }
        };
        display.addFilter(3, this.backForwardListener);
    }

    public final void addBinding(Binding binding) {
        this.bindingManager.addBinding(binding);
    }

    public final void dispose() {
        WorkbenchKeyboard.KeyDownFilter listener = this.keyboard.getKeyDownFilter();
        Display display = this.workbench.getDisplay();
        if (display != null) {
            display.removeFilter(1, (Listener)listener);
            display.removeFilter(31, (Listener)listener);
            display.removeFilter(3, this.backForwardListener);
        }
        this.workbench = null;
        this.keyboard = null;
        this.bindingPersistence.dispose();
        this.backForwardListener = null;
    }

    public final TriggerSequence[] getActiveBindingsFor(ParameterizedCommand parameterizedCommand) {
        return this.bindingManager.getActiveBindingsFor(parameterizedCommand);
    }

    public final TriggerSequence[] getActiveBindingsFor(String commandId) {
        return this.bindingManager.getActiveBindingsFor(commandId);
    }

    public final Scheme getActiveScheme() {
        return this.bindingManager.getActiveScheme();
    }

    public final TriggerSequence getBestActiveBindingFor(String commandId) {
        return this.bindingManager.getBestActiveBindingFor(commandId);
    }

    public TriggerSequence getBestActiveBindingFor(ParameterizedCommand command) {
        return this.bindingManager.getBestActiveBindingFor(command);
    }

    public final String getBestActiveBindingFormattedFor(String commandId) {
        return this.bindingManager.getBestActiveBindingFormattedFor(commandId);
    }

    public final Binding[] getBindings() {
        return this.bindingManager.getBindings();
    }

    public final TriggerSequence getBuffer() {
        return this.keyboard.getBuffer();
    }

    public final String getDefaultSchemeId() {
        return BindingPersistence.getDefaultSchemeId();
    }

    public final Scheme[] getDefinedSchemes() {
        return this.bindingManager.getDefinedSchemes();
    }

    public final WorkbenchKeyboard getKeyboard() {
        return this.keyboard;
    }

    public final String getLocale() {
        return this.bindingManager.getLocale();
    }

    public final Map getPartialMatches(TriggerSequence trigger) {
        return this.bindingManager.getPartialMatches(trigger);
    }

    public final Binding getPerfectMatch(TriggerSequence trigger) {
        return this.bindingManager.getPerfectMatch(trigger);
    }

    public final String getPlatform() {
        return this.bindingManager.getPlatform();
    }

    public final Scheme getScheme(String schemeId) {
        return this.bindingManager.getScheme(schemeId);
    }

    public final boolean isKeyFilterEnabled() {
        return this.keyboard.getKeyDownFilter().isEnabled();
    }

    public final boolean isPartialMatch(TriggerSequence sequence) {
        return this.bindingManager.isPartialMatch(sequence);
    }

    public final boolean isPerfectMatch(TriggerSequence sequence) {
        return this.bindingManager.isPerfectMatch(sequence);
    }

    public final void openKeyAssistDialog() {
        this.keyboard.openMultiKeyAssistShell();
    }

    public final void readRegistryAndPreferences(ICommandService commandService) {
        this.bindingPersistence.read();
    }

    public final void removeBinding(Binding binding) {
        this.bindingManager.removeBinding(binding);
    }

    public final void savePreferences(Scheme activeScheme, Binding[] bindings) throws IOException {
        BindingPersistence.write(activeScheme, bindings);
        try {
            this.bindingManager.setActiveScheme(activeScheme);
        }
        catch (NotDefinedException e) {
            WorkbenchPlugin.log("The active scheme is not currently defined.", WorkbenchPlugin.getStatus(e));
        }
        this.bindingManager.setBindings(bindings);
    }

    public final void setKeyFilterEnabled(boolean enabled) {
        this.keyboard.getKeyDownFilter().setEnabled(enabled);
    }

    public BindingPersistence getBindingPersistence() {
        return this.bindingPersistence;
    }

    public BindingManager getBindingManager() {
        return this.bindingManager;
    }

    public void addBindingManagerListener(IBindingManagerListener listener) {
        this.bindingManager.addBindingManagerListener(listener);
    }

    public void removeBindingManagerListener(IBindingManagerListener listener) {
        this.bindingManager.removeBindingManagerListener(listener);
    }

    public Collection getConflictsFor(TriggerSequence sequence) {
        return this.bindingManager.getConflictsFor(sequence);
    }
}

