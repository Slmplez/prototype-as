/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.p2.metadata.ITouchpointType
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.engine;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TouchpointManager
implements IRegistryChangeListener {
    private static final String PT_TOUCHPOINTS = "touchpoints";
    private static final String ELEMENT_TOUCHPOINT = "touchpoint";
    private static final String ATTRIBUTE_CLASS = "class";
    private static final String ATTRIBUTE_TYPE = "type";
    private static final String ATTRIBUTE_VERSION = "version";
    private Map<String, TouchpointEntry> touchpointEntries;

    public TouchpointManager() {
        RegistryFactory.getRegistry().addRegistryChangeListener((IRegistryChangeListener)this, "org.eclipse.equinox.p2.engine");
    }

    public synchronized Touchpoint getTouchpoint(ITouchpointType type) {
        if (type == null) {
            throw new IllegalArgumentException(Messages.TouchpointManager_Null_Touchpoint_Type_Argument);
        }
        return this.getTouchpoint(type.getId(), type.getVersion().toString());
    }

    public Touchpoint getTouchpoint(String typeId, String versionRange) {
        VersionRange range;
        if (typeId == null || typeId.length() == 0) {
            throw new IllegalArgumentException(Messages.TouchpointManager_Null_Touchpoint_Type_Argument);
        }
        TouchpointEntry entry = this.getTouchpointEntries().get(typeId);
        if (entry == null) {
            return null;
        }
        if (versionRange != null && !(range = new VersionRange(versionRange)).isIncluded(entry.getVersion())) {
            return null;
        }
        return entry.getTouchpoint();
    }

    private synchronized Map<String, TouchpointEntry> getTouchpointEntries() {
        if (this.touchpointEntries != null) {
            return this.touchpointEntries;
        }
        IExtensionPoint point = RegistryFactory.getRegistry().getExtensionPoint("org.eclipse.equinox.p2.engine", PT_TOUCHPOINTS);
        IExtension[] extensions = point.getExtensions();
        this.touchpointEntries = new HashMap<String, TouchpointEntry>(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            try {
                IConfigurationElement[] elements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < elements.length) {
                    String elementName = elements[j].getName();
                    if (!ELEMENT_TOUCHPOINT.equalsIgnoreCase(elementName)) {
                        TouchpointManager.reportError(NLS.bind((String)Messages.TouchpointManager_Incorrectly_Named_Extension, (Object)elements[j].getName(), (Object)ELEMENT_TOUCHPOINT));
                    } else {
                        String id = elements[j].getAttribute(ATTRIBUTE_TYPE);
                        if (id == null) {
                            TouchpointManager.reportError(NLS.bind((String)Messages.TouchpointManager_Attribute_Not_Specified, (Object)ATTRIBUTE_TYPE));
                        } else if (this.touchpointEntries.get(id) == null) {
                            this.touchpointEntries.put(id, new TouchpointEntry(elements[j]));
                        } else {
                            TouchpointManager.reportError(NLS.bind((String)Messages.TouchpointManager_Conflicting_Touchpoint_Types, (Object)id));
                        }
                    }
                    ++j;
                }
            }
            catch (InvalidRegistryObjectException invalidRegistryObjectException) {}
            ++i;
        }
        return this.touchpointEntries;
    }

    static void reportError(String errorMsg) {
        Status errorStatus = new Status(4, "org.eclipse.equinox.p2.engine", 1, errorMsg, null);
        LogHelper.log((IStatus)errorStatus);
    }

    public synchronized void registryChanged(IRegistryChangeEvent event) {
        this.touchpointEntries = null;
    }

    private class TouchpointEntry {
        private IConfigurationElement element;
        private boolean createdExtension = false;
        private Touchpoint touchpoint = null;

        public TouchpointEntry(IConfigurationElement element) {
            this.element = element;
        }

        public Touchpoint getTouchpoint() {
            if (!this.createdExtension) {
                String id = this.getType();
                try {
                    Touchpoint touchpointInstance = (Touchpoint)this.element.createExecutableExtension(TouchpointManager.ATTRIBUTE_CLASS);
                    if (touchpointInstance == null) {
                        String errorMsg = NLS.bind((String)Messages.TouchpointManager_Null_Creating_Touchpoint_Extension, (Object)id);
                        throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", 1, errorMsg, null));
                    }
                    this.touchpoint = touchpointInstance;
                }
                catch (CoreException cexcpt) {
                    LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.TouchpointManager_Exception_Creating_Touchpoint_Extension, (Object)id), (Throwable)cexcpt));
                }
                catch (ClassCastException ccexcpt) {
                    LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.engine", NLS.bind((String)Messages.TouchpointManager_Exception_Creating_Touchpoint_Extension, (Object)id), (Throwable)ccexcpt));
                }
                this.createdExtension = true;
            }
            return this.touchpoint;
        }

        public Version getVersion() {
            try {
                return Version.create((String)this.element.getAttribute(TouchpointManager.ATTRIBUTE_VERSION));
            }
            catch (InvalidRegistryObjectException invalidRegistryObjectException) {
                return null;
            }
        }

        public String getType() {
            try {
                return this.element.getAttribute(TouchpointManager.ATTRIBUTE_TYPE);
            }
            catch (InvalidRegistryObjectException invalidRegistryObjectException) {
                return null;
            }
        }

        public String toString() {
            StringBuffer result = new StringBuffer(this.element.toString());
            if (this.createdExtension) {
                String touchpointString = this.touchpoint != null ? this.touchpoint.toString() : "not created";
                result.append(" => " + touchpointString);
            }
            return result.toString();
        }
    }
}

