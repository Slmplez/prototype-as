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
import org.eclipse.equinox.internal.p2.engine.TouchpointManager;
import org.eclipse.equinox.p2.engine.spi.ProvisioningAction;
import org.eclipse.equinox.p2.engine.spi.Touchpoint;
import org.eclipse.equinox.p2.metadata.ITouchpointType;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ActionManager
implements IRegistryChangeListener {
    private static final String PT_ACTIONS = "actions";
    private static final String ELEMENT_ACTION = "action";
    private static final String ATTRIBUTE_CLASS = "class";
    private static final String ATTRIBUTE_NAME = "name";
    private static final String TOUCHPOINT_TYPE = "touchpointType";
    private static final String TOUCHPOINT_VERSION = "touchpointVersion";
    public static final String SERVICE_NAME;
    private HashMap<String, IConfigurationElement> actionMap;
    private TouchpointManager touchpointManager = new TouchpointManager();
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.engine.ActionManager");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SERVICE_NAME = clazz.getName();
    }

    public ActionManager() {
        RegistryFactory.getRegistry().addRegistryChangeListener((IRegistryChangeListener)this, "org.eclipse.equinox.p2.engine");
    }

    public Touchpoint getTouchpointPoint(ITouchpointType type) {
        if (type == null || type == ITouchpointType.NONE) {
            return null;
        }
        return this.touchpointManager.getTouchpoint(type);
    }

    public String getTouchpointQualifiedActionId(String actionId, ITouchpointType type) {
        if (actionId.indexOf(46) == -1) {
            if (type == null || type == ITouchpointType.NONE) {
                return actionId;
            }
            Touchpoint touchpoint = this.touchpointManager.getTouchpoint(type);
            if (touchpoint == null) {
                throw new IllegalArgumentException(NLS.bind((String)Messages.ActionManager_Required_Touchpoint_Not_Found, (Object)type.toString(), (Object)actionId));
            }
            actionId = touchpoint.qualifyAction(actionId);
        }
        return actionId;
    }

    public ProvisioningAction getAction(String actionId, VersionRange versionRange) {
        IConfigurationElement actionElement = this.getActionMap().get(actionId);
        if (actionElement != null && actionElement.isValid()) {
            try {
                ProvisioningAction action = (ProvisioningAction)actionElement.createExecutableExtension(ATTRIBUTE_CLASS);
                String touchpointType = actionElement.getAttribute(TOUCHPOINT_TYPE);
                if (touchpointType != null) {
                    String touchpointVersion = actionElement.getAttribute(TOUCHPOINT_VERSION);
                    Touchpoint touchpoint = this.touchpointManager.getTouchpoint(touchpointType, touchpointVersion);
                    if (touchpoint == null) {
                        throw new IllegalArgumentException(NLS.bind((String)Messages.ActionManager_Required_Touchpoint_Not_Found, (Object)touchpointType, (Object)actionId));
                    }
                    action.setTouchpoint(touchpoint);
                }
                return action;
            }
            catch (InvalidRegistryObjectException invalidRegistryObjectException) {
            }
            catch (CoreException coreException) {
                throw new IllegalArgumentException(NLS.bind((String)Messages.ActionManager_Exception_Creating_Action_Extension, (Object)actionId));
            }
        }
        return null;
    }

    private synchronized Map<String, IConfigurationElement> getActionMap() {
        if (this.actionMap != null) {
            return this.actionMap;
        }
        IExtensionPoint point = RegistryFactory.getRegistry().getExtensionPoint("org.eclipse.equinox.p2.engine", PT_ACTIONS);
        IExtension[] extensions = point.getExtensions();
        this.actionMap = new HashMap(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            try {
                IConfigurationElement[] elements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < elements.length) {
                    String actionId;
                    IConfigurationElement actionElement = elements[j];
                    if (actionElement.getName().equals(ELEMENT_ACTION) && (actionId = actionElement.getAttribute(ATTRIBUTE_NAME)) != null) {
                        if (actionId.indexOf(46) == -1) {
                            actionId = new StringBuffer(String.valueOf(actionElement.getNamespaceIdentifier())).append(".").append(actionId).toString();
                        }
                        this.actionMap.put(actionId, actionElement);
                    }
                    ++j;
                }
            }
            catch (InvalidRegistryObjectException invalidRegistryObjectException) {}
            ++i;
        }
        return this.actionMap;
    }

    public synchronized void registryChanged(IRegistryChangeEvent event) {
        this.actionMap = null;
    }

    static void reportError(String errorMsg) {
        Status errorStatus = new Status(4, "org.eclipse.equinox.p2.engine", 1, errorMsg, null);
        LogHelper.log((IStatus)errorStatus);
    }
}

