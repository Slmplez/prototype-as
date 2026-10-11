/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.templates;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.eclipse.core.runtime.Assert;

public final class TemplateVariableType {
    private final String fName;
    private final List fParams;

    TemplateVariableType(String name) {
        this(name, new String[0]);
    }

    TemplateVariableType(String name, String[] params) {
        Assert.isLegal((name != null ? 1 : 0) != 0);
        Assert.isLegal((params != null ? 1 : 0) != 0);
        this.fName = name;
        this.fParams = Collections.unmodifiableList(new ArrayList<String>(Arrays.asList(params)));
    }

    public String getName() {
        return this.fName;
    }

    public List getParams() {
        return this.fParams;
    }

    public boolean equals(Object obj) {
        if (obj instanceof TemplateVariableType) {
            TemplateVariableType other = (TemplateVariableType)obj;
            return other.fName.equals(this.fName) && other.fParams.equals(this.fParams);
        }
        return false;
    }

    public int hashCode() {
        return this.fName.hashCode() + this.fParams.hashCode();
    }

    public String toString() {
        return String.valueOf(this.fName) + this.fParams.toString();
    }
}

