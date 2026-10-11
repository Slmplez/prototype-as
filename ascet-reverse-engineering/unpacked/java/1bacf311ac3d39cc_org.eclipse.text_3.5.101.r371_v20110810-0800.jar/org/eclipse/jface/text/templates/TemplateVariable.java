/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.templates;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.templates.TemplateVariableType;

public class TemplateVariable {
    private final TemplateVariableType fType;
    private final String fName;
    private final int fInitialLength;
    private int[] fOffsets;
    private boolean fIsUnambiguous;
    private boolean fIsResolved;
    private String[] fValues;

    public TemplateVariable(String type, String defaultValue, int[] offsets) {
        this(type, new String[]{defaultValue}, offsets);
    }

    public TemplateVariable(String type, String name, String defaultValue, int[] offsets) {
        this(type, name, new String[]{defaultValue}, offsets);
    }

    public TemplateVariable(TemplateVariableType type, String name, String defaultValue, int[] offsets) {
        this(type, name, new String[]{defaultValue}, offsets);
    }

    public TemplateVariable(String type, String[] values, int[] offsets) {
        this(type, type, values, offsets);
    }

    public TemplateVariable(String type, String name, String[] values, int[] offsets) {
        this(new TemplateVariableType(type), name, values, offsets);
    }

    TemplateVariable(TemplateVariableType type, String name, String[] values, int[] offsets) {
        Assert.isNotNull((Object)type);
        Assert.isNotNull((Object)name);
        this.fType = type;
        this.fName = name;
        this.setValues(values);
        this.setOffsets(offsets);
        this.setUnambiguous(false);
        this.setResolved(false);
        this.fInitialLength = values[0].length();
    }

    public String getType() {
        return this.fType.getName();
    }

    public TemplateVariableType getVariableType() {
        return this.fType;
    }

    public String getName() {
        return this.fName;
    }

    public String getDefaultValue() {
        return this.getValues()[0];
    }

    public String[] getValues() {
        return this.fValues;
    }

    public int getLength() {
        return this.getDefaultValue().length();
    }

    final int getInitialLength() {
        return this.fInitialLength;
    }

    public void setOffsets(int[] offsets) {
        this.fOffsets = TextUtilities.copy(offsets);
    }

    public int[] getOffsets() {
        return this.fOffsets;
    }

    public final void setValue(String value) {
        this.setValues(new String[]{value});
    }

    public void setValues(String[] values) {
        Assert.isTrue((values.length > 0 ? 1 : 0) != 0);
        this.fValues = TextUtilities.copy(values);
        this.setResolved(true);
    }

    public void setUnambiguous(boolean unambiguous) {
        this.fIsUnambiguous = unambiguous;
        if (unambiguous) {
            this.setResolved(true);
        }
    }

    public boolean isUnambiguous() {
        return this.fIsUnambiguous;
    }

    public void setResolved(boolean resolved) {
        this.fIsResolved = resolved;
    }

    public boolean isResolved() {
        return this.fIsResolved;
    }
}

