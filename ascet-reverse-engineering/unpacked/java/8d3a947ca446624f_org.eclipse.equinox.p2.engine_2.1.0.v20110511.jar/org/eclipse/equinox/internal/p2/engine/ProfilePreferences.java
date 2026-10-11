/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.preferences.EclipsePreferences
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.p2.core.IAgentLocation
 *  org.eclipse.equinox.p2.core.IProvisioningAgent
 *  org.eclipse.equinox.security.storage.EncodingUtils
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.equinox.internal.p2.engine;

import java.io.File;
import java.net.URI;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.eclipse.core.internal.preferences.EclipsePreferences;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.engine.EngineActivator;
import org.eclipse.equinox.internal.p2.engine.Messages;
import org.eclipse.equinox.internal.p2.engine.SimpleProfileRegistry;
import org.eclipse.equinox.p2.core.IAgentLocation;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.security.storage.EncodingUtils;
import org.osgi.framework.BundleContext;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.service.prefs.BackingStoreException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProfilePreferences
extends EclipsePreferences {
    private static Set<String> loadedNodes = Collections.synchronizedSet(new HashSet());
    public static final Object PROFILE_SAVE_JOB_FAMILY = new Object();
    private static final long SAVE_SCHEDULE_DELAY = 500L;
    private IEclipsePreferences loadLevel;
    private Object profileLock;
    private String qualifier;
    private SaveJob saveJob;
    private int segmentCount;
    static /* synthetic */ Class class$0;

    public ProfilePreferences() {
        this(null, null);
    }

    public ProfilePreferences(EclipsePreferences nodeParent, String nodeName) {
        super(nodeParent, nodeName);
        String path = this.absolutePath();
        this.segmentCount = ProfilePreferences.getSegmentCount((String)path);
        if (this.segmentCount <= 2) {
            return;
        }
        if (this.segmentCount == 3) {
            this.profileLock = new Object();
        }
        if (this.segmentCount < 4) {
            return;
        }
        this.qualifier = ProfilePreferences.getSegment((String)path, (int)3);
    }

    private boolean containsProfile(IProfileRegistry profileRegistry, String profileId) {
        if (profileId == null || profileRegistry == null) {
            return false;
        }
        return profileRegistry.containsProfile(profileId);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void doSave(IProvisioningAgent agent) throws BackingStoreException {
        Object object = ((ProfilePreferences)this.parent).profileLock;
        synchronized (object) {
            String profileId = ProfilePreferences.getSegment((String)this.absolutePath(), (int)2);
            IProfileRegistry registry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
            if (registry == null) {
                return;
            }
            if (!this.containsProfile(registry, profileId)) {
                IPath location;
                if ("_SELF_".equals(profileId) && (location = this.getDefaultLocation(agent)) != null) {
                    super.save(location);
                    return;
                }
                if (Tracing.DEBUG_PROFILE_PREFERENCES) {
                    Tracing.debug((String)new StringBuffer("Not saving preferences since there is no file for node: ").append(this.absolutePath()).toString());
                }
                return;
            }
            super.save(this.getProfileLocation(registry, profileId));
        }
    }

    private ServiceReference<IProvisioningAgent> getAgent(String segment) throws BackingStoreException {
        InvalidSyntaxException failure;
        block6: {
            String locationString = EncodingUtils.decodeSlashes((String)segment);
            failure = null;
            try {
                Collection refs;
                String filter = new StringBuffer("(locationURI=").append(this.encodeForFilter(locationString)).append(')').toString();
                BundleContext context = EngineActivator.getContext();
                if (context == null) break block6;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.equinox.p2.core.IProvisioningAgent");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (!(refs = context.getServiceReferences((Class)clazz, filter)).isEmpty()) {
                    return (ServiceReference)refs.iterator().next();
                }
            }
            catch (InvalidSyntaxException e) {
                failure = e;
            }
        }
        throw new BackingStoreException(new StringBuffer("Unable to determine provisioning agent from location: ").append(segment).toString(), (Throwable)failure);
    }

    private String encodeForFilter(String string) {
        StringBuffer result = new StringBuffer(string.length());
        char[] input = string.toCharArray();
        int i = 0;
        while (i < input.length) {
            switch (input[i]) {
                case '(': 
                case ')': 
                case '*': 
                case '\\': {
                    result.append('\\');
                }
            }
            result.append(input[i]);
            ++i;
        }
        return result.toString();
    }

    private IPath getDefaultLocation(IProvisioningAgent agent) {
        IAgentLocation location = (IAgentLocation)agent.getService(IAgentLocation.SERVICE_NAME);
        if (location == null) {
            LogHelper.log((IStatus)new Status(2, "org.eclipse.equinox.p2.engine", "Agent location service not available", (Throwable)new RuntimeException()));
            return null;
        }
        Path dataArea = new Path(URIUtil.toFile((URI)location.getDataArea("org.eclipse.equinox.p2.engine")).getAbsolutePath());
        return this.computeLocation((IPath)dataArea, this.qualifier);
    }

    protected IEclipsePreferences getLoadLevel() {
        if (this.loadLevel == null) {
            if (this.qualifier == null) {
                return null;
            }
            ProfilePreferences node = this;
            int i = 4;
            while (i < this.segmentCount) {
                node = (EclipsePreferences)node.parent();
                ++i;
            }
            this.loadLevel = node;
        }
        return this.loadLevel;
    }

    private IPath getProfileLocation(IProfileRegistry registry, String profileId) {
        SimpleProfileRegistry profileRegistry = (SimpleProfileRegistry)registry;
        File profileDataDirectory = profileRegistry.getProfileDataDirectory(profileId);
        return this.computeLocation((IPath)new Path(profileDataDirectory.getAbsolutePath()), this.qualifier);
    }

    protected EclipsePreferences internalCreate(EclipsePreferences nodeParent, String nodeName, Object context) {
        return new ProfilePreferences(nodeParent, nodeName);
    }

    protected boolean isAlreadyLoaded(IEclipsePreferences node) {
        return loadedNodes.contains(node.absolutePath());
    }

    protected boolean isAlreadyLoaded(String path) {
        return loadedNodes.contains(path);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void load() throws BackingStoreException {
        Object object = ((ProfilePreferences)this.parent).profileLock;
        synchronized (object) {
            ServiceReference<IProvisioningAgent> agentRef = this.getAgent(ProfilePreferences.getSegment((String)this.absolutePath(), (int)1));
            IProvisioningAgent agent = (IProvisioningAgent)EngineActivator.getContext().getService(agentRef);
            IProfileRegistry registry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
            try {
                String profileId = ProfilePreferences.getSegment((String)this.absolutePath(), (int)2);
                if (!this.containsProfile(registry, profileId)) {
                    IPath location;
                    if ("_SELF_".equals(profileId) && (location = this.getDefaultLocation(agent)) != null) {
                        this.load(location);
                        return;
                    }
                    if (!Tracing.DEBUG_PROFILE_PREFERENCES) return;
                    Tracing.debug((String)new StringBuffer("Not loading preferences since there is no file for node: ").append(this.absolutePath()).toString());
                    return;
                }
                this.load(this.getProfileLocation(registry, profileId));
            }
            finally {
                EngineActivator.getContext().ungetService(agentRef);
            }
            return;
        }
    }

    protected void loaded() {
        loadedNodes.add(this.name());
    }

    public void removeNode() throws BackingStoreException {
        super.removeNode();
        loadedNodes.remove(this.absolutePath());
    }

    protected synchronized void save() throws BackingStoreException {
        block7: {
            try {
                ServiceReference<IProvisioningAgent> agentRef = this.getAgent(ProfilePreferences.getSegment((String)this.absolutePath(), (int)1));
                IProvisioningAgent agent = (IProvisioningAgent)EngineActivator.getContext().getService(agentRef);
                if (this.saveJob == null || this.saveJob.agent != agent) {
                    this.saveJob = new SaveJob(agent);
                }
                EngineActivator.getContext().ungetService(agentRef);
            }
            catch (BackingStoreException e) {
                if (!Tracing.DEBUG_PROFILE_PREFERENCES) break block7;
                e.printStackTrace();
            }
        }
        BundleContext context = EngineActivator.getContext();
        if (context == null || this.saveJob == null) {
            return;
        }
        try {
            if (context.getBundle().getState() == 32) {
                this.saveJob.schedule(500L);
            }
        }
        catch (IllegalStateException illegalStateException) {}
    }

    private class SaveJob
    extends Job {
        IProvisioningAgent agent;

        SaveJob(IProvisioningAgent agent) {
            super(Messages.ProfilePreferences_saving);
            this.setSystem(true);
            this.agent = agent;
        }

        public boolean belongsTo(Object family) {
            return family == PROFILE_SAVE_JOB_FAMILY;
        }

        protected IStatus run(IProgressMonitor monitor) {
            try {
                ProfilePreferences.this.doSave(this.agent);
            }
            catch (IllegalStateException e) {
                if (Tracing.DEBUG_PROFILE_PREFERENCES) {
                    Tracing.debug((String)"Attempt to save preferences after agent has been stopped");
                    e.printStackTrace();
                }
            }
            catch (BackingStoreException e) {
                LogHelper.log((IStatus)new Status(2, "org.eclipse.equinox.p2.engine", "Exception saving profile preferences", (Throwable)e));
            }
            catch (RuntimeException e) {
                LogHelper.log((IStatus)new Status(2, "org.eclipse.equinox.p2.engine", "Exception saving profile preferences", (Throwable)e));
            }
            return Status.OK_STATUS;
        }
    }
}

