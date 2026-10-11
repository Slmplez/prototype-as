/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IDebugEventSetListener
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IProcess
 */
package org.eclipse.jdt.internal.launching;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IJavaLaunchConfigurationConstants;
import org.eclipse.jdt.launching.JavaLaunchDelegate;
import org.eclipse.jdt.launching.JavaRuntime;

public class JavaAppletLaunchConfigurationDelegate
extends JavaLaunchDelegate
implements IDebugEventSetListener {
    private static Map fgLaunchToFileMap = new HashMap();
    private ILaunch fLaunch;

    public synchronized void launch(ILaunchConfiguration configuration, String mode, ILaunch launch, IProgressMonitor monitor) throws CoreException {
        try {
            this.fLaunch = launch;
            super.launch(configuration, mode, launch, monitor);
        }
        catch (CoreException e) {
            this.cleanup(launch);
            throw e;
        }
        this.fLaunch = null;
    }

    public String getJavaPolicyFile(File workingDir) {
        File file = new File(workingDir, "java.policy.applet");
        if (!file.exists()) {
            File test = LaunchingPlugin.getFileInPlugin((IPath)new Path("java.policy.applet"));
            FilterOutputStream outputStream = null;
            try {
                try {
                    byte[] bytes = JavaAppletLaunchConfigurationDelegate.getFileByteContent(test);
                    outputStream = new BufferedOutputStream(new FileOutputStream(file));
                    outputStream.write(bytes);
                }
                catch (IOException iOException) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        }
                        catch (IOException iOException2) {}
                    }
                    return "";
                }
            }
            catch (Throwable throwable) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                }
                catch (IOException iOException) {}
            }
        }
        return "-Djava.security.policy=java.policy.applet";
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private File buildHTMLFile(ILaunchConfiguration configuration, File dir) {
        OutputStreamWriter writer = null;
        File tempFile = null;
        try {
            String name = this.getAppletMainTypeName(configuration);
            tempFile = new File(dir, String.valueOf(name) + System.currentTimeMillis() + ".html");
            writer = new FileWriter(tempFile);
            writer.write("<html>\n");
            writer.write("<body>\n");
            writer.write("<applet code=");
            writer.write(name);
            writer.write(".class ");
            String appletName = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_APPLET_NAME, "");
            if (appletName.length() != 0) {
                writer.write("NAME =\"" + appletName + "\" ");
            }
            writer.write("width=\"");
            writer.write(Integer.toString(configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_APPLET_WIDTH, 200)));
            writer.write("\" height=\"");
            writer.write(Integer.toString(configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_APPLET_HEIGHT, 200)));
            writer.write("\" >\n");
            Map parameters = configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_APPLET_PARAMETERS, new HashMap());
            if (parameters.size() != 0) {
                Iterator iterator = parameters.entrySet().iterator();
                while (iterator.hasNext()) {
                    Map.Entry next = iterator.next();
                    writer.write("<param name=");
                    writer.write(this.getQuotedString((String)next.getKey()));
                    writer.write(" value=");
                    writer.write(this.getQuotedString((String)next.getValue()));
                    writer.write(">\n");
                }
            }
            writer.write("</applet>\n");
            writer.write("</body>\n");
            writer.write("</html>\n");
        }
        catch (IOException iOException) {
            if (writer == null) return tempFile;
            try {
                writer.close();
                return tempFile;
            }
            catch (IOException iOException2) {}
            return tempFile;
        }
        catch (CoreException coreException) {
            try {
                if (writer == null) return tempFile;
            }
            catch (Throwable throwable) {
                if (writer == null) throw throwable;
                try {
                    writer.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                writer.close();
                return tempFile;
            }
            catch (IOException iOException) {}
            return tempFile;
        }
        if (writer == null) return tempFile;
        try {
            writer.close();
            return tempFile;
        }
        catch (IOException iOException) {}
        return tempFile;
    }

    private String getQuotedString(String string) {
        if (string.indexOf(34) == -1) {
            return String.valueOf('\"') + string + '\"';
        }
        return String.valueOf('\'') + string + '\'';
    }

    public void handleDebugEvents(DebugEvent[] events) {
        int i = 0;
        while (i < events.length) {
            DebugEvent event = events[i];
            Object eventSource = event.getSource();
            switch (event.getKind()) {
                case 8: {
                    if (eventSource == null) break;
                    ILaunch launch = null;
                    if (eventSource instanceof IProcess) {
                        IProcess process = (IProcess)eventSource;
                        launch = process.getLaunch();
                    } else if (eventSource instanceof IDebugTarget) {
                        IDebugTarget debugTarget = (IDebugTarget)eventSource;
                        launch = debugTarget.getLaunch();
                    }
                    if (launch == null) break;
                    this.cleanup(launch);
                }
            }
            ++i;
        }
    }

    private void cleanup(ILaunch launch) {
        File temp = (File)fgLaunchToFileMap.get(launch);
        if (temp != null) {
            try {
                fgLaunchToFileMap.remove(launch);
                temp.delete();
            }
            finally {
                if (fgLaunchToFileMap.isEmpty()) {
                    DebugPlugin.getDefault().removeDebugEventListener((IDebugEventSetListener)this);
                }
            }
        }
    }

    protected static byte[] getFileByteContent(File file) throws IOException {
        byte[] byArray;
        block7: {
            InputStream stream = null;
            try {
                stream = new BufferedInputStream(new FileInputStream(file));
                byArray = JavaAppletLaunchConfigurationDelegate.getInputStreamAsByteArray(stream, (int)file.length());
                if (stream == null) break block7;
            }
            catch (Throwable throwable) {
                if (stream != null) {
                    try {
                        stream.close();
                    }
                    catch (IOException iOException) {}
                }
                throw throwable;
            }
            try {
                stream.close();
            }
            catch (IOException iOException) {}
        }
        return byArray;
    }

    protected static byte[] getInputStreamAsByteArray(InputStream stream, int length) throws IOException {
        byte[] contents;
        if (length == -1) {
            contents = new byte[]{};
            int contentsLength = 0;
            int bytesRead = -1;
            do {
                int available;
                if (contentsLength + (available = stream.available()) > contents.length) {
                    byte[] byArray = contents;
                    contents = new byte[contentsLength + available];
                    System.arraycopy(byArray, 0, contents, 0, contentsLength);
                }
                if ((bytesRead = stream.read(contents, contentsLength, available)) <= 0) continue;
                contentsLength += bytesRead;
            } while (bytesRead > 0);
            if (contentsLength < contents.length) {
                byte[] byArray = contents;
                contents = new byte[contentsLength];
                System.arraycopy(byArray, 0, contents, 0, contentsLength);
            }
        } else {
            contents = new byte[length];
            int len = 0;
            int readSize = 0;
            while (readSize != -1 && len != length) {
                readSize = stream.read(contents, len += readSize, length - len);
            }
        }
        return contents;
    }

    public String getProgramArguments(ILaunchConfiguration configuration) throws CoreException {
        File workingDir = this.verifyWorkingDirectory(configuration);
        File htmlFile = this.buildHTMLFile(configuration, workingDir);
        if (htmlFile == null) {
            this.abort(LaunchingMessages.JavaAppletLaunchConfigurationDelegate_Could_not_build_HTML_file_for_applet_launch_1, null, 123);
        }
        if (fgLaunchToFileMap.isEmpty()) {
            DebugPlugin.getDefault().addDebugEventListener((IDebugEventSetListener)this);
        }
        fgLaunchToFileMap.put(this.fLaunch, htmlFile);
        return htmlFile.getName();
    }

    public String getVMArguments(ILaunchConfiguration configuration) throws CoreException {
        StringBuffer arguments = new StringBuffer(super.getVMArguments(configuration));
        File workingDir = this.verifyWorkingDirectory(configuration);
        String javaPolicyFile = this.getJavaPolicyFile(workingDir);
        arguments.append(" ");
        arguments.append(javaPolicyFile);
        return arguments.toString();
    }

    public String getMainTypeName(ILaunchConfiguration configuration) throws CoreException {
        return configuration.getAttribute(IJavaLaunchConfigurationConstants.ATTR_APPLET_APPLETVIEWER_CLASS, "sun.applet.AppletViewer");
    }

    protected String getAppletMainTypeName(ILaunchConfiguration configuration) throws CoreException {
        return super.getMainTypeName(configuration);
    }

    protected File getDefaultWorkingDirectory(ILaunchConfiguration configuration) throws CoreException {
        String outputDir = JavaRuntime.getProjectOutputDirectory(configuration);
        if (outputDir == null) {
            return new File(System.getProperty("user.dir"));
        }
        IResource resource = ResourcesPlugin.getWorkspace().getRoot().findMember(outputDir);
        if (resource == null || !resource.exists()) {
            return new File(System.getProperty("user.dir"));
        }
        return resource.getLocation().toFile();
    }
}

