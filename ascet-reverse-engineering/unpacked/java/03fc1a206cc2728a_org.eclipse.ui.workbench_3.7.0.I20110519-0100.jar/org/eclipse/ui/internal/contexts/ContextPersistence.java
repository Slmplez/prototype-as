/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.contexts.Context
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.contexts;

import java.util.ArrayList;
import org.eclipse.core.commands.contexts.Context;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.Platform;
import org.eclipse.ui.internal.services.RegistryPersistence;

final class ContextPersistence
extends RegistryPersistence {
    private static final int INDEX_CONTEXT_DEFINITIONS = 0;
    private final ContextManager contextManager;

    private static final void readContextsFromRegistry(IConfigurationElement[] configurationElements, int configurationElementCount, ContextManager contextManager) {
        Context[] handleObjects = contextManager.getDefinedContexts();
        if (handleObjects != null) {
            int i = 0;
            while (i < handleObjects.length) {
                handleObjects[i].undefine();
                ++i;
            }
        }
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            String name;
            IConfigurationElement configurationElement = configurationElements[i];
            String contextId = ContextPersistence.readRequired(configurationElement, "id", warningsToLog, "Contexts need an id");
            if (contextId != null && (name = ContextPersistence.readRequired(configurationElement, "name", warningsToLog, "Contexts need a name", contextId)) != null) {
                String description = ContextPersistence.readOptional(configurationElement, "description");
                String parentId = configurationElement.getAttribute("parentId");
                if (!(parentId != null && parentId.length() != 0 || (parentId = configurationElement.getAttribute("parent")) != null && parentId.length() != 0)) {
                    parentId = configurationElement.getAttribute("parentScope");
                }
                if (parentId != null && parentId.length() == 0) {
                    parentId = null;
                }
                Context context = contextManager.getContext(contextId);
                context.define(name, description, parentId);
            }
            ++i;
        }
        ContextPersistence.logWarnings(warningsToLog, "Warnings while parsing the contexts from the 'org.eclipse.ui.contexts', 'org.eclipse.ui.commands' and 'org.eclipse.ui.acceleratorScopes' extension points.");
    }

    ContextPersistence(ContextManager contextManager) {
        if (contextManager == null) {
            throw new NullPointerException("The context manager must not be null");
        }
        this.contextManager = contextManager;
    }

    protected final boolean isChangeImportant(IRegistryChangeEvent event) {
        IExtensionDelta[] commandDeltas;
        IExtensionDelta[] contextDeltas;
        IExtensionDelta[] acceleratorScopeDeltas = event.getExtensionDeltas("org.eclipse.ui", "acceleratorScopes");
        return acceleratorScopeDeltas.length != 0 || (contextDeltas = event.getExtensionDeltas("org.eclipse.ui", "contexts")).length != 0 || (commandDeltas = event.getExtensionDeltas("org.eclipse.ui", "commands")).length != 0;
    }

    protected final void read() {
        super.read();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        int contextDefinitionCount = 0;
        IConfigurationElement[][] indexedConfigurationElements = new IConfigurationElement[1][];
        IConfigurationElement[] acceleratorScopesExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.acceleratorScopes");
        int i = 0;
        while (i < acceleratorScopesExtensionPoint.length) {
            IConfigurationElement configurationElement = acceleratorScopesExtensionPoint[i];
            String name = configurationElement.getName();
            if ("acceleratorScope".equals(name)) {
                ContextPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 0, contextDefinitionCount++);
            }
            ++i;
        }
        IConfigurationElement[] commandsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.commands");
        int i2 = 0;
        while (i2 < commandsExtensionPoint.length) {
            IConfigurationElement configurationElement = commandsExtensionPoint[i2];
            String name = configurationElement.getName();
            if ("scope".equals(name)) {
                ContextPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 0, contextDefinitionCount++);
            } else if ("context".equals(name)) {
                ContextPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 0, contextDefinitionCount++);
            }
            ++i2;
        }
        IConfigurationElement[] contextsExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.contexts");
        int i3 = 0;
        while (i3 < contextsExtensionPoint.length) {
            IConfigurationElement configurationElement = contextsExtensionPoint[i3];
            String name = configurationElement.getName();
            if ("context".equals(name)) {
                ContextPersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 0, contextDefinitionCount++);
            }
            ++i3;
        }
        ContextPersistence.readContextsFromRegistry(indexedConfigurationElements[0], contextDefinitionCount, this.contextManager);
    }
}

