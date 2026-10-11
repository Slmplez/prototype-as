/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.commons.cli.CommandLine
 *  org.apache.commons.cli.CommandLineParser
 *  org.apache.commons.cli.GnuParser
 *  org.apache.commons.cli.HelpFormatter
 *  org.apache.commons.cli.Option
 *  org.apache.commons.cli.Options
 *  org.apache.commons.cli.ParseException
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 */
package org.eclipse.sphinx.platform.cli;

import java.util.Map;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.GnuParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;

public abstract class AbstractCLIApplication
implements IApplication {
    public static final Object ERROR_NO = 0;
    public static final Object ERROR_UNSPECIFIED = 1;
    private static final String OPTION_HELP_NAME = "help";
    private static final String OPTION_HELP_DESCRIPTION = "print help documentation";
    private String[] applicationArgs;
    private Options options = new Options();
    private CommandLineParser parser;
    private CommandLine commandLine = null;

    protected abstract String getApplicationName();

    protected String getApplicationDescription() {
        return null;
    }

    protected String[] getApplicationArgs() {
        return this.applicationArgs;
    }

    protected Options getOptions() {
        return this.options;
    }

    protected void addOption(Option option) {
        if (option != null) {
            this.options.addOption(option);
        }
    }

    protected CommandLine getCommandLine() {
        return this.commandLine;
    }

    public Object start(IApplicationContext context) {
        try {
            this.initApplicationArgs(context);
            this.defineOptions();
            this.parse();
            return this.interrogate();
        }
        catch (Throwable t) {
            return this.handleError(t);
        }
    }

    public void stop() {
    }

    private void initApplicationArgs(IApplicationContext context) {
        Map arguments = context.getArguments();
        Object applicationArgs = arguments.get("application.args");
        this.applicationArgs = applicationArgs instanceof String[] ? (String[])applicationArgs : new String[0];
    }

    protected void defineOptions() {
        this.addOption(new Option(OPTION_HELP_NAME, OPTION_HELP_DESCRIPTION));
    }

    protected void parse() throws ParseException {
        this.commandLine = this.getParser().parse(this.getOptions(), this.getApplicationArgs());
    }

    protected CommandLineParser getParser() {
        if (this.parser == null) {
            this.parser = this.createParser();
        }
        return this.parser;
    }

    protected CommandLineParser createParser() {
        return new GnuParser();
    }

    protected Object interrogate() throws Throwable {
        CommandLine commandLine = this.getCommandLine();
        if (commandLine.getOptions().length == 0 || commandLine.hasOption(OPTION_HELP_NAME)) {
            this.printHelp();
            throw new OperationCanceledException();
        }
        return ERROR_NO;
    }

    protected void printHelp() {
        String description = this.getApplicationDescription();
        if (description != null && description.length() > 0) {
            System.out.println(description);
            System.out.println();
        }
        HelpFormatter formatter = new HelpFormatter();
        formatter.printHelp(this.getApplicationName(), this.getOptions());
    }

    protected Object handleError(Throwable t) {
        if (t instanceof OperationCanceledException) {
            return ERROR_NO;
        }
        System.err.println(t.getMessage());
        return ERROR_UNSPECIFIED;
    }
}

