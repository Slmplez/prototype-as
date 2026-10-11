/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.Launch
 *  org.eclipse.debug.core.model.IProcess
 *  org.eclipse.debug.core.model.IStreamsProxy
 */
package org.eclipse.jdt.internal.launching;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.Launch;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IStreamsProxy;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.internal.launching.PListParser;

public class MacInstalledJREs {
    private static final String JAVA_HOME_PLIST = "/usr/libexec/java_home";
    private static final String PLIST_JVM_HOME_PATH = "JVMHomePath";
    private static final String PLIST_JVM_NAME = "JVMName";
    private static final String PLIST_JVM_VERSION = "JVMVersion";

    public JREDescriptor[] getInstalledJREs() throws CoreException {
        File java_home = new File(JAVA_HOME_PLIST);
        if (!java_home.exists()) {
            throw new CoreException((IStatus)new Status(2, LaunchingPlugin.getUniqueIdentifier(), "The java_home executable does not exist"));
        }
        String[] cmdLine = new String[]{JAVA_HOME_PLIST, "-X"};
        Process p = null;
        try {
            p = DebugPlugin.exec((String[])cmdLine, null);
            IProcess process = DebugPlugin.newProcess((ILaunch)new Launch(null, "run", null), (Process)p, (String)"JRE Install Detection");
            int i = 0;
            while (i < 600) {
                if (process.isTerminated()) break;
                try {
                    Thread.sleep(50L);
                }
                catch (InterruptedException interruptedException) {}
                ++i;
            }
            JREDescriptor[] jREDescriptorArray = this.parseJREInfo(process);
            return jREDescriptorArray;
        }
        finally {
            if (p != null) {
                p.destroy();
            }
        }
    }

    private JREDescriptor[] parseJREInfo(IProcess process) throws CoreException {
        IStreamsProxy streamsProxy = process.getStreamsProxy();
        String text = null;
        if (streamsProxy != null) {
            text = streamsProxy.getOutputStreamMonitor().getContents();
        }
        if (text != null && text.length() > 0) {
            ByteArrayInputStream stream = new ByteArrayInputStream(text.getBytes());
            Object result = new PListParser().parse(stream);
            if (result instanceof Object[]) {
                Object[] maps = (Object[])result;
                ArrayList<JREDescriptor> jres = new ArrayList<JREDescriptor>();
                int i = 0;
                while (i < maps.length) {
                    Object object = maps[i];
                    if (object instanceof Map) {
                        Map map = (Map)object;
                        Object home = map.get(PLIST_JVM_HOME_PATH);
                        Object name = map.get(PLIST_JVM_NAME);
                        Object version = map.get(PLIST_JVM_VERSION);
                        if (home instanceof String && name instanceof String && version instanceof String) {
                            JREDescriptor descriptor = new JREDescriptor(new File((String)home), (String)name, (String)version);
                            if (!jres.contains(descriptor)) {
                                jres.add(descriptor);
                            }
                        } else {
                            this.unexpectedFormat();
                        }
                    } else {
                        this.unexpectedFormat();
                    }
                    ++i;
                }
                return jres.toArray(new JREDescriptor[jres.size()]);
            }
            this.unexpectedFormat();
        }
        this.unexpectedFormat();
        return null;
    }

    private void unexpectedFormat() throws CoreException {
        throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), "Output from java_home not in expected format"));
    }

    public class JREDescriptor {
        String fName;
        File fHome;
        String fVersion;

        public JREDescriptor(File home, String name, String version) {
            this.fHome = home;
            this.fName = name;
            this.fVersion = version;
        }

        public File getHome() {
            return this.fHome;
        }

        public String getName() {
            return this.fName;
        }

        public String getVersion() {
            return this.fVersion;
        }

        public boolean equals(Object obj) {
            if (obj instanceof JREDescriptor) {
                JREDescriptor jre = (JREDescriptor)obj;
                return jre.fHome.equals(this.fHome) && jre.fName.equals(this.fName) && jre.fVersion.equals(this.fVersion);
            }
            return false;
        }

        public int hashCode() {
            return this.fHome.hashCode() + this.fName.hashCode() + this.fVersion.hashCode();
        }
    }
}

