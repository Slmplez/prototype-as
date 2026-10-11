/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.console.CommandInterpreter
 *  org.eclipse.osgi.framework.console.CommandProvider
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.Filter
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.app;

import java.util.ArrayList;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.equinox.internal.app.Messages;
import org.eclipse.osgi.framework.console.CommandInterpreter;
import org.eclipse.osgi.framework.console.CommandProvider;
import org.osgi.framework.BundleContext;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.service.application.ApplicationDescriptor;
import org.osgi.service.application.ApplicationHandle;
import org.osgi.service.application.ScheduledApplication;
import org.osgi.util.tracker.ServiceTracker;

public class AppCommands
implements CommandProvider {
    private static final String LAUNCHABLE_APP_FILTER = "(&(application.locked=false)(application.launchable=true)(application.visible=true))";
    private static final String ACTIVE_APP_FILTER = "(!(application.state=STOPPING))";
    private static final String LOCKED_APP_FILTER = "(application.locked=true)";
    private static final String NEW_LINE = "\r\n";
    private static final String TAB = "\t";
    private Map commandsHelp = null;
    private static AppCommands instance;
    private BundleContext context;
    private ServiceTracker applicationDescriptors;
    private ServiceTracker applicationHandles;
    private ServiceTracker scheduledApplications;
    private Filter launchableApp;
    private Filter activeApp;
    private Filter lockedApp;
    private ServiceRegistration providerRegistration;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;

    static synchronized void create(BundleContext context) {
        if (instance != null) {
            return;
        }
        instance = new AppCommands();
        instance.start(context);
    }

    static synchronized void destroy(BundleContext context) {
        if (instance == null) {
            return;
        }
        instance.stop(context);
        instance = null;
    }

    protected AppCommands() {
    }

    public void start(BundleContext ctx) {
        this.context = ctx;
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.osgi.service.application.ApplicationDescriptor");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.applicationDescriptors = new ServiceTracker(ctx, clazz.getName(), null);
            this.applicationDescriptors.open();
            Class<?> clazz2 = class$1;
            if (clazz2 == null) {
                try {
                    clazz2 = class$1 = Class.forName("org.osgi.service.application.ApplicationHandle");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.applicationHandles = new ServiceTracker(ctx, clazz2.getName(), null);
            this.applicationHandles.open();
            Class<?> clazz3 = class$2;
            if (clazz3 == null) {
                try {
                    clazz3 = class$2 = Class.forName("org.osgi.service.application.ScheduledApplication");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.scheduledApplications = new ServiceTracker(ctx, clazz3.getName(), null);
            this.scheduledApplications.open();
            this.launchableApp = ctx.createFilter(LAUNCHABLE_APP_FILTER);
            this.activeApp = ctx.createFilter(ACTIVE_APP_FILTER);
            this.lockedApp = ctx.createFilter(LOCKED_APP_FILTER);
            Class<?> clazz4 = class$3;
            if (clazz4 == null) {
                try {
                    clazz4 = class$3 = Class.forName("org.eclipse.osgi.framework.console.CommandProvider");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.providerRegistration = ctx.registerService(clazz4.getName(), (Object)this, null);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {}
    }

    public void stop(BundleContext ctx) {
        this.providerRegistration.unregister();
        if (this.applicationDescriptors != null) {
            this.applicationDescriptors.close();
        }
        if (this.applicationHandles != null) {
            this.applicationHandles.close();
        }
        if (this.scheduledApplications != null) {
            this.scheduledApplications.close();
        }
    }

    public String getHelp() {
        return this.getHelp(null);
    }

    private String getHelp(String commandName) {
        StringBuffer sb = new StringBuffer();
        if (this.commandsHelp == null) {
            this.initializeCommandsHelp();
        }
        if (commandName != null) {
            if (this.commandsHelp.containsKey(commandName)) {
                this.addCommand(commandName, (String[])this.commandsHelp.get(commandName), sb);
            }
            return sb.toString();
        }
        this.addHeader(Messages.console_help_app_commands_header, sb);
        Iterator i = this.commandsHelp.entrySet().iterator();
        while (i.hasNext()) {
            Map.Entry entry = i.next();
            String command = (String)entry.getKey();
            String[] attributes = (String[])entry.getValue();
            this.addCommand(command, attributes, sb);
        }
        return sb.toString();
    }

    private void initializeCommandsHelp() {
        this.commandsHelp = new LinkedHashMap();
        this.commandsHelp.put("activeApps", new String[]{Messages.console_help_activeapps_description});
        this.commandsHelp.put("apps", new String[]{Messages.console_help_apps_description});
        this.commandsHelp.put("lockApp", new String[]{Messages.console_help_arguments, Messages.console_help_lockapp_description});
        this.commandsHelp.put("schedApp", new String[]{Messages.console_help_schedapp_arguments, Messages.console_help_schedapp_description});
        this.commandsHelp.put("startApp", new String[]{Messages.console_help_arguments, Messages.console_help_startapp_description});
        this.commandsHelp.put("stopApp", new String[]{Messages.console_help_arguments, Messages.console_help_stopapp_description});
        this.commandsHelp.put("unlockApp", new String[]{Messages.console_help_arguments, Messages.console_help_unlockapp_description});
        this.commandsHelp.put("unschedApp", new String[]{Messages.console_help_arguments, Messages.console_help_unschedapp_description});
    }

    private void addHeader(String header, StringBuffer help) {
        help.append("---");
        help.append(header);
        help.append("---");
        help.append(NEW_LINE);
    }

    private void addCommand(String command, String description, StringBuffer help) {
        help.append(TAB);
        help.append(command);
        help.append(" - ");
        help.append(description);
        help.append(NEW_LINE);
    }

    private void addCommand(String command, String parameters, String description, StringBuffer help) {
        help.append(TAB);
        help.append(command);
        help.append(" ");
        help.append(parameters);
        help.append(" - ");
        help.append(description);
        help.append(NEW_LINE);
    }

    private void addCommand(String command, String[] attributes, StringBuffer help) {
        if (attributes.length == 1) {
            this.addCommand(command, attributes[0], help);
        } else if (attributes.length == 2) {
            this.addCommand(command, attributes[0], attributes[1], help);
        }
    }

    private Dictionary getServiceProps(ServiceReference ref) {
        String[] keys = ref.getPropertyKeys();
        Hashtable<String, Object> props = new Hashtable<String, Object>(keys.length);
        int i = 0;
        while (i < keys.length) {
            props.put(keys[i], ref.getProperty(keys[i]));
            ++i;
        }
        return props;
    }

    public void _apps(CommandInterpreter intp) {
        ServiceReference[] apps = this.applicationDescriptors.getServiceReferences();
        if (apps == null) {
            intp.println((Object)"No applications found.");
            return;
        }
        int i = 0;
        while (i < apps.length) {
            String application = (String)apps[i].getProperty("service.pid");
            intp.print((Object)application);
            if (this.getApplication(this.applicationHandles.getServiceReferences(), application, "application.descriptor", true) != null) {
                intp.print((Object)" [running]");
            }
            if (this.getApplication(this.scheduledApplications.getServiceReferences(), application, "service.pid", true) != null) {
                intp.print((Object)" [scheduled]");
            }
            if (!this.launchableApp.match(this.getServiceProps(apps[i]))) {
                intp.print((Object)" [not launchable]");
            } else {
                intp.print((Object)" [launchable]");
            }
            if (this.lockedApp.match(this.getServiceProps(apps[i]))) {
                intp.print((Object)" [locked]");
            }
            intp.println();
            ++i;
        }
    }

    public void _activeApps(CommandInterpreter intp) {
        ServiceReference[] active = this.applicationHandles.getServiceReferences();
        if (active == null) {
            intp.println((Object)"No active applications found");
            return;
        }
        int i = 0;
        while (i < active.length) {
            intp.print(active[i].getProperty("service.pid"));
            intp.print((Object)" [");
            intp.print((Object)(this.activeApp.match(this.getServiceProps(active[i])) ? "running" : "stopping"));
            intp.println((Object)"]");
            ++i;
        }
    }

    private ServiceReference getApplication(ServiceReference[] apps, String targetId, String idKey, boolean perfectMatch) {
        if (apps == null || targetId == null) {
            return null;
        }
        ServiceReference result = null;
        boolean ambigous = false;
        int i = 0;
        while (i < apps.length) {
            String id = (String)apps[i].getProperty(idKey);
            if (targetId.equals(id)) {
                return apps[i];
            }
            if (!perfectMatch && id.indexOf(targetId) >= 0) {
                if (result != null) {
                    ambigous = true;
                }
                result = apps[i];
            }
            ++i;
        }
        return ambigous ? null : result;
    }

    public void _startApp(CommandInterpreter intp) throws Exception {
        String appId = intp.nextArgument();
        ServiceReference application = this.getApplication(this.applicationDescriptors.getServiceReferences(), appId, "service.pid", false);
        if (application != null) {
            ArrayList<String> argList = new ArrayList<String>();
            String arg = null;
            while ((arg = intp.nextArgument()) != null) {
                argList.add(arg);
            }
            String[] args = argList.size() == 0 ? null : argList.toArray(new String[argList.size()]);
            try {
                HashMap<String, String[]> launchArgs = new HashMap<String, String[]>(1);
                if (args != null) {
                    launchArgs.put("application.args", args);
                }
                ApplicationDescriptor appDesc = (ApplicationDescriptor)this.context.getService(application);
                ApplicationHandle handle = appDesc.launch(launchArgs);
                intp.println((Object)("Launched application instance: " + handle.getInstanceId()));
            }
            finally {
                this.context.ungetService(application);
            }
            return;
        }
        intp.println((Object)("\"" + appId + "\" does not exist or is ambigous."));
    }

    public void _stopApp(CommandInterpreter intp) throws Exception {
        String appId = intp.nextArgument();
        ServiceReference application = this.getApplication(this.applicationHandles.getServiceReferences(), appId, "service.pid", false);
        if (application == null) {
            application = this.getApplication(this.applicationHandles.getServiceReferences(), appId, "application.descriptor", false);
        }
        if (application != null) {
            if (this.activeApp.match(this.getServiceProps(application))) {
                try {
                    ApplicationHandle appHandle = (ApplicationHandle)this.context.getService(application);
                    appHandle.destroy();
                    intp.println((Object)("Stopped application instance: " + appHandle.getInstanceId()));
                }
                finally {
                    this.context.ungetService(application);
                }
            } else {
                intp.println((Object)("Application instance is already stopping: " + application.getProperty("service.pid")));
            }
            return;
        }
        intp.println((Object)("\"" + appId + "\" does not exist, is not running or is ambigous."));
    }

    public void _lockApp(CommandInterpreter intp) throws Exception {
        String appId = intp.nextArgument();
        ServiceReference application = this.getApplication(this.applicationDescriptors.getServiceReferences(), appId, "service.pid", false);
        if (application != null) {
            try {
                ApplicationDescriptor appDesc = (ApplicationDescriptor)this.context.getService(application);
                appDesc.lock();
                intp.println((Object)("Locked application: " + appDesc.getApplicationId()));
            }
            finally {
                this.context.ungetService(application);
            }
            return;
        }
        intp.println((Object)("\"" + appId + "\" does not exist or is ambigous."));
    }

    public void _unlockApp(CommandInterpreter intp) throws Exception {
        String appId = intp.nextArgument();
        ServiceReference application = this.getApplication(this.applicationDescriptors.getServiceReferences(), appId, "service.pid", false);
        if (application != null) {
            try {
                ApplicationDescriptor appDesc = (ApplicationDescriptor)this.context.getService(application);
                appDesc.unlock();
                intp.println((Object)("Unlocked application: " + appDesc.getApplicationId()));
            }
            finally {
                this.context.ungetService(application);
            }
            return;
        }
        intp.println((Object)("\"" + appId + "\" does not exist or is ambigous."));
    }

    public void _schedApp(CommandInterpreter intp) throws Exception {
        String appId = intp.nextArgument();
        ServiceReference application = this.getApplication(this.applicationDescriptors.getServiceReferences(), appId, "service.pid", false);
        if (application != null) {
            try {
                ApplicationDescriptor appDesc = (ApplicationDescriptor)this.context.getService(application);
                String filter = intp.nextArgument();
                boolean recure = Boolean.valueOf(intp.nextArgument());
                appDesc.schedule(null, null, "org/osgi/application/timer", filter, recure);
                intp.println((Object)("Scheduled application: " + appDesc.getApplicationId()));
            }
            finally {
                this.context.ungetService(application);
            }
            return;
        }
        intp.println((Object)("\"" + appId + "\" does not exist or is ambigous."));
    }

    public void _unschedApp(CommandInterpreter intp) throws Exception {
        String appId = intp.nextArgument();
        ServiceReference application = this.getApplication(this.scheduledApplications.getServiceReferences(), appId, "service.pid", false);
        if (application == null) {
            intp.println((Object)("\"" + appId + "\" does not exist or is ambigous."));
        } else {
            try {
                ScheduledApplication schedApp = (ScheduledApplication)this.context.getService(application);
                schedApp.remove();
                intp.println((Object)("Unscheduled application: " + application.getProperty("service.pid")));
            }
            finally {
                this.context.ungetService(application);
            }
        }
    }

    public Object _help(CommandInterpreter intp) {
        String commandName = intp.nextArgument();
        if (commandName == null) {
            return Boolean.FALSE;
        }
        String help = this.getHelp(commandName);
        if (help.length() > 0) {
            return help;
        }
        return Boolean.FALSE;
    }
}

