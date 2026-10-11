/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.debug.core.sourcelookup.containers;

import java.io.File;
import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.sourcelookup.ISourceContainer;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.containers.CompositeSourceContainer;
import org.eclipse.debug.core.sourcelookup.containers.LocalFileStorage;

public class DirectorySourceContainer
extends CompositeSourceContainer {
    private File fDirectory;
    private boolean fSubfolders = false;
    public static final String TYPE_ID = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".containerType.directory";

    public DirectorySourceContainer(IPath dirPath, boolean subfolders) {
        this(dirPath.toFile(), subfolders);
    }

    public DirectorySourceContainer(File dir, boolean subfolders) {
        this.fDirectory = dir;
        this.fSubfolders = subfolders;
    }

    public String getName() {
        return this.fDirectory.getName();
    }

    public File getDirectory() {
        return this.fDirectory;
    }

    public ISourceContainerType getType() {
        return this.getSourceContainerType(TYPE_ID);
    }

    public Object[] findSourceElements(String name) throws CoreException {
        ArrayList<Object> sources = new ArrayList<Object>();
        File directory = this.getDirectory();
        File file = new File(directory, name);
        if (file.exists() && file.isFile()) {
            sources.add((Object)new LocalFileStorage(file));
        }
        if (this.isFindDuplicates() && this.fSubfolders || sources.isEmpty() && this.fSubfolders) {
            ISourceContainer[] containers = this.getSourceContainers();
            int i = 0;
            while (i < containers.length) {
                Object[] objects = containers[i].findSourceElements(name);
                if (objects != null && objects.length != 0) {
                    if (this.isFindDuplicates()) {
                        int j = 0;
                        while (j < objects.length) {
                            sources.add(objects[j]);
                            ++j;
                        }
                    } else {
                        sources.add(objects[0]);
                        break;
                    }
                }
                ++i;
            }
        }
        if (sources.isEmpty()) {
            return EMPTY;
        }
        return sources.toArray();
    }

    public boolean isComposite() {
        return this.fSubfolders;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DirectorySourceContainer) {
            DirectorySourceContainer container = (DirectorySourceContainer)obj;
            return container.getDirectory().equals(this.getDirectory());
        }
        return false;
    }

    public int hashCode() {
        return this.getDirectory().hashCode();
    }

    protected ISourceContainer[] createSourceContainers() throws CoreException {
        String[] files;
        if (this.isComposite() && (files = this.fDirectory.list()) != null) {
            ArrayList<DirectorySourceContainer> dirs = new ArrayList<DirectorySourceContainer>();
            int i = 0;
            while (i < files.length) {
                String name = files[i];
                File file = new File(this.getDirectory(), name);
                if (file.exists() && file.isDirectory()) {
                    dirs.add(new DirectorySourceContainer(file, true));
                }
                ++i;
            }
            ISourceContainer[] containers = dirs.toArray(new ISourceContainer[dirs.size()]);
            int i2 = 0;
            while (i2 < containers.length) {
                ISourceContainer container = containers[i2];
                container.init(this.getDirector());
                ++i2;
            }
            return containers;
        }
        return new ISourceContainer[0];
    }
}

