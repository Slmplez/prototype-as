/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IHandler
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.handlers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.commands.IHandler;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.handlers.IHandlerActivation;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.handlers.HandlerProxy;
import org.eclipse.ui.internal.handlers.LegacyHandlerProxy;
import org.eclipse.ui.internal.handlers.LegacyHandlerWrapper;
import org.eclipse.ui.internal.services.RegistryPersistence;
import org.eclipse.ui.services.IEvaluationService;

public final class HandlerPersistence
extends RegistryPersistence {
    private static final int INDEX_COMMAND_DEFINITIONS = 0;
    private static final int INDEX_HANDLER_DEFINITIONS = 1;
    private static final int INDEX_HANDLER_SUBMISSIONS = 2;
    private final Collection handlerActivations = new ArrayList();
    private final IHandlerService handlerService;
    private IEvaluationService evaluationService;

    HandlerPersistence(IHandlerService handlerService, IEvaluationService evaluationService) {
        this.handlerService = handlerService;
        this.evaluationService = evaluationService;
    }

    private final void clearActivations(IHandlerService handlerService) {
        handlerService.deactivateHandlers(this.handlerActivations);
        Iterator i = this.handlerActivations.iterator();
        while (i.hasNext()) {
            IHandlerActivation activation = (IHandlerActivation)i.next();
            if (activation.getHandler() == null) continue;
            try {
                activation.getHandler().dispose();
            }
            catch (Exception e) {
                WorkbenchPlugin.log("Failed to dispose handler for " + activation.getCommandId(), e);
            }
            catch (LinkageError e) {
                WorkbenchPlugin.log("Failed to dispose handler for " + activation.getCommandId(), e);
            }
        }
        this.handlerActivations.clear();
    }

    public final void dispose() {
        super.dispose();
        this.clearActivations(this.handlerService);
    }

    protected final boolean isChangeImportant(IRegistryChangeEvent event) {
        return false;
    }

    public boolean handlersNeedUpdating(IRegistryChangeEvent event) {
        IExtensionDelta[] actionDefinitionDeltas;
        IExtensionDelta[] commandDeltas;
        IExtensionDelta[] handlerDeltas = event.getExtensionDeltas("org.eclipse.ui", "handlers");
        return handlerDeltas.length != 0 || (commandDeltas = event.getExtensionDeltas("org.eclipse.ui", "commands")).length != 0 || (actionDefinitionDeltas = event.getExtensionDeltas("org.eclipse.ui", "actionDefinitions")).length != 0;
    }

    protected final void read() {
        super.read();
        this.reRead();
    }

    public final void reRead() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        int commandDefinitionCount = 0;
        int handlerDefinitionCount = 0;
        int handlerSubmissionCount = 0;
        IConfigurationElement[][] indexedConfigurationElements = new IConfigurationElement[3][];
        IConfigurationElement[] commandsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.commands");
        int i = 0;
        while (i < commandsExtensionPoint.length) {
            IConfigurationElement configurationElement = commandsExtensionPoint[i];
            String name = configurationElement.getName();
            if ("handlerSubmission".equals(name)) {
                HandlerPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 2, handlerSubmissionCount++);
            } else if ("command".equals(name)) {
                HandlerPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 0, commandDefinitionCount++);
            }
            ++i;
        }
        IConfigurationElement[] handlersExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.handlers");
        int i2 = 0;
        while (i2 < handlersExtensionPoint.length) {
            IConfigurationElement configurationElement = handlersExtensionPoint[i2];
            String name = configurationElement.getName();
            if ("handler".equals(name)) {
                HandlerPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 1, handlerDefinitionCount++);
            }
            ++i2;
        }
        this.clearActivations(this.handlerService);
        this.readDefaultHandlersFromRegistry(indexedConfigurationElements[0], commandDefinitionCount);
        this.readHandlerSubmissionsFromRegistry(indexedConfigurationElements[2], handlerSubmissionCount);
        this.readHandlersFromRegistry(indexedConfigurationElements[1], handlerDefinitionCount);
    }

    private final void readDefaultHandlersFromRegistry(IConfigurationElement[] configurationElements, int configurationElementCount) {
        int i = 0;
        while (i < configurationElementCount) {
            IConfigurationElement configurationElement = configurationElements[i];
            String commandId = HandlerPersistence.readOptional(configurationElement, "id");
            if (commandId != null && (configurationElement.getAttribute("defaultHandler") != null || configurationElement.getChildren("defaultHandler").length != 0)) {
                this.handlerActivations.add(this.handlerService.activateHandler(commandId, (IHandler)new HandlerProxy(commandId, configurationElement, "defaultHandler")));
            }
            ++i;
        }
    }

    private final void readHandlersFromRegistry(IConfigurationElement[] configurationElements, int configurationElementCount) {
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            Expression enabledWhenExpression;
            Expression activeWhenExpression;
            IConfigurationElement configurationElement = configurationElements[i];
            String commandId = HandlerPersistence.readRequired(configurationElement, "commandId", warningsToLog, "Handlers need a command id");
            if (commandId != null && HandlerPersistence.checkClass(configurationElement, warningsToLog, "Handlers need a class", commandId) && (activeWhenExpression = HandlerPersistence.readWhenElement(configurationElement, "activeWhen", commandId, warningsToLog)) != ERROR_EXPRESSION && (enabledWhenExpression = HandlerPersistence.readWhenElement(configurationElement, "enabledWhen", commandId, warningsToLog)) != ERROR_EXPRESSION) {
                HandlerProxy proxy = new HandlerProxy(commandId, configurationElement, "class", enabledWhenExpression, this.evaluationService);
                this.handlerActivations.add(this.handlerService.activateHandler(commandId, (IHandler)proxy, activeWhenExpression));
                String helpContextId = HandlerPersistence.readOptional(configurationElement, "helpContextId");
                this.handlerService.setHelpContextId((IHandler)proxy, helpContextId);
            }
            ++i;
        }
        HandlerPersistence.logWarnings(warningsToLog, "Warnings while parsing the handlers from the 'org.eclipse.ui.handlers' extension point.");
    }

    private final void readHandlerSubmissionsFromRegistry(IConfigurationElement[] configurationElements, int configurationElementCount) {
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            IConfigurationElement configurationElement = configurationElements[i];
            String commandId = HandlerPersistence.readRequired(configurationElement, "commandId", warningsToLog, "Handler submissions need a command id");
            if (commandId != null) {
                this.handlerActivations.add(this.handlerService.activateHandler(commandId, new LegacyHandlerWrapper(new LegacyHandlerProxy(configurationElement))));
            }
            ++i;
        }
        HandlerPersistence.logWarnings(warningsToLog, "Warnings while parsing the handler submissions from the 'org.eclipse.ui.commands' extension point.");
    }
}

