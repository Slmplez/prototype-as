/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.ILaunchConfiguration
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.jdt.internal.launching.AbstractRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class VariableClasspathEntry
extends AbstractRuntimeClasspathEntry {
    public static final String TYPE_ID = "org.eclipse.jdt.launching.classpathentry.variableClasspathEntry";
    private String variableString;

    public VariableClasspathEntry() {
    }

    public VariableClasspathEntry(String variableString) {
        this.variableString = variableString;
    }

    protected void buildMemento(Document document, Element memento) throws CoreException {
        memento.setAttribute("variableString", this.variableString);
        memento.setAttribute("path", Integer.toString(this.getClasspathProperty()));
    }

    public void initializeFrom(Element memento) throws CoreException {
        this.variableString = memento.getAttribute("variableString");
        String property = memento.getAttribute("path");
        if (property != null && !"".equals(property)) {
            try {
                this.setClasspathProperty(Integer.parseInt(property));
            }
            catch (NumberFormatException numberFormatException) {}
        }
    }

    public String getTypeId() {
        return TYPE_ID;
    }

    public IRuntimeClasspathEntry[] getRuntimeClasspathEntries(ILaunchConfiguration configuration) throws CoreException {
        return new IRuntimeClasspathEntry[0];
    }

    public String getName() {
        return this.variableString;
    }

    public int getType() {
        return 5;
    }

    public String getVariableString() {
        return this.variableString;
    }

    public void setVariableString(String variableString) {
        this.variableString = variableString;
    }

    public int hashCode() {
        if (this.variableString != null) {
            return this.variableString.hashCode();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof VariableClasspathEntry) {
            VariableClasspathEntry other = (VariableClasspathEntry)obj;
            if (this.variableString != null) {
                return this.variableString.equals(other.variableString);
            }
        }
        return false;
    }
}

