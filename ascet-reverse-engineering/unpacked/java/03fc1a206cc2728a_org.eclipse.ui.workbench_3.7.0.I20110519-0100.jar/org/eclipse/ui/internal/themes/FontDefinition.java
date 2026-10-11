/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.StringConverter
 *  org.eclipse.swt.graphics.FontData
 */
package org.eclipse.ui.internal.themes;

import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.themes.ICategorizedThemeElementDefinition;
import org.eclipse.ui.internal.themes.IEditable;
import org.eclipse.ui.internal.themes.IHierarchalThemeElementDefinition;

public class FontDefinition
implements IHierarchalThemeElementDefinition,
ICategorizedThemeElementDefinition,
IEditable {
    private String label;
    private String id;
    private String defaultsTo;
    private String categoryId;
    private String description;
    private String value;
    private boolean isEditable;
    private FontData[] parsedValue;

    public FontDefinition(String fontName, String uniqueId, String defaultsId, String value, String categoryId, boolean isEditable, String fontDescription) {
        this.label = fontName;
        this.id = uniqueId;
        this.defaultsTo = defaultsId;
        this.value = value;
        this.categoryId = categoryId;
        this.description = fontDescription;
        this.isEditable = isEditable;
    }

    public FontDefinition(FontDefinition originalFont, FontData[] datas) {
        this.label = originalFont.getName();
        this.id = originalFont.getId();
        this.categoryId = originalFont.getCategoryId();
        this.description = originalFont.getDescription();
        this.isEditable = originalFont.isEditable();
        this.parsedValue = datas;
    }

    public String getDefaultsTo() {
        return this.defaultsTo;
    }

    public String getDescription() {
        return this.description;
    }

    public String getName() {
        return this.label;
    }

    public String getId() {
        return this.id;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public FontData[] getValue() {
        if (this.value == null) {
            return null;
        }
        if (this.parsedValue == null) {
            this.parsedValue = JFaceResources.getFontRegistry().filterData(StringConverter.asFontDataArray((String)this.value), PlatformUI.getWorkbench().getDisplay());
        }
        return this.parsedValue;
    }

    public boolean isEditable() {
        return this.isEditable;
    }

    public boolean equals(Object obj) {
        if (obj instanceof FontDefinition) {
            return this.getId().equals(((FontDefinition)obj).getId());
        }
        return false;
    }

    public int hashCode() {
        return this.id.hashCode();
    }
}

