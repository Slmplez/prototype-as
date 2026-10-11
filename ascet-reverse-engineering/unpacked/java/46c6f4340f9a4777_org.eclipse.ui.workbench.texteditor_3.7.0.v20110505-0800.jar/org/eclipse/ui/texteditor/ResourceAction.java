/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.ui.PlatformUI
 */
package org.eclipse.ui.texteditor;

import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.PlatformUI;

public abstract class ResourceAction
extends Action {
    protected static String getString(ResourceBundle bundle, String key, String defaultValue) {
        String value = defaultValue;
        try {
            value = bundle.getString(key);
        }
        catch (MissingResourceException missingResourceException) {}
        return value;
    }

    public ResourceAction(ResourceBundle bundle, String prefix, int style) {
        super(null, style);
        this.initialize(bundle, prefix);
    }

    public ResourceAction(ResourceBundle bundle, String prefix) {
        this.initialize(bundle, prefix);
    }

    public final void setHelpContextId(String contextId) {
        PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)this, contextId);
    }

    protected void initialize(ResourceBundle bundle, String prefix) {
        String labelKey = "label";
        String tooltipKey = "tooltip";
        String imageKey = "image";
        String descriptionKey = "description";
        if (prefix != null && prefix.length() > 0) {
            labelKey = String.valueOf(prefix) + labelKey;
            tooltipKey = String.valueOf(prefix) + tooltipKey;
            imageKey = String.valueOf(prefix) + imageKey;
            descriptionKey = String.valueOf(prefix) + descriptionKey;
        }
        this.setText(ResourceAction.getString(bundle, labelKey, labelKey));
        this.setToolTipText(ResourceAction.getString(bundle, tooltipKey, null));
        this.setDescription(ResourceAction.getString(bundle, descriptionKey, null));
        String file = ResourceAction.getString(bundle, imageKey, null);
        if (file != null && file.trim().length() > 0) {
            this.setImageDescriptor(ImageDescriptor.createFromFile(((Object)((Object)this)).getClass(), (String)file));
        }
    }
}

