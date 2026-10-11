/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.Category
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandEvent
 *  org.eclipse.core.commands.ICommandListener
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.commands.ParameterizedCommand
 *  org.eclipse.core.commands.State
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionInfo
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.LegacyActionTools
 *  org.eclipse.jface.bindings.Binding
 *  org.eclipse.jface.bindings.Scheme
 *  org.eclipse.jface.bindings.keys.IKeyLookup
 *  org.eclipse.jface.bindings.keys.KeyBinding
 *  org.eclipse.jface.bindings.keys.KeyLookupFactory
 *  org.eclipse.jface.bindings.keys.KeySequence
 *  org.eclipse.jface.bindings.keys.KeyStroke
 *  org.eclipse.jface.commands.RadioState
 *  org.eclipse.jface.commands.ToggleState
 */
package org.eclipse.ui.internal.menus;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.commands.Category;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandEvent;
import org.eclipse.core.commands.ICommandListener;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.commands.ParameterizedCommand;
import org.eclipse.core.commands.State;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionInfo;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.LegacyActionTools;
import org.eclipse.jface.bindings.Binding;
import org.eclipse.jface.bindings.Scheme;
import org.eclipse.jface.bindings.keys.IKeyLookup;
import org.eclipse.jface.bindings.keys.KeyBinding;
import org.eclipse.jface.bindings.keys.KeyLookupFactory;
import org.eclipse.jface.bindings.keys.KeySequence;
import org.eclipse.jface.bindings.keys.KeyStroke;
import org.eclipse.jface.commands.RadioState;
import org.eclipse.jface.commands.ToggleState;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.SelectionEnabler;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.ActionExpression;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.expressions.LegacyActionExpressionWrapper;
import org.eclipse.ui.internal.expressions.LegacyActionSetExpression;
import org.eclipse.ui.internal.expressions.LegacyEditorContributionExpression;
import org.eclipse.ui.internal.expressions.LegacySelectionEnablerWrapper;
import org.eclipse.ui.internal.expressions.LegacyViewContributionExpression;
import org.eclipse.ui.internal.expressions.LegacyViewerContributionExpression;
import org.eclipse.ui.internal.handlers.ActionDelegateHandlerProxy;
import org.eclipse.ui.internal.handlers.IActionCommandMappingService;
import org.eclipse.ui.internal.keys.BindingService;
import org.eclipse.ui.internal.services.RegistryPersistence;

