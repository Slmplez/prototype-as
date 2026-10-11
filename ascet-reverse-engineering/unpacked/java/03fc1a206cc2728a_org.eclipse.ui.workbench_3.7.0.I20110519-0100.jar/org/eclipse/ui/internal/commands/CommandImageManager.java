/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.commands;

import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.internal.commands.CommandImageManagerEvent;
import org.eclipse.ui.internal.commands.ICommandImageManagerListener;

public final class CommandImageManager
extends EventManager {
    public static final int TYPE_DEFAULT = 0;
    public static final int TYPE_DISABLED = 1;
    public static final int TYPE_HOVER = 2;
    private final Map imagesById = new HashMap();

    public final void addCommandImageManagerListener(ICommandImageManagerListener listener) {
        this.addListenerObject(listener);
    }

    public final void bind(String commandId, int type, String style, URL url) {
        ImageDescriptor descriptor = ImageDescriptor.createFromURL((URL)url);
        this.bind(commandId, type, style, descriptor);
    }

    public final void bind(String commandId, int type, String style, ImageDescriptor descriptor) {
        Object[] images = (Object[])this.imagesById.get(commandId);
        if (images == null) {
            images = new Object[3];
            this.imagesById.put(commandId, images);
        }
        if (type < 0 || type >= images.length) {
            throw new IllegalArgumentException("The type must be one of TYPE_DEFAULT, TYPE_DISABLED and TYPE_HOVER.");
        }
        Object typedImage = images[type];
        if (style == null) {
            if (typedImage == null || typedImage instanceof ImageDescriptor) {
                images[type] = descriptor;
            } else if (typedImage instanceof Map) {
                Map styleMap = (Map)typedImage;
                styleMap.put(style, descriptor);
            }
        } else if (typedImage instanceof Map) {
            Map styleMap = (Map)typedImage;
            styleMap.put(style, descriptor);
        } else if (typedImage instanceof ImageDescriptor || typedImage == null) {
            HashMap<String, Object> styleMap = new HashMap<String, Object>();
            styleMap.put(null, typedImage);
            styleMap.put(style, descriptor);
            images[type] = styleMap;
        }
        this.fireManagerChanged(new CommandImageManagerEvent(this, new String[]{commandId}, type, style));
    }

    public final void clear() {
        this.imagesById.clear();
        if (this.isListenerAttached()) {
            String[] commandIds = this.imagesById.keySet().toArray(new String[this.imagesById.size()]);
            this.fireManagerChanged(new CommandImageManagerEvent(this, commandIds, 0, null));
        }
    }

    private final void fireManagerChanged(CommandImageManagerEvent event) {
        if (event == null) {
            throw new NullPointerException();
        }
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ICommandImageManagerListener listener = (ICommandImageManagerListener)listeners[i];
            listener.commandImageManagerChanged(event);
            ++i;
        }
    }

    public final String generateUnusedStyle(String commandId) {
        Object[] existingImages = (Object[])this.imagesById.get(commandId);
        if (existingImages == null) {
            return null;
        }
        HashSet existingStyles = new HashSet(3);
        int type = 0;
        while (type < existingImages.length) {
            Object styledImages = existingImages[type];
            if (styledImages instanceof ImageDescriptor) {
                existingStyles.add(null);
            } else if (styledImages instanceof Map) {
                Map styleMap = (Map)styledImages;
                existingStyles.addAll(styleMap.keySet());
            }
            ++type;
        }
        if (!existingStyles.contains(null)) {
            return null;
        }
        String generatedStyle = "AUTOGEN:::";
        int index = 0;
        while (existingStyles.contains(generatedStyle)) {
            generatedStyle = String.valueOf(generatedStyle) + index++ % 10;
        }
        return generatedStyle;
    }

    public final ImageDescriptor getImageDescriptor(String commandId) {
        return this.getImageDescriptor(commandId, 0, null);
    }

    public final ImageDescriptor getImageDescriptor(String commandId, int type) {
        return this.getImageDescriptor(commandId, type, null);
    }

    public final ImageDescriptor getImageDescriptor(String commandId, int type, String style) {
        if (commandId == null) {
            throw new NullPointerException();
        }
        Object[] images = (Object[])this.imagesById.get(commandId);
        if (images == null) {
            return null;
        }
        if (type < 0 || type >= images.length) {
            throw new IllegalArgumentException("The type must be one of TYPE_DEFAULT, TYPE_DISABLED and TYPE_HOVER.");
        }
        Object typedImage = images[type];
        if (typedImage == null) {
            return null;
        }
        if (typedImage instanceof ImageDescriptor) {
            return (ImageDescriptor)typedImage;
        }
        if (typedImage instanceof Map) {
            Map styleMap = (Map)typedImage;
            Object styledImage = styleMap.get(style);
            if (styledImage instanceof ImageDescriptor) {
                return (ImageDescriptor)styledImage;
            }
            if (style != null && (styledImage = styleMap.get(null)) instanceof ImageDescriptor) {
                return (ImageDescriptor)styledImage;
            }
        }
        return null;
    }

    public final ImageDescriptor getImageDescriptor(String commandId, String style) {
        return this.getImageDescriptor(commandId, 0, style);
    }

    public final void removeCommandImageManagerListener(ICommandImageManagerListener listener) {
        this.removeListenerObject(listener);
    }
}

