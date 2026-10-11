/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.InvalidSyntaxException
 */
package org.osgi.service.application;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.equinox.internal.app.AppPersistence;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.service.application.ApplicationAdminPermission;
import org.osgi.service.application.ApplicationException;
import org.osgi.service.application.ApplicationHandle;
import org.osgi.service.application.ScheduledApplication;

public abstract class ApplicationDescriptor {
    public static final String APPLICATION_NAME = "application.name";
    public static final String APPLICATION_ICON = "application.icon";
    public static final String APPLICATION_PID = "service.pid";
    public static final String APPLICATION_VERSION = "application.version";
    public static final String APPLICATION_VENDOR = "service.vendor";
    public static final String APPLICATION_VISIBLE = "application.visible";
    public static final String APPLICATION_LAUNCHABLE = "application.launchable";
    public static final String APPLICATION_LOCKED = "application.locked";
    public static final String APPLICATION_DESCRIPTION = "application.description";
    public static final String APPLICATION_DOCUMENTATION = "application.documentation";
    public static final String APPLICATION_COPYRIGHT = "application.copyright";
    public static final String APPLICATION_LICENSE = "application.license";
    public static final String APPLICATION_CONTAINER = "application.container";
    public static final String APPLICATION_LOCATION = "application.location";
    private final String pid;
    private final boolean[] locked = new boolean[1];
    private static final Collection scalars;
    private static final Collection scalarsArrays;
    private static final Collection primitiveArrays;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;
    static /* synthetic */ Class class$12;
    static /* synthetic */ Class class$13;
    static /* synthetic */ Class class$14;
    static /* synthetic */ Class class$15;
    static /* synthetic */ Class class$16;
    static /* synthetic */ Class class$17;
    static /* synthetic */ Class class$18;
    static /* synthetic */ Class class$19;
    static /* synthetic */ Class class$20;
    static /* synthetic */ Class class$21;
    static /* synthetic */ Class class$22;
    static /* synthetic */ Class class$23;
    static /* synthetic */ Class class$24;
    static /* synthetic */ Class class$25;