public final class LegacyActionPersistence
extends RegistryPersistence {
    private static final int INDEX_ACTION_SETS = 0;
    private static final int INDEX_EDITOR_CONTRIBUTIONS = 1;
    private static final int INDEX_OBJECT_CONTRIBUTIONS = 2;
    private static final int INDEX_VIEW_CONTRIBUTIONS = 3;
    private static final int INDEX_VIEWER_CONTRIBUTIONS = 4;
    private final BindingService bindingService;
    private final ICommandService commandService;
    private final Collection handlerActivations = new ArrayList();
    private final Collection menuContributions = new ArrayList();
    private final IWorkbenchWindow window;
    private ICommandListener actionSetListener = new ICommandListener(){

        public void commandChanged(CommandEvent commandEvent) {
            Command cmd = commandEvent.getCommand();
            String commandId = cmd.getId();
            Binding binding = (Binding)LegacyActionPersistence.this.commandIdToBinding.get(commandId);
            if (binding != null) {
                if (cmd.isEnabled()) {
                    if (!LegacyActionPersistence.this.actionSetActiveBindings.contains(binding)) {
                        LegacyActionPersistence.this.bindingService.addBinding(binding);
                        LegacyActionPersistence.this.actionSetActiveBindings.add(binding);
                    }
                } else if (LegacyActionPersistence.this.actionSetActiveBindings.contains(binding)) {
                    LegacyActionPersistence.this.bindingService.removeBinding(binding);
                    LegacyActionPersistence.this.actionSetActiveBindings.remove(binding);
                }
            }
        }
    };
    private HashMap commandIdToBinding = new HashMap();
    private HashSet actionSetActiveBindings = new HashSet();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    private static final Expression readVisibility(IConfigurationElement parentElement, String parentId, List warningsToLog) {
        IConfigurationElement[] visibilityElements = parentElement.getChildren("visibility");
        if (visibilityElements == null || visibilityElements.length == 0) {
            return null;
        }
        if (visibilityElements.length != 1) {
            LegacyActionPersistence.addWarning(warningsToLog, "There can only be one visibility element", parentElement, parentId);
        }
        IConfigurationElement visibilityElement = visibilityElements[0];
        ActionExpression visibilityActionExpression = new ActionExpression(visibilityElement);
        LegacyActionExpressionWrapper wrapper = new LegacyActionExpressionWrapper(visibilityActionExpression, null);
        return wrapper;
    }

    public LegacyActionPersistence(IWorkbenchWindow window) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.bindingService = (BindingService)window.getService(clazz);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.commands.ICommandService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.commandService = (ICommandService)window.getService(clazz2);
        this.window = window;
    }

    private final void clearActivations() {
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService service = (IHandlerService)this.window.getService(clazz);
        service.deactivateHandlers(this.handlerActivations);
        Iterator activationItr = this.handlerActivations.iterator();
        while (activationItr.hasNext()) {
            IHandlerActivation activation = (IHandlerActivation)activationItr.next();
            IHandler handler = activation.getHandler();
            if (handler == null) continue;
            handler.dispose();
        }
        this.handlerActivations.clear();
    }

    private final void clearBindings() {
        Iterator i = this.commandIdToBinding.entrySet().iterator();
        while (i.hasNext()) {
            Map.Entry entry = i.next();
            String commandId = (String)entry.getKey();
            Binding binding = (Binding)entry.getValue();
            this.commandService.getCommand(commandId).removeCommandListener(this.actionSetListener);
            if (binding == null || !this.actionSetActiveBindings.contains(binding)) continue;
            this.bindingService.removeBinding(binding);
        }
        this.commandIdToBinding.clear();
        this.actionSetActiveBindings.clear();
    }

    private final void clearImages() {
    }

    private final void clearMenus() {
        this.menuContributions.clear();
    }

    private final void convertActionToBinding(IConfigurationElement element, ParameterizedCommand command, List warningsToLog) {
        String label;
        String acceleratorText = LegacyActionPersistence.readOptional(element, "accelerator");
        if (acceleratorText == null && (label = LegacyActionPersistence.readOptional(element, "label")) != null) {
            acceleratorText = LegacyActionTools.extractAcceleratorText((String)label);
        }
        if (acceleratorText != null) {
            IKeyLookup lookup = KeyLookupFactory.getSWTKeyLookup();
            int acceleratorInt = LegacyActionTools.convertAccelerator((String)acceleratorText);
            int modifierMask = lookup.getAlt() | lookup.getCommand() | lookup.getCtrl() | lookup.getShift();
            int modifierKeys = acceleratorInt & modifierMask;
            int naturalKey = acceleratorInt & ~modifierMask;
            KeyStroke keyStroke = KeyStroke.getInstance((int)modifierKeys, (int)naturalKey);
            KeySequence keySequence = KeySequence.getInstance((KeyStroke)keyStroke);
            Scheme activeScheme = this.bindingService.getActiveScheme();
            try {
                KeyBinding binding = new KeyBinding(keySequence, command, activeScheme.getId(), "org.eclipse.ui.contexts.window", null, null, null, 0);
                this.commandIdToBinding.put(command.getCommand().getId(), binding);
                if (command.getCommand().isEnabled()) {
                    this.bindingService.addBinding((Binding)binding);
                    this.actionSetActiveBindings.add(binding);
                }
                command.getCommand().addCommandListener(this.actionSetListener);
            }
            catch (IllegalArgumentException e) {
                LegacyActionPersistence.addWarning(warningsToLog, "invalid keybinding: " + e.getMessage(), element, command.getCommand().getId());
            }
        }
    }

    private final ParameterizedCommand convertActionToCommand(IConfigurationElement element, String primaryId, String secondaryId, List warningsToLog) {
        Class<?> clazz;
        String commandId = LegacyActionPersistence.readOptional(element, "definitionId");
        Command command = null;
        if (commandId != null) {
            command = this.commandService.getCommand(commandId);
        }
        if ((clazz = class$3) == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.ui.internal.handlers.IActionCommandMappingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IActionCommandMappingService mappingService = (IActionCommandMappingService)this.window.getService(clazz);
        String label = null;
        if (commandId == null || !command.isDefined()) {
            if (commandId == null && mappingService != null) {
                commandId = mappingService.getGeneratedCommandId(primaryId, secondaryId);
            }
            if (commandId == null) {
                WorkbenchPlugin.log("MappingService unavailable");
                return null;
            }
            label = LegacyActionPersistence.readRequired(element, "label", warningsToLog, "Actions require a non-empty label or definitionId", commandId);
            if (label == null) {
                label = WorkbenchMessages.LegacyActionPersistence_AutogeneratedCommandName;
            }
            String tooltip = LegacyActionPersistence.readOptional(element, "tooltip");
            command = this.commandService.getCommand(commandId);
            Category category = this.commandService.getCategory(null);
            String name = LegacyActionTools.removeAcceleratorText((String)Action.removeMnemonics((String)label));
            command.define(name, tooltip, category, null);
            String style = LegacyActionPersistence.readOptional(element, "style");
            if ("radio".equals(style)) {
                RadioState state = new RadioState();
                boolean checked = LegacyActionPersistence.readBoolean(element, "state", false);
                state.setValue((Object)(checked ? Boolean.TRUE : Boolean.FALSE));
                command.addState("STYLE", (State)state);
            } else if ("toggle".equals(style)) {
                ToggleState state = new ToggleState();
                boolean checked = LegacyActionPersistence.readBoolean(element, "state", false);
                state.setValue((Object)(checked ? Boolean.TRUE : Boolean.FALSE));
                command.addState("STYLE", (State)state);
            }
        }
        if (mappingService != null && commandId != null) {
            mappingService.map(mappingService.getGeneratedCommandId(primaryId, secondaryId), commandId);
        }
        return new ParameterizedCommand(command, null);
    }

    private final void convertActionToHandler(IConfigurationElement element, String actionId, ParameterizedCommand command, Expression activeWhenExpression, String viewId, List warningsToLog) {
        boolean retarget = LegacyActionPersistence.readBoolean(element, "retarget", false);
        boolean classAvailable = element.getAttribute("class") != null || element.getChildren("class").length != 0;
        String classString = LegacyActionPersistence.readOptional(element, "class");
        if (classAvailable && classString == null) {
            classString = LegacyActionPersistence.readOptional(element.getChildren("class")[0], "class");
        }
        if (retarget) {
            IActionCommandMappingService mappingService;
            Class<?> clazz;
            if (classAvailable && !LegacyActionPersistence.isPulldown(element)) {
                LegacyActionPersistence.addWarning(warningsToLog, "The class was not null but retarget was set to true", element, actionId, "class", classString);
            }
            if ((clazz = class$3) == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.ui.internal.handlers.IActionCommandMappingService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((mappingService = (IActionCommandMappingService)this.window.getService(clazz)) != null) {
                mappingService.map(actionId, command.getId());
            } else {
                LegacyActionPersistence.addWarning(warningsToLog, "Retarget service unavailable", element, actionId);
            }
            return;
        }
        if (!classAvailable) {
            LegacyActionPersistence.addWarning(warningsToLog, "There was no class provided, and the action is not retargettable", element, actionId);
            return;
        }
        SelectionEnabler enabler = null;
        if (element.getAttribute("enablesFor") != null) {
            enabler = new SelectionEnabler(element);
        } else {
            IConfigurationElement[] kids = element.getChildren("enablement");
            if (kids.length > 0) {
                enabler = new SelectionEnabler(element);
            }
        }
        LegacySelectionEnablerWrapper enabledWhenExpression = enabler == null ? null : new LegacySelectionEnablerWrapper(enabler, this.window);
        ActionDelegateHandlerProxy handler = new ActionDelegateHandlerProxy(element, "class", actionId, command, this.window, null, enabledWhenExpression, viewId);
        String helpContextId = LegacyActionPersistence.readOptional(element, "helpContextId");
        if (helpContextId != null) {
            this.commandService.setHelpContextId((IHandler)handler, helpContextId);
        }
        String commandId = command.getId();
        Class<?> clazz = class$2;
        if (clazz == null) {
            try {
                clazz = class$2 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IHandlerService service = (IHandlerService)this.window.getService(clazz);
        IHandlerActivation handlerActivation = activeWhenExpression == null ? service.activateHandler(commandId, (IHandler)handler) : service.activateHandler(commandId, (IHandler)handler, activeWhenExpression);
        this.handlerActivations.add(handlerActivation);
    }

    public final void dispose() {
        super.dispose();
        this.clear();
    }

    private void clear() {
        this.clearActivations();
        this.clearBindings();
        this.clearImages();
        this.clearMenus();
    }

    protected final boolean isChangeImportant(IRegistryChangeEvent event) {
        return event.getExtensionDeltas("org.eclipse.ui", "actionSets").length != 0 || event.getExtensionDeltas("org.eclipse.ui", "editorActions").length != 0 || event.getExtensionDeltas("org.eclipse.ui", "popupMenus").length != 0 || event.getExtensionDeltas("org.eclipse.ui", "viewActions").length != 0;
    }

    public final void read() {
        this.clear();
        LegacyActionPersistence.super.read();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        int actionSetCount = 0;
        int editorContributionCount = 0;
        int objectContributionCount = 0;
        int viewContributionCount = 0;
        int viewerContributionCount = 0;
        IConfigurationElement[][] indexedConfigurationElements = new IConfigurationElement[5][];
        IConfigurationElement[] actionSetsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.actionSets");
        int i = 0;
        while (i < actionSetsExtensionPoint.length) {
            IConfigurationElement element = actionSetsExtensionPoint[i];
            String name = element.getName();
            if ("actionSet".equals(name)) {
                LegacyActionPersistence.addElementToIndexedArray(element, indexedConfigurationElements, 0, actionSetCount++);
            }
            ++i;
        }
        IConfigurationElement[] editorActionsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.editorActions");
        int i2 = 0;
        while (i2 < editorActionsExtensionPoint.length) {
            IConfigurationElement element = editorActionsExtensionPoint[i2];
            String name = element.getName();
            if ("editorContribution".equals(name)) {
                LegacyActionPersistence.addElementToIndexedArray(element, indexedConfigurationElements, 1, editorContributionCount++);
            }
            ++i2;
        }
        IConfigurationElement[] popupMenusExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.popupMenus");
        int i3 = 0;
        while (i3 < popupMenusExtensionPoint.length) {
            IConfigurationElement element = popupMenusExtensionPoint[i3];
            String name = element.getName();
            if ("objectContribution".equals(name)) {
                LegacyActionPersistence.addElementToIndexedArray(element, indexedConfigurationElements, 2, objectContributionCount++);
            } else if ("viewerContribution".equals(name)) {
                LegacyActionPersistence.addElementToIndexedArray(element, indexedConfigurationElements, 4, viewerContributionCount++);
            }
            ++i3;
        }
        IConfigurationElement[] viewActionsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.viewActions");
        int i4 = 0;
        while (i4 < viewActionsExtensionPoint.length) {
            IConfigurationElement element = viewActionsExtensionPoint[i4];
            String name = element.getName();
            if ("viewContribution".equals(name)) {
                LegacyActionPersistence.addElementToIndexedArray(element, indexedConfigurationElements, 3, viewContributionCount++);
            }
            ++i4;
        }
        this.readActionSets(indexedConfigurationElements[0], actionSetCount);
        this.readEditorContributions(indexedConfigurationElements[1], editorContributionCount);
        this.readObjectContributions(indexedConfigurationElements[2], objectContributionCount);
        this.readViewContributions(indexedConfigurationElements[3], viewContributionCount);
        this.readViewerContributions(indexedConfigurationElements[4], viewerContributionCount);
    }

    private final void readActions(String primaryId, IConfigurationElement[] elements, List warningsToLog, Expression visibleWhenExpression, String viewId) {
        int i = 0;
        while (i < elements.length) {
            ParameterizedCommand command;
            IConfigurationElement element = elements[i];
            String id = LegacyActionPersistence.readRequired(element, "id", warningsToLog, "Actions require an id");
            if (id != null && (command = this.convertActionToCommand(element, primaryId, id, warningsToLog)) != null) {
                this.convertActionToHandler(element, id, command, visibleWhenExpression, viewId, warningsToLog);
                this.convertActionToBinding(element, command, warningsToLog);
            }
            ++i;
        }
    }

    private final void readActionsAndMenus(IConfigurationElement element, String id, List warningsToLog, Expression visibleWhenExpression, String viewId) {
        IConfigurationElement[] actionElements = element.getChildren("action");
        this.readActions(id, actionElements, warningsToLog, visibleWhenExpression, viewId);
    }

    private final void readActionSets(IConfigurationElement[] configurationElements, int configurationElementCount) {
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            String label;
            IConfigurationElement element = configurationElements[i];
            String id = LegacyActionPersistence.readRequired(element, "id", warningsToLog, "Action sets need an id");
            if (id != null && (label = LegacyActionPersistence.readRequired(element, "label", warningsToLog, "Actions set need a label", id)) != null) {
                LegacyActionSetExpression expression = new LegacyActionSetExpression(id, this.window);
                this.readActionsAndMenus(element, id, warningsToLog, expression, null);
            }
            ++i;
        }
        LegacyActionPersistence.logWarnings(warningsToLog, "Warnings while parsing the action sets from the 'org.eclipse.ui.actionSets' extension point");
    }

    private final void readEditorContributions(IConfigurationElement[] configurationElements, int configurationElementCount) {
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            String targetId;
            IConfigurationElement element = configurationElements[i];
            String id = LegacyActionPersistence.readRequired(element, "id", warningsToLog, "Editor contributions need an id");
            if (id != null && (targetId = LegacyActionPersistence.readRequired(element, "targetID", warningsToLog, "Editor contributions need a target id", id)) != null) {
                LegacyEditorContributionExpression visibleWhenExpression = new LegacyEditorContributionExpression(targetId, this.window);
                this.readActionsAndMenus(element, id, warningsToLog, visibleWhenExpression, null);
            }
            ++i;
        }
        LegacyActionPersistence.logWarnings(warningsToLog, "Warnings while parsing the editor contributions from the 'org.eclipse.ui.editorActions' extension point");
    }

    private final void readObjectContributions(IConfigurationElement[] configurationElements, int configurationElementCount) {
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            String objectClass;
            IConfigurationElement element = configurationElements[i];
            String id = LegacyActionPersistence.readRequired(element, "id", warningsToLog, "Object contributions need an id");
            if (id != null && (objectClass = LegacyActionPersistence.readRequired(element, "objectClass", warningsToLog, "Object contributions need an object class", id)) != null) {
                boolean adaptable = LegacyActionPersistence.readBoolean(element, "adaptable", false);
                Expression visibleWhenExpression = LegacyActionPersistence.readVisibility(element, id, warningsToLog);
                if (visibleWhenExpression == null) {
                    visibleWhenExpression = new ObjectClassExpression(objectClass, adaptable);
                }
                this.readActionsAndMenus(element, id, warningsToLog, visibleWhenExpression, null);
            }
            ++i;
        }
        LegacyActionPersistence.logWarnings(warningsToLog, "Warnings while parsing the object contributions from the 'org.eclipse.ui.popupMenus' extension point");
    }

    private final void readViewContributions(IConfigurationElement[] configurationElements, int configurationElementCount) {
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            String targetId;
            IConfigurationElement element = configurationElements[i];
            String id = LegacyActionPersistence.readRequired(element, "id", warningsToLog, "View contributions need an id");
            if (id != null && (targetId = LegacyActionPersistence.readRequired(element, "targetID", warningsToLog, "View contributions need a target id", id)) != null) {
                LegacyViewContributionExpression visibleWhenExpression = new LegacyViewContributionExpression(targetId, this.window);
                this.readActionsAndMenus(element, id, warningsToLog, visibleWhenExpression, targetId);
            }
            ++i;
        }
        LegacyActionPersistence.logWarnings(warningsToLog, "Warnings while parsing the view contributions from the 'org.eclipse.ui.viewActions' extension point");
    }

    private final void readViewerContributions(IConfigurationElement[] configurationElements, int configurationElementCount) {
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            String targetId;
            IConfigurationElement element = configurationElements[i];
            String id = LegacyActionPersistence.readRequired(element, "id", warningsToLog, "Viewer contributions need an id");
            if (id != null && (targetId = LegacyActionPersistence.readRequired(element, "targetID", warningsToLog, "Viewer contributions need a target id", id)) != null) {
                Expression visibleWhenExpression = LegacyActionPersistence.readVisibility(element, id, warningsToLog);
                LegacyViewerContributionExpression menuVisibleWhenExpression = new LegacyViewerContributionExpression(targetId, this.window, visibleWhenExpression);
                this.readActionsAndMenus(element, id, warningsToLog, menuVisibleWhenExpression, targetId);
            }
            ++i;
        }
        LegacyActionPersistence.logWarnings(warningsToLog, "Warnings while parsing the viewer contributions from the 'org.eclipse.ui.popupMenus' extension point");
    }

    private static class ObjectClassExpression
    extends Expression {
        String objectClass;
        boolean adapt = false;

        public ObjectClassExpression(String objectClass, boolean adapt) {
            this.objectClass = objectClass;
            this.adapt = adapt;
        }

        public void collectExpressionInfo(ExpressionInfo info) {
            info.addVariableNameAccess("activeMenuSelection");
        }

        public EvaluationResult evaluate(IEvaluationContext context) throws CoreException {
            Object s = context.getVariable("activeMenuSelection");
            if (s == null || s == IEvaluationContext.UNDEFINED_VARIABLE) {
                return EvaluationResult.FALSE;
            }
            if (this.adapt) {
                int status = Platform.getAdapterManager().queryAdapter(s, this.objectClass);
                switch (status) {
                    case 2: {
                        return EvaluationResult.TRUE;
                    }
                    case 1: {
                        return EvaluationResult.NOT_LOADED;
                    }
                }
            } else if (this.objectClass.equals(s.getClass().getName())) {
                return EvaluationResult.TRUE;
            }
            return EvaluationResult.FALSE;
        }
    }
}

