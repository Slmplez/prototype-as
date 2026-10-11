/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ant.internal.core;

import java.net.URL;
import org.eclipse.ant.core.IAntClasspathEntry;
import org.eclipse.ant.internal.core.AntClasspathEntry;

public abstract class AntObject {
    protected String fClassName;
    protected URL fLibrary;
    protected IAntClasspathEntry fLibraryEntry;
    protected String fName;
    private String fPluginLabel;
    private boolean eclipseRuntime = true;
    private String fURI = null;

    public String getClassName() {
        return this.fClassName;
    }

    public void setClassName(String className) {
        this.fClassName = className;
    }

    public URL getLibrary() {
        if (this.fLibrary != null) {
            return this.fLibrary;
        }
        return this.fLibraryEntry.getEntryURL();
    }

    public void setLibrary(URL library) {
        this.fLibrary = library;
    }

    public IAntClasspathEntry getLibraryEntry() {
        if (this.fLibraryEntry != null) {
            return this.fLibraryEntry;
        }
        this.fLibraryEntry = new AntClasspathEntry(this.fLibrary);
        return this.fLibraryEntry;
    }

    public void setLibraryEntry(IAntClasspathEntry libraryEntry) {
        this.fLibraryEntry = libraryEntry;
    }

    public String toString() {
        if (this.fURI == null || this.fURI.equals("") || this.fURI.equals("antlib:org.apache.tools.ant")) {
            return this.fName;
        }
        return String.valueOf(this.fURI) + ':' + this.fName;
    }

    public boolean isDefault() {
        return this.fPluginLabel != null;
    }

    public void setIsDefault(boolean isDefault) {
        if (!isDefault) {
            this.fPluginLabel = null;
        }
    }

    public void setPluginLabel(String pluginLabel) {
        this.fPluginLabel = pluginLabel;
    }

    public String getPluginLabel() {
        return this.fPluginLabel;
    }

    public boolean isEclipseRuntimeRequired() {
        return this.eclipseRuntime;
    }

    public void setEclipseRuntimeRequired(boolean eclipseRuntime) {
        this.eclipseRuntime = eclipseRuntime;
    }

    public String getURI() {
        return this.fURI;
    }

    public void setURI(String uri) {
        this.fURI = uri;
    }
}

