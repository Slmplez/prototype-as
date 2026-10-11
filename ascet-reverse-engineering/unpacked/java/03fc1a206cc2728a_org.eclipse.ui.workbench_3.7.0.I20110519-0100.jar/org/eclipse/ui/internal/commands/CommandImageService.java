/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.commands;

import java.net.URL;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.commands.ICommandImageService;
import org.eclipse.ui.commands.ICommandService;
import org.eclipse.ui.internal.commands.CommandImageManager;
import org.eclipse.ui.internal.commands.CommandImagePersistence;

public final class CommandImageService
implements ICommandImageService {
    private final CommandImageManager commandImageManager;
    private final CommandImagePersistence commandImagePersistence;

    public CommandImageService(CommandImageManager commandImageManager, ICommandService commandService) {
        if (commandImageManager == null) {
            throw new NullPointerException("Cannot create a command image service with a null manager");
        }
        if (commandService == null) {
            throw new NullPointerException("Cannot create a command image service with a null command service");
        }
        this.commandImageManager = commandImageManager;
        this.commandImagePersistence = new CommandImagePersistence(commandImageManager, commandService);
    }

    public final void bind(String commandId, int type, String style, ImageDescriptor descriptor) {
        this.commandImageManager.bind(commandId, type, style, descriptor);
    }

    public final void bind(String commandId, int type, String style, URL url) {
        this.commandImageManager.bind(commandId, type, style, url);
    }

    public final void dispose() {
        this.commandImagePersistence.dispose();
    }

    public final String generateUnusedStyle(String commandId) {
        return this.commandImageManager.generateUnusedStyle(commandId);
    }

    public final ImageDescriptor getImageDescriptor(String commandId) {
        return this.commandImageManager.getImageDescriptor(commandId);
    }

    public final ImageDescriptor getImageDescriptor(String commandId, int type) {
        return this.commandImageManager.getImageDescriptor(commandId, type);
    }

    public final ImageDescriptor getImageDescriptor(String commandId, int type, String style) {
        return this.commandImageManager.getImageDescriptor(commandId, type, style);
    }

    public final ImageDescriptor getImageDescriptor(String commandId, String style) {
        return this.commandImageManager.getImageDescriptor(commandId, style);
    }

    public final void readRegistry() {
        this.commandImagePersistence.read();
    }
}

