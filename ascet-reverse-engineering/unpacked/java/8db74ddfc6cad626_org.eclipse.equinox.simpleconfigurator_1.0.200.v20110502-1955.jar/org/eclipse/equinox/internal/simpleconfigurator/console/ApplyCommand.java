/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.framework.console.CommandInterpreter
 *  org.osgi.framework.BundleContext
 *  org.osgi.util.tracker.ServiceTracker
 */
package org.eclipse.equinox.internal.simpleconfigurator.console;

import java.io.IOException;
import java.net.URL;
import org.eclipse.equinox.internal.provisional.configurator.Configurator;
import org.eclipse.osgi.framework.console.CommandInterpreter;
import org.osgi.framework.BundleContext;
import org.osgi.util.tracker.ServiceTracker;

public class ApplyCommand {
    private URL configURL;
    private CommandInterpreter interpreter;
    private BundleContext context;
    static /* synthetic */ Class class$0;

    public ApplyCommand(CommandInterpreter interpreter, BundleContext context, URL configURL) {
        this.interpreter = interpreter;
        this.context = context;
        this.configURL = configURL;
    }

    public void run() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.provisional.configurator.Configurator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        ServiceTracker tracker = new ServiceTracker(this.context, clazz.getName(), null);
        tracker.open();
        Configurator configurator = (Configurator)tracker.getService();
        if (configurator != null) {
            try {
                if (this.configURL != null) {
                    configurator.applyConfiguration(this.configURL);
                } else {
                    configurator.applyConfiguration();
                }
                if (configurator.getUrlInUse() == null) {
                    this.interpreter.println((Object)"Config URL not set.");
                }
            }
            catch (IOException e) {
                this.interpreter.println((Object)e.getMessage());
            }
        } else {
            this.interpreter.println((Object)"No configurator registered");
        }
        tracker.close();
    }
}

