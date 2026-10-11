/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.resources;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.internal.resources.ResourceException;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public class SafeFileTable {
    protected IPath location;
    protected Properties table;

    public SafeFileTable(String pluginId) throws CoreException {
        this.location = this.getWorkspace().getMetaArea().getSafeTableLocationFor(pluginId);
        this.restore();
    }

    public IPath[] getFiles() {
        Set set = this.table.keySet();
        String[] keys = set.toArray(new String[set.size()]);
        IPath[] files = new IPath[keys.length];
        int i = 0;
        while (i < keys.length) {
            files[i] = new Path(keys[i]);
            ++i;
        }
        return files;
    }

    protected Workspace getWorkspace() {
        return (Workspace)ResourcesPlugin.getWorkspace();
    }

    public IPath lookup(IPath file) {
        String result = this.table.getProperty(file.toOSString());
        return result == null ? null : new Path(result);
    }

    public void map(IPath file, IPath aLocation) {
        if (aLocation == null) {
            this.table.remove(file);
        } else {
            this.table.setProperty(file.toOSString(), aLocation.toOSString());
        }
    }

    public void restore() throws CoreException {
        File target = this.location.toFile();
        this.table = new Properties();
        if (!target.exists()) {
            return;
        }
        try {
            FileInputStream input = new FileInputStream(target);
            try {
                this.table.load(input);
            }
            finally {
                input.close();
            }
        }
        catch (IOException e) {
            String message = Messages.resources_exSafeRead;
            throw new ResourceException(566, null, message, e);
        }
    }

    public void save() throws CoreException {
        File target = this.location.toFile();
        try {
            FileOutputStream output = new FileOutputStream(target);
            try {
                this.table.store(output, "safe table");
                output.close();
            }
            finally {
                FileUtil.safeClose(output);
            }
        }
        catch (IOException e) {
            String message = Messages.resources_exSafeSave;
            throw new ResourceException(566, null, message, e);
        }
    }

    public void setLocation(IPath location) {
        if (location != null) {
            this.location = location;
        }
    }
}

