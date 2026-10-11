/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Dictionary;
import java.util.Hashtable;
import org.eclipse.osgi.framework.console.CommandProvider;
import org.eclipse.osgi.framework.console.ConsoleSession;
import org.eclipse.osgi.framework.internal.core.BundleContextImpl;
import org.eclipse.osgi.framework.internal.core.ConsoleMsg;
import org.eclipse.osgi.framework.internal.core.Framework;
import org.eclipse.osgi.framework.internal.core.FrameworkCommandProvider;
import org.eclipse.osgi.framework.internal.core.FrameworkConsole;
import org.eclipse.osgi.framework.internal.core.FrameworkConsoleSession;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConsoleManager
implements ServiceTrackerCustomizer<ConsoleSession, FrameworkConsole> {
    public static final String PROP_CONSOLE = "osgi.console";
    private static final String PROP_SYSTEM_IN_OUT = "console.systemInOut";
    private static final String CONSOLE_NAME = "OSGi Console";
    private static final String PROP_CONSOLE_ENABLED = "osgi.console.enable.builtin";
    private final Framework framework;
    private final ServiceTracker<CommandProvider, CommandProvider> cpTracker;
    private final ServiceTracker<ConsoleSession, FrameworkConsole> sessions;
    private final String consolePort;
    private final String consoleHost;
    private FrameworkCommandProvider fwkCommands;
    private ServiceRegistration<?> builtinSession;
    private ConsoleSocketGetter socketGetter;
    private final boolean isEnabled;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public ConsoleManager(Framework framework, String consolePropValue) {
        String port = null;
        String host = null;
        if (consolePropValue != null) {
            int index = consolePropValue.lastIndexOf(":");
            if (index > -1) {
                host = consolePropValue.substring(0, index);
            }
            port = consolePropValue.substring(index + 1);
        }
        if ("false".equals(FrameworkProperties.getProperty(PROP_CONSOLE_ENABLED)) || "none".equals(port)) {
            this.isEnabled = false;
            this.framework = null;
            this.cpTracker = null;
            this.sessions = null;
            this.consoleHost = null;
            this.consolePort = null;
            return;
        }
        this.isEnabled = true;
        this.framework = framework;
        this.consoleHost = host != null ? host.trim() : host;
        this.consolePort = port != null ? port.trim() : port;
        BundleContextImpl bundleContextImpl = framework.getSystemBundleContext();
        Class<?> clazz = class$1;
        if (clazz == null) {
            try {
                clazz = class$1 = Class.forName("org.eclipse.osgi.framework.console.CommandProvider");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.cpTracker = new ServiceTracker((BundleContext)bundleContextImpl, clazz.getName(), null);
        BundleContextImpl bundleContextImpl2 = framework.getSystemBundleContext();
        Class<?> clazz2 = class$0;
        if (clazz2 == null) {
            try {
                clazz2 = class$0 = Class.forName("org.eclipse.osgi.framework.console.ConsoleSession");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.sessions = new ServiceTracker<ConsoleSession, FrameworkConsole>((BundleContext)bundleContextImpl2, clazz2.getName(), this);
    }

    public static ConsoleManager startConsole(Framework framework) {
        ConsoleManager consoleManager = new ConsoleManager(framework, FrameworkProperties.getProperty(PROP_CONSOLE));
        consoleManager.startConsole();
        return consoleManager;
    }

    private void startConsole() {
        if (!this.isEnabled) {
            return;
        }
        this.cpTracker.open();
        this.sessions.open();
        this.fwkCommands = new FrameworkCommandProvider(this.framework);
        this.fwkCommands.start();
        if (this.consolePort == null) {
            return;
        }
        int port = -1;
        try {
            if (this.consolePort.length() > 0) {
                port = Integer.parseInt(this.consolePort);
            }
        }
        catch (NumberFormatException numberFormatException) {}
        if (port < 0) {
            FilterInputStream in = new FilterInputStream(System.in){

                public void close() throws IOException {
                }
            };
            FilterOutputStream out = new FilterOutputStream(System.out){

                public void close() throws IOException {
                }

                public void write(byte[] var0, int var1, int var2) throws IOException {
                    this.out.write(var0, var1, var2);
                }
            };
            FrameworkConsoleSession session = new FrameworkConsoleSession(in, out, null);
            Hashtable<String, Boolean> props = null;
            props = new Hashtable<String, Boolean>(1);
            ((Dictionary)props).put(PROP_SYSTEM_IN_OUT, Boolean.TRUE);
            BundleContextImpl bundleContextImpl = this.framework.getSystemBundleContext();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.osgi.framework.console.ConsoleSession");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.builtinSession = bundleContextImpl.registerService(clazz.getName(), (Object)session, props);
        } else {
            try {
                this.socketGetter = this.consoleHost != null ? new ConsoleSocketGetter(new ServerSocket(port, 0, InetAddress.getByName(this.consoleHost))) : new ConsoleSocketGetter(new ServerSocket(port));
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void stopConsole() {
        if (!this.isEnabled) {
            return;
        }
        if (this.builtinSession != null) {
            try {
                this.builtinSession.unregister();
            }
            catch (IllegalStateException illegalStateException) {}
        }
        this.sessions.close();
        this.cpTracker.close();
        if (this.socketGetter != null) {
            this.socketGetter.shutdown();
        }
        if (this.fwkCommands != null) {
            this.fwkCommands.stop();
        }
    }

    @Override
    public FrameworkConsole addingService(ServiceReference<ConsoleSession> reference) {
        FrameworkConsole console = null;
        Boolean isSystemInOut = (Boolean)reference.getProperty(PROP_SYSTEM_IN_OUT);
        if (isSystemInOut == null) {
            isSystemInOut = Boolean.FALSE;
        }
        ConsoleSession session = this.framework.getSystemBundleContext().getService(reference);
        console = new FrameworkConsole(this.framework.getSystemBundleContext(), session, isSystemInOut, this.cpTracker);
        Thread t = new Thread((Runnable)console, CONSOLE_NAME);
        t.setDaemon(false);
        t.start();
        return console;
    }

    @Override
    public void modifiedService(ServiceReference<ConsoleSession> reference, FrameworkConsole service) {
    }

    @Override
    public void removedService(ServiceReference<ConsoleSession> reference, FrameworkConsole service) {
        service.shutdown();
    }

    class ConsoleSocketGetter
    implements Runnable {
        private final ServerSocket server;
        private volatile boolean shutdown = false;

        ConsoleSocketGetter(ServerSocket server) {
            this.server = server;
            try {
                Method reuseAddress = server.getClass().getMethod("setReuseAddress", Boolean.TYPE);
                reuseAddress.invoke(server, Boolean.TRUE);
            }
            catch (Exception exception) {}
            Thread t = new Thread((Runnable)this, "ConsoleSocketGetter");
            t.setDaemon(false);
            t.start();
        }

        public void run() {
            System.out.println(NLS.bind(ConsoleMsg.CONSOLE_LISTENING_ON_PORT, String.valueOf(this.server.getInetAddress().toString()) + ':' + Integer.toString(this.server.getLocalPort())));
            while (!this.shutdown) {
                try {
                    Socket socket = this.server.accept();
                    if (socket == null) {
                        throw new IOException("No socket available.  Probably caused by a shutdown.");
                    }
                    FrameworkConsoleSession session = new FrameworkConsoleSession(socket.getInputStream(), socket.getOutputStream(), socket);
                    BundleContextImpl bundleContextImpl = ConsoleManager.this.framework.getSystemBundleContext();
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = Class.forName("org.eclipse.osgi.framework.console.ConsoleSession");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    bundleContextImpl.registerService(clazz.getName(), (Object)session, null);
                }
                catch (Exception e) {
                    if (this.shutdown) continue;
                    e.printStackTrace();
                }
            }
        }

        public void shutdown() {
            if (this.shutdown) {
                return;
            }
            this.shutdown = true;
            try {
                this.server.close();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}

