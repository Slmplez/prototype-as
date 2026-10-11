/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.commands;

import java.util.ArrayList;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.commands.CommandImageManager;
import org.eclipse.ui.internal.services.RegistryPersistence;
import org.eclipse.ui.plugin.AbstractUIPlugin;

final class CommandImagePersistence
extends RegistryPersistence {
    private static final int INDEX_IMAGES = 0;
    private final CommandImageManager commandImageManager;
    private final ICommandService commandService;

    private static final void readImagesFromRegistry(IConfigurationElement[] configurationElements, int configurationElementCount, CommandImageManager commandImageManager, ICommandService commandService) {
        commandImageManager.clear();
        ArrayList warningsToLog = new ArrayList(1);
        int i = 0;
        while (i < configurationElementCount) {
            IConfigurationElement configurationElement = configurationElements[i];
            String commandId = CommandImagePersistence.readRequired(configurationElement, "commandId", warningsToLog, "Image needs an id");
            if (commandId != null) {
                if (!commandService.getCommand(commandId).isDefined()) {
                    CommandImagePersistence.addWarning(warningsToLog, "Cannot bind to an undefined command", configurationElement, commandId);
                } else {
                    String style = CommandImagePersistence.readOptional(configurationElement, "style");
                    String icon = CommandImagePersistence.readRequired(configurationElement, "icon", warningsToLog, commandId);
                    if (icon != null) {
                        String disabledIcon = CommandImagePersistence.readOptional(configurationElement, "disabledIcon");
                        String hoverIcon = CommandImagePersistence.readOptional(configurationElement, "hoverIcon");
                        String namespaceId = configurationElement.getNamespaceIdentifier();
                        ImageDescriptor iconDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(namespaceId, icon);
                        commandImageManager.bind(commandId, 0, style, iconDescriptor);
                        if (disabledIcon != null) {
                            ImageDescriptor disabledIconDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(namespaceId, disabledIcon);
                            commandImageManager.bind(commandId, 1, style, disabledIconDescriptor);
                        }
                        if (hoverIcon != null) {
                            ImageDescriptor hoverIconDescriptor = AbstractUIPlugin.imageDescriptorFromPlugin(namespaceId, hoverIcon);
                            commandImageManager.bind(commandId, 2, style, hoverIconDescriptor);
                        }
                    }
                }
            }
            ++i;
        }
        CommandImagePersistence.logWarnings(warningsToLog, "Warnings while parsing the images from the 'org.eclipse.ui.commandImages' extension point.");
    }

    CommandImagePersistence(CommandImageManager commandImageManager, ICommandService commandService) {
        this.commandImageManager = commandImageManager;
        this.commandService = commandService;
    }

    protected final boolean isChangeImportant(IRegistryChangeEvent event) {
        IExtensionDelta[] imageDeltas = event.getExtensionDeltas("org.eclipse.ui", "commandImages");
        return imageDeltas.length != 0;
    }

    protected final void read() {
        super.read();
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        int imageCount = 0;
        IConfigurationElement[][] indexedConfigurationElements = new IConfigurationElement[1][];
        IConfigurationElement[] commandImagesExtensionPoint = registry.getConfigurationElementsFor("org.eclipse.ui.commandImages");
        int i = 0;
        while (i < commandImagesExtensionPoint.length) {
            IConfigurationElement configurationElement = commandImagesExtensionPoint[i];
            String name = configurationElement.getName();
            if ("image".equals(name)) {
                CommandImagePersistence.addElementToIndexedArray(configurationElement, indexedConfigurationElements, 0, imageCount++);
            }
            ++i;
        }
        CommandImagePersistence.readImagesFromRegistry(indexedConfigurationElements[0], imageCount, this.commandImageManager, this.commandService);
    }
}