    static {
        Class[] classArray = new Class[9];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("java.lang.Integer");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("java.lang.Long");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[2] = clazz3;
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("java.lang.Float");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[3] = clazz4;
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("java.lang.Double");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[4] = clazz5;
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("java.lang.Byte");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[5] = clazz6;
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("java.lang.Short");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[6] = clazz7;
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("java.lang.Character");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[7] = clazz8;
        Class<?> clazz9 = class$8;
        if (clazz9 == null) {
            try {
                clazz9 = class$8 = Class.forName("java.lang.Boolean");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[8] = clazz9;
        scalars = Arrays.asList(classArray);
        Class[] classArray2 = new Class[9];
        Class<?> clazz10 = class$9;
        if (clazz10 == null) {
            try {
                clazz10 = class$9 = Class.forName("[Ljava.lang.String;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[0] = clazz10;
        Class<?> clazz11 = class$10;
        if (clazz11 == null) {
            try {
                clazz11 = class$10 = Class.forName("[Ljava.lang.Integer;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[1] = clazz11;
        Class<?> clazz12 = class$11;
        if (clazz12 == null) {
            try {
                clazz12 = class$11 = Class.forName("[Ljava.lang.Long;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[2] = clazz12;
        Class<?> clazz13 = class$12;
        if (clazz13 == null) {
            try {
                clazz13 = class$12 = Class.forName("[Ljava.lang.Float;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[3] = clazz13;
        Class<?> clazz14 = class$13;
        if (clazz14 == null) {
            try {
                clazz14 = class$13 = Class.forName("[Ljava.lang.Double;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[4] = clazz14;
        Class<?> clazz15 = class$14;
        if (clazz15 == null) {
            try {
                clazz15 = class$14 = Class.forName("[Ljava.lang.Byte;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[5] = clazz15;
        Class<?> clazz16 = class$15;
        if (clazz16 == null) {
            try {
                clazz16 = class$15 = Class.forName("[Ljava.lang.Short;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[6] = clazz16;
        Class<?> clazz17 = class$16;
        if (clazz17 == null) {
            try {
                clazz17 = class$16 = Class.forName("[Ljava.lang.Character;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[7] = clazz17;
        Class<?> clazz18 = class$17;
        if (clazz18 == null) {
            try {
                clazz18 = class$17 = Class.forName("[Ljava.lang.Boolean;");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[8] = clazz18;
        scalarsArrays = Arrays.asList(classArray2);
        Class[] classArray3 = new Class[8];
        Class<?> clazz19 = class$18;
        if (clazz19 == null) {
            try {
                clazz19 = class$18 = Class.forName("[J");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[0] = clazz19;
        Class<?> clazz20 = class$19;
        if (clazz20 == null) {
            try {
                clazz20 = class$19 = Class.forName("[I");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[1] = clazz20;
        Class<?> clazz21 = class$20;
        if (clazz21 == null) {
            try {
                clazz21 = class$20 = Class.forName("[S");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[2] = clazz21;
        Class<?> clazz22 = class$21;
        if (clazz22 == null) {
            try {
                clazz22 = class$21 = Class.forName("[C");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[3] = clazz22;
        Class<?> clazz23 = class$22;
        if (clazz23 == null) {
            try {
                clazz23 = class$22 = Class.forName("[B");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[4] = clazz23;
        Class<?> clazz24 = class$23;
        if (clazz24 == null) {
            try {
                clazz24 = class$23 = Class.forName("[D");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[5] = clazz24;
        Class<?> clazz25 = class$24;
        if (clazz25 == null) {
            try {
                clazz25 = class$24 = Class.forName("[F");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[6] = clazz25;
        Class<?> clazz26 = class$25;
        if (clazz26 == null) {
            try {
                clazz26 = class$25 = Class.forName("[Z");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[7] = clazz26;
        primitiveArrays = Arrays.asList(classArray3);
    }

    protected ApplicationDescriptor(String applicationId) {
        if (applicationId == null) {
            throw new NullPointerException("Application ID must not be null!");
        }
        this.pid = applicationId;
        this.locked[0] = this.isPersistentlyLocked();
    }

    public final String getApplicationId() {
        return this.pid;
    }

    public abstract boolean matchDNChain(String var1);

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final Map getProperties(String locale) {
        Map props = this.getPropertiesSpecific(locale);
        Boolean containerLocked = (Boolean)props.remove(APPLICATION_LOCKED);
        boolean[] blArray = this.locked;
        synchronized (this.locked) {
            if (containerLocked != null && containerLocked != this.locked[0]) {
                if (this.locked[0]) {
                    this.lockSpecific();
                } else {
                    this.unlockSpecific();
                }
            }
            // ** MonitorExit[var4_4] (shouldn't be in output)
            props.put(APPLICATION_LOCKED, new Boolean(this.locked[0]));
            return props;
        }
    }

    protected abstract Map getPropertiesSpecific(String var1);

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final ApplicationHandle launch(Map arguments) throws ApplicationException {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new ApplicationAdminPermission(this, "lifecycle"));
        }
        boolean[] blArray = this.locked;
        synchronized (this.locked) {
            if (this.locked[0]) {
                throw new ApplicationException(1, "Application is locked, can't launch!");
            }
            // ** MonitorExit[var3_3] (shouldn't be in output)
            if (!this.isLaunchableSpecific()) {
                throw new ApplicationException(2, "Cannot launch the application!");
            }
            ApplicationDescriptor.checkArgs(arguments, false);
            try {
                return this.launchSpecific(arguments);
            }
            catch (IllegalStateException ise) {
                throw ise;
            }
            catch (SecurityException se) {
                throw se;
            }
            catch (ApplicationException ae) {
                throw ae;
            }
            catch (Exception t) {
                throw new ApplicationException(3, (Throwable)t);
            }
        }
    }

    protected abstract ApplicationHandle launchSpecific(Map var1) throws Exception;

    protected abstract boolean isLaunchableSpecific();

    public final ScheduledApplication schedule(String scheduleId, Map arguments, String topic, String eventFilter, boolean recurring) throws InvalidSyntaxException, ApplicationException {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new ApplicationAdminPermission(this, "schedule"));
        }
        arguments = ApplicationDescriptor.checkArgs(arguments, true);
        this.isLaunchableSpecific();
        return AppPersistence.addScheduledApp(this, scheduleId, arguments, topic, eventFilter, recurring);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final void lock() {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new ApplicationAdminPermission(this, "lock"));
        }
        boolean[] blArray = this.locked;
        synchronized (this.locked) {
            if (this.locked[0]) {
                // ** MonitorExit[var2_2] (shouldn't be in output)
                return;
            }
            this.locked[0] = true;
            this.lockSpecific();
            this.saveLock(true);
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    protected abstract void lockSpecific();

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public final void unlock() {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new ApplicationAdminPermission(this, "lock"));
        }
        boolean[] blArray = this.locked;
        synchronized (this.locked) {
            if (!this.locked[0]) {
                // ** MonitorExit[var2_2] (shouldn't be in output)
                return;
            }
            this.locked[0] = false;
            this.unlockSpecific();
            this.saveLock(false);
            // ** MonitorExit[var2_2] (shouldn't be in output)
            return;
        }
    }

    protected abstract void unlockSpecific();

    private void saveLock(boolean locked) {
        AppPersistence.saveLock(this, locked);
    }

    private boolean isPersistentlyLocked() {
        return AppPersistence.isLocked(this);
    }

    private static Map checkArgs(Map arguments, boolean validateValues) throws ApplicationException {
        if (arguments == null) {
            return arguments;
        }
        HashMap copy = validateValues ? new HashMap() : null;
        Iterator entries = arguments.entrySet().iterator();
        while (entries.hasNext()) {
            Map.Entry entry = entries.next();
            if (!(entry.getKey() instanceof String)) {
                throw new IllegalArgumentException("Invalid key type: " + entry.getKey() == null ? "<null>" : entry.getKey().getClass().getName());
            }
            if ("".equals(entry.getKey())) {
                throw new IllegalArgumentException("Empty string is an invalid key");
            }
            if (!validateValues) continue;
            ApplicationDescriptor.validateValue(entry, copy);
        }
        return validateValues ? copy : arguments;
    }

    private static void validateValue(Map.Entry entry, Map copy) throws ApplicationException {
        Class<?> clazz = entry.getValue().getClass();
        if (scalars.contains(clazz)) {
            copy.put(entry.getKey(), entry.getValue());
            return;
        }
        if (scalarsArrays.contains(clazz) || primitiveArrays.contains(clazz)) {
            int arrayLength = Array.getLength(entry.getValue());
            Object copyOfArray = Array.newInstance(entry.getValue().getClass().getComponentType(), arrayLength);
            System.arraycopy(entry.getValue(), 0, copyOfArray, 0, arrayLength);
            copy.put(entry.getKey(), copyOfArray);
            return;
        }
        if (entry.getValue() instanceof Collection) {
            Collection valueCollection = (Collection)entry.getValue();
            Iterator it = valueCollection.iterator();
            while (it.hasNext()) {
                Class<?> containedClazz = it.next().getClass();
                if (scalars.contains(containedClazz)) continue;
                throw new ApplicationException(7, "The value for key \"" + entry.getKey() + "\" is a collection that contains an invalid value of type \"" + containedClazz.getName() + "\"");
            }
            copy.put(entry.getKey(), new ArrayList((Collection)entry.getValue()));
            return;
        }
        throw new ApplicationException(7, "The value for key \"" + entry.getKey() + "\" is an invalid type \"" + clazz.getName() + "\"");
    }
}

