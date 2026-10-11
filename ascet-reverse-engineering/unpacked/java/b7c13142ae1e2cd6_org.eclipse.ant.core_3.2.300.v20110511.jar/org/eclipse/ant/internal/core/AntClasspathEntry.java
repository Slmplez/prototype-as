/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.variables.VariablesPlugin
 */
package org.eclipse.ant.internal.core;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.ant.core.AntCorePlugin;
import org.eclipse.ant.core.IAntClasspathEntry;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.variables.VariablesPlugin;

public class AntClasspathEntry
implements IAntClasspathEntry {
    private String entryString;
    private boolean eclipseRequired = false;
    private URL url = null;

    public String getLabel() {
        return this.entryString;
    }

    public URL getEntryURL() {
        if (this.url != null) {
            return this.url;
        }
        try {
            String expanded = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(this.entryString);
            return new URL("file:" + expanded);
        }
        catch (CoreException coreException) {
            try {
                return new URL("file:" + this.entryString);
            }
            catch (MalformedURLException malformedURLException) {
                return null;
            }
        }
        catch (MalformedURLException e) {
            AntCorePlugin.log(e);
            return null;
        }
    }

    public AntClasspathEntry(String entryString) {
        this.entryString = entryString;
    }

    public AntClasspathEntry(URL url) {
        this.url = url;
        this.entryString = new File(url.getPath()).getAbsolutePath();
    }

    public boolean equals(Object obj) {
        if (obj instanceof IAntClasspathEntry) {
            IAntClasspathEntry other = (IAntClasspathEntry)obj;
            return this.entryString.equals(other.getLabel());
        }
        return false;
    }

    public int hashCode() {
        return this.entryString.hashCode();
    }

    public String toString() {
        return this.getLabel();
    }

    public boolean isEclipseRuntimeRequired() {
        return this.eclipseRequired;
    }

    public void setEclipseRuntimeRequired(boolean eclipseRequired) {
        this.eclipseRequired = eclipseRequired;
    }
}

