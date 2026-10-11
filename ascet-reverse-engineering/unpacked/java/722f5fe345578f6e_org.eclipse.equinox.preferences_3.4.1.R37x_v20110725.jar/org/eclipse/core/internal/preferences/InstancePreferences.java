/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.MetaDataKeeper
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.osgi.service.datalocation.Location
 */
package org.eclipse.core.internal.preferences;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.internal.preferences.PreferencesOSGiUtils;
import org.eclipse.core.internal.preferences.PrefsMessages;
import org.eclipse.core.internal.runtime.MetaDataKeeper;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.osgi.service.datalocation.Location;

public class InstancePreferences
extends EclipsePreferences {
    private String qualifier;
    private int segmentCount;
    private IEclipsePreferences loadLevel;
    private IPath location;
    private static Set loadedNodes = Collections.synchronizedSet(new HashSet());
    private static boolean initialized = false;
    private static IPath baseLocation;

    private static IPath getBaseLocation() {
        Location instanceLocation;
        if (baseLocation == null && (instanceLocation = PreferencesOSGiUtils.getDefault().getInstanceLocation()) != null && (instanceLocation.isSet() || instanceLocation.allowsDefault())) {
            baseLocation = MetaDataKeeper.getMetaArea().getStateLocation("org.eclipse.core.runtime");
        }
        return baseLocation;
    }

    public InstancePreferences() {
        this(null, null);
    }

    private InstancePreferences(EclipsePreferences parent, String name) {
        super(parent, name);
        this.initializeChildren();
        String path = this.absolutePath();
        this.segmentCount = InstancePreferences.getSegmentCount(path);
        if (this.segmentCount < 2) {
            return;
        }
        this.qualifier = InstancePreferences.getSegment(path, 1);
    }

    protected boolean isAlreadyLoaded(IEclipsePreferences node) {
        return loadedNodes.contains(node.name());
    }

    protected void loaded() {
        loadedNodes.add(this.name());
    }

    protected void loadLegacy() {
        Path path = new Path(this.absolutePath());
        if (path.segmentCount() != 2) {
            return;
        }
        if (PreferencesOSGiUtils.getDefault().getInstanceLocation() == null) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Cannot load Legacy plug-in preferences since instance location is not set.");
            }
            return;
        }
        String bundleName = path.segment(1);
        File prefFile = null;
        Location instanceLocation = PreferencesOSGiUtils.getDefault().getInstanceLocation();
        if (instanceLocation != null && instanceLocation.isSet()) {
            prefFile = MetaDataKeeper.getMetaArea().getPreferenceLocation(bundleName, false).toFile();
        }
        if (prefFile == null) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Cannot load legacy values because instance location is not set.");
            }
            return;
        }
        if (!prefFile.exists()) {
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Legacy plug-in preference file not found: " + prefFile);
            }
            return;
        }
        if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Loading legacy preferences from " + prefFile);
        }
        InputStream input = null;
        Properties values = new Properties();
        try {
            try {
                input = new BufferedInputStream(new FileInputStream(prefFile));
                values.load(input);
            }
            catch (IOException iOException) {
                block27: {
                    if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                        PrefsMessages.message("IOException encountered loading legacy preference file " + prefFile);
                    }
                    if (input != null) {
                        try {
                            input.close();
                        }
                        catch (IOException e) {
                            if (!EclipsePreferences.DEBUG_PREFERENCE_GENERAL) break block27;
                            PrefsMessages.message("IOException encountered closing legacy preference file " + prefFile);
                            e.printStackTrace();
                        }
                    }
                }
                return;
            }
        }
        finally {
            block28: {
                if (input != null) {
                    try {
                        input.close();
                    }
                    catch (IOException e) {
                        if (!EclipsePreferences.DEBUG_PREFERENCE_GENERAL) break block28;
                        PrefsMessages.message("IOException encountered closing legacy preference file " + prefFile);
                        e.printStackTrace();
                    }
                }
            }
        }
        Iterator i = values.keySet().iterator();
        while (i.hasNext()) {
            String oldValue;
            String key = (String)i.next();
            String value = values.getProperty(key);
            if (value == null) continue;
            if (EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
                PrefsMessages.message("Loaded legacy preference: " + key + " -> " + value);
            }
            if (value.equals(oldValue = this.internalPut(key, value))) continue;
            this.makeDirty();
        }
        if (!prefFile.delete() && EclipsePreferences.DEBUG_PREFERENCE_GENERAL) {
            PrefsMessages.message("Unable to delete legacy preferences file: " + prefFile);
        }
    }

    protected IPath getLocation() {
        if (this.location == null) {
            this.location = this.computeLocation(InstancePreferences.getBaseLocation(), this.qualifier);
        }
        return this.location;
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

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void initializeChildren() {
        if (initialized || this.parent == null) {
            return;
        }
        try {
            InstancePreferences instancePreferences = this;
            synchronized (instancePreferences) {
                String[] names = this.computeChildren(InstancePreferences.getBaseLocation());
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
        return new InstancePreferences(nodeParent, nodeName);
    }
}

