/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.IProvisioningAgentProvider
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 */
package org.eclipse.equinox.internal.p2.garbagecollector;

import java.util.Map;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.equinox.internal.p2.garbagecollector.GCActivator;
import org.eclipse.equinox.internal.p2.garbagecollector.GarbageCollector;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.IProvisioningAgentProvider;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;

public class Application
implements IApplication {
    private static final String DEFAULT_PROFILE_ID = "SDKProfile";
    private String profileId;
    private IProvisioningAgent agent;
    static /* synthetic */ Class class$0;

    private IProfile getProfile(String id) {
        IProfileRegistry profileRegistry = (IProfileRegistry)this.agent.getService(IProfileRegistry.SERVICE_NAME);
        return profileRegistry == null ? null : profileRegistry.getProfile(id);
    }

    public Object start(IApplicationContext context) throws Exception {
        Map allArgs = context.getArguments();
        String[] args = (String[])allArgs.get("application.args");
        this.processArguments(args);
        if (this.profileId == null) {
            this.profileId = DEFAULT_PROFILE_ID;
        }
        this.initializeServices();
        IProfile profile = this.getProfile(this.profileId);
        if (profile == null) {
            throw new IllegalArgumentException("\"" + this.profileId + "\" is not a valid profile identifier.");
        }
        GarbageCollector gc = (GarbageCollector)this.agent.getService(GarbageCollector.SERVICE_NAME);
        gc.runGC(profile);
        this.agent.stop();
        return null;
    }

    private void initializeServices() throws ProvisionException {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgentProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IProvisioningAgentProvider provider = (IProvisioningAgentProvider)GCActivator.getService(clazz);
        this.agent = provider.createAgent(null);
    }

    public void stop() {
    }

    public void processArguments(String[] args) throws Exception {
        if (args == null) {
            return;
        }
        int i = 0;
        while (i < args.length) {
            String opt = args[i];
            if (i != args.length - 1 && !args[i + 1].startsWith("-")) {
                String arg = args[++i];
                if (opt.equalsIgnoreCase("-profile")) {
                    this.profileId = arg;
                }
            }
            ++i;
        }
    }
}

