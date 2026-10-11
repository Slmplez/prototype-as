/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.RegistryFactory
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.ConfigurationScope
 *  org.eclipse.core.runtime.preferences.DefaultScope
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IPreferencesService
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.engine.CommitOperationEvent
 *  org.eclipse.equinox.internal.p2.engine.InstallableUnitEvent
 *  org.eclipse.equinox.internal.p2.engine.RollbackOperationEvent
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.ProvisioningListener
 *  org.eclipse.equinox.internal.provisional.p2.core.eventbus.SynchronousProvisioningListener
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.p2.core.spi.IAgentService
 *  org.eclipse.equinox.p2.engine.IProfile
 *  org.eclipse.equinox.p2.engine.IProfileRegistry
 *  org.eclipse.equinox.p2.metadata.IArtifactKey
 *  org.eclipse.equinox.p2.repository.artifact.IArtifactRepository
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.equinox.internal.p2.garbagecollector;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EventObject;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.RegistryFactory;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.ConfigurationScope;
import org.eclipse.core.runtime.preferences.DefaultScope;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IPreferencesService;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.engine.CommitOperationEvent;
import org.eclipse.equinox.internal.p2.engine.InstallableUnitEvent;
import org.eclipse.equinox.internal.p2.engine.RollbackOperationEvent;
import org.eclipse.equinox.internal.p2.garbagecollector.CoreGarbageCollector;
import org.eclipse.equinox.internal.p2.garbagecollector.GCActivator;
import org.eclipse.equinox.internal.p2.garbagecollector.MarkSet;
import org.eclipse.equinox.internal.p2.garbagecollector.MarkSetProvider;
import org.eclipse.equinox.internal.p2.garbagecollector.Messages;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.IProvisioningEventBus;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.ProvisioningListener;
import org.eclipse.equinox.internal.provisional.p2.core.eventbus.SynchronousProvisioningListener;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.core.spi.IAgentService;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.repository.artifact.IArtifactRepository;
import org.osgi.service.prefs.Preferences;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GarbageCollector
implements SynchronousProvisioningListener,
IAgentService {
    public static final String SERVICE_NAME;
    private static final String ATTRIBUTE_CLASS = "class";
    private static final String PT_MARKSET = "org.eclipse.equinox.p2.garbagecollector.marksetproviders";
    final IProvisioningAgent agent;
    String uninstallEventProfileId = null;
    private Map<IArtifactRepository, Collection<IArtifactKey>> markSet;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.p2.garbagecollector.GarbageCollector");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SERVICE_NAME = clazz.getName();
    }

    public GarbageCollector(IProvisioningAgent agent) {
        this.agent = agent;
    }

    private void addKeys(Collection<IArtifactKey> keyList, IArtifactKey[] keyArray) {
        int i = 0;
        while (i < keyArray.length) {
            keyList.add(keyArray[i]);
            ++i;
        }
    }

    private void contributeMarkSets(IConfigurationElement runAttribute, IProfile profile, boolean addRepositories) {
        ParameterizedSafeRunnable providerExecutor = new ParameterizedSafeRunnable(runAttribute, profile);
        SafeRunner.run((ISafeRunnable)providerExecutor);
        MarkSet[] aProfileMarkSets = providerExecutor.getResult();
        if (aProfileMarkSets == null || aProfileMarkSets.length == 0 || aProfileMarkSets[0] == null) {
            return;
        }
        int i = 0;
        while (i < aProfileMarkSets.length) {
            if (aProfileMarkSets[i] != null) {
                Collection<IArtifactKey> keys = this.markSet.get(aProfileMarkSets[i].getRepo());
                if (keys == null) {
                    if (addRepositories) {
                        keys = new HashSet<IArtifactKey>();
                        this.markSet.put(aProfileMarkSets[i].getRepo(), keys);
                        this.addKeys(keys, aProfileMarkSets[i].getKeys());
                    }
                } else {
                    this.addKeys(keys, aProfileMarkSets[i].getKeys());
                }
            }
            ++i;
        }
    }

    protected boolean getBooleanPreference(String key, boolean defaultValue) {
        IPreferencesService prefService;
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.core.runtime.preferences.IPreferencesService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((prefService = (IPreferencesService)GCActivator.getService(clazz)) == null) {
            return defaultValue;
        }
        ArrayList<IEclipsePreferences> nodes = new ArrayList<IEclipsePreferences>();
        nodes.add(new ConfigurationScope().getNode("org.eclipse.equinox.p2.garbagecollector"));
        nodes.add(new DefaultScope().getNode("org.eclipse.equinox.p2.garbagecollector"));
        return Boolean.valueOf(prefService.get(key, Boolean.toString(defaultValue), nodes.toArray(new Preferences[nodes.size()])));
    }

    private void invokeCoreGC() {
        for (IArtifactRepository nextRepo : this.markSet.keySet()) {
            IArtifactKey[] keys = this.markSet.get(nextRepo).toArray(new IArtifactKey[0]);
            MarkSet aMarkSet = new MarkSet(keys, nextRepo);
            new CoreGarbageCollector().clean(aMarkSet.getKeys(), aMarkSet.getRepo());
        }
    }

    public void notify(EventObject o) {
        if (o instanceof InstallableUnitEvent) {
            InstallableUnitEvent event = (InstallableUnitEvent)o;
            if (event.isUninstall() && event.isPost()) {
                this.uninstallEventProfileId = event.getProfile().getProfileId();
            }
        } else if (o instanceof CommitOperationEvent) {
            if (this.uninstallEventProfileId != null) {
                CommitOperationEvent event = (CommitOperationEvent)o;
                if (this.uninstallEventProfileId.equals(event.getProfile().getProfileId()) && this.getBooleanPreference("gc_enabled", true)) {
                    this.runGC(event.getProfile());
                }
                this.uninstallEventProfileId = null;
            }
        } else if (o instanceof RollbackOperationEvent && this.uninstallEventProfileId != null && this.uninstallEventProfileId.equals(((RollbackOperationEvent)o).getProfile().getProfileId())) {
            this.uninstallEventProfileId = null;
        }
    }

    public void runGC(IProfile profile) {
        this.markSet = new HashMap<IArtifactRepository, Collection<IArtifactKey>>();
        if (!this.traverseMainProfile(profile)) {
            return;
        }
        this.traverseRegisteredProfiles();
        this.invokeCoreGC();
    }

    public void start() {
        IProvisioningEventBus eventBus = (IProvisioningEventBus)this.agent.getService(IProvisioningEventBus.SERVICE_NAME);
        if (eventBus == null) {
            return;
        }
        eventBus.addListener((ProvisioningListener)this);
    }

    public void stop() {
        IProvisioningEventBus eventBus = (IProvisioningEventBus)this.agent.getService(IProvisioningEventBus.SERVICE_NAME);
        if (eventBus != null) {
            eventBus.removeListener((ProvisioningListener)this);
        }
    }

    private boolean traverseMainProfile(IProfile profile) {
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IConfigurationElement[] configElts = registry.getConfigurationElementsFor(PT_MARKSET);
        int i = 0;
        while (i < configElts.length) {
            IConfigurationElement runAttribute;
            if (configElts[i].getName().equals("run") && (runAttribute = configElts[i]) != null) {
                this.contributeMarkSets(runAttribute, profile, true);
            }
            ++i;
        }
        return true;
    }

    private void traverseRegisteredProfiles() {
        IExtensionRegistry registry = RegistryFactory.getRegistry();
        IConfigurationElement[] configElts = registry.getConfigurationElementsFor(PT_MARKSET);
        int i = 0;
        while (i < configElts.length) {
            IConfigurationElement runAttribute;
            if (configElts[i].getName().equals("run") && (runAttribute = configElts[i]) != null) {
                IProfileRegistry profileRegistry = (IProfileRegistry)this.agent.getService(IProfileRegistry.SERVICE_NAME);
                if (profileRegistry == null) {
                    return;
                }
                IProfile[] registeredProfiles = profileRegistry.getProfiles();
                int j = 0;
                while (j < registeredProfiles.length) {
                    this.contributeMarkSets(runAttribute, registeredProfiles[j], false);
                    ++j;
                }
            }
            ++i;
        }
    }

    private class ParameterizedSafeRunnable
    implements ISafeRunnable {
        IProfile aProfile;
        MarkSet[] aProfileMarkSets;
        IConfigurationElement cfg;

        public ParameterizedSafeRunnable(IConfigurationElement runtAttribute, IProfile profile) {
            this.cfg = runtAttribute;
            this.aProfile = profile;
        }

        public MarkSet[] getResult() {
            return this.aProfileMarkSets;
        }

        public void handleException(Throwable exception) {
            LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.garbagecollector", Messages.Error_in_extension, exception));
        }

        public void run() throws Exception {
            MarkSetProvider aMarkSetProvider = (MarkSetProvider)this.cfg.createExecutableExtension(GarbageCollector.ATTRIBUTE_CLASS);
            if (aMarkSetProvider == null) {
                this.aProfileMarkSets = null;
                return;
            }
            this.aProfileMarkSets = aMarkSetProvider.getMarkSets(GarbageCollector.this.agent, this.aProfile);
        }
    }
}

