/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.service.datalocation.Location
 */
package org.eclipse.core.internal.preferences;

import java.net.URL;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.PreferencesOSGiUtils;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.osgi.service.datalocation.Location;

public class ConfigurationPreferences
extends EclipsePreferences {
    private int segmentCount;
    private String qualifier;
    private IPath location;
    private IEclipsePreferences loadLevel;
    private static Set loadedNodes;
    private static boolean initialized;
    private static IPath baseLocation;

    static {
        URL url;
        loadedNodes = Collections.synchronizedSet(new HashSet());
        initialized = false;
        Location location = PreferencesOSGiUtils.getDefault().getConfigurationLocation();
        if (location != null && (url = location.getURL()) != null) {
            baseLocation = new Path(url.getFile());
        }
    }

    public ConfigurationPreferences() {
        this(null, null);
    }

    private ConfigurationPreferences(EclipsePreferences parent, String name) {
        super(parent, name);
        this.initializeChildren();
        String path = this.absolutePath();
        this.segmentCount = ConfigurationPreferences.getSegmentCount(path);
        if (this.segmentCount < 2) {
            return;
        }
        this.qualifier = ConfigurationPreferences.getSegment(path, 1);
        if (this.qualifier == null) {
            return;
        }
        if (baseLocation != null) {
            this.location = this.computeLocation(baseLocation, this.qualifier);
        }
    }

    protected IPath getLocation() {
        return this.location;
    }

    protected boolean isAlreadyLoaded(IEclipsePreferences node) {
        return loadedNodes.contains(node.name());
    }

    protected void loaded() {
        loadedNodes.add(this.name());
    }

    protected IEclipsePreferences getLoadLevel() {
        if (this.loadLevel == null) {
            if (this.qualifier == null) {
                return null;
            }
            EclipsePreferences node = this;
            int i = 2;
            while (i < this.segmentCount) {
                node = (EclipsePreferences)node.parent();
                ++i;
            }
            this.loadLevel = node;
        }
        return this.loadLevel;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void initializeChildren() {
        if (initialized || this.parent == null) {
            return;
        }
        try {
            ConfigurationPreferences configurationPreferences = this;
            synchronized (configurationPreferences) {
                block10: {
                    if (baseLocation != null) break block10;
                    return;
                }
                String[] names = this.computeChildren(baseLocation);
                int i = 0;
                while (i < names.length) {
                    this.addChild(names[i], null);
                    ++i;
                }
            }
        }
        finally {
            initialized = true;
        }
    }

    protected EclipsePreferences internalCreate(EclipsePreferences nodeParent, String nodeName, Object context) {
        return new ConfigurationPreferences(nodeParent, nodeName);
    }
}

