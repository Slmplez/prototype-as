/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.eclipse.osgi.service.datalocation.Location
 *  org.eclipse.osgi.storagemanager.StorageManager
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.FrameworkUtil
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.service.event.Event
 *  org.osgi.util.tracker.ServiceTracker
 *  org.osgi.util.tracker.ServiceTrackerCustomizer
 */
package org.eclipse.equinox.internal.app;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.EclipseScheduledApplication;
import org.eclipse.equinox.internal.app.Messages;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.service.datalocation.Location;
import org.eclipse.osgi.storagemanager.StorageManager;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.FrameworkUtil;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.application.ApplicationDescriptor;
import org.osgi.service.application.ApplicationException;
import org.osgi.service.application.ScheduledApplication;
import org.osgi.service.event.Event;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

public class AppPersistence
implements ServiceTrackerCustomizer {
    private static final String PROP_CONFIG_AREA = "osgi.configuration.area";
    private static final String FILTER_PREFIX = "(&(objectClass=org.eclipse.osgi.service.datalocation.Location)(type=";
    private static final String FILE_APPLOCKS = ".locks";
    private static final String FILE_APPSCHEDULED = ".scheduled";
    private static final String EVENT_HANDLER = "org.osgi.service.event.EventHandler";
    private static final int DATA_VERSION = 2;
    private static final byte NULL = 0;
    private static final int OBJECT = 1;
    private static BundleContext context;
    private static ServiceTracker configTracker;
    private static Location configLocation;
    private static Collection locks;
    private static Map scheduledApps;
    static ArrayList timerApps;
    private static StorageManager storageManager;
    private static boolean scheduling;
    static boolean shutdown;
    private static int nextScheduledID;
    private static Thread timerThread;
    static /* synthetic */ Class class$0;

    static {
        locks = new ArrayList();
        scheduledApps = new HashMap();
        timerApps = new ArrayList();
        scheduling = false;
        shutdown = false;
        nextScheduledID = 1;
    }

    static void start(BundleContext bc) {
        context = bc;
        shutdown = false;
        AppPersistence.initConfiguration();
    }

    static void stop() {
        shutdown = true;
        AppPersistence.stopTimer();
        if (storageManager != null) {
            storageManager.close();
            storageManager = null;
        }
        AppPersistence.closeConfiguration();
        context = null;
    }

    private static void initConfiguration() {
        AppPersistence.closeConfiguration();
        Filter filter = null;
        try {
            filter = context.createFilter("(&(objectClass=org.eclipse.osgi.service.datalocation.Location)(type=osgi.configuration.area))");
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
        configTracker = new ServiceTracker(context, filter, (ServiceTrackerCustomizer)new AppPersistence());
        configTracker.open();
    }

    private static void closeConfiguration() {
        if (configTracker != null) {
            configTracker.close();
        }
        configTracker = null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static boolean isLocked(ApplicationDescriptor desc) {
        Collection collection = locks;
        synchronized (collection) {
            return locks.contains(desc.getApplicationId());
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static void saveLock(ApplicationDescriptor desc, boolean locked) {
        Collection collection = locks;
        synchronized (collection) {
            if (locked) {
                if (!locks.contains(desc.getApplicationId())) {
                    locks.add(desc.getApplicationId());
                    AppPersistence.saveData(FILE_APPLOCKS);
                }
            } else if (locks.remove(desc.getApplicationId())) {
                AppPersistence.saveData(FILE_APPLOCKS);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    static void removeScheduledApp(EclipseScheduledApplication scheduledApp) {
        boolean removed;
        Object object = scheduledApps;
        synchronized (object) {
            boolean bl = removed = scheduledApps.remove(scheduledApp.getScheduleId()) != null;
            if (removed) {
                AppPersistence.saveData(FILE_APPSCHEDULED);
            }
        }
        if (removed) {
            object = timerApps;
            synchronized (object) {
                timerApps.remove(scheduledApp);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static ScheduledApplication addScheduledApp(ApplicationDescriptor descriptor, String scheduleId, Map arguments, String topic, String eventFilter, boolean recurring) throws InvalidSyntaxException, ApplicationException {
        EclipseScheduledApplication result;
        if (!scheduling && !AppPersistence.checkSchedulingSupport()) {
            throw new ApplicationException(4, "Cannot support scheduling without org.osgi.service.event package");
        }
        context.createFilter(eventFilter);
        Map map = scheduledApps;
        synchronized (map) {
            result = new EclipseScheduledApplication(context, AppPersistence.getNextScheduledID(scheduleId), descriptor.getApplicationId(), arguments, topic, eventFilter, recurring);
            AppPersistence.addScheduledApp(result);
            AppPersistence.saveData(FILE_APPSCHEDULED);
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void addScheduledApp(EclipseScheduledApplication scheduledApp) {
        if ("org/osgi/application/timer".equals(scheduledApp.getTopic())) {
            ArrayList arrayList = timerApps;
            synchronized (arrayList) {
                timerApps.add(scheduledApp);
                if (timerThread == null) {
                    AppPersistence.startTimer();
                }
            }
        }
        scheduledApps.put(scheduledApp.getScheduleId(), scheduledApp);
        Hashtable<String, Object> serviceProps = new Hashtable<String, Object>();
        if (scheduledApp.getTopic() != null) {
            serviceProps.put("event.topics", new String[]{scheduledApp.getTopic()});
        }
        if (scheduledApp.getEventFilter() != null) {
            serviceProps.put("event.filter", scheduledApp.getEventFilter());
        }
        serviceProps.put("schedule.id", scheduledApp.getScheduleId());
        serviceProps.put("service.pid", scheduledApp.getAppPid());
        String[] stringArray = new String[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.osgi.service.application.ScheduledApplication");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        stringArray[0] = clazz.getName();
        stringArray[1] = EVENT_HANDLER;
        ServiceRegistration sr = context.registerService(stringArray, (Object)scheduledApp, serviceProps);
        scheduledApp.setServiceRegistration(sr);
    }

    private static String getNextScheduledID(String scheduledId) throws ApplicationException {
        if (scheduledId != null) {
            if (scheduledApps.get(scheduledId) != null) {
                throw new ApplicationException(5, "Duplicate scheduled ID: " + scheduledId);
            }
            return scheduledId;
        }
        if (nextScheduledID == Integer.MAX_VALUE) {
            nextScheduledID = 0;
        }
        String result = new Integer(nextScheduledID++).toString();
        while (scheduledApps.get(result) != null && nextScheduledID < Integer.MAX_VALUE) {
            result = new Integer(nextScheduledID++).toString();
        }
        if (nextScheduledID == Integer.MAX_VALUE) {
            throw new ApplicationException(5, "Maximum number of scheduled applications reached");
        }
        return result;
    }

    private static boolean checkSchedulingSupport() {
        try {
            Class.forName(EVENT_HANDLER);
            scheduling = true;
            return true;
        }
        catch (ClassNotFoundException classNotFoundException) {
            scheduling = false;
            return false;
        }
    }

    private static synchronized boolean loadData(String fileName) {
        File dataFile;
        block10: {
            Location parent;
            Location location;
            block9: {
                try {
                    location = configLocation;
                    if (location != null) break block9;
                    return false;
                }
                catch (IOException iOException) {
                    return false;
                }
            }
            File theStorageDir = new File(String.valueOf(location.getURL().getPath()) + '/' + "org.eclipse.equinox.app");
            if (storageManager == null) {
                boolean readOnly = location.isReadOnly();
                storageManager = new StorageManager(theStorageDir, readOnly ? "none" : null, readOnly);
                storageManager.open(!readOnly);
            }
            if (!((dataFile = storageManager.lookup(fileName, false)) != null && dataFile.isFile() || (parent = location.getParentLocation()) == null)) {
                theStorageDir = new File(String.valueOf(parent.getURL().getPath()) + '/' + "org.eclipse.equinox.app");
                StorageManager tmp = new StorageManager(theStorageDir, "none", true);
                tmp.open(false);
                dataFile = tmp.lookup(fileName, false);
                tmp.close();
            }
            if (dataFile != null && dataFile.isFile()) break block10;
            return true;
        }
        if (FILE_APPLOCKS.equals(fileName)) {
            AppPersistence.loadLocks(dataFile);
        } else if (FILE_APPSCHEDULED.equals(fileName)) {
            AppPersistence.loadSchedules(dataFile);
        }
        return true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private static void loadLocks(File locksData) throws IOException {
        ObjectInputStream in = null;
        try {
            in = new ObjectInputStream(new FileInputStream(locksData));
            int dataVersion = in.readInt();
            if (dataVersion != 2) {
                return;
            }
            int numLocks = in.readInt();
            Collection collection = locks;
            synchronized (collection) {
                int i = 0;
                while (i < numLocks) {
                    locks.add(in.readUTF());
                    ++i;
                }
            }
        }
        finally {
            if (in != null) {
                in.close();
            }
        }
    }

    private static void loadSchedules(File schedulesData) throws IOException {
        ObjectInputStream in = null;
        try {
            in = new ObjectInputStream(new FileInputStream(schedulesData));
            int dataVersion = in.readInt();
            if (dataVersion != 2) {
                return;
            }
            try {
                int numScheds = in.readInt();
                int i = 0;
                while (i < numScheds) {
                    String id = AppPersistence.readString(in, false);
                    String appPid = AppPersistence.readString(in, false);
                    String topic = AppPersistence.readString(in, false);
                    String eventFilter = AppPersistence.readString(in, false);
                    boolean recurring = in.readBoolean();
                    Map args = (Map)in.readObject();
                    EclipseScheduledApplication schedApp = new EclipseScheduledApplication(context, id, appPid, args, topic, eventFilter, recurring);
                    AppPersistence.addScheduledApp(schedApp);
                    ++i;
                }
            }
            catch (InvalidSyntaxException e) {
                throw new IOException(e.getMessage());
            }
            catch (NoClassDefFoundError e) {
                throw new IOException(e.getMessage());
            }
            catch (ClassNotFoundException e) {
                throw new IOException(e.getMessage());
            }
        }
        finally {
            if (in != null) {
                in.close();
            }
        }
    }

    private static synchronized void saveData(String fileName) {
        if (storageManager == null || storageManager.isReadOnly()) {
            return;
        }
        try {
            File data = storageManager.createTempFile(fileName);
            if (FILE_APPLOCKS.equals(fileName)) {
                AppPersistence.saveLocks(data);
            } else if (FILE_APPSCHEDULED.equals(fileName)) {
                AppPersistence.saveSchedules(data);
            }
            storageManager.lookup(fileName, true);
            storageManager.update(new String[]{fileName}, new String[]{data.getName()});
        }
        catch (IOException e) {
            Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 4, 0, NLS.bind((String)Messages.persistence_error_saving, (Object)fileName), 0, (Throwable)e, null));
        }
    }

    private static void saveLocks(File locksData) throws IOException {
        ObjectOutputStream out = null;
        try {
            out = new ObjectOutputStream(new FileOutputStream(locksData));
            out.writeInt(2);
            out.writeInt(locks.size());
            Iterator iterLocks = locks.iterator();
            while (iterLocks.hasNext()) {
                out.writeUTF((String)iterLocks.next());
            }
        }
        finally {
            if (out != null) {
                out.close();
            }
        }
    }

    private static void saveSchedules(File schedulesData) throws IOException {
        ObjectOutputStream out = null;
        try {
            out = new ObjectOutputStream(new FileOutputStream(schedulesData));
            out.writeInt(2);
            out.writeInt(scheduledApps.size());
            Iterator apps = scheduledApps.values().iterator();
            while (apps.hasNext()) {
                EclipseScheduledApplication app = (EclipseScheduledApplication)apps.next();
                AppPersistence.writeStringOrNull(out, app.getScheduleId());
                AppPersistence.writeStringOrNull(out, app.getAppPid());
                AppPersistence.writeStringOrNull(out, app.getTopic());
                AppPersistence.writeStringOrNull(out, app.getEventFilter());
                out.writeBoolean(app.isRecurring());
                out.writeObject(app.getArguments());
            }
        }
        finally {
            if (out != null) {
                out.close();
            }
        }
    }

    private static void startTimer() {
        timerThread = new Thread((Runnable)new AppTimer(), "app schedule timer");
        timerThread.start();
    }

    private static void stopTimer() {
        if (timerThread != null) {
            timerThread.interrupt();
        }
        timerThread = null;
    }

    private static String readString(ObjectInputStream in, boolean intern) throws IOException {
        byte type = in.readByte();
        if (type == 0) {
            return null;
        }
        return intern ? in.readUTF().intern() : in.readUTF();
    }

    private static void writeStringOrNull(ObjectOutputStream out, String string) throws IOException {
        if (string == null) {
            out.writeByte(0);
        } else {
            out.writeByte(1);
            out.writeUTF(string);
        }
    }

    public Object addingService(ServiceReference reference) {
        if (configLocation != null) {
            return null;
        }
        configLocation = (Location)context.getService(reference);
        AppPersistence.loadData(FILE_APPLOCKS);
        AppPersistence.loadData(FILE_APPSCHEDULED);
        return configLocation;
    }

    public void modifiedService(ServiceReference reference, Object service) {
    }

    public void removedService(ServiceReference reference, Object service) {
        if (service == configLocation) {
            configLocation = null;
        }
    }

    static class AppTimer
    implements Runnable {
        AppTimer() {
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void run() {
            int lastMin = -1;
            while (!shutdown) {
                try {
                    Thread.sleep(30000L);
                    Calendar cal = Calendar.getInstance();
                    int minute = cal.get(12);
                    if (minute == lastMin) continue;
                    lastMin = minute;
                    Hashtable<String, Integer> props = new Hashtable<String, Integer>();
                    props.put("year", new Integer(cal.get(1)));
                    props.put("month", new Integer(cal.get(2)));
                    props.put("day_of_month", new Integer(cal.get(5)));
                    props.put("day_of_week", new Integer(cal.get(7)));
                    props.put("hour_of_day", new Integer(cal.get(11)));
                    props.put("minute", new Integer(minute));
                    Event timerEvent = new Event("org/osgi/application/timer", props);
                    EclipseScheduledApplication[] apps = null;
                    ArrayList arrayList = timerApps;
                    synchronized (arrayList) {
                        if (timerApps.size() == 0) {
                            continue;
                        }
                        apps = timerApps.toArray(new EclipseScheduledApplication[timerApps.size()]);
                    }
                    int i = 0;
                    while (i < apps.length) {
                        try {
                            Filter filter;
                            String filterString = apps[i].getEventFilter();
                            Filter filter2 = filter = filterString == null ? null : FrameworkUtil.createFilter((String)filterString);
                            if (filter == null || filter.match(props)) {
                                apps[i].handleEvent(timerEvent);
                            }
                        }
                        catch (Throwable t) {
                            String message = NLS.bind((String)Messages.scheduled_app_launch_error, (Object)apps[i].getAppPid());
                            Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 2, 0, message, 0, t, null));
                        }
                        ++i;
                    }
                }
                catch (InterruptedException interruptedException) {}
            }
        }
    }
}

