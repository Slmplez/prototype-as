/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.Document
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.core.formatter;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Map;
import java.util.Properties;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.jdt.core.ToolFactory;
import org.eclipse.jdt.core.formatter.CodeFormatter;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.IDocument;
import org.eclipse.osgi.util.NLS;
import org.eclipse.text.edits.TextEdit;

public class CodeFormatterApplication
implements IApplication {
    private static final String ARG_CONFIG = "-config";
    private static final String ARG_HELP = "-help";
    private static final String ARG_QUIET = "-quiet";
    private static final String ARG_VERBOSE = "-verbose";
    private String configName;
    private Map options = null;
    private static final String PDE_LAUNCH = "-pdelaunch";
    private boolean quiet = false;
    private boolean verbose = false;
    static /* synthetic */ Class class$0;

    private void displayHelp() {
        System.out.println(Messages.bind(Messages.CommandLineUsage));
    }

    private void displayHelp(String message) {
        System.err.println(message);
        System.out.println();
        this.displayHelp();
    }

    private void formatDirTree(File dir, CodeFormatter codeFormatter) {
        File[] files = dir.listFiles();
        if (files == null) {
            return;
        }
        int i = 0;
        while (i < files.length) {
            File file = files[i];
            if (file.isDirectory()) {
                this.formatDirTree(file, codeFormatter);
            } else if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(file.getPath())) {
                this.formatFile(file, codeFormatter);
            }
            ++i;
        }
    }

    private void formatFile(File file, CodeFormatter codeFormatter) {
        Document doc = new Document();
        try {
            if (this.verbose) {
                System.out.println(Messages.bind(Messages.CommandLineFormatting, file.getAbsolutePath()));
            }
            String contents = new String(Util.getFileCharContent(file, null));
            doc.set(contents);
            TextEdit edit = codeFormatter.format(4104, contents, 0, contents.length(), 0, null);
            if (edit == null) {
                System.err.println(Messages.bind(Messages.FormatProblem, file.getAbsolutePath()));
                return;
            }
            edit.apply((IDocument)doc);
            BufferedWriter out = new BufferedWriter(new FileWriter(file));
            try {
                out.write(doc.get());
                out.flush();
            }
            catch (Throwable throwable) {
                try {
                    out.close();
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                out.close();
            }
            catch (IOException iOException) {}
        }
        catch (IOException e) {
            String errorMessage = Messages.bind(Messages.CaughtException, "IOException", e.getLocalizedMessage());
            org.eclipse.jdt.internal.core.util.Util.log(e, errorMessage);
            System.err.println(Messages.bind(Messages.ExceptionSkip, errorMessage));
        }
        catch (BadLocationException e) {
            String errorMessage = Messages.bind(Messages.CaughtException, "BadLocationException", e.getLocalizedMessage());
            org.eclipse.jdt.internal.core.util.Util.log(e, errorMessage);
            System.err.println(Messages.bind(Messages.ExceptionSkip, errorMessage));
        }
    }

    private File[] processCommandLine(String[] argsArray) {
        ArrayList<String> args = new ArrayList<String>();
        int i = 0;
        int max = argsArray.length;
        while (i < max) {
            args.add(argsArray[i]);
            ++i;
        }
        int index = 0;
        int argCount = argsArray.length;
        int mode = 0;
        int fileCounter = 0;
        File[] filesToFormat = new File[1];
        block7: while (index < argCount) {
            String currentArg = argsArray[index++];
            switch (mode) {
                case 0: {
                    String canonicalPath;
                    if (PDE_LAUNCH.equals(currentArg)) continue block7;
                    if (ARG_HELP.equals(currentArg)) {
                        this.displayHelp();
                        return null;
                    }
                    if (ARG_VERBOSE.equals(currentArg)) {
                        this.verbose = true;
                        break;
                    }
                    if (ARG_QUIET.equals(currentArg)) {
                        this.quiet = true;
                        break;
                    }
                    if (ARG_CONFIG.equals(currentArg)) {
                        mode = 1;
                        break;
                    }
                    File file = new File(currentArg);
                    if (file.exists()) {
                        if (filesToFormat.length == fileCounter) {
                            File[] fileArray = filesToFormat;
                            filesToFormat = new File[fileCounter * 2];
                            System.arraycopy(fileArray, 0, filesToFormat, 0, fileCounter);
                        }
                        filesToFormat[fileCounter++] = file;
                        break;
                    }
                    try {
                        canonicalPath = file.getCanonicalPath();
                    }
                    catch (IOException iOException) {
                        canonicalPath = file.getAbsolutePath();
                    }
                    String errorMsg = file.isAbsolute() ? Messages.bind(Messages.CommandLineErrorFile, canonicalPath) : Messages.bind(Messages.CommandLineErrorFileTryFullPath, canonicalPath);
                    this.displayHelp(errorMsg);
                    return null;
                }
                case 1: {
                    this.configName = currentArg;
                    this.options = this.readConfig(currentArg);
                    if (this.options == null) {
                        this.displayHelp(Messages.bind(Messages.CommandLineErrorConfig, currentArg));
                        return null;
                    }
                    mode = 0;
                }
            }
        }
        if (mode == 1 || this.options == null) {
            this.displayHelp(Messages.bind(Messages.CommandLineErrorNoConfigFile));
            return null;
        }
        if (this.quiet && this.verbose) {
            this.displayHelp(Messages.bind(Messages.CommandLineErrorQuietVerbose, new String[]{ARG_QUIET, ARG_VERBOSE}));
            return null;
        }
        if (fileCounter == 0) {
            this.displayHelp(Messages.bind(Messages.CommandLineErrorFileDir));
            return null;
        }
        if (filesToFormat.length != fileCounter) {
            File[] fileArray = filesToFormat;
            filesToFormat = new File[fileCounter];
            System.arraycopy(fileArray, 0, filesToFormat, 0, fileCounter);
        }
        return filesToFormat;
    }

    /*
     * Loose catch block
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Properties readConfig(String filename) {
        BufferedInputStream stream = null;
        File configFile = new File(filename);
        stream = new BufferedInputStream(new FileInputStream(configFile));
        Properties formatterOptions = new Properties();
        formatterOptions.load(stream);
        Properties properties = formatterOptions;
        if (stream == null) return properties;
        try {
            stream.close();
            return properties;
        }
        catch (IOException iOException) {}
        return properties;
        catch (IOException e) {
            try {
                String canonicalPath = null;
                try {
                    canonicalPath = configFile.getCanonicalPath();
                }
                catch (IOException iOException) {
                    canonicalPath = configFile.getAbsolutePath();
                }
                String errorMessage = !configFile.exists() && !configFile.isAbsolute() ? Messages.bind(Messages.ConfigFileNotFoundErrorTryFullPath, new Object[]{canonicalPath, System.getProperty("user.dir")}) : Messages.bind(Messages.ConfigFileReadingError, canonicalPath);
                org.eclipse.jdt.internal.core.util.Util.log(e, errorMessage);
                System.err.println(errorMessage);
                if (stream == null) return null;
            }
            catch (Throwable throwable) {
                if (stream == null) throw throwable;
                try {
                    stream.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                stream.close();
                return null;
            }
            catch (IOException iOException) {}
            return null;
        }
    }

    public Object start(IApplicationContext context) throws Exception {
        File[] filesToFormat = this.processCommandLine((String[])context.getArguments().get("application.args"));
        if (filesToFormat == null) {
            return IApplication.EXIT_OK;
        }
        if (!this.quiet) {
            if (this.configName != null) {
                System.out.println(Messages.bind(Messages.CommandLineConfigFile, this.configName));
            }
            System.out.println(Messages.bind(Messages.CommandLineStart));
        }
        CodeFormatter codeFormatter = ToolFactory.createCodeFormatter(this.options);
        int i = 0;
        int max = filesToFormat.length;
        while (i < max) {
            File file = filesToFormat[i];
            if (file.isDirectory()) {
                this.formatDirTree(file, codeFormatter);
            } else if (org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(file.getPath())) {
                this.formatFile(file, codeFormatter);
            }
            ++i;
        }
        if (!this.quiet) {
            System.out.println(Messages.bind(Messages.CommandLineDone));
        }
        return IApplication.EXIT_OK;
    }

    public void stop() {
    }

    private static final class Messages
    extends NLS {
        private static final String BUNDLE_NAME = "org.eclipse.jdt.core.formatter.messages";
        public static String CommandLineConfigFile;
        public static String CommandLineDone;
        public static String CommandLineErrorConfig;
        public static String CommandLineErrorFileTryFullPath;
        public static String CommandLineErrorFile;
        public static String CommandLineErrorFileDir;
        public static String CommandLineErrorQuietVerbose;
        public static String CommandLineErrorNoConfigFile;
        public static String CommandLineFormatting;
        public static String CommandLineStart;
        public static String CommandLineUsage;
        public static String ConfigFileNotFoundErrorTryFullPath;
        public static String ConfigFileReadingError;
        public static String FormatProblem;
        public static String CaughtException;
        public static String ExceptionSkip;

        static {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jdt.core.formatter.CodeFormatterApplication$Messages");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
        }

        private Messages() {
        }

        public static String bind(String message) {
            return Messages.bind(message, null);
        }

        public static String bind(String message, Object binding) {
            return Messages.bind(message, new Object[]{binding});
        }

        public static String bind(String message, Object binding1, Object binding2) {
            return Messages.bind(message, new Object[]{binding1, binding2});
        }

        public static String bind(String message, Object[] bindings) {
            return MessageFormat.format(message, bindings);
        }
    }
}

