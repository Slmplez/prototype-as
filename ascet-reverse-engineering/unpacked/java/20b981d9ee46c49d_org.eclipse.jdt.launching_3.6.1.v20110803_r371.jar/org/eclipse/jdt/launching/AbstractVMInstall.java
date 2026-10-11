/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.Launch
 *  org.eclipse.debug.core.model.IProcess
 *  org.eclipse.debug.core.model.IStreamsProxy
 */
package org.eclipse.jdt.launching;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.Launch;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IStreamsProxy;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.ExecutionArguments;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstall2;
import org.eclipse.jdt.launching.IVMInstall3;
import org.eclipse.jdt.launching.IVMInstallChangedListener;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.IVMRunner;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.PropertyChangeEvent;
import org.eclipse.jdt.launching.VMRunnerConfiguration;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public abstract class AbstractVMInstall
implements IVMInstall,
IVMInstall2,
IVMInstall3 {
    private IVMInstallType fType;
    private String fId;
    private String fName;
    private File fInstallLocation;
    private LibraryLocation[] fSystemLibraryDescriptions;
    private URL fJavadocLocation;
    private String fVMArgs;
    private Map fAttributeMap = new HashMap();
    private static final String PREF_VM_INSTALL_SYSTEM_PROPERTY = "PREF_VM_INSTALL_SYSTEM_PROPERTY";
    private boolean fNotify = true;

    public AbstractVMInstall(IVMInstallType type, String id) {
        if (type == null) {
            throw new IllegalArgumentException(LaunchingMessages.vmInstall_assert_typeNotNull);
        }
        if (id == null) {
            throw new IllegalArgumentException(LaunchingMessages.vmInstall_assert_idNotNull);
        }
        this.fType = type;
        this.fId = id;
    }

    public String getId() {
        return this.fId;
    }

    public String getName() {
        return this.fName;
    }

    public void setName(String name) {
        if (!name.equals(this.fName)) {
            PropertyChangeEvent event = new PropertyChangeEvent(this, IVMInstallChangedListener.PROPERTY_NAME, this.fName, name);
            this.fName = name;
            if (this.fNotify) {
                JavaRuntime.fireVMChanged(event);
            }
        }
    }

    public File getInstallLocation() {
        return this.fInstallLocation;
    }

    public void setInstallLocation(File installLocation) {
        if (!installLocation.equals(this.fInstallLocation)) {
            PropertyChangeEvent event = new PropertyChangeEvent(this, IVMInstallChangedListener.PROPERTY_INSTALL_LOCATION, this.fInstallLocation, installLocation);
            this.fInstallLocation = installLocation;
            if (this.fNotify) {
                JavaRuntime.fireVMChanged(event);
            }
        }
    }

    public IVMInstallType getVMInstallType() {
        return this.fType;
    }

    public IVMRunner getVMRunner(String mode) {
        return null;
    }

    public LibraryLocation[] getLibraryLocations() {
        return this.fSystemLibraryDescriptions;
    }

    public void setLibraryLocations(LibraryLocation[] locations) {
        LibraryLocation[] prevLocations;
        if (locations == this.fSystemLibraryDescriptions) {
            return;
        }
        LibraryLocation[] newLocations = locations;
        if (newLocations == null) {
            newLocations = this.getVMInstallType().getDefaultLibraryLocations(this.getInstallLocation());
        }
        if ((prevLocations = this.fSystemLibraryDescriptions) == null) {
            prevLocations = this.getVMInstallType().getDefaultLibraryLocations(this.getInstallLocation());
        }
        if (newLocations.length == prevLocations.length) {
            int i = 0;
            boolean equal = true;
            while (i < newLocations.length && equal) {
                equal = newLocations[i].equals(prevLocations[i]);
                ++i;
            }
            if (equal) {
                return;
            }
        }
        PropertyChangeEvent event = new PropertyChangeEvent(this, IVMInstallChangedListener.PROPERTY_LIBRARY_LOCATIONS, prevLocations, newLocations);
        this.fSystemLibraryDescriptions = locations;
        if (this.fNotify) {
            JavaRuntime.fireVMChanged(event);
        }
    }

    public URL getJavadocLocation() {
        return this.fJavadocLocation;
    }

    public void setJavadocLocation(URL url) {
        if (url == this.fJavadocLocation) {
            return;
        }
        if (url != null && this.fJavadocLocation != null && url.toExternalForm().equals(this.fJavadocLocation.toExternalForm())) {
            return;
        }
        PropertyChangeEvent event = new PropertyChangeEvent(this, IVMInstallChangedListener.PROPERTY_JAVADOC_LOCATION, this.fJavadocLocation, url);
        this.fJavadocLocation = url;
        if (this.fNotify) {
            JavaRuntime.fireVMChanged(event);
        }
    }

    protected void setNotify(boolean notify) {
        this.fNotify = notify;
    }

    public boolean equals(Object object) {
        if (object instanceof IVMInstall) {
            IVMInstall vm = (IVMInstall)object;
            return this.getVMInstallType().equals(vm.getVMInstallType()) && this.getId().equals(vm.getId());
        }
        return false;
    }

    public int hashCode() {
        return this.getVMInstallType().hashCode() + this.getId().hashCode();
    }

    public String[] getVMArguments() {
        String args = this.getVMArgs();
        if (args == null) {
            return null;
        }
        ExecutionArguments ex = new ExecutionArguments(args, "");
        return ex.getVMArgumentsArray();
    }

    public void setVMArguments(String[] vmArgs) {
        if (vmArgs == null) {
            this.setVMArgs(null);
        } else {
            StringBuffer buf = new StringBuffer();
            int i = 0;
            while (i < vmArgs.length) {
                String string = vmArgs[i];
                buf.append(string);
                buf.append(" ");
                ++i;
            }
            this.setVMArgs(buf.toString().trim());
        }
    }

    public String getVMArgs() {
        return this.fVMArgs;
    }

    public void setVMArgs(String vmArgs) {
        if (this.fVMArgs == null ? vmArgs == null : this.fVMArgs.equals(vmArgs)) {
            return;
        }
        PropertyChangeEvent event = new PropertyChangeEvent(this, IVMInstallChangedListener.PROPERTY_VM_ARGUMENTS, this.fVMArgs, vmArgs);
        this.fVMArgs = vmArgs;
        if (this.fNotify) {
            JavaRuntime.fireVMChanged(event);
        }
    }

    public String getJavaVersion() {
        return null;
    }

    public Map evaluateSystemProperties(String[] properties, IProgressMonitor monitor) throws CoreException {
        String value;
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        HashMap<String, String> map = new HashMap<String, String>();
        Preferences preferences = JavaRuntime.getPreferences();
        boolean cached = true;
        int i = 0;
        while (i < properties.length) {
            String property = properties[i];
            String key = this.getSystemPropertyKey(property);
            if (!preferences.contains(key)) {
                map.clear();
                cached = false;
                break;
            }
            value = preferences.getString(key);
            map.put(property, value);
            ++i;
        }
        if (!cached) {
            File file = LaunchingPlugin.getFileInPlugin((IPath)new Path("lib/launchingsupport.jar"));
            if (file != null && file.exists()) {
                String javaVersion = this.getJavaVersion();
                boolean hasXMLSupport = false;
                if (javaVersion != null) {
                    hasXMLSupport = true;
                    if (javaVersion.startsWith("1.1") || javaVersion.startsWith("1.2") || javaVersion.startsWith("1.3")) {
                        hasXMLSupport = false;
                    }
                }
                String mainType = null;
                mainType = hasXMLSupport ? "org.eclipse.jdt.internal.launching.support.SystemProperties" : "org.eclipse.jdt.internal.launching.support.LegacySystemProperties";
                VMRunnerConfiguration config = new VMRunnerConfiguration(mainType, new String[]{file.getAbsolutePath()});
                IVMRunner runner = this.getVMRunner("run");
                if (runner == null) {
                    this.abort(LaunchingMessages.AbstractVMInstall_0, null, 150);
                }
                config.setProgramArguments(properties);
                Launch launch = new Launch(null, "run", null);
                if (monitor.isCanceled()) {
                    return map;
                }
                monitor.beginTask(LaunchingMessages.AbstractVMInstall_1, 2);
                runner.run(config, (ILaunch)launch, monitor);
                IProcess[] processes = launch.getProcesses();
                if (processes.length != 1) {
                    this.abort(LaunchingMessages.AbstractVMInstall_0, null, 150);
                }
                IProcess process = processes[0];
                try {
                    int total = 0;
                    int max = Platform.getPreferencesService().getInt("org.eclipse.jdt.launching", JavaRuntime.PREF_CONNECT_TIMEOUT, 20000, null);
                    while (!process.isTerminated()) {
                        try {
                            if (total <= max) {
                                Thread.sleep(50L);
                                total += 50;
                                continue;
                            }
                            break;
                        }
                        catch (InterruptedException interruptedException) {}
                    }
                }
                finally {
                    if (!launch.isTerminated()) {
                        launch.terminate();
                    }
                }
                monitor.worked(1);
                if (monitor.isCanceled()) {
                    return map;
                }
                monitor.subTask(LaunchingMessages.AbstractVMInstall_3);
                IStreamsProxy streamsProxy = process.getStreamsProxy();
                String text = null;
                if (streamsProxy != null) {
                    text = streamsProxy.getOutputStreamMonitor().getContents();
                }
                if (text != null && text.length() > 0) {
                    try {
                        DocumentBuilder parser = LaunchingPlugin.getParser();
                        Document document = parser.parse(new ByteArrayInputStream(text.getBytes()));
                        Element envs = document.getDocumentElement();
                        NodeList list = envs.getChildNodes();
                        int length = list.getLength();
                        int i2 = 0;
                        while (i2 < length) {
                            Element element;
                            Node node = list.item(i2);
                            short type = node.getNodeType();
                            if (type == 1 && (element = (Element)node).getNodeName().equals("property")) {
                                String name = element.getAttribute("name");
                                String value2 = element.getAttribute("value");
                                map.put(name, value2);
                            }
                            ++i2;
                        }
                    }
                    catch (SAXException e) {
                        this.abort(LaunchingMessages.AbstractVMInstall_4, e, 150);
                    }
                    catch (IOException e) {
                        this.abort(LaunchingMessages.AbstractVMInstall_4, e, 150);
                    }
                } else {
                    this.abort(LaunchingMessages.AbstractVMInstall_0, null, 150);
                }
                monitor.worked(1);
            } else {
                this.abort(LaunchingMessages.AbstractVMInstall_0, null, 150);
            }
            Iterator keys = map.keySet().iterator();
            while (keys.hasNext()) {
                String property = (String)keys.next();
                value = (String)map.get(property);
                String key = this.getSystemPropertyKey(property);
                preferences.setValue(key, value);
            }
        }
        monitor.done();
        return map;
    }

    private String getSystemPropertyKey(String property) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(PREF_VM_INSTALL_SYSTEM_PROPERTY);
        buffer.append(".");
        buffer.append(this.getVMInstallType().getId());
        buffer.append(".");
        buffer.append(this.getId());
        buffer.append(".");
        buffer.append(property);
        return buffer.toString();
    }

    protected void abort(String message, Throwable exception, int code) throws CoreException {
        throw new CoreException((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), code, message, exception));
    }

    public void setAttribute(String key, String value) {
        String prevValue = (String)this.fAttributeMap.remove(key);
        boolean notify = false;
        if (value == null) {
            if (prevValue != null && this.fNotify) {
                notify = true;
            }
        } else {
            this.fAttributeMap.put(key, value);
            if (this.fNotify && (prevValue == null || !prevValue.equals(value))) {
                notify = true;
            }
        }
        if (notify) {
            PropertyChangeEvent event = new PropertyChangeEvent(this, key, prevValue, value);
            JavaRuntime.fireVMChanged(event);
        }
    }

    public String getAttribute(String key) {
        return (String)this.fAttributeMap.get(key);
    }

    public Map getAttributes() {
        return new HashMap(this.fAttributeMap);
    }
}

