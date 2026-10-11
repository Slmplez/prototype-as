/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.internal.core.XMLMemento;

public class ResourceFactory {
    public static final String TAG_PATH = "path";
    public static final String TAG_TYPE = "type";

    public static IAdaptable createElement(XMLMemento memento) {
        String fileName = memento.getString(TAG_PATH);
        if (fileName == null) {
            return null;
        }
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        String type = memento.getString(TAG_TYPE);
        IResource res = null;
        if (type == null) {
            res = root.findMember((IPath)new Path(fileName));
        } else {
            int resourceType = Integer.parseInt(type);
            if (resourceType == 8) {
                res = root;
            } else if (resourceType == 4) {
                res = root.getProject(fileName);
            } else if (resourceType == 2) {
                res = root.getFolder((IPath)new Path(fileName));
            } else if (resourceType == 1) {
                res = root.getFile((IPath)new Path(fileName));
            }
        }
        return res;
    }

    public static void saveState(XMLMemento memento, IResource res) {
        memento.putString(TAG_PATH, res.getFullPath().toString());
        memento.putString(TAG_TYPE, Integer.toString(res.getType()));
    }
}

