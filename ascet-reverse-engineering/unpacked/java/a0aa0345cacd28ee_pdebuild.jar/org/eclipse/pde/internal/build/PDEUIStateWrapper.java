/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.resolver.State
 */
package org.eclipse.pde.internal.build;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.service.resolver.State;

public class PDEUIStateWrapper {
    private State state;
    private HashMap classpath;
    private Map outputFolders;
    private Map patchData;
    private long nextId;

    public void setState(State s) {
        this.state = s;
    }

    public void setExtraData(HashMap classpath, Map patch, Map outputFolders) {
        this.classpath = classpath;
        this.patchData = patch;
        this.outputFolders = outputFolders;
    }

    public State getState() {
        return this.state;
    }

    public HashMap getClasspaths() {
        return this.classpath;
    }

    public Map getOutputFolders() {
        return this.outputFolders;
    }

    public Map getPatchData() {
        return this.patchData;
    }

    public void setNextId(long nextId) {
        this.nextId = nextId;
    }

    public long getNextId() {
        return this.nextId;
    }
}

