/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.emf.validation;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.service.EventTypeService;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class EMFEventType
implements Serializable {
    private static final long serialVersionUID = 5785536193334824241L;
    private static int nextNotificationTypeCode = 0;
    private static final Map<String, EMFEventType> nameToInstance = new HashMap<String, EMFEventType>();
    public static final EMFEventType ADD = new EMFEventType("Add", true, 3);
    public static final EMFEventType ADD_MANY = new EMFEventType("Add Many", true, 5);
    public static final EMFEventType MOVE = new EMFEventType("Move", true, 7);
    public static final EMFEventType REMOVE = new EMFEventType("Remove", true, 4);
    public static final EMFEventType REMOVE_MANY = new EMFEventType("Remove Many", true, 6);
    public static final EMFEventType SET = new EMFEventType("Set", true, 1);
    public static final EMFEventType UNSET = new EMFEventType("Unset", true, 2);
    public static final EMFEventType RESOLVE = new EMFEventType("Resolve", true, 9);
    public static final EMFEventType REMOVING_ADAPTER = new EMFEventType("Removing Adapter", false, 8);
    public static final EMFEventType CREATE = new EMFEventType("Create", true, 0);
    public static final EMFEventType NULL = new EMFEventType("none", false, -1);
    private static final List<EMFEventType> predefinedInstances = Collections.unmodifiableList(Arrays.asList(ADD, ADD_MANY, MOVE, REMOVE, REMOVE_MANY, SET, UNSET, RESOLVE, REMOVING_ADAPTER, CREATE, NULL));
    private static final List<EMFEventType> instances = new ArrayList<EMFEventType>(predefinedInstances);
    private final String name;
    private final boolean featureSpecific;
    private final int notificationTypeCode;

    static {
        EventTypeService.getInstance();
    }

    private EMFEventType(String name, boolean featureSpecific, int notificationTypeCode) {
        if (nameToInstance.containsKey(name)) {
            IllegalArgumentException e = new IllegalArgumentException("Duplicate event type name: " + name);
            Trace.throwing(EMFEventType.class, "<init>", e);
            EMFModelValidationPlugin.log(140, NLS.bind((String)EMFModelValidationStatusCodes.DUPLICATE_EVENT_TYPE_MSG, (Object)name), e);
            throw e;
        }
        this.name = name;
        this.featureSpecific = featureSpecific;
        this.notificationTypeCode = notificationTypeCode;
        nextNotificationTypeCode = notificationTypeCode + 1 > nextNotificationTypeCode ? notificationTypeCode + 1 : nextNotificationTypeCode;
        nameToInstance.put(name, this);
    }

    private EMFEventType(String name, boolean featureSpecific) {
        this(name, featureSpecific, nextNotificationTypeCode++);
    }

    public static EMFEventType getInstance(String name) {
        EMFEventType result = NULL;
        for (EMFEventType next : instances) {
            if (!next.getName().equalsIgnoreCase(name)) continue;
            result = next;
            break;
        }
        return result;
    }

    public static EMFEventType getInstance(int code) {
        EMFEventType result = NULL;
        for (EMFEventType next : instances) {
            if (next.toNotificationType() != code) continue;
            result = next;
            break;
        }
        return result;
    }

    public static final List<EMFEventType> getAllInstances() {
        return instances;
    }

    public static final List<EMFEventType> getPredefinedInstances() {
        return predefinedInstances;
    }

    public final String getName() {
        return this.name;
    }

    public static void addEventType(String name, boolean featureSpecific) {
        instances.add(new EMFEventType(name, featureSpecific));
    }

    public final boolean isFeatureSpecific() {
        return this.featureSpecific;
    }

    public boolean isNull() {
        return this == NULL;
    }

    public int toNotificationType() {
        return this.notificationTypeCode;
    }

    public String toString() {
        return this.getName();
    }

    private Object readResolve() {
        return nameToInstance.get(this.name);
    }
}

