/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.eclipse.core.runtime.internal.adaptor.EclipseAdaptorMsg;
import org.eclipse.core.runtime.internal.adaptor.MessageHelper;
import org.eclipse.osgi.framework.console.CommandInterpreter;
import org.eclipse.osgi.framework.console.CommandProvider;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.DisabledInfo;
import org.eclipse.osgi.service.resolver.PlatformAdmin;
import org.eclipse.osgi.service.resolver.ResolverError;
import org.eclipse.osgi.service.resolver.State;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public class EclipseCommandProvider
implements CommandProvider {
    public static final String NEW_LINE = "\r\n";
    public static final String TAB = "\t";
    private static final String POLICY_CONSOLE = "org.eclipse.osgi.framework.console";
    private PlatformAdmin platformAdmin;
    private BundleContext context;
    private Map<String, String> commandsHelp = null;
    static /* synthetic */ Class class$0;

    public EclipseCommandProvider(BundleContext context) {
        this.context = context;
    }

    public String getHelp() {
        return this.getHelp(null);
    }

    private String getHelp(String commandName) {
        StringBuffer help = new StringBuffer(512);
        if (this.commandsHelp == null) {
            this.initializeCommandsHelp();
        }
        if (commandName != null) {
            if (this.commandsHelp.containsKey(commandName)) {
                this.addCommand(commandName, this.commandsHelp.get(commandName), help);
            }
            return help.toString();
        }
        this.addHeader(EclipseAdaptorMsg.ECLIPSE_CONSOLE_COMMANDS_HEADER, help);
        Iterator<Map.Entry<String, String>> iterator = this.commandsHelp.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, String> entry = iterator.next();
            this.addCommand(entry.getKey(), entry.getValue(), help);
        }
        return help.toString();
    }

    private void initializeCommandsHelp() {
        this.commandsHelp = new LinkedHashMap<String, String>();
        this.commandsHelp.put("diag", EclipseAdaptorMsg.ECLIPSE_CONSOLE_HELP_DIAG_COMMAND_DESCRIPTION);
        this.commandsHelp.put("enableBundle", EclipseAdaptorMsg.ECLIPSE_CONSOLE_HELP_ENABLE_COMMAND_DESCRIPTION);
        this.commandsHelp.put("disableBundle", EclipseAdaptorMsg.ECLIPSE_CONSOLE_HELP_DISABLE_COMMAND_DESCRIPTION);
        this.commandsHelp.put("disabledBundles", EclipseAdaptorMsg.ECLIPSE_CONSOLE_HELP_LD_COMMAND_DESCRIPTION);
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

    private BundleDescription getBundleDescriptionFromToken(State state, String token) {
        try {
            long id = Long.parseLong(token);
            return state.getBundle(id);
        }
        catch (NumberFormatException numberFormatException) {
            BundleDescription[] allBundles = state.getBundles(token);
            if (allBundles.length > 0) {
                return allBundles[0];
            }
            return null;
        }
    }

    private PlatformAdmin getPlatformAdmin(CommandInterpreter ci) {
        if (this.platformAdmin == null) {
            ServiceReference<?> platformAdminRef;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((platformAdminRef = this.context.getServiceReference(clazz.getName())) == null) {
                ci.print("  ");
                ci.println(EclipseAdaptorMsg.ECLIPSE_CONSOLE_NO_CONSTRAINTS_NO_PLATFORM_ADMIN_MESSAGE);
                return null;
            }
            this.platformAdmin = (PlatformAdmin)this.context.getService(platformAdminRef);
        }
        return this.platformAdmin;
    }

    private void ungetPlatformAdmin() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.resolver.PlatformAdmin");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceReference<?> platformAdminRef = this.context.getServiceReference(clazz.getName());
        this.context.ungetService(platformAdminRef);
    }

    public void _diag(CommandInterpreter ci) throws Exception {
        String nextArg = ci.nextArgument();
        if (nextArg == null) {
            ci.println(EclipseAdaptorMsg.ECLIPSE_CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
            return;
        }
        try {
            State systemState = this.getPlatformAdmin(ci).getState(false);
            while (nextArg != null) {
                BundleDescription bundle = this.getBundleDescriptionFromToken(systemState, nextArg);
                if (bundle == null) {
                    ci.println(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONSOLE_CANNOT_FIND_BUNDLE_ERROR, nextArg));
                    nextArg = ci.nextArgument();
                    continue;
                }
                ci.println(String.valueOf(bundle.getLocation()) + " [" + bundle.getBundleId() + "]");
                VersionConstraint[] unsatisfied = this.platformAdmin.getStateHelper().getUnsatisfiedConstraints(bundle);
                ResolverError[] resolverErrors = this.platformAdmin.getState(false).getResolverErrors(bundle);
                int i = 0;
                while (i < resolverErrors.length) {
                    if ((resolverErrors[i].getType() & 0x8007) == 0) {
                        ci.print("  ");
                        ci.println(resolverErrors[i].toString());
                    }
                    ++i;
                }
                if (unsatisfied.length == 0 && resolverErrors.length == 0) {
                    ci.print("  ");
                    ci.println(EclipseAdaptorMsg.ECLIPSE_CONSOLE_NO_CONSTRAINTS);
                }
                if (unsatisfied.length > 0) {
                    ci.print("  ");
                    ci.println(EclipseAdaptorMsg.ECLIPSE_CONSOLE_DIRECT_CONSTRAINTS);
                }
                i = 0;
                while (i < unsatisfied.length) {
                    ci.print("    ");
                    ci.println(MessageHelper.getResolutionFailureMessage(unsatisfied[i]));
                    ++i;
                }
                VersionConstraint[] unsatisfiedLeaves = this.platformAdmin.getStateHelper().getUnsatisfiedLeaves(new BundleDescription[]{bundle});
                boolean foundLeaf = false;
                int i2 = 0;
                while (i2 < unsatisfiedLeaves.length) {
                    if (unsatisfiedLeaves[i2].getBundle() != bundle) {
                        if (!foundLeaf) {
                            foundLeaf = true;
                            ci.print("  ");
                            ci.println(EclipseAdaptorMsg.ECLIPSE_CONSOLE_LEAF_CONSTRAINTS);
                        }
                        ci.print("    ");
                        ci.println(String.valueOf(unsatisfiedLeaves[i2].getBundle().getLocation()) + " [" + unsatisfiedLeaves[i2].getBundle().getBundleId() + "]");
                        ci.print("      ");
                        ci.println(MessageHelper.getResolutionFailureMessage(unsatisfiedLeaves[i2]));
                    }
                    ++i2;
                }
                nextArg = ci.nextArgument();
            }
        }
        finally {
            this.ungetPlatformAdmin();
        }
    }

    public void _enableBundle(CommandInterpreter ci) throws Exception {
        String nextArg = ci.nextArgument();
        if (nextArg == null) {
            ci.println(EclipseAdaptorMsg.ECLIPSE_CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
            return;
        }
        try {
            State systemState = this.getPlatformAdmin(ci).getState(false);
            while (nextArg != null) {
                BundleDescription bundleDesc = this.getBundleDescriptionFromToken(systemState, nextArg);
                if (bundleDesc == null) {
                    ci.println(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONSOLE_CANNOT_FIND_BUNDLE_ERROR, nextArg));
                    nextArg = ci.nextArgument();
                    continue;
                }
                DisabledInfo[] infos = systemState.getDisabledInfos(bundleDesc);
                int i = 0;
                while (i < infos.length) {
                    this.getPlatformAdmin(ci).removeDisabledInfo(infos[i]);
                    ++i;
                }
                nextArg = ci.nextArgument();
            }
        }
        finally {
            this.ungetPlatformAdmin();
        }
    }

    public void _disableBundle(CommandInterpreter ci) throws Exception {
        String nextArg = ci.nextArgument();
        if (nextArg == null) {
            ci.println(EclipseAdaptorMsg.ECLIPSE_CONSOLE_NO_BUNDLE_SPECIFIED_ERROR);
            return;
        }
        try {
            State systemState = this.getPlatformAdmin(ci).getState(false);
            while (nextArg != null) {
                BundleDescription bundleDesc = this.getBundleDescriptionFromToken(systemState, nextArg);
                if (bundleDesc == null) {
                    ci.println(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONSOLE_CANNOT_FIND_BUNDLE_ERROR, nextArg));
                    nextArg = ci.nextArgument();
                    continue;
                }
                DisabledInfo info = new DisabledInfo(POLICY_CONSOLE, EclipseAdaptorMsg.ECLIPSE_CONSOLE_BUNDLE_DISABLED_MESSAGE, bundleDesc);
                this.getPlatformAdmin(ci).addDisabledInfo(info);
                nextArg = ci.nextArgument();
            }
        }
        finally {
            this.ungetPlatformAdmin();
        }
    }

    public void _disabledBundles(CommandInterpreter ci) throws Exception {
        try {
            State systemState = this.getPlatformAdmin(ci).getState(false);
            BundleDescription[] disabledBundles = systemState.getDisabledBundles();
            ci.println(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONSOLE_DISABLED_COUNT_MESSAGE, String.valueOf(disabledBundles.length)));
            if (disabledBundles.length > 0) {
                ci.println();
            }
            int i = 0;
            while (i < disabledBundles.length) {
                DisabledInfo[] disabledInfos = systemState.getDisabledInfos(disabledBundles[i]);
                ci.println(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONSOLE_DISABLED_BUNDLE_HEADER, this.formatBundleName(disabledBundles[i]), String.valueOf(disabledBundles[i].getBundleId())));
                ci.print(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONSOLE_DISABLED_BUNDLE_REASON1, disabledInfos[0].getMessage(), disabledInfos[0].getPolicyName()));
                int j = 1;
                while (j < disabledInfos.length) {
                    ci.print(NLS.bind(EclipseAdaptorMsg.ECLIPSE_CONSOLE_DISABLED_BUNDLE_REASON1, disabledInfos[j].getMessage(), String.valueOf(disabledInfos[j].getPolicyName())));
                    ++j;
                }
                ci.println();
                ++i;
            }
        }
        finally {
            this.ungetPlatformAdmin();
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

    private String formatBundleName(BundleDescription b) {
        String label = b.getSymbolicName();
        label = label == null || label.length() == 0 ? b.toString() : String.valueOf(label) + "_" + b.getVersion();
        return label;
    }
}

