/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.PlatformObject
 */
package org.eclipse.debug.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationListener;
import org.eclipse.debug.core.ILaunchListener;
import org.eclipse.debug.core.ILaunchManager;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IDisconnect;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.ISourceLocator;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.LaunchManager;

public class Launch
extends PlatformObject
implements ILaunch,
IDisconnect,
ILaunchListener,
ILaunchConfigurationListener,
IDebugEventSetListener {
    private List fTargets = new ArrayList();
    private ILaunchConfiguration fConfiguration = null;
    private List fProcesses = new ArrayList();
    private ISourceLocator fLocator = null;
    private String fMode;
    private HashMap fAttributes;
    private boolean fSuppressChange = true;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public Launch(ILaunchConfiguration launchConfiguration, String mode, ISourceLocator locator) {
        this.fConfiguration = launchConfiguration;
        this.setSourceLocator(locator);
        this.fMode = mode;
        this.fSuppressChange = false;
        this.getLaunchManager().addLaunchListener(this);
        this.getLaunchManager().addLaunchConfigurationListener(this);
    }

    private void addEventListener() {
        DebugPlugin.getDefault().addDebugEventListener(this);
    }

    private void removeEventListener() {
        DebugPlugin.getDefault().removeDebugEventListener(this);
    }

    public boolean canTerminate() {
        List processes = this.getProcesses0();
        int i = 0;
        while (i < processes.size()) {
            IProcess process = (IProcess)processes.get(i);
            if (process.canTerminate()) {
                return true;
            }
            ++i;
        }
        List targets = this.getDebugTargets0();
        int i2 = 0;
        while (i2 < targets.size()) {
            IDebugTarget target = (IDebugTarget)targets.get(i2);
            if (target.canTerminate() || target.canDisconnect()) {
                return true;
            }
            ++i2;
        }
        return false;
    }

    public Object[] getChildren() {
        ArrayList children = new ArrayList(this.getDebugTargets0());
        children.addAll(this.getProcesses0());
        return children.toArray();
    }

    public IDebugTarget getDebugTarget() {
        if (!this.getDebugTargets0().isEmpty()) {
            return (IDebugTarget)this.getDebugTargets0().get(0);
        }
        return null;
    }

    public IProcess[] getProcesses() {
        return this.getProcesses0().toArray(new IProcess[this.getProcesses0().size()]);
    }

    protected List getProcesses0() {
        return this.fProcesses;
    }

    public ISourceLocator getSourceLocator() {
        return this.fLocator;
    }

    public void setSourceLocator(ISourceLocator sourceLocator) {
        this.fLocator = sourceLocator;
    }

    public boolean isTerminated() {
        if (this.getProcesses0().isEmpty() && this.getDebugTargets0().isEmpty()) {
            return false;
        }
        Iterator processes = this.getProcesses0().iterator();
        while (processes.hasNext()) {
            IProcess process = (IProcess)processes.next();
            if (process.isTerminated()) continue;
            return false;
        }
        Iterator targets = this.getDebugTargets0().iterator();
        while (targets.hasNext()) {
            IDebugTarget target = (IDebugTarget)targets.next();
            if (target.isTerminated() || target.isDisconnected()) continue;
            return false;
        }
        return true;
    }

    public void terminate() throws DebugException {
        MultiStatus status = new MultiStatus(DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.Launch_terminate_failed, null);
        IDebugTarget[] targets = this.getDebugTargets();
        int i = 0;
        while (i < targets.length) {
            IDebugTarget target = targets[i];
            if (target != null) {
                if (target.canTerminate()) {
                    try {
                        target.terminate();
                    }
                    catch (DebugException e) {
                        status.merge(e.getStatus());
                    }
                } else if (target.canDisconnect()) {
                    try {
                        target.disconnect();
                    }
                    catch (DebugException de) {
                        status.merge(de.getStatus());
                    }
                }
            }
            ++i;
        }
        IProcess[] processes = this.getProcesses();
        int i2 = 0;
        while (i2 < processes.length) {
            IProcess process = processes[i2];
            if (process.canTerminate()) {
                try {
                    process.terminate();
                }
                catch (DebugException e) {
                    status.merge(e.getStatus());
                }
            }
            ++i2;
        }
        if (status.isOK()) {
            return;
        }
        IStatus[] children = status.getChildren();
        if (children.length == 1) {
            throw new DebugException(children[0]);
        }
        throw new DebugException((IStatus)status);
    }

    public String getLaunchMode() {
        return this.fMode;
    }

    public ILaunchConfiguration getLaunchConfiguration() {
        return this.fConfiguration;
    }

    public void setAttribute(String key, String value) {
        if (this.fAttributes == null) {
            this.fAttributes = new HashMap(5);
        }
        this.fAttributes.put(key, value);
    }

    public String getAttribute(String key) {
        if (this.fAttributes == null) {
            return null;
        }
        return (String)this.fAttributes.get(key);
    }

    public IDebugTarget[] getDebugTargets() {
        return this.fTargets.toArray(new IDebugTarget[this.fTargets.size()]);
    }

    protected List getDebugTargets0() {
        return this.fTargets;
    }

    public void addDebugTarget(IDebugTarget target) {
        if (target != null && !this.getDebugTargets0().contains(target)) {
            this.addEventListener();
            this.getDebugTargets0().add(target);
            this.fireChanged();
        }
    }

    public void removeDebugTarget(IDebugTarget target) {
        if (target != null && this.getDebugTargets0().remove(target)) {
            this.fireChanged();
        }
    }

    public void addProcess(IProcess process) {
        if (process != null && !this.getProcesses0().contains(process)) {
            this.addEventListener();
            this.getProcesses0().add(process);
            this.fireChanged();
        }
    }

    public void removeProcess(IProcess process) {
        if (process != null && this.getProcesses0().remove(process)) {
            this.fireChanged();
        }
    }

    protected void addProcesses(IProcess[] processes) {
        if (processes != null) {
            int i = 0;
            while (i < processes.length) {
                this.addProcess(processes[i]);
                this.fireChanged();
                ++i;
            }
        }
    }

    protected void fireChanged() {
        if (!this.fSuppressChange) {
            ((LaunchManager)this.getLaunchManager()).fireUpdate(this, 2);
            ((LaunchManager)this.getLaunchManager()).fireUpdate(new ILaunch[]{this}, 2);
        }
    }

    protected void fireTerminate() {
        if (!this.fSuppressChange) {
            ((LaunchManager)this.getLaunchManager()).fireUpdate(this, 3);
            ((LaunchManager)this.getLaunchManager()).fireUpdate(new ILaunch[]{this}, 3);
        }
        this.removeEventListener();
    }

    public boolean hasChildren() {
        return this.getProcesses0().size() > 0 || this.getDebugTargets0().size() > 0;
    }

    public boolean canDisconnect() {
        List processes = this.getProcesses0();
        int i = 0;
        while (i < processes.size()) {
            IDisconnect process;
            if (processes.get(i) instanceof IDisconnect && (process = (IDisconnect)processes.get(i)).canDisconnect()) {
                return true;
            }
            ++i;
        }
        List targets = this.getDebugTargets0();
        int i2 = 0;
        while (i2 < targets.size()) {
            if (((IDebugTarget)targets.get(i2)).canDisconnect()) {
                return true;
            }
            ++i2;
        }
        return false;
    }

    public void disconnect() throws DebugException {
        List processes = this.getProcesses0();
        int i = 0;
        while (i < processes.size()) {
            IDisconnect disconnect;
            if (processes.get(i) instanceof IDisconnect && (disconnect = (IDisconnect)processes.get(i)).canDisconnect()) {
                disconnect.disconnect();
            }
            ++i;
        }
        List targets = this.getDebugTargets0();
        int i2 = 0;
        while (i2 < targets.size()) {
            IDebugTarget debugTarget = (IDebugTarget)targets.get(i2);
            if (debugTarget.canDisconnect()) {
                debugTarget.disconnect();
            }
            ++i2;
        }
    }

    public boolean isDisconnected() {
        List processes = this.getProcesses0();
        int i = 0;
        while (i < processes.size()) {
            IDisconnect process;
            if (processes.get(i) instanceof IDisconnect && !(process = (IDisconnect)processes.get(i)).isDisconnected()) {
                return false;
            }
            ++i;
        }
        List targets = this.getDebugTargets0();
        int i2 = 0;
        while (i2 < targets.size()) {
            if (!((IDebugTarget)targets.get(i2)).isDisconnected()) {
                return false;
            }
            ++i2;
        }
        return this.hasChildren();
    }

    public void launchRemoved(ILaunch launch) {
        if (this.equals(launch)) {
            this.removeEventListener();
            this.getLaunchManager().removeLaunchListener(this);
            this.getLaunchManager().removeLaunchConfigurationListener(this);
        }
    }

    protected ILaunchManager getLaunchManager() {
        return DebugPlugin.getDefault().getLaunchManager();
    }

    public void launchAdded(ILaunch launch) {
    }

    public void launchChanged(ILaunch launch) {
    }

    public void launchConfigurationAdded(ILaunchConfiguration configuration) {
        ILaunchConfiguration from = this.getLaunchManager().getMovedFrom(configuration);
        if (from != null && from.equals(this.getLaunchConfiguration())) {
            this.fConfiguration = configuration;
            this.fireChanged();
        }
    }

    public void launchConfigurationChanged(ILaunchConfiguration configuration) {
    }

    public void launchConfigurationRemoved(ILaunchConfiguration configuration) {
        if (configuration.equals(this.getLaunchConfiguration()) && this.getLaunchManager().getMovedTo(configuration) == null) {
            this.fConfiguration = null;
            this.fireChanged();
        }
    }

    public void handleDebugEvents(DebugEvent[] events) {
        int i = 0;
        while (i < events.length) {
            DebugEvent event = events[i];
            if (event.getKind() == 8) {
                Object object = event.getSource();
                ILaunch launch = null;
                if (object instanceof IProcess) {
                    launch = ((IProcess)object).getLaunch();
                } else if (object instanceof IDebugTarget) {
                    launch = ((IDebugTarget)object).getLaunch();
                }
                if (this.equals(launch) && this.isTerminated()) {
                    this.fireTerminate();
                }
            }
            ++i;
        }
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.ILaunch");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz)) {
            return this;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.debug.core.ILaunchConfiguration");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter.equals(clazz2)) {
            return this.getLaunchConfiguration();
        }
        return super.getAdapter(adapter);
    }
}

