/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.DataInputStream;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.resources.WorkspaceTreeReader_1;
import org.eclipse.core.internal.resources.WorkspaceTreeReader_2;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.watson.ElementTree;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.osgi.util.NLS;

public abstract class WorkspaceTreeReader {
    protected boolean renameProjectNode;

    public static WorkspaceTreeReader getReader(Workspace workspace, int version, boolean renameProjectNode) throws CoreException {
        WorkspaceTreeReader_1 w = null;
        switch (version) {
            case 67305985: {
                w = new WorkspaceTreeReader_1(workspace);
                w.renameProjectNode = renameProjectNode;
                return w;
            }
            case 67305986: {
                w = new WorkspaceTreeReader_2(workspace);
                w.renameProjectNode = renameProjectNode;
                return w;
            }
        }
        String msg = NLS.bind((String)Messages.resources_format, (Object)new Integer(version));
        throw new ResourceException(567, null, msg, null);
    }

    public static WorkspaceTreeReader getReader(Workspace workspace, int version) throws CoreException {
        return WorkspaceTreeReader.getReader(workspace, version, false);
    }

    public abstract ElementTree readSnapshotTree(DataInputStream var1, ElementTree var2, IProgressMonitor var3) throws CoreException;

    public abstract void readTree(DataInputStream var1, IProgressMonitor var2) throws CoreException;

    public abstract void readTree(IProject var1, DataInputStream var2, IProgressMonitor var3) throws CoreException;
}

