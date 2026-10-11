/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import org.eclipse.osgi.framework.console.CommandProvider;
import org.eclipse.osgi.framework.console.ConsoleSession;
import org.eclipse.osgi.framework.internal.core.ConsoleMsg;
import org.eclipse.osgi.framework.internal.core.FrameworkCommandInterpreter;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.internal.core.Util;
import org.osgi.framework.BundleContext;
import org.osgi.util.tracker.ServiceTracker;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameworkConsole
implements Runnable {
    private final BufferedReader in;
    private final PrintWriter out;
    private final BundleContext context;
    private final ServiceTracker<CommandProvider, CommandProvider> cptracker;
    private final ConsoleSession consoleSession;
    private final boolean isSystemInOut;
    static final String defaultEncoding = "iso8859-1";
    static final String encoding = FrameworkProperties.getProperty("osgi.console.encoding", FrameworkProperties.getProperty("file.encoding", "iso8859-1"));
    private static final boolean blockOnready = FrameworkProperties.getProperty("osgi.dev") != null || FrameworkProperties.getProperty("osgi.console.blockOnReady") != null;
    volatile boolean shutdown = false;

    public FrameworkConsole(BundleContext context, ConsoleSession consoleSession, boolean isSystemInOut, ServiceTracker<CommandProvider, CommandProvider> cptracker) {
        this.context = context;
        this.cptracker = cptracker;
        this.isSystemInOut = isSystemInOut;
        this.consoleSession = consoleSession;
        this.in = FrameworkConsole.createBufferedReader(consoleSession.getInput());
        this.out = FrameworkConsole.createPrintWriter(consoleSession.getOutput());
    }

    static BufferedReader createBufferedReader(InputStream _in) {
        BufferedReader reader;
        try {
            reader = new BufferedReader(new InputStreamReader(_in, encoding));
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            reader = new BufferedReader(new InputStreamReader(_in));
        }
        return reader;
    }

    static PrintWriter createPrintWriter(OutputStream _out) {
        PrintWriter writer;
        try {
            writer = new PrintWriter(new BufferedWriter(new OutputStreamWriter(_out, encoding)), true);
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            writer = new PrintWriter(new BufferedWriter(new OutputStreamWriter(_out)), true);
        }
        return writer;
    }

    public PrintWriter getWriter() {
        return this.out;
    }

    @Override
    public void run() {
        try {
            this.runConsole();
        }
        finally {
            this.shutdown();
        }
    }

    private void runConsole() {
        String consolePrompt = new StringBuffer("\r\n").append(ConsoleMsg.CONSOLE_PROMPT).toString();
        while (!this.shutdown) {
            String cmdline;
            block8: {
                this.out.print(consolePrompt);
                this.out.flush();
                cmdline = null;
                try {
                    if (blockOnready && this.isSystemInOut) {
                        try {
                            while (!this.in.ready()) {
                                Thread.sleep(300L);
                            }
                            cmdline = this.in.readLine();
                        }
                        catch (InterruptedException interruptedException) {}
                    } else {
                        cmdline = this.in.readLine();
                    }
                }
                catch (IOException ioe) {
                    if (this.shutdown) break block8;
                    ioe.printStackTrace(this.out);
                }
            }
            if (cmdline == null) break;
            if (this.shutdown) continue;
            this.docommand(cmdline);
        }
    }

    protected void docommand(String cmdline) {
        FrameworkCommandInterpreter intcp;
        String command;
        if (cmdline != null && cmdline.length() > 0 && (command = (intcp = new FrameworkCommandInterpreter(cmdline, this.getServices(), this)).nextArgument()) != null) {
            intcp.execute(command);
        }
    }

    public String getInput() {
        String input;
        try {
            input = this.in.readLine();
            System.out.println(new StringBuffer("<").append(input).append(">").toString());
        }
        catch (IOException iOException) {
            input = "";
        }
        return input;
    }

    public CommandProvider[] getServices() {
        Object[] serviceRefs = this.cptracker.getServiceReferences();
        if (serviceRefs == null) {
            return new CommandProvider[0];
        }
        Util.dsort(serviceRefs, 0, serviceRefs.length);
        CommandProvider[] serviceObjects = new CommandProvider[serviceRefs.length];
        int i = 0;
        while (i < serviceRefs.length) {
            serviceObjects[i] = (CommandProvider)this.context.getService(serviceRefs[i]);
            ++i;
        }
        return serviceObjects;
    }

    public synchronized void shutdown() {
        if (this.shutdown) {
            return;
        }
        this.shutdown = true;
        this.consoleSession.close();
    }
}

