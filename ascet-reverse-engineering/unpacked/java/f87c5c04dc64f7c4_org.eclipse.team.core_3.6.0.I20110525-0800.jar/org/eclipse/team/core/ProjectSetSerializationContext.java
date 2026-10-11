/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 */
package org.eclipse.team.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.team.core.TeamException;

public class ProjectSetSerializationContext {
    private final String filename;
    private final Map properties = new HashMap();

    public ProjectSetSerializationContext() {
        this(null);
    }

    public ProjectSetSerializationContext(String filename) {
        this.filename = filename;
    }

    public IProject[] confirmOverwrite(IProject[] projects) throws TeamException {
        return new IProject[0];
    }

    public Object getShell() {
        return null;
    }

    public String getFilename() {
        return this.filename;
    }

    public void setProperty(String key, Object value) {
        this.properties.put(key, value);
    }

    public Object getProperty(String key) {
        return this.properties.get(key);
    }
}

