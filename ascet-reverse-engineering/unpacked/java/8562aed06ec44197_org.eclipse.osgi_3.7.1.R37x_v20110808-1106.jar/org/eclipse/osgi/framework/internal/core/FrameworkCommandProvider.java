/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.URL;
import java.util.ArrayList;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TreeSet;
import org.eclipse.osgi.framework.console.CommandInterpreter;
import org.eclipse.osgi.framework.console.CommandProvider;
import org.eclipse.osgi.framework.internal.core.AbstractBundle;
import org.eclipse.osgi.framework.internal.core.BundleFragment;
import org.eclipse.osgi.framework.internal.core.BundleHost;
import org.eclipse.osgi.framework.internal.core.ConsoleMsg;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.StartLevelManager;
import org.eclipse.osgi.framework.internal.core.Util;
import org.eclipse.osgi.internal.permadmin.SecurityAdmin;
import org.eclipse.osgi.internal.profile.Profile;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.SynchronousBundleListener;
import org.osgi.framework.Version;
import org.osgi.service.condpermadmin.ConditionalPermissionInfo;
import org.osgi.service.condpermadmin.ConditionalPermissionUpdate;
import org.osgi.service.packageadmin.ExportedPackage;
import org.osgi.service.packageadmin.PackageAdmin;
import org.osgi.service.packageadmin.RequiredBundle;
import org.osgi.service.startlevel.StartLevel;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameworkCommandProvider
implements CommandProvider,
SynchronousBundleListener {
    private final Framework framework;
    private final BundleContext context;
    private final StartLevelManager slImpl;
    private final SecurityAdmin securityAdmin;
    private ServiceRegistration<?> providerReg;
    private static final String tab = "\t";
    private static final String newline = "\r\n";
    private final List<Bundle> lazyActivation = new ArrayList<Bundle>();
    private Map<String, String[]> commandsHelp = null;
    private Map<String, String[]> commandGroups = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public FrameworkCommandProvider(Framework framework) {
        this.framework = framework;
        this.context = framework.systemBundle.getContext();
        this.slImpl = framework.startLevelManager;
        this.securityAdmin = framework.securityAdmin;
    }

    void start() {
        Hashtable<String, Integer> props = new Hashtable<String, Integer>();
        ((Dictionary)props).put("service.ranking", new Integer(Integer.MAX_VALUE));
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.framework.console.CommandProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.providerReg = this.context.registerService(clazz.getName(), (Object)this, props);
        this.context.addBundleListener(this);
    }

    void stop() {
        this.context.removeBundleListener(this);
        if (this.providerReg != null) {
            this.providerReg.unregister();
        }
    }

    @Override
    public String getHelp() {
        return this.getHelp(null);
    }

    private String getHelp(String commandName) {
        StringBuffer help = new StringBuffer(1024);
        if (this.commandsHelp == null) {
            this.initializeCommandsHelp();
        }
        if (this.commandGroups == null) {
            this.initializeCommandGroups();
        }
        if (commandName != null) {
            if (this.commandsHelp.containsKey(commandName)) {
                this.addCommand(commandName, this.commandsHelp.get(commandName), help);
            }
            return help.toString();
        }
        for (Map.Entry<String, String[]> groupEntry : this.commandGroups.entrySet()) {
            this.addHeader(groupEntry.getKey(), help);
            String[] stringArray = groupEntry.getValue();
            int n = stringArray.length;
            int n2 = 0;
            while (n2 < n) {
                String command = stringArray[n2];
                this.addCommand(command, this.commandsHelp.get(command), help);
                ++n2;
            }
        }
        return help.toString();
    }

    private void initializeCommandsHelp() {
        this.commandsHelp = new HashMap<String, String[]>();
        this.commandsHelp.put("launch", new String[]{ConsoleMsg.CONSOLE_HELP_LAUNCH_COMMAND_DESCRIPTION});
        this.commandsHelp.put("shutdown", new String[]{ConsoleMsg.CONSOLE_HELP_SHUTDOWN_COMMAND_DESCRIPTION});
        this.commandsHelp.put("close", new String[]{ConsoleMsg.CONSOLE_HELP_CLOSE_COMMAND_DESCRIPTION});
        this.commandsHelp.put("exit", new String[]{ConsoleMsg.CONSOLE_HELP_EXIT_COMMAND_DESCRIPTION});
        this.commandsHelp.put("init", new String[]{ConsoleMsg.CONSOLE_HELP_INIT_COMMAND_DESCRIPTION});
        this.commandsHelp.put("setprop", new String[]{ConsoleMsg.CONSOLE_HELP_KEYVALUE_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_SETPROP_COMMAND_DESCRIPTION});
        this.commandsHelp.put("setp", new String[]{ConsoleMsg.CONSOLE_HELP_KEYVALUE_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_SETPROP_COMMAND_DESCRIPTION});
        this.commandsHelp.put("install", new String[]{ConsoleMsg.CONSOLE_HELP_INSTALL_COMMAND_DESCRIPTION});
        this.commandsHelp.put("i", new String[]{ConsoleMsg.CONSOLE_HELP_INSTALL_COMMAND_DESCRIPTION});
        this.commandsHelp.put("uninstall", new String[]{ConsoleMsg.CONSOLE_HELP_UNINSTALL_COMMAND_DESCRIPTION});
        this.commandsHelp.put("un", new String[]{ConsoleMsg.CONSOLE_HELP_UNINSTALL_COMMAND_DESCRIPTION});
        this.commandsHelp.put("start", new String[]{ConsoleMsg.CONSOLE_HELP_START_COMMAND_DESCRIPTION});
        this.commandsHelp.put("sta", new String[]{ConsoleMsg.CONSOLE_HELP_START_COMMAND_DESCRIPTION});
        this.commandsHelp.put("stop", new String[]{ConsoleMsg.CONSOLE_HELP_STOP_COMMAND_DESCRIPTION});
        this.commandsHelp.put("sto", new String[]{ConsoleMsg.CONSOLE_HELP_STOP_COMMAND_DESCRIPTION});
        this.commandsHelp.put("refresh", new String[]{ConsoleMsg.CONSOLE_HELP_REFRESH_COMMAND_DESCRIPTION});
        this.commandsHelp.put("r", new String[]{ConsoleMsg.CONSOLE_HELP_REFRESH_COMMAND_DESCRIPTION});
        this.commandsHelp.put("update", new String[]{ConsoleMsg.CONSOLE_HELP_UPDATE_COMMAND_DESCRIPTION});
        this.commandsHelp.put("up", new String[]{ConsoleMsg.CONSOLE_HELP_UPDATE_COMMAND_DESCRIPTION});
        this.commandsHelp.put("status", new String[]{ConsoleMsg.CONSOLE_HELP_STATE_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_STATUS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("s", new String[]{ConsoleMsg.CONSOLE_HELP_STATE_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_STATUS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("ss", new String[]{ConsoleMsg.CONSOLE_HELP_STATE_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_SS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("services", new String[]{ConsoleMsg.CONSOLE_HELP_FILTER_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_SERVICES_COMMAND_DESCRIPTION});
        this.commandsHelp.put("packages", new String[]{ConsoleMsg.CONSOLE_HELP_PACKAGES_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_PACKAGES_COMMAND_DESCRIPTION});
        this.commandsHelp.put("p", new String[]{ConsoleMsg.CONSOLE_HELP_PACKAGES_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_PACKAGES_COMMAND_DESCRIPTION});
        this.commandsHelp.put("bundles", new String[]{ConsoleMsg.CONSOLE_HELP_STATE_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_BUNDLES_COMMAND_DESCRIPTION});
        this.commandsHelp.put("bundle", new String[]{ConsoleMsg.CONSOLE_HELP_IDLOCATION_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_BUNDLE_COMMAND_DESCRIPTION});
        this.commandsHelp.put("b", new String[]{ConsoleMsg.CONSOLE_HELP_IDLOCATION_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_BUNDLE_COMMAND_DESCRIPTION});
        this.commandsHelp.put("headers", new String[]{ConsoleMsg.CONSOLE_HELP_IDLOCATION_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_HEADERS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("h", new String[]{ConsoleMsg.CONSOLE_HELP_IDLOCATION_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_HEADERS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("exec", new String[]{ConsoleMsg.CONSOLE_HELP_COMMAND_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_EXEC_COMMAND_DESCRIPTION});
        this.commandsHelp.put("fork", new String[]{ConsoleMsg.CONSOLE_HELP_COMMAND_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_FORK_COMMAND_DESCRIPTION});
        this.commandsHelp.put("gc", new String[]{ConsoleMsg.CONSOLE_HELP_GC_COMMAND_DESCRIPTION});
        this.commandsHelp.put("getprop", new String[]{ConsoleMsg.CONSOLE_HELP_GETPROP_ARGUMENT_DESCRIPTION, ConsoleMsg.CONSOLE_HELP_GETPROP_COMMAND_DESCRIPTION});
        this.commandsHelp.put("props", new String[]{ConsoleMsg.CONSOLE_PROPS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("pr", new String[]{ConsoleMsg.CONSOLE_PROPS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("threads", new String[]{ConsoleMsg.CONSOLE_THREADS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("t", new String[]{ConsoleMsg.CONSOLE_THREADS_COMMAND_DESCRIPTION});
        this.commandsHelp.put("sl", new String[]{ConsoleMsg.CONSOLE_HELP_OPTIONAL_IDLOCATION_ARGUMENT_DESCRIPTION, ConsoleMsg.STARTLEVEL_HELP_SL});
        this.commandsHelp.put("setfwsl", new String[]{ConsoleMsg.STARTLEVEL_ARGUMENT_DESCRIPTION, ConsoleMsg.STARTLEVEL_HELP_SETFWSL});
        this.commandsHelp.put("setbsl", new String[]{ConsoleMsg.STARTLEVEL_IDLOCATION_ARGUMENT_DESCRIPTION, ConsoleMsg.STARTLEVEL_HELP_SETBSL});
        this.commandsHelp.put("setibsl", new String[]{ConsoleMsg.STARTLEVEL_ARGUMENT_DESCRIPTION, ConsoleMsg.STARTLEVEL_HELP_SETIBSL});
        this.commandsHelp.put("profilelog", new String[]{ConsoleMsg.CONSOLE_HELP_PROFILELOG_DESCRIPTION});
    }

    private void initializeCommandGroups() {
        this.commandGroups = new LinkedHashMap<String, String[]>();
        this.commandGroups.put(ConsoleMsg.CONSOLE_HELP_CONTROLLING_FRAMEWORK_HEADER, new String[]{"launch", "shutdown", "close", "exit", "init", "setprop"});
        this.commandGroups.put(ConsoleMsg.CONSOLE_HELP_CONTROLLING_BUNDLES_HEADER, new String[]{"install", "uninstall", "start", "stop", "refresh", "update"});
        this.commandGroups.put(ConsoleMsg.CONSOLE_HELP_DISPLAYING_STATUS_HEADER, new String[]{"status", "ss", "services", "packages", "bundles", "bundle", "headers"});
        this.commandGroups.put(ConsoleMsg.CONSOLE_HELP_EXTRAS_HEADER, new String[]{"exec", "fork", "gc", "getprop", "props", "threads"});
        this.commandGroups.put(ConsoleMsg.STARTLEVEL_HELP_HEADING, new String[]{"sl", "setfwsl", "setbsl", "setibsl"});
        this.commandGroups.put(ConsoleMsg.CONSOLE_HELP_PROFILE_HEADING, new String[]{"profilelog"});
    }

    private void addHeader(String header, StringBuffer help) {
        help.append("---");
        help.append(header);
        help.append("---");
        help.append(newline);
    }

    private void addCommand(String command, String description, StringBuffer help) {
        help.append(tab);
        help.append(command);
        help.append(" - ");
        help.append(description);
        help.append(newline);
    }

    private void addCommand(String command, String parameters, String description, StringBuffer help) {
        help.append(tab);
        help.append(command);
        help.append(" ");
        help.append(parameters);
        help.append(" - ");
        help.append(description);
        help.append(newline);
    }

    private void addCommand(String command, String[] attributes, StringBuffer help) {
        if (attributes.length == 1) {
            this.addCommand(command, attributes[0], help);
        } else if (attributes.length == 2) {
            this.addCommand(command, attributes[0], attributes[1], help);
        }
    }

    public void _exit(CommandInterpreter intp) throws Exception {
        intp.println();
        System.exit(0);
    }

    public void _launch(CommandInterpreter intp) throws Exception {
        this.framework.launch();
    }

    public void _shutdown(CommandInterpreter intp) throws Exception {
        this.framework.shutdown(64);
    }

    public void _sta(CommandInterpreter intp) throws Exception {
        this._start(intp);
    }

    public void _start(CommandInterpreter intp) throws Exception {
        String nextArg = intp.nextArgument();
        if (nextArg == null) {
            intp.println(ConsoleMsg.CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
        }
        while (nextArg != null) {
            AbstractBundle bundle = this.getBundleFromToken(intp, nextArg, true);
            if (bundle != null) {
                bundle.start();
            }
            nextArg = intp.nextArgument();
        }
    }

    public void _sto(CommandInterpreter intp) throws Exception {
        this._stop(intp);
    }

    public void _stop(CommandInterpreter intp) throws Exception {
        String nextArg = intp.nextArgument();
        if (nextArg == null) {
            intp.println(ConsoleMsg.CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
        }
        while (nextArg != null) {
            AbstractBundle bundle = this.getBundleFromToken(intp, nextArg, true);
            if (bundle != null) {
                bundle.stop();
            }
            nextArg = intp.nextArgument();
        }
    }

    public void _i(CommandInterpreter intp) throws Exception {
        this._install(intp);
    }

    public void _install(CommandInterpreter intp) throws Exception {
        String url = intp.nextArgument();
        if (url == null) {
            intp.println(ConsoleMsg.CONSOLE_NOTHING_TO_INSTALL_ERROR);
        } else {
            String start;
            AbstractBundle bundle = (AbstractBundle)this.context.installBundle(url);
            intp.print(ConsoleMsg.CONSOLE_BUNDLE_ID_MESSAGE);
            intp.println(new Long(bundle.getBundleId()));
            String nextArg = intp.nextArgument();
            if (nextArg != null && FrameworkCommandProvider.matchCommand("start", start = nextArg.toLowerCase(), 1)) {
                bundle.start();
            }
        }
    }

    private static boolean matchCommand(String command, String input, int minLength) {
        int length;
        if (minLength <= 0) {
            minLength = command.length();
        }
        if (minLength > (length = input.length())) {
            length = minLength;
        }
        return command.regionMatches(0, input, 0, length);
    }

    public void _up(CommandInterpreter intp) throws Exception {
        this._update(intp);
    }

    public void _update(CommandInterpreter intp) throws Exception {
        String token = intp.nextArgument();
        if (token == null) {
            intp.println(ConsoleMsg.CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
        }
        while (token != null) {
            if ("*".equals(token)) {
                AbstractBundle[] bundles = (AbstractBundle[])this.context.getBundles();
                int size = bundles.length;
                if (size > 0) {
                    int i = 0;
                    while (i < size) {
                        AbstractBundle bundle = bundles[i];
                        if (bundle.getBundleId() != 0L) {
                            try {
                                bundle.update();
                            }
                            catch (BundleException e) {
                                intp.printStackTrace(e);
                            }
                        }
                        ++i;
                    }
                } else {
                    intp.println(ConsoleMsg.CONSOLE_NO_INSTALLED_BUNDLES_ERROR);
                }
            } else {
                AbstractBundle bundle = this.getBundleFromToken(intp, token, true);
                if (bundle != null) {
                    String source = intp.nextArgument();
                    try {
                        if (source != null) {
                            bundle.update(new URL(source).openStream());
                        }
                        bundle.update();
                    }
                    catch (BundleException e) {
                        intp.printStackTrace(e);
                    }
                }
            }
            token = intp.nextArgument();
        }
    }

    public void _un(CommandInterpreter intp) throws Exception {
        this._uninstall(intp);
    }

    public void _uninstall(CommandInterpreter intp) throws Exception {
        String nextArg = intp.nextArgument();
        if (nextArg == null) {
            intp.println(ConsoleMsg.CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
        }
        while (nextArg != null) {
            AbstractBundle bundle = this.getBundleFromToken(intp, nextArg, true);
            if (bundle != null) {
                bundle.uninstall();
            }
            nextArg = intp.nextArgument();
        }
    }

    public void _s(CommandInterpreter intp) throws Exception {
        this._status(intp);
    }

    private Object[] processOption(CommandInterpreter intp) {
        String option = intp.nextArgument();
        String filteredName = null;
        int stateFilter = -1;
        if (option != null && option.equals("-s")) {
            String searchedState = intp.nextArgument();
            if (searchedState == null) {
                searchedState = "";
            }
            StringTokenizer tokens = new StringTokenizer(searchedState, ",");
            while (tokens.hasMoreElements()) {
                String desiredState = (String)tokens.nextElement();
                Field match = null;
                try {
                    Class<?> clazz = class$1;
                    if (clazz == null) {
                        try {
                            clazz = Class.forName("org.osgi.framework.Bundle");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    match = clazz.getField(desiredState.toUpperCase());
                    if (stateFilter == -1) {
                        stateFilter = 0;
                    }
                    stateFilter |= match.getInt(match);
                }
                catch (NoSuchFieldException noSuchFieldException) {
                    intp.println(new StringBuffer(String.valueOf(ConsoleMsg.CONSOLE_INVALID_INPUT)).append(": ").append(desiredState).toString());
                    return null;
                }
                catch (IllegalAccessException illegalAccessException) {
                    intp.println(new StringBuffer(String.valueOf(ConsoleMsg.CONSOLE_INVALID_INPUT)).append(": ").append(desiredState).toString());
                    return null;
                }
            }
        } else {
            filteredName = option;
        }
        String tmp = intp.nextArgument();
        if (tmp != null) {
            filteredName = tmp;
        }
        return new Object[]{filteredName, new Integer(stateFilter)};
    }

    public void _status(CommandInterpreter intp) throws Exception {
        if (this.framework.isActive()) {
            intp.println(ConsoleMsg.CONSOLE_FRAMEWORK_IS_LAUNCHED_MESSAGE);
        } else {
            intp.println(ConsoleMsg.CONSOLE_FRAMEWORK_IS_SHUTDOWN_MESSAGE);
        }
        intp.println();
        Object[] options = this.processOption(intp);
        if (options == null) {
            return;
        }
        AbstractBundle[] bundles = (AbstractBundle[])this.context.getBundles();
        int size = bundles.length;
        if (size == 0) {
            intp.println(ConsoleMsg.CONSOLE_NO_INSTALLED_BUNDLES_ERROR);
            return;
        }
        intp.print(ConsoleMsg.CONSOLE_ID);
        intp.print(tab);
        intp.println(ConsoleMsg.CONSOLE_BUNDLE_LOCATION_MESSAGE);
        intp.println(ConsoleMsg.CONSOLE_STATE_BUNDLE_FILE_NAME_HEADER);
        int i = 0;
        while (i < size) {
            AbstractBundle bundle = bundles[i];
            if (this.match(bundle, (String)options[0], (Integer)options[1])) {
                intp.print(new Long(bundle.getBundleId()));
                intp.print(tab);
                intp.println(bundle.getLocation());
                intp.print("  ");
                intp.print(this.getStateName(bundle));
                intp.println(bundle.bundledata);
            }
            ++i;
        }
        ServiceReference<?>[] services = this.context.getServiceReferences((String)null, (String)null);
        if (services != null) {
            intp.println(ConsoleMsg.CONSOLE_REGISTERED_SERVICES_MESSAGE);
            size = services.length;
            int i2 = 0;
            while (i2 < size) {
                intp.println(services[i2]);
                ++i2;
            }
        }
    }

    public void _se(CommandInterpreter intp) throws Exception {
        this._services(intp);
    }

    public void _services(CommandInterpreter intp) throws Exception {
        int size;
        String filter = null;
        String nextArg = intp.nextArgument();
        if (nextArg != null) {
            StringBuffer buf = new StringBuffer();
            while (nextArg != null) {
                buf.append(' ');
                buf.append(nextArg);
                nextArg = intp.nextArgument();
            }
            filter = buf.toString();
        }
        InvalidSyntaxException originalException = null;
        ServiceReference[] services = null;
        try {
            services = this.context.getServiceReferences((String)null, filter);
        }
        catch (InvalidSyntaxException e) {
            originalException = e;
        }
        if (filter != null) {
            filter = filter.trim();
        }
        if (originalException != null && !filter.startsWith("(") && filter.indexOf(32) < 0) {
            try {
                filter = new StringBuffer("(objectClass=").append(filter).append(")").toString();
                services = this.context.getServiceReferences((String)null, filter);
            }
            catch (InvalidSyntaxException invalidSyntaxException) {
                throw originalException;
            }
        } else if (originalException != null) {
            throw originalException;
        }
        if (services != null && (size = services.length) > 0) {
            int j = 0;
            while (j < size) {
                ServiceReference service = services[j];
                intp.println(service);
                intp.print("  ");
                intp.print(ConsoleMsg.CONSOLE_REGISTERED_BY_BUNDLE_MESSAGE);
                intp.print(" ");
                intp.println(service.getBundle());
                Bundle[] users = service.getUsingBundles();
                if (users != null) {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_BUNDLES_USING_SERVICE_MESSAGE);
                    int k = 0;
                    while (k < users.length) {
                        intp.print("    ");
                        intp.println(users[k]);
                        ++k;
                    }
                } else {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_NO_BUNDLES_USING_SERVICE_MESSAGE);
                }
                ++j;
            }
            return;
        }
        intp.println(ConsoleMsg.CONSOLE_NO_REGISTERED_SERVICES_MESSAGE);
    }

    public void _p(CommandInterpreter intp) throws Exception {
        this._packages(intp);
    }

    public void _packages(CommandInterpreter intp) throws Exception {
        ServiceReference<?> packageAdminRef;
        AbstractBundle bundle = null;
        String token = intp.nextArgument();
        if (token != null) {
            bundle = this.getBundleFromToken(intp, token, false);
        }
        if ((packageAdminRef = this.context.getServiceReference("org.osgi.service.packageadmin.PackageAdmin")) != null) {
            PackageAdmin packageAdmin = (PackageAdmin)this.context.getService(packageAdminRef);
            if (packageAdmin != null) {
                try {
                    ExportedPackage[] packages = null;
                    if (token != null) {
                        packages = packageAdmin.getExportedPackages(token);
                    }
                    if (packages == null) {
                        packages = packageAdmin.getExportedPackages(bundle);
                    }
                    if (packages == null) {
                        intp.println(ConsoleMsg.CONSOLE_NO_EXPORTED_PACKAGES_MESSAGE);
                    }
                    int i = 0;
                    while (i < packages.length) {
                        Bundle exporter;
                        ExportedPackage pkg = packages[i];
                        intp.print(pkg);
                        boolean removalPending = pkg.isRemovalPending();
                        if (removalPending) {
                            intp.print("(");
                            intp.print(ConsoleMsg.CONSOLE_REMOVAL_PENDING_MESSAGE);
                            intp.println(")");
                        }
                        if ((exporter = pkg.getExportingBundle()) != null) {
                            intp.print("<");
                            intp.print(exporter);
                            intp.println(">");
                            Bundle[] importers = pkg.getImportingBundles();
                            int j = 0;
                            while (j < importers.length) {
                                intp.print("  ");
                                intp.print(importers[j]);
                                intp.print(" ");
                                intp.println(ConsoleMsg.CONSOLE_IMPORTS_MESSAGE);
                                ++j;
                            }
                        } else {
                            intp.print("<");
                            intp.print(ConsoleMsg.CONSOLE_STALE_MESSAGE);
                            intp.println(">");
                        }
                        ++i;
                    }
                }
                finally {
                    this.context.ungetService(packageAdminRef);
                }
            }
        } else {
            intp.println(ConsoleMsg.CONSOLE_NO_EXPORTED_PACKAGES_NO_PACKAGE_ADMIN_MESSAGE);
        }
    }

    public void _bundles(CommandInterpreter intp) throws Exception {
        Object[] options = this.processOption(intp);
        if (options == null) {
            return;
        }
        AbstractBundle[] bundles = (AbstractBundle[])this.context.getBundles();
        int size = bundles.length;
        if (size == 0) {
            intp.println(ConsoleMsg.CONSOLE_NO_INSTALLED_BUNDLES_ERROR);
            return;
        }
        int i = 0;
        while (i < size) {
            AbstractBundle bundle = bundles[i];
            if (this.match(bundle, (String)options[0], (Integer)options[1])) {
                long id = bundle.getBundleId();
                intp.println(bundle);
                intp.print("  ");
                intp.print(NLS.bind(ConsoleMsg.CONSOLE_ID_MESSAGE, String.valueOf(id)));
                intp.print(", ");
                intp.print(NLS.bind(ConsoleMsg.CONSOLE_STATUS_MESSAGE, this.getStateName(bundle)));
                if (id != 0L) {
                    File dataRoot = this.framework.getDataFile(bundle, "");
                    String root = dataRoot == null ? null : dataRoot.getAbsolutePath();
                    intp.print(NLS.bind(ConsoleMsg.CONSOLE_DATA_ROOT_MESSAGE, root));
                } else {
                    intp.println();
                }
                ServiceReference<?>[] services = bundle.getRegisteredServices();
                if (services != null) {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_REGISTERED_SERVICES_MESSAGE);
                    int j = 0;
                    while (j < services.length) {
                        intp.print("    ");
                        intp.println(services[j]);
                        ++j;
                    }
                } else {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_NO_REGISTERED_SERVICES_MESSAGE);
                }
                services = bundle.getServicesInUse();
                if (services != null) {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_SERVICES_IN_USE_MESSAGE);
                    int j = 0;
                    while (j < services.length) {
                        intp.print("    ");
                        intp.println(services[j]);
                        ++j;
                    }
                } else {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_NO_SERVICES_IN_USE_MESSAGE);
                }
            }
            ++i;
        }
    }

    public void _b(CommandInterpreter intp) throws Exception {
        this._bundle(intp);
    }

    /*
     * Unable to fully structure code
     */
    public void _bundle(CommandInterpreter intp) throws Exception {
        nextArg = intp.nextArgument();
        if (nextArg == null) {
            intp.println(ConsoleMsg.CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
        }
        while (nextArg != null) {
            bundle = this.getBundleFromToken(intp, nextArg, true);
            if (bundle != null) {
                id = bundle.getBundleId();
                intp.println(bundle);
                intp.print("  ");
                intp.print(NLS.bind(ConsoleMsg.CONSOLE_ID_MESSAGE, String.valueOf(id)));
                intp.print(", ");
                intp.print(NLS.bind(ConsoleMsg.CONSOLE_STATUS_MESSAGE, this.getStateName(bundle)));
                if (id != 0L) {
                    dataRoot = this.framework.getDataFile(bundle, "");
                    root = dataRoot == null ? null : dataRoot.getAbsolutePath();
                    intp.print(NLS.bind(ConsoleMsg.CONSOLE_DATA_ROOT_MESSAGE, root));
                    intp.println();
                } else {
                    intp.println();
                }
                services = bundle.getRegisteredServices();
                if (services != null) {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_REGISTERED_SERVICES_MESSAGE);
                    j = 0;
                    while (j < services.length) {
                        intp.print("    ");
                        intp.println(services[j]);
                        ++j;
                    }
                } else {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_NO_REGISTERED_SERVICES_MESSAGE);
                }
                services = bundle.getServicesInUse();
                if (services != null) {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_SERVICES_IN_USE_MESSAGE);
                    j = 0;
                    while (j < services.length) {
                        intp.print("    ");
                        intp.println(services[j]);
                        ++j;
                    }
                } else {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_NO_SERVICES_IN_USE_MESSAGE);
                }
                packageAdminRef = this.context.getServiceReference("org.osgi.service.packageadmin.PackageAdmin");
                if (packageAdminRef != null) {
                    desc = bundle.getBundleDescription();
                    if (desc != null) {
                        title = true;
                        try {
                            exports = desc.getSelectedExports();
                            if (exports == null || exports.length == 0) {
                                intp.print("  ");
                                intp.println(ConsoleMsg.CONSOLE_NO_EXPORTED_PACKAGES_MESSAGE);
                            } else {
                                title = true;
                                i = 0;
                                while (i < exports.length) {
                                    if (title) {
                                        intp.print("  ");
                                        intp.println(ConsoleMsg.CONSOLE_EXPORTED_PACKAGES_MESSAGE);
                                        title = false;
                                    }
                                    intp.print("    ");
                                    intp.print(exports[i].getName());
                                    intp.print("; version=\"");
                                    intp.print(exports[i].getVersion());
                                    intp.print("\"");
                                    if (desc.isRemovalPending()) {
                                        intp.println(ConsoleMsg.CONSOLE_EXPORTED_REMOVAL_PENDING_MESSAGE);
                                    } else {
                                        intp.println(ConsoleMsg.CONSOLE_EXPORTED_MESSAGE);
                                    }
                                    ++i;
                                }
                                if (title) {
                                    intp.print("  ");
                                    intp.println(ConsoleMsg.CONSOLE_NO_EXPORTED_PACKAGES_MESSAGE);
                                }
                            }
                            title = true;
                            if (desc != null) {
                                fragmentsImportPackages = new ArrayList<ImportPackageSpecification>();
                                fragments = desc.getFragments();
                                i = 0;
                                while (i < fragments.length) {
                                    fragmentImports = fragments[i].getImportPackages();
                                    j = 0;
                                    while (j < fragmentImports.length) {
                                        fragmentsImportPackages.add(fragmentImports[j]);
                                        ++j;
                                    }
                                    ++i;
                                }
                                if (fragmentsImportPackages.size() > 0) {
                                    directImportPackages = desc.getImportPackages();
                                    importPackages = new ImportPackageSpecification[directImportPackages.length + fragmentsImportPackages.size()];
                                    i = 0;
                                    while (i < directImportPackages.length) {
                                        importPackages[i] = directImportPackages[i];
                                        ++i;
                                    }
                                    offset = directImportPackages.length;
                                    i = 0;
                                    while (i < fragmentsImportPackages.size()) {
                                        importPackages[offset + i] = (ImportPackageSpecification)fragmentsImportPackages.get(i);
                                        ++i;
                                    }
                                } else {
                                    importPackages = desc.getImportPackages();
                                }
                                imports = null;
                                imports = desc.getContainingState().getStateHelper().getVisiblePackages(desc, 3);
                                unresolvedImports = new ArrayList<ImportPackageSpecification>();
                                i = 0;
                                while (i < importPackages.length) {
                                    if (importPackages[i].getDirective("resolution").equals("optional")) {
                                        if (importPackages[i].getSupplier() == null) {
                                            unresolvedImports.add(importPackages[i]);
                                        }
                                    } else if (importPackages[i].getDirective("resolution").equals("dynamic")) {
                                        isResolvable = false;
                                        j = 0;
                                        while (j < imports.length) {
                                            if (importPackages[i].isSatisfiedBy(imports[j])) {
                                                isResolvable = true;
                                            }
                                            ++j;
                                        }
                                        if (!isResolvable) {
                                            unresolvedImports.add(importPackages[i]);
                                        }
                                    }
                                    ++i;
                                }
                                title = this.printImportedPackages(imports, intp, title);
                                if (desc.isResolved() && !unresolvedImports.isEmpty()) {
                                    this.printUnwiredDynamicImports(unresolvedImports, intp);
                                    title = false;
                                }
                            }
                            if (title) {
                                intp.print("  ");
                                intp.println(ConsoleMsg.CONSOLE_NO_IMPORTED_PACKAGES_MESSAGE);
                            }
                            if ((packageAdmin = (PackageAdmin)this.context.getService(packageAdminRef)) == null) ** GOTO lbl219
                            intp.print("  ");
                            if ((packageAdmin.getBundleType(bundle) & 1) > 0) {
                                hosts = packageAdmin.getHosts(bundle);
                                if (hosts != null) {
                                    intp.println(ConsoleMsg.CONSOLE_HOST_MESSAGE);
                                    i = 0;
                                    while (i < hosts.length) {
                                        intp.print("    ");
                                        intp.println(hosts[i]);
                                        ++i;
                                    }
                                } else {
                                    intp.println(ConsoleMsg.CONSOLE_NO_HOST_MESSAGE);
                                }
                            } else {
                                fragments = packageAdmin.getFragments(bundle);
                                if (fragments != null) {
                                    intp.println(ConsoleMsg.CONSOLE_FRAGMENT_MESSAGE);
                                    i = 0;
                                    while (i < fragments.length) {
                                        intp.print("    ");
                                        intp.println(fragments[i]);
                                        ++i;
                                    }
                                } else {
                                    intp.println(ConsoleMsg.CONSOLE_NO_FRAGMENT_MESSAGE);
                                }
                            }
                            requiredBundles = packageAdmin.getRequiredBundles(null);
                            requiredBundle = null;
                            if (requiredBundles != null) {
                                i = 0;
                                while (i < requiredBundles.length) {
                                    if (requiredBundles[i].getBundle() == bundle) {
                                        requiredBundle = requiredBundles[i];
                                        break;
                                    }
                                    ++i;
                                }
                            }
                            if (requiredBundle == null) {
                                intp.print("  ");
                                intp.println(ConsoleMsg.CONSOLE_NO_NAMED_CLASS_SPACES_MESSAGE);
                            } else {
                                intp.print("  ");
                                intp.println(ConsoleMsg.CONSOLE_NAMED_CLASS_SPACE_MESSAGE);
                                intp.print("    ");
                                intp.print(requiredBundle);
                                if (requiredBundle.isRemovalPending()) {
                                    intp.println(ConsoleMsg.CONSOLE_REMOVAL_PENDING_MESSAGE);
                                } else {
                                    intp.println(ConsoleMsg.CONSOLE_PROVIDED_MESSAGE);
                                }
                            }
                            title = true;
                            i = 0;
                            while (i < requiredBundles.length) {
                                if (requiredBundles[i] != requiredBundle && (depBundles = requiredBundles[i].getRequiringBundles()) != null) {
                                    j = 0;
                                    while (j < depBundles.length) {
                                        if (depBundles[j] == bundle) {
                                            if (title) {
                                                intp.print("  ");
                                                intp.println(ConsoleMsg.CONSOLE_REQUIRED_BUNDLES_MESSAGE);
                                                title = false;
                                            }
                                            intp.print("    ");
                                            intp.print(requiredBundles[i]);
                                            provider = requiredBundles[i].getBundle();
                                            intp.print("<");
                                            intp.print(provider);
                                            intp.println(">");
                                        }
                                        ++j;
                                    }
                                }
                                ++i;
                            }
                            if (!title) ** GOTO lbl219
                            intp.print("  ");
                            intp.println(ConsoleMsg.CONSOLE_NO_REQUIRED_BUNDLES_MESSAGE);
                        }
                        finally {
                            this.context.ungetService(packageAdminRef);
                        }
                    }
                } else {
                    intp.print("  ");
                    intp.println(ConsoleMsg.CONSOLE_NO_EXPORTED_PACKAGES_NO_PACKAGE_ADMIN_MESSAGE);
                }
lbl219:
                // 5 sources

                if ((sm = System.getSecurityManager()) != null) {
                    domain = bundle.getProtectionDomain();
                    intp.println(domain);
                }
            }
            nextArg = intp.nextArgument();
        }
    }

    private boolean printImportedPackages(ExportPackageDescription[] importedPkgs, CommandInterpreter intp, boolean title) {
        int i = 0;
        while (i < importedPkgs.length) {
            if (title) {
                intp.print("  ");
                intp.println(ConsoleMsg.CONSOLE_IMPORTED_PACKAGES_MESSAGE);
                title = false;
            }
            intp.print("    ");
            intp.print(importedPkgs[i].getName());
            intp.print("; version=\"");
            intp.print(importedPkgs[i].getVersion());
            intp.print("\"");
            Bundle exporter = this.context.getBundle(importedPkgs[i].getSupplier().getBundleId());
            if (exporter != null) {
                intp.print("<");
                intp.print(exporter);
                intp.println(">");
            } else {
                intp.print("<");
                intp.print(ConsoleMsg.CONSOLE_STALE_MESSAGE);
                intp.println(">");
            }
            ++i;
        }
        return title;
    }

    private void printUnwiredDynamicImports(List<ImportPackageSpecification> dynamicImports, CommandInterpreter intp) {
        int i = 0;
        while (i < dynamicImports.size()) {
            ImportPackageSpecification importPackage = dynamicImports.get(i);
            intp.print("    ");
            intp.print(importPackage.getName());
            intp.print("; version=\"");
            intp.print(importPackage.getVersionRange());
            intp.print("\"");
            intp.print("<");
            intp.print("unwired");
            intp.print(">");
            intp.print("<");
            intp.print(importPackage.getDirective("resolution"));
            intp.println(">");
            ++i;
        }
    }

    public void _gc(CommandInterpreter intp) throws Exception {
        long before = Runtime.getRuntime().freeMemory();
        System.gc();
        System.gc();
        System.runFinalization();
        try {
            Thread.sleep(100L);
        }
        catch (InterruptedException interruptedException) {}
        long after = Runtime.getRuntime().freeMemory();
        intp.print(ConsoleMsg.CONSOLE_TOTAL_MEMORY_MESSAGE);
        intp.println(String.valueOf(Runtime.getRuntime().totalMemory()));
        intp.print(ConsoleMsg.CONSOLE_FREE_MEMORY_BEFORE_GARBAGE_COLLECTION_MESSAGE);
        intp.println(String.valueOf(before));
        intp.print(ConsoleMsg.CONSOLE_FREE_MEMORY_AFTER_GARBAGE_COLLECTION_MESSAGE);
        intp.println(String.valueOf(after));
        intp.print(ConsoleMsg.CONSOLE_MEMORY_GAINED_WITH_GARBAGE_COLLECTION_MESSAGE);
        intp.println(String.valueOf(after - before));
    }

    public void _init(CommandInterpreter intp) throws Exception {
        if (this.framework.isActive()) {
            intp.print(newline);
            intp.println(ConsoleMsg.CONSOLE_FRAMEWORK_LAUNCHED_PLEASE_SHUTDOWN_MESSAGE);
            return;
        }
        AbstractBundle[] bundles = (AbstractBundle[])this.context.getBundles();
        int size = bundles.length;
        if (size > 0) {
            int i = 0;
            while (i < size) {
                AbstractBundle bundle = bundles[i];
                if (bundle.getBundleId() != 0L) {
                    try {
                        bundle.uninstall();
                    }
                    catch (BundleException e) {
                        intp.printStackTrace(e);
                    }
                }
                ++i;
            }
        } else {
            intp.println(ConsoleMsg.CONSOLE_NO_INSTALLED_BUNDLES_ERROR);
        }
        if (this.securityAdmin != null) {
            this.securityAdmin.setDefaultPermissions(null);
            String[] permLocations = this.securityAdmin.getLocations();
            if (permLocations != null) {
                int i = 0;
                while (i < permLocations.length) {
                    this.securityAdmin.setPermissions(permLocations[i], null);
                    ++i;
                }
            }
            ConditionalPermissionUpdate update = this.securityAdmin.newConditionalPermissionUpdate();
            update.getConditionalPermissionInfos().clear();
            update.commit();
        }
        if (this.securityAdmin != null) {
            Enumeration<ConditionalPermissionInfo> infos = this.securityAdmin.getConditionalPermissionInfos();
            while (infos.hasMoreElements()) {
                infos.nextElement().delete();
            }
        }
    }

    public void _close(CommandInterpreter intp) throws Exception {
        intp.println();
        this.framework.close();
        System.exit(0);
    }

    public void _r(CommandInterpreter intp) throws Exception {
        this._refresh(intp);
    }

    public void _refresh(CommandInterpreter intp) throws Exception {
        ServiceReference<?> packageAdminRef = this.context.getServiceReference("org.osgi.service.packageadmin.PackageAdmin");
        if (packageAdminRef != null) {
            PackageAdmin packageAdmin = (PackageAdmin)this.context.getService(packageAdminRef);
            if (packageAdmin != null) {
                try {
                    Bundle[] refresh = null;
                    String token = intp.nextArgument();
                    if (token != null) {
                        ArrayList<AbstractBundle> bundles = new ArrayList<AbstractBundle>();
                        while (token != null) {
                            AbstractBundle bundle = this.getBundleFromToken(intp, token, true);
                            if (bundle != null) {
                                bundles.add(bundle);
                            }
                            token = intp.nextArgument();
                        }
                        int size = bundles.size();
                        if (size == 0) {
                            intp.println(ConsoleMsg.CONSOLE_INVALID_BUNDLE_SPECIFICATION_ERROR);
                            return;
                        }
                        refresh = new Bundle[size];
                        bundles.toArray(refresh);
                    }
                    packageAdmin.refreshPackages(refresh);
                }
                finally {
                    this.context.ungetService(packageAdminRef);
                }
            }
        } else {
            intp.println(ConsoleMsg.CONSOLE_CAN_NOT_REFRESH_NO_PACKAGE_ADMIN_ERROR);
        }
    }

    public void _exec(CommandInterpreter intp) throws Exception {
        String command = intp.nextArgument();
        if (command == null) {
            intp.println(ConsoleMsg.CONSOLE_NO_COMMAND_SPECIFIED_ERROR);
            return;
        }
        Process p = Runtime.getRuntime().exec(command);
        intp.println(NLS.bind(ConsoleMsg.CONSOLE_STARTED_IN_MESSAGE, command, String.valueOf(p)));
        int result = p.waitFor();
        intp.println(NLS.bind(ConsoleMsg.CONSOLE_EXECUTED_RESULT_CODE_MESSAGE, command, String.valueOf(result)));
    }

    public void _fork(CommandInterpreter intp) throws Exception {
        String command = intp.nextArgument();
        if (command == null) {
            intp.println(ConsoleMsg.CONSOLE_NO_COMMAND_SPECIFIED_ERROR);
            return;
        }
        Process p = Runtime.getRuntime().exec(command);
        intp.println(NLS.bind(ConsoleMsg.CONSOLE_STARTED_IN_MESSAGE, command, String.valueOf(p)));
    }

    public void _h(CommandInterpreter intp) throws Exception {
        this._headers(intp);
    }

    public void _headers(CommandInterpreter intp) throws Exception {
        String nextArg = intp.nextArgument();
        if (nextArg == null) {
            intp.println(ConsoleMsg.CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
        }
        while (nextArg != null) {
            AbstractBundle bundle = this.getBundleFromToken(intp, nextArg, true);
            if (bundle != null) {
                intp.printDictionary(bundle.getHeaders(), ConsoleMsg.CONSOLE_BUNDLE_HEADERS_TITLE);
            }
            nextArg = intp.nextArgument();
        }
    }

    public void _pr(CommandInterpreter intp) throws Exception {
        this._props(intp);
    }

    public void _props(CommandInterpreter intp) throws Exception {
        intp.printDictionary(FrameworkProperties.getProperties(), ConsoleMsg.CONSOLE_SYSTEM_PROPERTIES_TITLE);
    }

    public void _setp(CommandInterpreter intp) throws Exception {
        this._setprop(intp);
    }

    public void _setprop(CommandInterpreter intp) throws Exception {
        block14: {
            String argument = intp.nextArgument();
            if (argument == null) {
                intp.println(ConsoleMsg.CONSOLE_NO_PARAMETERS_SPECIFIED_TITLE);
                this._props(intp);
            } else {
                ByteArrayInputStream in = new ByteArrayInputStream(argument.getBytes());
                try {
                    try {
                        Properties sysprops = FrameworkProperties.getProperties();
                        Properties newprops = new Properties();
                        newprops.load(in);
                        intp.println(ConsoleMsg.CONSOLE_SETTING_PROPERTIES_TITLE);
                        Enumeration<?> keys = newprops.propertyNames();
                        while (keys.hasMoreElements()) {
                            String key = (String)keys.nextElement();
                            String value = (String)newprops.get(key);
                            sysprops.put(key, value);
                            intp.println(new StringBuffer(tab).append(key).append(" = ").append(value).toString());
                        }
                    }
                    catch (IOException iOException) {
                        try {
                            ((InputStream)in).close();
                        }
                        catch (IOException iOException2) {}
                        break block14;
                    }
                }
                catch (Throwable throwable) {
                    try {
                        ((InputStream)in).close();
                    }
                    catch (IOException iOException) {}
                    throw throwable;
                }
                try {
                    ((InputStream)in).close();
                }
                catch (IOException iOException) {}
            }
        }
    }

    public void _ss(CommandInterpreter intp) throws Exception {
        if (this.framework.isActive()) {
            intp.println();
            intp.println(ConsoleMsg.CONSOLE_FRAMEWORK_IS_LAUNCHED_MESSAGE);
        } else {
            intp.println();
            intp.println(ConsoleMsg.CONSOLE_FRAMEWORK_IS_SHUTDOWN_MESSAGE);
        }
        Object[] options = this.processOption(intp);
        if (options == null) {
            return;
        }
        AbstractBundle[] bundles = (AbstractBundle[])this.context.getBundles();
        if (bundles.length == 0) {
            intp.println(ConsoleMsg.CONSOLE_NO_INSTALLED_BUNDLES_ERROR);
        } else {
            intp.print(newline);
            intp.print(ConsoleMsg.CONSOLE_ID);
            intp.print(tab);
            intp.println(ConsoleMsg.CONSOLE_STATE_BUNDLE_TITLE);
            int i = 0;
            while (i < bundles.length) {
                AbstractBundle b = bundles[i];
                if (this.match(b, (String)options[0], (Integer)options[1])) {
                    String label = b.getSymbolicName();
                    label = label == null || label.length() == 0 ? b.toString() : new StringBuffer(String.valueOf(label)).append("_").append(b.getVersion()).toString();
                    intp.println(new StringBuffer(String.valueOf(b.getBundleId())).append(tab).append(this.getStateName(b)).append(label).toString());
                    if (b.isFragment()) {
                        BundleHost[] hosts = b.getHosts();
                        if (hosts != null) {
                            int j = 0;
                            while (j < hosts.length) {
                                intp.println(new StringBuffer("\t            Master=").append(hosts[j].getBundleId()).toString());
                                ++j;
                            }
                        }
                    } else {
                        BundleFragment[] fragments = b.getFragments();
                        if (fragments != null) {
                            intp.print("\t            Fragments=");
                            int f = 0;
                            while (f < fragments.length) {
                                AbstractBundle fragment = fragments[f];
                                intp.print(new StringBuffer(String.valueOf(f > 0 ? ", " : "")).append(fragment.getBundleId()).toString());
                                ++f;
                            }
                            intp.println();
                        }
                    }
                }
                ++i;
            }
        }
    }

    private boolean match(Bundle toFilter, String searchedName, int searchedState) {
        if ((toFilter.getState() & searchedState) == 0) {
            return false;
        }
        return searchedName == null || toFilter.getSymbolicName() == null || toFilter.getSymbolicName().indexOf(searchedName) != -1;
    }

    public void _t(CommandInterpreter intp) throws Exception {
        this._threads(intp);
    }

    public void _threads(CommandInterpreter intp) throws Exception {
        Object[] threadGroups = this.getThreadGroups();
        Util.sortByString(threadGroups);
        Object tg = this.getTopThreadGroup();
        Object[] threads = new Thread[((ThreadGroup)tg).activeCount()];
        int count = ((ThreadGroup)tg).enumerate((Thread[])threads, true);
        Util.sortByString(threads);
        StringBuffer sb = new StringBuffer(120);
        intp.println();
        intp.println(ConsoleMsg.CONSOLE_THREADGROUP_TITLE);
        int i = 0;
        while (i < threadGroups.length) {
            tg = threadGroups[i];
            int all = ((ThreadGroup)tg).activeCount();
            int local = ((ThreadGroup)tg).enumerate(new Thread[all], false);
            ThreadGroup p = ((ThreadGroup)tg).getParent();
            String parent = p == null ? "-none-" : p.getName();
            sb.setLength(0);
            sb.append(Util.toString(this.simpleClassName(tg), 18)).append(" ").append(Util.toString(((ThreadGroup)tg).getName(), 21)).append(" ").append(Util.toString(parent, 16)).append(Util.toString(new Integer(((ThreadGroup)tg).getMaxPriority()), 3)).append(Util.toString(new Integer(local), 4)).append("/").append(Util.toString(String.valueOf(all), 6));
            intp.println(sb.toString());
            ++i;
        }
        intp.print(newline);
        intp.println(ConsoleMsg.CONSOLE_THREADTYPE_TITLE);
        int j = 0;
        while (j < count) {
            Object t = threads[j];
            if (t != null) {
                sb.setLength(0);
                sb.append(Util.toString(this.simpleClassName(t), 18)).append(" ").append(Util.toString(((Thread)t).getName(), 21)).append(" ").append(Util.toString(((Thread)t).getThreadGroup().getName(), 16)).append(Util.toString(new Integer(((Thread)t).getPriority()), 3));
                if (((Thread)t).isDaemon()) {
                    sb.append(" [daemon]");
                }
                intp.println(sb.toString());
            }
            ++j;
        }
    }

    public void _sl(CommandInterpreter intp) throws Exception {
        if (this.isStartLevelSvcPresent(intp)) {
            AbstractBundle bundle = null;
            String token = intp.nextArgument();
            int value = 0;
            if (token != null && (bundle = this.getBundleFromToken(intp, token, true)) == null) {
                return;
            }
            if (bundle == null) {
                value = this.slImpl.getStartLevel();
                intp.println(NLS.bind(ConsoleMsg.STARTLEVEL_FRAMEWORK_ACTIVE_STARTLEVEL, String.valueOf(value)));
            } else {
                value = this.slImpl.getBundleStartLevel(bundle);
                intp.println(NLS.bind(ConsoleMsg.STARTLEVEL_BUNDLE_STARTLEVEL, new Long(bundle.getBundleId()), new Integer(value)));
            }
        }
    }

    public void _setfwsl(CommandInterpreter intp) throws Exception {
        if (this.isStartLevelSvcPresent(intp)) {
            int value = 0;
            String token = intp.nextArgument();
            if (token == null) {
                intp.println(ConsoleMsg.STARTLEVEL_NO_STARTLEVEL_GIVEN);
                value = this.slImpl.getStartLevel();
                intp.println(NLS.bind(ConsoleMsg.STARTLEVEL_FRAMEWORK_ACTIVE_STARTLEVEL, String.valueOf(value)));
            } else {
                value = this.getStartLevelFromToken(intp, token);
                if (value > 0) {
                    try {
                        this.slImpl.setStartLevel(value);
                        intp.println(NLS.bind(ConsoleMsg.STARTLEVEL_FRAMEWORK_ACTIVE_STARTLEVEL, String.valueOf(value)));
                    }
                    catch (IllegalArgumentException e) {
                        intp.println(e.getMessage());
                    }
                }
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    public void _setbsl(CommandInterpreter intp) throws Exception {
        block5: {
            if (!this.isStartLevelSvcPresent(intp)) break block5;
            bundle = null;
            token = intp.nextArgument();
            if (token == null) {
                intp.println(ConsoleMsg.STARTLEVEL_NO_STARTLEVEL_OR_BUNDLE_GIVEN);
                return;
            }
            newSL = this.getStartLevelFromToken(intp, token);
            token = intp.nextArgument();
            if (token != null) ** GOTO lbl21
            intp.println(ConsoleMsg.STARTLEVEL_NO_STARTLEVEL_OR_BUNDLE_GIVEN);
            return;
lbl-1000:
            // 1 sources

            {
                bundle = this.getBundleFromToken(intp, token, true);
                if (bundle != null) {
                    try {
                        this.slImpl.setBundleStartLevel(bundle, newSL);
                        intp.println(NLS.bind(ConsoleMsg.STARTLEVEL_BUNDLE_STARTLEVEL, new Long(bundle.getBundleId()), new Integer(newSL)));
                    }
                    catch (IllegalArgumentException e) {
                        intp.println(e.getMessage());
                    }
                }
                token = intp.nextArgument();
lbl21:
                // 2 sources

                ** while (token != null)
            }
        }
    }

    public void _setibsl(CommandInterpreter intp) throws Exception {
        if (this.isStartLevelSvcPresent(intp)) {
            int value = 0;
            String token = intp.nextArgument();
            if (token == null) {
                intp.println(ConsoleMsg.STARTLEVEL_NO_STARTLEVEL_GIVEN);
                value = this.slImpl.getInitialBundleStartLevel();
                intp.println(NLS.bind(ConsoleMsg.STARTLEVEL_INITIAL_BUNDLE_STARTLEVEL, String.valueOf(value)));
            } else {
                value = this.getStartLevelFromToken(intp, token);
                if (value > 0) {
                    try {
                        this.slImpl.setInitialBundleStartLevel(value);
                        intp.println(NLS.bind(ConsoleMsg.STARTLEVEL_INITIAL_BUNDLE_STARTLEVEL, String.valueOf(value)));
                    }
                    catch (IllegalArgumentException e) {
                        intp.println(e.getMessage());
                    }
                }
            }
        }
    }

    public void _requiredBundles(CommandInterpreter intp) {
        this._classSpaces(intp);
    }

    public void _classSpaces(CommandInterpreter intp) {
        String token = intp.nextArgument();
        ServiceReference<?> packageAdminRef = this.context.getServiceReference("org.osgi.service.packageadmin.PackageAdmin");
        if (packageAdminRef != null) {
            PackageAdmin packageAdmin = (PackageAdmin)this.context.getService(packageAdminRef);
            if (packageAdmin != null) {
                try {
                    RequiredBundle[] symBundles = null;
                    symBundles = packageAdmin.getRequiredBundles(token);
                    if (symBundles == null) {
                        intp.println(ConsoleMsg.CONSOLE_NO_NAMED_CLASS_SPACES_MESSAGE);
                    }
                    int i = 0;
                    while (i < symBundles.length) {
                        Bundle provider;
                        RequiredBundle symBundle = symBundles[i];
                        intp.print(symBundle);
                        boolean removalPending = symBundle.isRemovalPending();
                        if (removalPending) {
                            intp.print("(");
                            intp.print(ConsoleMsg.CONSOLE_REMOVAL_PENDING_MESSAGE);
                            intp.println(")");
                        }
                        if ((provider = symBundle.getBundle()) != null) {
                            intp.print("<");
                            intp.print(provider);
                            intp.println(">");
                            Bundle[] requiring = symBundle.getRequiringBundles();
                            if (requiring != null) {
                                int j = 0;
                                while (j < requiring.length) {
                                    intp.print("  ");
                                    intp.print(requiring[j]);
                                    intp.print(" ");
                                    intp.println(ConsoleMsg.CONSOLE_REQUIRES_MESSAGE);
                                    ++j;
                                }
                            }
                        } else {
                            intp.print("<");
                            intp.print(ConsoleMsg.CONSOLE_STALE_MESSAGE);
                            intp.println(">");
                        }
                        ++i;
                    }
                }
                finally {
                    this.context.ungetService(packageAdminRef);
                }
            }
        } else {
            intp.println(ConsoleMsg.CONSOLE_NO_EXPORTED_PACKAGES_NO_PACKAGE_ADMIN_MESSAGE);
        }
    }

    public void _profilelog(CommandInterpreter intp) throws Exception {
        intp.println(Profile.getProfileLog());
    }

    public void _getPackages(CommandInterpreter intp) {
        String nextArg = intp.nextArgument();
        if (nextArg == null) {
            return;
        }
        AbstractBundle bundle = this.getBundleFromToken(intp, nextArg, true);
        ServiceReference<?> ref = this.context.getServiceReference("org.eclipse.osgi.service.resolver.PlatformAdmin");
        if (ref == null) {
            return;
        }
        PlatformAdmin platformAdmin = (PlatformAdmin)this.context.getService(ref);
        try {
            ExportPackageDescription[] exports = platformAdmin.getStateHelper().getVisiblePackages(bundle.getBundleDescription(), 3);
            int i = 0;
            while (i < exports.length) {
                intp.println(new StringBuffer().append(exports[i]).append(": ").append(platformAdmin.getStateHelper().getAccessCode(bundle.getBundleDescription(), exports[i])).toString());
                ++i;
            }
        }
        finally {
            this.context.ungetService(ref);
        }
    }

    public Object _help(CommandInterpreter intp) {
        String commandName = intp.nextArgument();
        if (commandName == null) {
            return new Boolean(false);
        }
        String help = this.getHelp(commandName);
        return help.length() > 0 ? help : new Boolean(false);
    }

    protected boolean isStartLevelSvcPresent(CommandInterpreter intp) {
        boolean retval = false;
        ServiceReference<?> slSvcRef = this.context.getServiceReference("org.osgi.service.startlevel.StartLevel");
        if (slSvcRef != null) {
            StartLevel slSvc = (StartLevel)this.context.getService(slSvcRef);
            if (slSvc != null) {
                retval = true;
            }
        } else {
            intp.println(ConsoleMsg.CONSOLE_CAN_NOT_USE_STARTLEVEL_NO_STARTLEVEL_SVC_ERROR);
        }
        return retval;
    }

    /*
     * Unable to fully structure code
     */
    protected AbstractBundle getBundleFromToken(CommandInterpreter intp, String token, boolean error) {
        block8: {
            bundle = null;
            try {
                id = Long.parseLong(token);
                bundle = (AbstractBundle)this.context.getBundle(id);
                break block8;
            }
            catch (NumberFormatException v0) {
                symbolicName = token;
                version = null;
                ix = token.indexOf("@");
                if (ix != -1 && ix + 1 != token.length()) {
                    try {
                        version = Version.parseVersion(token.substring(ix + 1, token.length()));
                        symbolicName = token.substring(0, ix);
                    }
                    catch (IllegalArgumentException v1) {}
                }
                bundles = this.context.getBundles();
                i = 0;
                n = bundles.length;
                ** while (i < n)
            }
lbl-1000:
            // 1 sources

            {
                b = (AbstractBundle)bundles[i];
                if (symbolicName.equals(b.getSymbolicName()) && (version == null || version.equals(b.getVersion())) || token.equals(b.getLocation())) {
                    bundle = b;
                    break;
                }
                ++i;
                continue;
            }
        }
        if (bundle == null && error) {
            intp.println(NLS.bind(ConsoleMsg.CONSOLE_CANNOT_FIND_BUNDLE_ERROR, token));
        }
        return bundle;
    }

    protected int getStartLevelFromToken(CommandInterpreter intp, String value) {
        int retval = -1;
        try {
            retval = Integer.parseInt(value);
            if (Integer.parseInt(value) <= 0) {
                intp.println(ConsoleMsg.STARTLEVEL_POSITIVE_INTEGER);
            }
        }
        catch (NumberFormatException numberFormatException) {
            intp.println(ConsoleMsg.STARTLEVEL_POSITIVE_INTEGER);
        }
        return retval;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected String getStateName(Bundle bundle) {
        int state = bundle.getState();
        switch (state) {
            case 1: {
                return "UNINSTALLED ";
            }
            case 2: {
                if (this.isDisabled(bundle)) {
                    return "<DISABLED>  ";
                }
                return "INSTALLED   ";
            }
            case 4: {
                return "RESOLVED    ";
            }
            case 8: {
                List<Bundle> list = this.lazyActivation;
                synchronized (list) {
                    if (this.lazyActivation.contains(bundle)) {
                        return "<<LAZY>>    ";
                    }
                    return "STARTING    ";
                }
            }
            case 16: {
                return "STOPPING    ";
            }
            case 32: {
                return "ACTIVE      ";
            }
        }
        return Integer.toHexString(state);
    }

    private boolean isDisabled(Bundle bundle) {
        boolean disabled = false;
        ServiceReference<?> platformAdminRef = null;
        try {
            BundleDescription bundleDesc;
            State state;
            DisabledInfo[] disabledInfos;
            PlatformAdmin platAdmin;
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((platformAdminRef = this.context.getServiceReference(clazz.getName())) != null && (platAdmin = (PlatformAdmin)this.context.getService(platformAdminRef)) != null && (disabledInfos = (state = platAdmin.getState(false)).getDisabledInfos(bundleDesc = state.getBundle(bundle.getBundleId()))) != null && disabledInfos.length != 0) {
                disabled = true;
            }
        }
        finally {
            if (platformAdminRef != null) {
                this.context.ungetService(platformAdminRef);
            }
        }
        return disabled;
    }

    protected ThreadGroup[] getThreadGroups() {
        ThreadGroup[] groups;
        ThreadGroup tg = this.getTopThreadGroup();
        int count = tg.enumerate(groups = new ThreadGroup[tg.activeGroupCount()], true);
        if (count == groups.length) {
            return groups;
        }
        ThreadGroup[] ngroups = new ThreadGroup[count];
        System.arraycopy(groups, 0, ngroups, 0, count);
        return ngroups;
    }

    protected ThreadGroup getTopThreadGroup() {
        ThreadGroup topGroup = Thread.currentThread().getThreadGroup();
        if (topGroup != null) {
            while (topGroup.getParent() != null) {
                topGroup = topGroup.getParent();
            }
        }
        return topGroup;
    }

    public String simpleClassName(Object o) {
        StringTokenizer t = new StringTokenizer(o.getClass().getName(), ".");
        int ct = t.countTokens();
        int i = 1;
        while (i < ct) {
            t.nextToken();
            ++i;
        }
        return t.nextToken();
    }

    public void _getprop(CommandInterpreter ci) throws Exception {
        Properties allProperties = FrameworkProperties.getProperties();
        String filter = ci.nextArgument();
        for (String prop : new TreeSet(allProperties.keySet())) {
            if (filter != null && !prop.startsWith(filter)) continue;
            ci.println(new StringBuffer(String.valueOf(prop)).append('=').append(allProperties.getProperty(prop)).toString());
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void bundleChanged(BundleEvent event) {
        int type = event.getType();
        Bundle bundle = event.getBundle();
        List<Bundle> list = this.lazyActivation;
        synchronized (list) {
            switch (type) {
                case 512: {
                    if (this.lazyActivation.contains(bundle)) break;
                    this.lazyActivation.add(bundle);
                    break;
                }
                default: {
                    this.lazyActivation.remove(bundle);
                }
            }
        }
    }
}

