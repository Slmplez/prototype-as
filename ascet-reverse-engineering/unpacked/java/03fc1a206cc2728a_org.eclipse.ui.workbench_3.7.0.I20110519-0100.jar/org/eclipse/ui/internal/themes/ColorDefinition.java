/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.resource.DataFormatException
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.internal.themes;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.resource.DataFormatException;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.themes.ICategorizedThemeElementDefinition;
import org.eclipse.ui.internal.themes.IEditable;
import org.eclipse.ui.internal.themes.IHierarchalThemeElementDefinition;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.themes.ColorUtil;

public class ColorDefinition
implements IPluginContribution,
IHierarchalThemeElementDefinition,
ICategorizedThemeElementDefinition,
IEditable {
    private static final RGB DEFAULT_COLOR_VALUE = new RGB(0, 0, 0);
    private String defaultsTo;
    private String description;
    private String id;
    private String label;
    private String pluginId;
    private String rawValue;
    private String categoryId;
    boolean isEditable;
    private RGB parsedValue;

    public ColorDefinition(String label, String id, String defaultsTo, String value, String categoryId, boolean isEditable, String description, String pluginId) {
        this.label = label;
        this.id = id;
        this.defaultsTo = defaultsTo;
        this.rawValue = value;
        this.categoryId = categoryId;
        this.description = description;
        this.isEditable = isEditable;
        this.pluginId = pluginId;
    }

    public ColorDefinition(ColorDefinition original, RGB value) {
        this.label = original.getName();
        this.id = original.getId();
        this.categoryId = original.getCategoryId();
        this.description = original.getDescription();
        this.isEditable = original.isEditable();
        this.pluginId = original.getPluginId();
        this.parsedValue = value;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public String getDefaultsTo() {
        return this.defaultsTo;
    }

    public String getDescription() {
        return this.description;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.label;
    }

    public String getLocalId() {
        return this.getId();
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public RGB getValue() {
        if (this.parsedValue == null) {
            try {
                this.parsedValue = ColorUtil.getColorValue(this.rawValue);
            }
            catch (DataFormatException e) {
                this.parsedValue = DEFAULT_COLOR_VALUE;
                IStatus status = StatusUtil.newStatus(2, "Could not parse value for theme color " + this.id, (Throwable)e);
                StatusManager.getManager().handle(status, 1);
            }
        }
        return this.parsedValue;
    }

    public String toString() {
        return this.getId();
    }

    public boolean isEditable() {
        return this.isEditable;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ColorDefinition) {
            return this.getId().equals(((ColorDefinition)obj).getId());
        }
        return false;
    }

    public int hashCode() {
        return this.id.hashCode();
    }
}

