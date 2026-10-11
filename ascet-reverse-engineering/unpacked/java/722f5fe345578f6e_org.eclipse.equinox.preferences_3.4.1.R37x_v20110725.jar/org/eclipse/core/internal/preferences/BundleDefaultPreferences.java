/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.core.internal.preferences;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.internal.preferences.DefaultPreferences;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;

public class BundleDefaultPreferences
extends EclipsePreferences {
    private static Set loadedNodes = Collections.synchronizedSet(new HashSet());
    private String qualifier;
    private int segmentCount;
    private IEclipsePreferences loadLevel;

    public BundleDefaultPreferences() {
        this(null, null);
    }

    private BundleDefaultPreferences(EclipsePreferences parent, String name) {
        super(parent, name);
        Path path = new Path(this.absolutePath());
        this.segmentCount = path.segmentCount();
        if (this.segmentCount < 2) {
            return;
        }
        String scope = path.segment(0);
        if ("bundle_defaults".equals(scope)) {
            this.qualifier = path.segment(1);
        }
        if (this.qualifier == null) {
            return;
        }
    }

    protected IEclipsePreferences getLoadLevel() {
        if (this.loadLevel == null) {
            if (this.qualifier == null) {
                return null;
            }
            IEclipsePreferences node = this;
            int i = 2;
            while (i < this.segmentCount) {
                node = (IEclipsePreferences)node.parent();
                ++i;
            }
            this.loadLevel = node;
        }
        return this.loadLevel;
    }

    protected boolean isAlreadyLoaded(IEclipsePreferences node) {
        return loadedNodes.contains(node.name());
    }

    protected void loaded() {
        loadedNodes.add(this.name());
    }

    protected void load() {
        String relativePath = DefaultPreferences.getScopeRelativePath(this.absolutePath());
        if (relativePath != null) {
            PreferencesService.getDefault().getRootNode().node("default").node(relativePath);
        }
    }

    protected EclipsePreferences internalCreate(EclipsePreferences nodeParent, String nodeName, Object context) {
        return new BundleDefaultPreferences(nodeParent, nodeName);
    }
}

