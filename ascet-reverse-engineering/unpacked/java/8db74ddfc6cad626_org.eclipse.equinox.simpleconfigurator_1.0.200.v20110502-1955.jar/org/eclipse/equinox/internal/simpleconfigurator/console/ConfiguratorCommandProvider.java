/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.console.CommandInterpreter
 *  org.eclipse.osgi.framework.console.CommandProvider
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.simpleconfigurator.console;

import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.equinox.internal.simpleconfigurator.console.ApplyCommand;
import org.eclipse.equinox.internal.simpleconfigurator.utils.Utils;
import org.eclipse.osgi.framework.console.CommandInterpreter;
import org.eclipse.osgi.framework.console.CommandProvider;
import org.osgi.framework.BundleContext;

public class ConfiguratorCommandProvider
implements CommandProvider {
    public static final String NEW_LINE = "\r\n";
    private BundleContext context;

    public ConfiguratorCommandProvider(BundleContext context) {
        this.context = context;
    }

    private URL toURL(CommandInterpreter interpreter, String urlString) {
        try {
            return Utils.buildURL(urlString);
        }
        catch (MalformedURLException e) {
            interpreter.println((Object)e.getMessage());
            return null;
        }
    }

    public void _confapply(CommandInterpreter interpreter) {
        String parameter = interpreter.nextArgument();
        URL configURL = null;
        if (parameter != null) {
            configURL = this.toURL(interpreter, parameter);
        }
        new ApplyCommand(interpreter, this.context, configURL).run();
    }

    public Object _help(CommandInterpreter intp) {
        String commandName = intp.nextArgument();
        if (commandName == null) {
            return new Boolean(false);
        }
        String help = this.getHelp(commandName);
        if (help.length() > 0) {
            return help;
        }
        return new Boolean(false);
    }

    public String getHelp() {
        return this.getHelp(null);
    }

    private String getHelp(String commandName) {
        StringBuffer help = new StringBuffer();
        if (commandName == null) {
            help.append("---");
            help.append("Configurator Commands");
            help.append("---");
            help.append(NEW_LINE);
        }
        if (commandName == null || "confapply".equals(commandName)) {
            help.append("\tconfapply [<config URL>] - Applies a configuration");
            help.append(NEW_LINE);
        }
        return help.toString();
    }
}

