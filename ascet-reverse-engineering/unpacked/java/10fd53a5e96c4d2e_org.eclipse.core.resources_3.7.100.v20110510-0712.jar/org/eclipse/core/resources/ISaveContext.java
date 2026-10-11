/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.core.resources;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.IPath;

public interface ISaveContext {
    public static final int FULL_SAVE = 1;
    public static final int SNAPSHOT = 2;
    public static final int PROJECT_SAVE = 3;

    public IPath[] getFiles();

    public int getKind();

    public int getPreviousSaveNumber();

    public IProject getProject();

    public int getSaveNumber();

    public IPath lookup(IPath var1);

    public void map(IPath var1, IPath var2);

    public void needDelta();

    public void needSaveNumber();
}

