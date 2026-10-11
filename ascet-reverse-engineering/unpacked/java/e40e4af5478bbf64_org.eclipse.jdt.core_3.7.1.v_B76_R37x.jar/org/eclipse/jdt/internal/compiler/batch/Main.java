/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.batch;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.Properties;
import java.util.ResourceBundle;
import java.util.Set;
import java.util.StringTokenizer;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.CompilationProgress;
import org.eclipse.jdt.internal.compiler.AbstractAnnotationProcessorManager;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.ICompilerRequestor;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.batch.CompilationUnit;
import org.eclipse.jdt.internal.compiler.batch.FileFinder;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.env.AccessRule;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.CompilerStats;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;
import org.eclipse.jdt.internal.compiler.util.GenericXMLWriter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfInt;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.Messages;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;

public class Main
implements ProblemSeverities,
SuffixConstants {
    boolean enableJavadocOn;
    boolean warnJavadocOn;
    boolean warnAllJavadocOn;
    public Compiler batchCompiler;
    public ResourceBundle bundle;
    protected FileSystem.Classpath[] checkedClasspaths;
    public Locale compilerLocale;
    public CompilerOptions compilerOptions;
    public CompilationProgress progress;
    public String destinationPath;
    public String[] destinationPaths;
    private boolean didSpecifySource;
    private boolean didSpecifyTarget;
    public String[] encodings;
    public int exportedClassFilesCounter;
    public String[] filenames;
    public String[] classNames;
    public int globalErrorsCount;
    public int globalProblemsCount;
    public int globalTasksCount;
    public int globalWarningsCount;
    private File javaHomeCache;
    private boolean javaHomeChecked = false;
    public long lineCount0;
    public String log;
    public Logger logger;
    public int maxProblems;
    public Map options;
    protected PrintWriter out;
    public boolean proceed = true;
    public boolean proceedOnError = false;
    public boolean produceRefInfo = false;
    public int currentRepetition;
    public int maxRepetition;
    public boolean showProgress = false;
    public long startTime;
    public ArrayList pendingErrors;
    public boolean systemExitWhenFinished = true;
    public static final int TIMING_DISABLED = 0;
    public static final int TIMING_ENABLED = 1;
    public static final int TIMING_DETAILED = 2;
    public int timing = 0;
    public CompilerStats[] compilerStats;
    public boolean verbose = false;
    private String[] expandedCommandLine;
    private PrintWriter err;
    protected ArrayList extraProblems;
    public static final String bundleName = "org.eclipse.jdt.internal.compiler.batch.messages";
    public static final int DEFAULT_SIZE_CLASSPATH = 4;
    public static final String NONE = "none";
    static /* synthetic */ Class class$0;

    public static boolean compile(String commandLine) {
        return new Main(new PrintWriter(System.out), new PrintWriter(System.err), false, null, null).compile(Main.tokenize(commandLine));
    }

    public static boolean compile(String commandLine, PrintWriter outWriter, PrintWriter errWriter) {
        return new Main(outWriter, errWriter, false, null, null).compile(Main.tokenize(commandLine));
    }

    public static boolean compile(String[] commandLineArguments, PrintWriter outWriter, PrintWriter errWriter, CompilationProgress progress) {
        return new Main(outWriter, errWriter, false, null, progress).compile(commandLineArguments);
    }

    public static File[][] getLibrariesFiles(File[] files) {
        FilenameFilter filter = new FilenameFilter(){

            public boolean accept(File dir, String name) {
                return Util.isPotentialZipArchive(name);
            }
        };
        int filesLength = files.length;
        File[][] result = new File[filesLength][];
        int i = 0;
        while (i < filesLength) {
            File currentFile = files[i];
            if (currentFile.exists() && currentFile.isDirectory()) {
                result[i] = currentFile.listFiles(filter);
            }
            ++i;
        }
        return result;
    }

    public static void main(String[] argv) {
        new Main(new PrintWriter(System.out), new PrintWriter(System.err), true, null, null).compile(argv);
    }

    public static String[] tokenize(String commandLine) {
        int count = 0;
        String[] arguments = new String[10];
        StringTokenizer tokenizer = new StringTokenizer(commandLine, " \"", true);
        String token = Util.EMPTY_STRING;
        boolean insideQuotes = false;
        boolean startNewToken = true;
        while (tokenizer.hasMoreTokens()) {
            token = tokenizer.nextToken();
            if (token.equals(" ")) {
                if (insideQuotes) {
                    int n = count - 1;
                    arguments[n] = String.valueOf(arguments[n]) + token;
                    startNewToken = false;
                    continue;
                }
                startNewToken = true;
                continue;
            }
            if (token.equals("\"")) {
                if (!insideQuotes && startNewToken) {
                    if (count == arguments.length) {
                        String[] stringArray = arguments;
                        arguments = new String[count * 2];
                        System.arraycopy(stringArray, 0, arguments, 0, count);
                    }
                    arguments[count++] = Util.EMPTY_STRING;
                }
                insideQuotes = !insideQuotes;
                startNewToken = false;
                continue;
            }
            if (insideQuotes) {
                int n = count - 1;
                arguments[n] = String.valueOf(arguments[n]) + token;
            } else if (token.length() > 0 && !startNewToken) {
                int n = count - 1;
                arguments[n] = String.valueOf(arguments[n]) + token;
            } else {
                String trimmedToken;
                if (count == arguments.length) {
                    String[] stringArray = arguments;
                    arguments = new String[count * 2];
                    System.arraycopy(stringArray, 0, arguments, 0, count);
                }
                if ((trimmedToken = token.trim()).length() != 0) {
                    arguments[count++] = trimmedToken;
                }
            }
            startNewToken = false;
        }
        String[] stringArray = arguments;
        arguments = new String[count];
        System.arraycopy(stringArray, 0, arguments, 0, count);
        return arguments;
    }

    public Main(PrintWriter outWriter, PrintWriter errWriter, boolean systemExitWhenFinished) {
        this(outWriter, errWriter, systemExitWhenFinished, null, null);
    }

    public Main(PrintWriter outWriter, PrintWriter errWriter, boolean systemExitWhenFinished, Map customDefaultOptions) {
        this(outWriter, errWriter, systemExitWhenFinished, customDefaultOptions, null);
    }

    public Main(PrintWriter outWriter, PrintWriter errWriter, boolean systemExitWhenFinished, Map customDefaultOptions, CompilationProgress compilationProgress) {
        this.initialize(outWriter, errWriter, systemExitWhenFinished, customDefaultOptions, compilationProgress);
        this.relocalize();
    }

    public void addExtraProblems(CategorizedProblem problem) {
        if (this.extraProblems == null) {
            this.extraProblems = new ArrayList();
        }
        this.extraProblems.add(problem);
    }

    protected void addNewEntry(ArrayList paths, String currentClasspathName, ArrayList currentRuleSpecs, String customEncoding, String destPath, boolean isSourceOnly, boolean rejectDestinationPathOnJars) {
        int rulesSpecsSize = currentRuleSpecs.size();
        AccessRuleSet accessRuleSet = null;
        if (rulesSpecsSize != 0) {
            AccessRule[] accessRules = new AccessRule[currentRuleSpecs.size()];
            boolean rulesOK = true;
            Iterator i = currentRuleSpecs.iterator();
            int j = 0;
            while (i.hasNext()) {
                String ruleSpec = (String)i.next();
                char key = ruleSpec.charAt(0);
                String pattern = ruleSpec.substring(1);
                if (pattern.length() > 0) {
                    switch (key) {
                        case '+': {
                            accessRules[j++] = new AccessRule(pattern.toCharArray(), 0);
                            break;
                        }
                        case '~': {
                            accessRules[j++] = new AccessRule(pattern.toCharArray(), 0x1000118);
                            break;
                        }
                        case '-': {
                            accessRules[j++] = new AccessRule(pattern.toCharArray(), 0x1000133);
                            break;
                        }
                        case '?': {
                            accessRules[j++] = new AccessRule(pattern.toCharArray(), 0x1000133, true);
                            break;
                        }
                        default: {
                            rulesOK = false;
                            break;
                        }
                    }
                    continue;
                }
                rulesOK = false;
            }
            if (rulesOK) {
                accessRuleSet = new AccessRuleSet(accessRules, 0, currentClasspathName);
            } else {
                if (currentClasspathName.length() != 0) {
                    this.addPendingErrors(this.bind("configure.incorrectClasspath", currentClasspathName));
                }
                return;
            }
        }
        if (NONE.equals(destPath)) {
            destPath = NONE;
        }
        if (rejectDestinationPathOnJars && destPath != null && Util.isPotentialZipArchive(currentClasspathName)) {
            throw new IllegalArgumentException(this.bind("configure.unexpectedDestinationPathEntryFile", currentClasspathName));
        }
        FileSystem.Classpath currentClasspath = FileSystem.getClasspath(currentClasspathName, customEncoding, isSourceOnly, accessRuleSet, destPath);
        if (currentClasspath != null) {
            paths.add(currentClasspath);
        } else if (currentClasspathName.length() != 0) {
            this.addPendingErrors(this.bind("configure.incorrectClasspath", currentClasspathName));
        }
    }

    void addPendingErrors(String message) {
        if (this.pendingErrors == null) {
            this.pendingErrors = new ArrayList();
        }
        this.pendingErrors.add(message);
    }

    public String bind(String id) {
        return this.bind(id, (String[])null);
    }

    public String bind(String id, String binding) {
        return this.bind(id, new String[]{binding});
    }

    public String bind(String id, String binding1, String binding2) {
        return this.bind(id, new String[]{binding1, binding2});
    }

    public String bind(String id, String[] arguments) {
        if (id == null) {
            return "No message available";
        }
        String message = null;
        try {
            message = this.bundle.getString(id);
        }
        catch (MissingResourceException missingResourceException) {
            return "Missing message: " + id + " in: " + bundleName;
        }
        return MessageFormat.format(message, arguments);
    }

    private boolean checkVMVersion(long minimalSupportedVersion) {
        int majorVersion;
        String classFileVersion = System.getProperty("java.class.version");
        if (classFileVersion == null) {
            return false;
        }
        int index = classFileVersion.indexOf(46);
        if (index == -1) {
            return false;
        }
        try {
            majorVersion = Integer.parseInt(classFileVersion.substring(0, index));
        }
        catch (NumberFormatException numberFormatException) {
            return false;
        }
        switch (majorVersion) {
            case 45: {
                return 2949123L >= minimalSupportedVersion;
            }
            case 46: {
                return 0x2E0000L >= minimalSupportedVersion;
            }
            case 47: {
                return 0x2F0000L >= minimalSupportedVersion;
            }
            case 48: {
                return 0x300000L >= minimalSupportedVersion;
            }
            case 49: {
                return 0x310000L >= minimalSupportedVersion;
            }
            case 50: {
                return 0x320000L >= minimalSupportedVersion;
            }
            case 51: {
                return 0x330000L >= minimalSupportedVersion;
            }
        }
        return false;
    }

    public boolean compile(String[] argv) {
        try {
            try {
                this.configure(argv);
                if (this.progress != null) {
                    this.progress.begin(this.filenames == null ? 0 : this.filenames.length * this.maxRepetition);
                }
                if (this.proceed) {
                    if (this.showProgress) {
                        this.logger.compiling();
                    }
                    this.currentRepetition = 0;
                    while (this.currentRepetition < this.maxRepetition) {
                        this.globalProblemsCount = 0;
                        this.globalErrorsCount = 0;
                        this.globalWarningsCount = 0;
                        this.globalTasksCount = 0;
                        this.exportedClassFilesCounter = 0;
                        if (this.maxRepetition > 1) {
                            this.logger.flush();
                            this.logger.logRepetition(this.currentRepetition, this.maxRepetition);
                        }
                        this.performCompilation();
                        ++this.currentRepetition;
                    }
                    if (this.compilerStats != null) {
                        this.logger.logAverage();
                    }
                    if (this.showProgress) {
                        this.logger.printNewLine();
                    }
                }
                if (this.systemExitWhenFinished) {
                    this.logger.flush();
                    this.logger.close();
                    System.exit(this.globalErrorsCount > 0 ? -1 : 0);
                }
            }
            catch (IllegalArgumentException e) {
                this.logger.logException(e);
                if (this.systemExitWhenFinished) {
                    this.logger.flush();
                    this.logger.close();
                    System.exit(-1);
                }
                this.logger.flush();
                this.logger.close();
                if (this.progress != null) {
                    this.progress.done();
                }
                return false;
            }
            catch (RuntimeException e) {
                this.logger.logException(e);
                if (this.systemExitWhenFinished) {
                    this.logger.flush();
                    this.logger.close();
                    System.exit(-1);
                }
                this.logger.flush();
                this.logger.close();
                if (this.progress != null) {
                    this.progress.done();
                }
                return false;
            }
        }
        finally {
            this.logger.flush();
            this.logger.close();
            if (this.progress != null) {
                this.progress.done();
            }
        }
        return this.globalErrorsCount == 0 && (this.progress == null || !this.progress.isCanceled());
    }

    /*
     * Unable to fully structure code
     */
    public void configure(String[] argv) {
        if (argv == null || argv.length == 0) {
            this.printUsage();
            return;
        }
        bootclasspaths = new ArrayList<E>(4);
        sourcepathClasspathArg = null;
        sourcepathClasspaths = new ArrayList<E>(4);
        classpaths = new ArrayList<E>(4);
        extdirsClasspaths = null;
        endorsedDirClasspaths = null;
        index = -1;
        filesCount = 0;
        classCount = 0;
        argCount = argv.length;
        mode = 0;
        this.maxRepetition = 0;
        printUsageRequired = false;
        usageSection = null;
        printVersionRequired = false;
        didSpecifyDeprecation = false;
        didSpecifyCompliance = false;
        didSpecifyDisabledAnnotationProcessing = false;
        customEncoding = null;
        customDestinationPath = null;
        currentSourceDirectory = null;
        currentArg = Util.EMPTY_STRING;
        specifiedEncodings = null;
        needExpansion = false;
        i = 0;
        while (i < argCount) {
            if (argv[i].startsWith("@")) {
                needExpansion = true;
                break;
            }
            ++i;
        }
        newCommandLineArgs = null;
        if (needExpansion) {
            newCommandLineArgs = new String[argCount];
            index = 0;
            i = 0;
            while (i < argCount) {
                newArgs = null;
                arg = argv[i].trim();
                if (arg.startsWith("@")) {
                    try {
                        reader = new LineNumberReader(new StringReader(new String(Util.getFileCharContent(new File(arg.substring(1)), null))));
                        buffer = new StringBuffer();
                        while ((line = reader.readLine()) != null) {
                            if ((line = line.trim()).startsWith("#")) continue;
                            buffer.append(line).append(" ");
                        }
                        newArgs = Main.tokenize(buffer.toString());
                    }
                    catch (IOException v0) {
                        throw new IllegalArgumentException(this.bind("configure.invalidexpansionargumentname", arg));
                    }
                }
                if (newArgs != null) {
                    newCommandLineArgsLength = newCommandLineArgs.length;
                    newArgsLength = newArgs.length;
                    v1 = newCommandLineArgs;
                    newCommandLineArgs = new String[newCommandLineArgsLength + newArgsLength - 1];
                    System.arraycopy(v1, 0, newCommandLineArgs, 0, index);
                    System.arraycopy(newArgs, 0, newCommandLineArgs, index, newArgsLength);
                    index += newArgsLength;
                } else {
                    newCommandLineArgs[index++] = arg;
                }
                ++i;
            }
            index = -1;
        } else {
            newCommandLineArgs = argv;
            i = 0;
            while (i < argCount) {
                newCommandLineArgs[i] = newCommandLineArgs[i].trim();
                ++i;
            }
        }
        argCount = newCommandLineArgs.length;
        this.expandedCommandLine = newCommandLineArgs;
        block51: while (++index < argCount) {
            if (customEncoding != null) {
                throw new IllegalArgumentException(this.bind("configure.unexpectedCustomEncoding", currentArg, customEncoding));
            }
            currentArg = newCommandLineArgs[index];
            switch (mode) {
                case 0: {
                    if (currentArg.startsWith("[")) {
                        throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", currentArg));
                    }
                    if (currentArg.endsWith("]")) {
                        encodingStart = currentArg.indexOf(91) + 1;
                        if (encodingStart <= 1) {
                            throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", currentArg));
                        }
                        encodingEnd = currentArg.length() - 1;
                        if (encodingStart >= 1) {
                            if (encodingStart < encodingEnd) {
                                customEncoding = currentArg.substring(encodingStart, encodingEnd);
                                try {
                                    new InputStreamReader((InputStream)new ByteArrayInputStream(new byte[0]), customEncoding);
                                }
                                catch (UnsupportedEncodingException v2) {
                                    throw new IllegalArgumentException(this.bind("configure.unsupportedEncoding", customEncoding));
                                }
                            }
                            currentArg = currentArg.substring(0, encodingStart - 1);
                        }
                    }
                    if (currentArg.endsWith(".java")) {
                        if (this.filenames == null) {
                            this.filenames = new String[argCount - index];
                            this.encodings = new String[argCount - index];
                            this.destinationPaths = new String[argCount - index];
                        } else if (filesCount == this.filenames.length) {
                            length = this.filenames.length;
                            this.filenames = new String[length + argCount - index];
                            System.arraycopy(this.filenames, 0, this.filenames, 0, length);
                            this.encodings = new String[length + argCount - index];
                            System.arraycopy(this.encodings, 0, this.encodings, 0, length);
                            this.destinationPaths = new String[length + argCount - index];
                            System.arraycopy(this.destinationPaths, 0, this.destinationPaths, 0, length);
                        }
                        this.filenames[filesCount] = currentArg;
                        this.encodings[filesCount++] = customEncoding;
                        customEncoding = null;
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-log")) {
                        if (this.log != null) {
                            throw new IllegalArgumentException(this.bind("configure.duplicateLog", currentArg));
                        }
                        mode = 5;
                        break;
                    }
                    if (currentArg.equals("-repeat")) {
                        if (this.maxRepetition > 0) {
                            throw new IllegalArgumentException(this.bind("configure.duplicateRepeat", currentArg));
                        }
                        mode = 6;
                        break;
                    }
                    if (currentArg.equals("-maxProblems")) {
                        if (this.maxProblems > 0) {
                            throw new IllegalArgumentException(this.bind("configure.duplicateMaxProblems", currentArg));
                        }
                        mode = 11;
                        break;
                    }
                    if (currentArg.equals("-source")) {
                        mode = 7;
                        break;
                    }
                    if (currentArg.equals("-encoding")) {
                        mode = 8;
                        break;
                    }
                    if (currentArg.equals("-1.3")) {
                        if (didSpecifyCompliance) {
                            throw new IllegalArgumentException(this.bind("configure.duplicateCompliance", currentArg));
                        }
                        didSpecifyCompliance = true;
                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.3");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-1.4")) {
                        if (didSpecifyCompliance) {
                            throw new IllegalArgumentException(this.bind("configure.duplicateCompliance", currentArg));
                        }
                        didSpecifyCompliance = true;
                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.4");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-1.5") || currentArg.equals("-5") || currentArg.equals("-5.0")) {
                        if (didSpecifyCompliance) {
                            throw new IllegalArgumentException(this.bind("configure.duplicateCompliance", currentArg));
                        }
                        didSpecifyCompliance = true;
                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.5");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-1.6") || currentArg.equals("-6") || currentArg.equals("-6.0")) {
                        if (didSpecifyCompliance) {
                            throw new IllegalArgumentException(this.bind("configure.duplicateCompliance", currentArg));
                        }
                        didSpecifyCompliance = true;
                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.6");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-1.7") || currentArg.equals("-7") || currentArg.equals("-7.0")) {
                        if (didSpecifyCompliance) {
                            throw new IllegalArgumentException(this.bind("configure.duplicateCompliance", currentArg));
                        }
                        didSpecifyCompliance = true;
                        this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.7");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-d")) {
                        if (this.destinationPath != null) {
                            errorMessage = new StringBuffer();
                            errorMessage.append(currentArg);
                            if (index + 1 < argCount) {
                                errorMessage.append(' ');
                                errorMessage.append(newCommandLineArgs[index + 1]);
                            }
                            throw new IllegalArgumentException(this.bind("configure.duplicateOutputPath", errorMessage.toString()));
                        }
                        mode = 3;
                        break;
                    }
                    if (currentArg.equals("-classpath") || currentArg.equals("-cp")) {
                        mode = 1;
                        break;
                    }
                    if (currentArg.equals("-bootclasspath")) {
                        if (bootclasspaths.size() > 0) {
                            errorMessage = new StringBuffer();
                            errorMessage.append(currentArg);
                            if (index + 1 < argCount) {
                                errorMessage.append(' ');
                                errorMessage.append(newCommandLineArgs[index + 1]);
                            }
                            throw new IllegalArgumentException(this.bind("configure.duplicateBootClasspath", errorMessage.toString()));
                        }
                        mode = 9;
                        break;
                    }
                    if (currentArg.equals("-sourcepath")) {
                        if (sourcepathClasspathArg != null) {
                            errorMessage = new StringBuffer();
                            errorMessage.append(currentArg);
                            if (index + 1 < argCount) {
                                errorMessage.append(' ');
                                errorMessage.append(newCommandLineArgs[index + 1]);
                            }
                            throw new IllegalArgumentException(this.bind("configure.duplicateSourcepath", errorMessage.toString()));
                        }
                        mode = 13;
                        break;
                    }
                    if (currentArg.equals("-extdirs")) {
                        if (extdirsClasspaths != null) {
                            errorMessage = new StringBuffer();
                            errorMessage.append(currentArg);
                            if (index + 1 < argCount) {
                                errorMessage.append(' ');
                                errorMessage.append(newCommandLineArgs[index + 1]);
                            }
                            throw new IllegalArgumentException(this.bind("configure.duplicateExtDirs", errorMessage.toString()));
                        }
                        mode = 12;
                        break;
                    }
                    if (currentArg.equals("-endorseddirs")) {
                        if (endorsedDirClasspaths != null) {
                            errorMessage = new StringBuffer();
                            errorMessage.append(currentArg);
                            if (index + 1 < argCount) {
                                errorMessage.append(' ');
                                errorMessage.append(newCommandLineArgs[index + 1]);
                            }
                            throw new IllegalArgumentException(this.bind("configure.duplicateEndorsedDirs", errorMessage.toString()));
                        }
                        mode = 15;
                        break;
                    }
                    if (currentArg.equals("-progress")) {
                        mode = 0;
                        this.showProgress = true;
                        break;
                    }
                    if (!currentArg.startsWith("-proceedOnError")) ** GOTO lbl265
                    mode = 0;
                    length = currentArg.length();
                    if (length <= 15) ** GOTO lbl261
                    if (currentArg.equals("-proceedOnError:Fatal")) {
                        this.options.put("org.eclipse.jdt.core.compiler.problem.fatalOptionalError", "enabled");
                    } else {
                        throw new IllegalArgumentException(this.bind("configure.invalidWarningConfiguration", currentArg));
lbl261:
                        // 1 sources

                        this.options.put("org.eclipse.jdt.core.compiler.problem.fatalOptionalError", "disabled");
                    }
                    this.proceedOnError = true;
                    break;
lbl265:
                    // 1 sources

                    if (currentArg.equals("-time")) {
                        mode = 0;
                        this.timing = 1;
                        break;
                    }
                    if (currentArg.equals("-time:detail")) {
                        mode = 0;
                        this.timing = 3;
                        break;
                    }
                    if (currentArg.equals("-version") || currentArg.equals("-v")) {
                        this.logger.logVersion(true);
                        this.proceed = false;
                        return;
                    }
                    if (currentArg.equals("-showversion")) {
                        printVersionRequired = true;
                        mode = 0;
                        break;
                    }
                    if ("-deprecation".equals(currentArg)) {
                        didSpecifyDeprecation = true;
                        this.options.put("org.eclipse.jdt.core.compiler.problem.deprecation", "warning");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-help") || currentArg.equals("-?")) {
                        printUsageRequired = true;
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-help:warn") || currentArg.equals("-?:warn")) {
                        printUsageRequired = true;
                        usageSection = "misc.usage.warn";
                        break;
                    }
                    if (currentArg.equals("-noExit")) {
                        this.systemExitWhenFinished = false;
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-verbose")) {
                        this.verbose = true;
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-referenceInfo")) {
                        this.produceRefInfo = true;
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-inlineJSR")) {
                        mode = 0;
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                        break;
                    }
                    if (currentArg.startsWith("-g")) {
                        mode = 0;
                        debugOption = currentArg;
                        length = currentArg.length();
                        if (length == 2) {
                            this.options.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
                            this.options.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "generate");
                            this.options.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "generate");
                            break;
                        }
                        if (length > 3) {
                            this.options.put("org.eclipse.jdt.core.compiler.debug.localVariable", "do not generate");
                            this.options.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "do not generate");
                            this.options.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "do not generate");
                            if (length == 7 && debugOption.equals("-g:none")) continue block51;
                            tokenizer = new StringTokenizer(debugOption.substring(3, debugOption.length()), ",");
                            while (tokenizer.hasMoreTokens()) {
                                token = tokenizer.nextToken();
                                if (token.equals("vars")) {
                                    this.options.put("org.eclipse.jdt.core.compiler.debug.localVariable", "generate");
                                    continue;
                                }
                                if (token.equals("lines")) {
                                    this.options.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "generate");
                                    continue;
                                }
                                if (token.equals("source")) {
                                    this.options.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "generate");
                                    continue;
                                }
                                throw new IllegalArgumentException(this.bind("configure.invalidDebugOption", debugOption));
                            }
                            continue block51;
                        }
                        throw new IllegalArgumentException(this.bind("configure.invalidDebugOption", debugOption));
                    }
                    if (currentArg.startsWith("-nowarn")) {
                        this.disableWarnings();
                        mode = 0;
                        break;
                    }
                    if (currentArg.startsWith("-warn")) {
                        mode = 0;
                        warningOption = currentArg;
                        length = currentArg.length();
                        if (length == 10 && warningOption.equals("-warn:none")) {
                            this.disableWarnings();
                            break;
                        }
                        if (length <= 6) {
                            throw new IllegalArgumentException(this.bind("configure.invalidWarningConfiguration", warningOption));
                        }
                        switch (warningOption.charAt(6)) {
                            case '+': {
                                warnTokenStart = 7;
                                isEnabling = true;
                                allowPlusOrMinus = true;
                                break;
                            }
                            case '-': {
                                warnTokenStart = 7;
                                isEnabling = false;
                                allowPlusOrMinus = true;
                                break;
                            }
                            default: {
                                this.disableWarnings();
                                warnTokenStart = 6;
                                isEnabling = true;
                                allowPlusOrMinus = false;
                            }
                        }
                        tokenizer = new StringTokenizer(warningOption.substring(warnTokenStart, warningOption.length()), ",");
                        tokenCounter = 0;
                        if (didSpecifyDeprecation) {
                            this.options.put("org.eclipse.jdt.core.compiler.problem.deprecation", "warning");
                        }
                        while (tokenizer.hasMoreTokens()) {
                            token = tokenizer.nextToken();
                            ++tokenCounter;
                            switch (token.charAt(0)) {
                                case '+': {
                                    if (allowPlusOrMinus) {
                                        isEnabling = true;
                                        token = token.substring(1);
                                        break;
                                    }
                                    throw new IllegalArgumentException(this.bind("configure.invalidUsageOfPlusOption", token));
                                }
                                case '-': {
                                    if (allowPlusOrMinus) {
                                        isEnabling = false;
                                        token = token.substring(1);
                                        break;
                                    }
                                    throw new IllegalArgumentException(this.bind("configure.invalidUsageOfMinusOption", token));
                                }
                            }
                            this.handleWarningToken(token, isEnabling);
                        }
                        if (tokenCounter != 0) continue block51;
                        throw new IllegalArgumentException(this.bind("configure.invalidWarningOption", currentArg));
                    }
                    if (currentArg.startsWith("-err")) {
                        mode = 0;
                        errorOption = currentArg;
                        length = currentArg.length();
                        if (length <= 5) {
                            throw new IllegalArgumentException(this.bind("configure.invalidErrorConfiguration", errorOption));
                        }
                        switch (errorOption.charAt(5)) {
                            case '+': {
                                errorTokenStart = 6;
                                isEnabling = true;
                                allowPlusOrMinus = true;
                                break;
                            }
                            case '-': {
                                errorTokenStart = 6;
                                isEnabling = false;
                                allowPlusOrMinus = true;
                                break;
                            }
                            default: {
                                this.disableErrors();
                                errorTokenStart = 5;
                                isEnabling = true;
                                allowPlusOrMinus = false;
                            }
                        }
                        tokenizer = new StringTokenizer(errorOption.substring(errorTokenStart, errorOption.length()), ",");
                        tokenCounter = 0;
                        while (tokenizer.hasMoreTokens()) {
                            token = tokenizer.nextToken();
                            ++tokenCounter;
                            switch (token.charAt(0)) {
                                case '+': {
                                    if (allowPlusOrMinus) {
                                        isEnabling = true;
                                        token = token.substring(1);
                                        break;
                                    }
                                    throw new IllegalArgumentException(this.bind("configure.invalidUsageOfPlusOption", token));
                                }
                                case '-': {
                                    if (allowPlusOrMinus) {
                                        isEnabling = false;
                                        token = token.substring(1);
                                        break;
                                    }
                                    throw new IllegalArgumentException(this.bind("configure.invalidUsageOfMinusOption", token));
                                }
                            }
                            this.handleErrorToken(token, isEnabling);
                        }
                        if (tokenCounter != 0) continue block51;
                        throw new IllegalArgumentException(this.bind("configure.invalidErrorOption", currentArg));
                    }
                    if (currentArg.equals("-target")) {
                        mode = 4;
                        break;
                    }
                    if (currentArg.equals("-preserveAllLocals")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", "preserve");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-enableJavadoc")) {
                        mode = 0;
                        this.enableJavadocOn = true;
                        break;
                    }
                    if (currentArg.equals("-Xemacs")) {
                        mode = 0;
                        this.logger.setEmacs();
                        break;
                    }
                    if (currentArg.startsWith("-A")) {
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-processorpath")) {
                        mode = 17;
                        break;
                    }
                    if (currentArg.equals("-processor")) {
                        mode = 18;
                        break;
                    }
                    if (currentArg.equals("-proc:only")) {
                        this.options.put("org.eclipse.jdt.core.compiler.generateClassFiles", "disabled");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-proc:none")) {
                        didSpecifyDisabledAnnotationProcessing = true;
                        this.options.put("org.eclipse.jdt.core.compiler.processAnnotations", "disabled");
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-s")) {
                        mode = 19;
                        break;
                    }
                    if (currentArg.equals("-XprintProcessorInfo") || currentArg.equals("-XprintRounds")) {
                        mode = 0;
                        break;
                    }
                    if (currentArg.startsWith("-X")) {
                        mode = 0;
                        break;
                    }
                    if (currentArg.startsWith("-J")) {
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-O")) {
                        mode = 0;
                        break;
                    }
                    if (currentArg.equals("-classNames")) {
                        mode = 20;
                        break;
                    }
                    if (currentArg.equals("-properties")) {
                        mode = 21;
                        break;
                    }
                    ** GOTO lbl694
                }
                case 4: {
                    if (this.didSpecifyTarget) {
                        throw new IllegalArgumentException(this.bind("configure.duplicateTarget", currentArg));
                    }
                    this.didSpecifyTarget = true;
                    if (currentArg.equals("1.1")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.1");
                    } else if (currentArg.equals("1.2")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.2");
                    } else if (currentArg.equals("1.3")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.3");
                    } else if (currentArg.equals("1.4")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                    } else if (currentArg.equals("1.5") || currentArg.equals("5") || currentArg.equals("5.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                    } else if (currentArg.equals("1.6") || currentArg.equals("6") || currentArg.equals("6.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                    } else if (currentArg.equals("1.7") || currentArg.equals("7") || currentArg.equals("7.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                    } else if (currentArg.equals("jsr14")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "jsr14");
                    } else if (currentArg.equals("cldc1.1")) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "cldc1.1");
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "enabled");
                    } else {
                        throw new IllegalArgumentException(this.bind("configure.targetJDK", currentArg));
                    }
                    mode = 0;
                    break;
                }
                case 5: {
                    this.log = currentArg;
                    mode = 0;
                    break;
                }
                case 6: {
                    try {
                        this.maxRepetition = Integer.parseInt(currentArg);
                        if (this.maxRepetition <= 0) {
                            throw new IllegalArgumentException(this.bind("configure.repetition", currentArg));
                        }
                    }
                    catch (NumberFormatException v3) {
                        throw new IllegalArgumentException(this.bind("configure.repetition", currentArg));
                    }
                    mode = 0;
                    break;
                }
                case 11: {
                    try {
                        this.maxProblems = Integer.parseInt(currentArg);
                        if (this.maxProblems <= 0) {
                            throw new IllegalArgumentException(this.bind("configure.maxProblems", currentArg));
                        }
                        this.options.put("org.eclipse.jdt.core.compiler.maxProblemPerUnit", currentArg);
                    }
                    catch (NumberFormatException v4) {
                        throw new IllegalArgumentException(this.bind("configure.maxProblems", currentArg));
                    }
                    mode = 0;
                    break;
                }
                case 7: {
                    if (this.didSpecifySource) {
                        throw new IllegalArgumentException(this.bind("configure.duplicateSource", currentArg));
                    }
                    this.didSpecifySource = true;
                    if (currentArg.equals("1.3")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.3");
                    } else if (currentArg.equals("1.4")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.4");
                    } else if (currentArg.equals("1.5") || currentArg.equals("5") || currentArg.equals("5.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.5");
                    } else if (currentArg.equals("1.6") || currentArg.equals("6") || currentArg.equals("6.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.6");
                    } else if (currentArg.equals("1.7") || currentArg.equals("7") || currentArg.equals("7.0")) {
                        this.options.put("org.eclipse.jdt.core.compiler.source", "1.7");
                    } else {
                        throw new IllegalArgumentException(this.bind("configure.source", currentArg));
                    }
                    mode = 0;
                    break;
                }
                case 8: {
                    if (specifiedEncodings != null) {
                        if (!specifiedEncodings.contains(currentArg)) {
                            if (specifiedEncodings.size() > 1) {
                                this.logger.logWarning(this.bind("configure.differentencodings", currentArg, Main.getAllEncodings(specifiedEncodings)));
                            } else {
                                this.logger.logWarning(this.bind("configure.differentencoding", currentArg, Main.getAllEncodings(specifiedEncodings)));
                            }
                        }
                    } else {
                        specifiedEncodings = new HashSet<String>();
                    }
                    try {
                        new InputStreamReader((InputStream)new ByteArrayInputStream(new byte[0]), currentArg);
                    }
                    catch (UnsupportedEncodingException v5) {
                        throw new IllegalArgumentException(this.bind("configure.unsupportedEncoding", currentArg));
                    }
                    specifiedEncodings.add(currentArg);
                    this.options.put("org.eclipse.jdt.core.encoding", currentArg);
                    mode = 0;
                    break;
                }
                case 3: {
                    this.setDestinationPath(currentArg.equals("none") != false ? "none" : currentArg);
                    mode = 0;
                    break;
                }
                case 1: {
                    mode = 0;
                    index += this.processPaths(newCommandLineArgs, index, currentArg, classpaths);
                    break;
                }
                case 9: {
                    mode = 0;
                    index += this.processPaths(newCommandLineArgs, index, currentArg, bootclasspaths);
                    break;
                }
                case 13: {
                    mode = 0;
                    sourcePaths = new String[1];
                    index += this.processPaths(newCommandLineArgs, index, currentArg, sourcePaths);
                    sourcepathClasspathArg = sourcePaths[0];
                    break;
                }
                case 12: {
                    if (currentArg.indexOf("[-d") != -1) {
                        throw new IllegalArgumentException(this.bind("configure.unexpectedDestinationPathEntry", "-extdir"));
                    }
                    tokenizer = new StringTokenizer(currentArg, File.pathSeparator, false);
                    extdirsClasspaths = new ArrayList<String>(4);
                    while (tokenizer.hasMoreTokens()) {
                        extdirsClasspaths.add(tokenizer.nextToken());
                    }
                    mode = 0;
                    break;
                }
                case 15: {
                    if (currentArg.indexOf("[-d") != -1) {
                        throw new IllegalArgumentException(this.bind("configure.unexpectedDestinationPathEntry", "-endorseddirs"));
                    }
                    tokenizer = new StringTokenizer(currentArg, File.pathSeparator, false);
                    endorsedDirClasspaths = new ArrayList<String>(4);
                    while (tokenizer.hasMoreTokens()) {
                        endorsedDirClasspaths.add(tokenizer.nextToken());
                    }
                    mode = 0;
                    break;
                }
                case 16: {
                    if (!currentArg.endsWith("]")) ** GOTO lbl668
                    customDestinationPath = currentArg.substring(0, currentArg.length() - 1);
                    ** GOTO lbl694
lbl668:
                    // 1 sources

                    throw new IllegalArgumentException(this.bind("configure.incorrectDestinationPathEntry", "[-d " + currentArg));
                }
                case 17: {
                    mode = 0;
                    break;
                }
                case 18: {
                    mode = 0;
                    break;
                }
                case 19: {
                    mode = 0;
                    break;
                }
                case 20: {
                    tokenizer = new StringTokenizer(currentArg, ",");
                    if (this.classNames == null) {
                        this.classNames = new String[4];
                    }
                    while (tokenizer.hasMoreTokens()) {
                        if (this.classNames.length == classCount) {
                            this.classNames = new String[classCount * 2];
                            System.arraycopy(this.classNames, 0, this.classNames, 0, classCount);
                        }
                        this.classNames[classCount++] = tokenizer.nextToken();
                    }
                    mode = 0;
                    break;
                }
                case 21: {
                    this.initializeWarnings(currentArg);
                    mode = 0;
                    break;
                }
lbl694:
                // 3 sources

                default: {
                    if (customDestinationPath == null) {
                        if (File.separatorChar != '/') {
                            currentArg = currentArg.replace('/', File.separatorChar);
                        }
                        if (currentArg.endsWith("[-d")) {
                            currentSourceDirectory = currentArg.substring(0, currentArg.length() - 3);
                            mode = 16;
                            break;
                        }
                        currentSourceDirectory = currentArg;
                    }
                    if (!(dir = new File(currentSourceDirectory)).isDirectory()) {
                        throw new IllegalArgumentException(this.bind("configure.unrecognizedOption", currentSourceDirectory));
                    }
                    result = FileFinder.find(dir, ".JAVA");
                    if ("none".equals(customDestinationPath)) {
                        customDestinationPath = "none";
                    }
                    if (this.filenames != null) {
                        length = result.length;
                        this.filenames = new String[length + filesCount];
                        System.arraycopy(this.filenames, 0, this.filenames, 0, filesCount);
                        this.encodings = new String[length + filesCount];
                        System.arraycopy(this.encodings, 0, this.encodings, 0, filesCount);
                        this.destinationPaths = new String[length + filesCount];
                        System.arraycopy(this.destinationPaths, 0, this.destinationPaths, 0, filesCount);
                        System.arraycopy(result, 0, this.filenames, filesCount, length);
                        i = 0;
                        while (i < length) {
                            this.encodings[filesCount + i] = customEncoding;
                            this.destinationPaths[filesCount + i] = customDestinationPath;
                            ++i;
                        }
                        filesCount += length;
                        customEncoding = null;
                        customDestinationPath = null;
                        currentSourceDirectory = null;
                    } else {
                        this.filenames = result;
                        filesCount = this.filenames.length;
                        this.encodings = new String[filesCount];
                        this.destinationPaths = new String[filesCount];
                        i = 0;
                        while (i < filesCount) {
                            this.encodings[i] = customEncoding;
                            this.destinationPaths[i] = customDestinationPath;
                            ++i;
                        }
                        customEncoding = null;
                        customDestinationPath = null;
                        currentSourceDirectory = null;
                    }
                    mode = 0;
                }
            }
        }
        if (this.enableJavadocOn) {
            this.options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
        } else if (this.warnJavadocOn || this.warnAllJavadocOn) {
            this.options.put("org.eclipse.jdt.core.compiler.doc.comment.support", "enabled");
            this.options.put("org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference", "disabled");
            this.options.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference", "disabled");
        }
        if (this.warnJavadocOn) {
            this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTags", "enabled");
            this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef", "enabled");
            this.options.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef", "enabled");
            this.options.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility", "private");
        }
        if (printUsageRequired || filesCount == 0 && classCount == 0) {
            if (usageSection == null) {
                this.printUsage();
            } else {
                this.printUsage(usageSection);
            }
            this.proceed = false;
            return;
        }
        if (this.log != null) {
            this.logger.setLog(this.log);
        } else {
            this.showProgress = false;
        }
        this.logger.logVersion(printVersionRequired);
        this.validateOptions(didSpecifyCompliance);
        if (!didSpecifyDisabledAnnotationProcessing && CompilerOptions.versionToJdkLevel(this.options.get("org.eclipse.jdt.core.compiler.compliance")) >= 0x320000L) {
            this.options.put("org.eclipse.jdt.core.compiler.processAnnotations", "enabled");
        }
        this.logger.logCommandLineArguments(newCommandLineArgs);
        this.logger.logOptions(this.options);
        if (this.maxRepetition == 0) {
            this.maxRepetition = 1;
        }
        if (this.maxRepetition >= 3 && (this.timing & 1) != 0) {
            this.compilerStats = new CompilerStats[this.maxRepetition];
        }
        if (filesCount != 0) {
            this.filenames = new String[filesCount];
            System.arraycopy(this.filenames, 0, this.filenames, 0, filesCount);
        }
        if (classCount != 0) {
            this.classNames = new String[classCount];
            System.arraycopy(this.classNames, 0, this.classNames, 0, classCount);
        }
        this.setPaths(bootclasspaths, sourcepathClasspathArg, sourcepathClasspaths, classpaths, extdirsClasspaths, endorsedDirClasspaths, customEncoding);
        if (specifiedEncodings != null && specifiedEncodings.size() > 1) {
            this.logger.logWarning(this.bind("configure.multipleencodings", (String)this.options.get("org.eclipse.jdt.core.encoding"), Main.getAllEncodings(specifiedEncodings)));
        }
        if (this.pendingErrors != null) {
            iterator = this.pendingErrors.iterator();
            while (iterator.hasNext()) {
                message = (String)iterator.next();
                this.logger.logPendingError(message);
            }
            this.pendingErrors = null;
        }
    }

    private static String getAllEncodings(Set encodings) {
        int size = encodings.size();
        Object[] allEncodings = new String[size];
        encodings.toArray(allEncodings);
        Arrays.sort(allEncodings);
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < size) {
            if (i > 0) {
                buffer.append(", ");
            }
            buffer.append((String)allEncodings[i]);
            ++i;
        }
        return String.valueOf(buffer);
    }

    private void initializeWarnings(String propertiesFile) {
        File file = new File(propertiesFile);
        if (!file.exists()) {
            throw new IllegalArgumentException(this.bind("configure.missingwarningspropertiesfile", propertiesFile));
        }
        BufferedInputStream stream = null;
        Properties properties = null;
        try {
            try {
                stream = new BufferedInputStream(new FileInputStream(propertiesFile));
                properties = new Properties();
                properties.load(stream);
            }
            catch (IOException e) {
                e.printStackTrace();
                throw new IllegalArgumentException(this.bind("configure.ioexceptionwarningspropertiesfile", propertiesFile));
            }
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
        if (stream != null) {
            try {
                stream.close();
            }
            catch (IOException iOException) {}
        }
        Iterator iterator = properties.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            String key = (String)entry.getKey();
            if (!key.startsWith("org.eclipse.jdt.core.compiler.problem")) continue;
            this.options.put(key, entry.getValue());
        }
    }

    protected void disableWarnings() {
        Object[] entries = this.options.entrySet().toArray();
        int i = 0;
        int max = entries.length;
        while (i < max) {
            Map.Entry entry = (Map.Entry)entries[i];
            if (entry.getKey() instanceof String && entry.getValue() instanceof String && ((String)entry.getValue()).equals("warning")) {
                this.options.put(entry.getKey(), "ignore");
            }
            ++i;
        }
        this.options.put("org.eclipse.jdt.core.compiler.taskTags", Util.EMPTY_STRING);
    }

    protected void disableErrors() {
        Object[] entries = this.options.entrySet().toArray();
        int i = 0;
        int max = entries.length;
        while (i < max) {
            Map.Entry entry = (Map.Entry)entries[i];
            if (entry.getKey() instanceof String && entry.getValue() instanceof String && ((String)entry.getValue()).equals("error")) {
                this.options.put(entry.getKey(), "ignore");
            }
            ++i;
        }
    }

    public String extractDestinationPathFromSourceFile(CompilationResult result) {
        String outputPathName;
        File output;
        char[] fileName;
        int lastIndex;
        ICompilationUnit compilationUnit = result.compilationUnit;
        if (compilationUnit != null && (lastIndex = CharOperation.lastIndexOf(File.separatorChar, fileName = compilationUnit.getFileName())) != -1 && (output = new File(outputPathName = new String(fileName, 0, lastIndex))).exists() && output.isDirectory()) {
            return outputPathName;
        }
        return System.getProperty("user.dir");
    }

    public ICompilerRequestor getBatchRequestor() {
        return new ICompilerRequestor(){
            int lineDelta = 0;

            public void acceptResult(CompilationResult compilationResult) {
                if (compilationResult.lineSeparatorPositions != null) {
                    int unitLineCount = compilationResult.lineSeparatorPositions.length;
                    this.lineDelta += unitLineCount;
                    if (Main.this.showProgress && this.lineDelta > 2000) {
                        Main.this.logger.logProgress();
                        this.lineDelta = 0;
                    }
                }
                Main.this.logger.startLoggingSource(compilationResult);
                if (compilationResult.hasProblems() || compilationResult.hasTasks()) {
                    Main.this.logger.logProblems(compilationResult.getAllProblems(), compilationResult.compilationUnit.getContents(), Main.this);
                }
                Main.this.outputClassFiles(compilationResult);
                Main.this.logger.endLoggingSource();
            }
        };
    }

    public CompilationUnit[] getCompilationUnits() {
        int fileCount = this.filenames.length;
        CompilationUnit[] units = new CompilationUnit[fileCount];
        HashtableOfObject knownFileNames = new HashtableOfObject(fileCount);
        String defaultEncoding = (String)this.options.get("org.eclipse.jdt.core.encoding");
        if (Util.EMPTY_STRING.equals(defaultEncoding)) {
            defaultEncoding = null;
        }
        int i = 0;
        while (i < fileCount) {
            char[] charName = this.filenames[i].toCharArray();
            if (knownFileNames.get(charName) != null) {
                throw new IllegalArgumentException(this.bind("unit.more", this.filenames[i]));
            }
            knownFileNames.put(charName, charName);
            File file = new File(this.filenames[i]);
            if (!file.exists()) {
                throw new IllegalArgumentException(this.bind("unit.missing", this.filenames[i]));
            }
            String encoding = this.encodings[i];
            if (encoding == null) {
                encoding = defaultEncoding;
            }
            units[i] = new CompilationUnit(null, this.filenames[i], encoding, this.destinationPaths[i]);
            ++i;
        }
        return units;
    }

    public IErrorHandlingPolicy getHandlingPolicy() {
        return new IErrorHandlingPolicy(){

            public boolean proceedOnErrors() {
                return Main.this.proceedOnError;
            }

            public boolean stopOnFirstError() {
                return false;
            }
        };
    }

    public File getJavaHome() {
        if (!this.javaHomeChecked) {
            this.javaHomeChecked = true;
            this.javaHomeCache = Util.getJavaHome();
        }
        return this.javaHomeCache;
    }

    public FileSystem getLibraryAccess() {
        return new FileSystem(this.checkedClasspaths, this.filenames);
    }

    public IProblemFactory getProblemFactory() {
        return new DefaultProblemFactory(this.compilerLocale);
    }

    protected ArrayList handleBootclasspath(ArrayList bootclasspaths, String customEncoding) {
        int bootclasspathsSize;
        if (bootclasspaths != null && (bootclasspathsSize = bootclasspaths.size()) != 0) {
            String[] paths = new String[bootclasspathsSize];
            bootclasspaths.toArray(paths);
            bootclasspaths.clear();
            int i = 0;
            while (i < bootclasspathsSize) {
                this.processPathEntries(4, bootclasspaths, paths[i], customEncoding, false, true);
                ++i;
            }
        } else {
            bootclasspaths = new ArrayList(4);
            try {
                Util.collectRunningVMBootclasspath(bootclasspaths);
            }
            catch (IllegalStateException illegalStateException) {
                this.logger.logWrongJDK();
                this.proceed = false;
                return null;
            }
        }
        return bootclasspaths;
    }

    protected ArrayList handleClasspath(ArrayList classpaths, String customEncoding) {
        int classpathsSize;
        if (classpaths != null && (classpathsSize = classpaths.size()) != 0) {
            String[] paths = new String[classpathsSize];
            classpaths.toArray(paths);
            classpaths.clear();
            int i = 0;
            while (i < classpathsSize) {
                this.processPathEntries(4, classpaths, paths[i], customEncoding, false, true);
                ++i;
            }
        } else {
            classpaths = new ArrayList<FileSystem.Classpath>(4);
            String classProp = System.getProperty("java.class.path");
            if (classProp == null || classProp.length() == 0) {
                this.addPendingErrors(this.bind("configure.noClasspath"));
                FileSystem.Classpath classpath = FileSystem.getClasspath(System.getProperty("user.dir"), customEncoding, null);
                if (classpath != null) {
                    classpaths.add(classpath);
                }
            } else {
                StringTokenizer tokenizer = new StringTokenizer(classProp, File.pathSeparator);
                while (tokenizer.hasMoreTokens()) {
                    String token = tokenizer.nextToken();
                    FileSystem.Classpath currentClasspath = FileSystem.getClasspath(token, customEncoding, null);
                    if (currentClasspath != null) {
                        classpaths.add(currentClasspath);
                        continue;
                    }
                    if (token.length() == 0) continue;
                    this.addPendingErrors(this.bind("configure.incorrectClasspath", token));
                }
            }
        }
        ArrayList<FileSystem.Classpath> result = new ArrayList<FileSystem.Classpath>();
        HashMap<String, FileSystem.Classpath> knownNames = new HashMap<String, FileSystem.Classpath>();
        FileSystem.ClasspathSectionProblemReporter problemReporter = new FileSystem.ClasspathSectionProblemReporter(){

            public void invalidClasspathSection(String jarFilePath) {
                Main.this.addPendingErrors(Main.this.bind("configure.invalidClasspathSection", jarFilePath));
            }

            public void multipleClasspathSections(String jarFilePath) {
                Main.this.addPendingErrors(Main.this.bind("configure.multipleClasspathSections", jarFilePath));
            }
        };
        while (!classpaths.isEmpty()) {
            FileSystem.Classpath current = (FileSystem.Classpath)classpaths.remove(0);
            String currentPath = current.getPath();
            if (knownNames.get(currentPath) != null) continue;
            knownNames.put(currentPath, current);
            result.add(current);
            List linkedJars = current.fetchLinkedJars(problemReporter);
            if (linkedJars == null) continue;
            classpaths.addAll(0, linkedJars);
        }
        return result;
    }

    protected ArrayList handleEndorseddirs(ArrayList endorsedDirClasspaths) {
        File javaHome = this.getJavaHome();
        if (endorsedDirClasspaths == null) {
            endorsedDirClasspaths = new ArrayList<Object>(4);
            String endorsedDirsStr = System.getProperty("java.endorsed.dirs");
            if (endorsedDirsStr == null) {
                if (javaHome != null) {
                    endorsedDirClasspaths.add(String.valueOf(javaHome.getAbsolutePath()) + "/lib/endorsed");
                }
            } else {
                StringTokenizer tokenizer = new StringTokenizer(endorsedDirsStr, File.pathSeparator);
                while (tokenizer.hasMoreTokens()) {
                    endorsedDirClasspaths.add(tokenizer.nextToken());
                }
            }
        }
        if (endorsedDirClasspaths.size() != 0) {
            File[] directoriesToCheck = new File[endorsedDirClasspaths.size()];
            int i = 0;
            while (i < directoriesToCheck.length) {
                directoriesToCheck[i] = new File((String)endorsedDirClasspaths.get(i));
                ++i;
            }
            endorsedDirClasspaths.clear();
            File[][] endorsedDirsJars = Main.getLibrariesFiles(directoriesToCheck);
            if (endorsedDirsJars != null) {
                int i2 = 0;
                int max = endorsedDirsJars.length;
                while (i2 < max) {
                    File[] current = endorsedDirsJars[i2];
                    if (current != null) {
                        int j = 0;
                        int max2 = current.length;
                        while (j < max2) {
                            FileSystem.Classpath classpath = FileSystem.getClasspath(current[j].getAbsolutePath(), null, null);
                            if (classpath != null) {
                                endorsedDirClasspaths.add(classpath);
                            }
                            ++j;
                        }
                    } else if (directoriesToCheck[i2].isFile()) {
                        this.addPendingErrors(this.bind("configure.incorrectEndorsedDirsEntry", directoriesToCheck[i2].getAbsolutePath()));
                    }
                    ++i2;
                }
            }
        }
        return endorsedDirClasspaths;
    }

    protected ArrayList handleExtdirs(ArrayList extdirsClasspaths) {
        File javaHome = this.getJavaHome();
        if (extdirsClasspaths == null) {
            extdirsClasspaths = new ArrayList<Object>(4);
            String extdirsStr = System.getProperty("java.ext.dirs");
            if (extdirsStr == null) {
                extdirsClasspaths.add(String.valueOf(javaHome.getAbsolutePath()) + "/lib/ext");
            } else {
                StringTokenizer tokenizer = new StringTokenizer(extdirsStr, File.pathSeparator);
                while (tokenizer.hasMoreTokens()) {
                    extdirsClasspaths.add(tokenizer.nextToken());
                }
            }
        }
        if (extdirsClasspaths.size() != 0) {
            File[] directoriesToCheck = new File[extdirsClasspaths.size()];
            int i = 0;
            while (i < directoriesToCheck.length) {
                directoriesToCheck[i] = new File((String)extdirsClasspaths.get(i));
                ++i;
            }
            extdirsClasspaths.clear();
            File[][] extdirsJars = Main.getLibrariesFiles(directoriesToCheck);
            if (extdirsJars != null) {
                int i2 = 0;
                int max = extdirsJars.length;
                while (i2 < max) {
                    File[] current = extdirsJars[i2];
                    if (current != null) {
                        int j = 0;
                        int max2 = current.length;
                        while (j < max2) {
                            FileSystem.Classpath classpath = FileSystem.getClasspath(current[j].getAbsolutePath(), null, null);
                            if (classpath != null) {
                                extdirsClasspaths.add(classpath);
                            }
                            ++j;
                        }
                    } else if (directoriesToCheck[i2].isFile()) {
                        this.addPendingErrors(this.bind("configure.incorrectExtDirsEntry", directoriesToCheck[i2].getAbsolutePath()));
                    }
                    ++i2;
                }
            }
        }
        return extdirsClasspaths;
    }

    protected void handleWarningToken(String token, boolean isEnabling) {
        this.handleErrorOrWarningToken(token, isEnabling, 0);
    }

    protected void handleErrorToken(String token, boolean isEnabling) {
        this.handleErrorOrWarningToken(token, isEnabling, 1);
    }

    private void setSeverity(String compilerOptions, int severity, boolean isEnabling) {
        if (isEnabling) {
            switch (severity) {
                case 1: {
                    this.options.put(compilerOptions, "error");
                    break;
                }
                case 0: {
                    this.options.put(compilerOptions, "warning");
                    break;
                }
                default: {
                    this.options.put(compilerOptions, "ignore");
                    break;
                }
            }
        } else {
            switch (severity) {
                case 1: {
                    String currentValue = (String)this.options.get(compilerOptions);
                    if (!"error".equals(currentValue)) break;
                    this.options.put(compilerOptions, "ignore");
                    break;
                }
                case 0: {
                    String currentValue = (String)this.options.get(compilerOptions);
                    if (!"warning".equals(currentValue)) break;
                    this.options.put(compilerOptions, "ignore");
                    break;
                }
                default: {
                    this.options.put(compilerOptions, "ignore");
                }
            }
        }
    }

    private void handleErrorOrWarningToken(String token, boolean isEnabling, int severity) {
        if (token.length() == 0) {
            return;
        }
        switch (token.charAt(0)) {
            case 'a': {
                if (token.equals("allDeprecation")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.deprecation", severity, isEnabling);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", isEnabling ? "enabled" : "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", isEnabling ? "enabled" : "disabled");
                    return;
                }
                if (token.equals("allJavadoc")) {
                    this.warnAllJavadocOn = this.warnJavadocOn = isEnabling;
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.invalidJavadoc", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocTags", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocComments", severity, isEnabling);
                    return;
                }
                if (token.equals("assertIdentifier")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.assertIdentifier", severity, isEnabling);
                    return;
                }
                if (token.equals("allDeadCode")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.deadCode", severity, isEnabling);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement", isEnabling ? "enabled" : "disabled");
                    return;
                }
                if (token.equals("allOver-ann")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation", severity, isEnabling);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation", isEnabling ? "enabled" : "disabled");
                    return;
                }
                if (!token.equals("all-static-method")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic", severity, isEnabling);
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic", severity, isEnabling);
                return;
            }
            case 'b': {
                if (!token.equals("boxing")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.autoboxing", severity, isEnabling);
                return;
            }
            case 'c': {
                if (token.equals("constructorName")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.methodWithConstructorName", severity, isEnabling);
                    return;
                }
                if (token.equals("conditionAssign")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment", severity, isEnabling);
                    return;
                }
                if (token.equals("compareIdentical")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.comparingIdentical", severity, isEnabling);
                    return;
                }
                if (!token.equals("charConcat")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion", severity, isEnabling);
                return;
            }
            case 'd': {
                if (token.equals("deprecation")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.deprecation", severity, isEnabling);
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", "disabled");
                    this.options.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", "disabled");
                    return;
                }
                if (token.equals("dep-ann")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation", severity, isEnabling);
                    return;
                }
                if (token.equals("discouraged")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.discouragedReference", severity, isEnabling);
                    return;
                }
                if (!token.equals("deadCode")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.deadCode", severity, isEnabling);
                this.options.put("org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement", "disabled");
                return;
            }
            case 'e': {
                if (token.equals("enumSwitch") || token.equals("incomplete-switch")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch", severity, isEnabling);
                    return;
                }
                if (token.equals("emptyBlock")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock", severity, isEnabling);
                    return;
                }
                if (!token.equals("enumIdentifier")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.enumIdentifier", severity, isEnabling);
                return;
            }
            case 'f': {
                if (token.equals("fieldHiding")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.fieldHiding", severity, isEnabling);
                    return;
                }
                if (token.equals("finalBound")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.finalParameterBound", severity, isEnabling);
                    return;
                }
                if (token.equals("finally")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally", severity, isEnabling);
                    return;
                }
                if (token.equals("forbidden")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.forbiddenReference", severity, isEnabling);
                    return;
                }
                if (!token.equals("fallthrough")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.fallthroughCase", severity, isEnabling);
                return;
            }
            case 'h': {
                if (token.equals("hiding")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.localVariableHiding", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.fieldHiding", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.typeParameterHiding", severity, isEnabling);
                    return;
                }
                if (!token.equals("hashCode")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod", severity, isEnabling);
                return;
            }
            case 'i': {
                if (token.equals("indirectStatic")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.indirectStaticAccess", severity, isEnabling);
                    return;
                }
                if (token.equals("intfNonInherited") || token.equals("interfaceNonInherited")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod", severity, isEnabling);
                    return;
                }
                if (token.equals("intfAnnotation")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.annotationSuperInterface", severity, isEnabling);
                    return;
                }
                if (token.equals("intfRedundant")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.redundantSuperinterface", severity, isEnabling);
                    return;
                }
                if (!token.equals("includeAssertNull")) break;
                this.options.put("org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts", isEnabling ? "enabled" : "disabled");
                return;
            }
            case 'j': {
                if (!token.equals("javadoc")) break;
                this.warnJavadocOn = isEnabling;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.invalidJavadoc", severity, isEnabling);
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingJavadocTags", severity, isEnabling);
                return;
            }
            case 'l': {
                if (!token.equals("localHiding")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.localVariableHiding", severity, isEnabling);
                return;
            }
            case 'm': {
                if (!token.equals("maskedCatchBlock") && !token.equals("maskedCatchBlocks")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock", severity, isEnabling);
                return;
            }
            case 'n': {
                if (token.equals("nls")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral", severity, isEnabling);
                    return;
                }
                if (token.equals("noEffectAssign")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.noEffectAssignment", severity, isEnabling);
                    return;
                }
                if (token.equals("noImplicitStringConversion")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion", severity, isEnabling);
                    return;
                }
                if (token.equals("null")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.nullReference", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.potentialNullReference", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.redundantNullCheck", severity, isEnabling);
                    return;
                }
                if (!token.equals("nullDereference")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.nullReference", severity, isEnabling);
                if (!isEnabling) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.potentialNullReference", 256, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.redundantNullCheck", 256, isEnabling);
                }
                return;
            }
            case 'o': {
                if (token.equals("over-sync")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod", severity, isEnabling);
                    return;
                }
                if (!token.equals("over-ann")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation", severity, isEnabling);
                this.options.put("org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation", "disabled");
                return;
            }
            case 'p': {
                if (token.equals("pkgDefaultMethod") || token.equals("packageDefaultMethod")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod", severity, isEnabling);
                    return;
                }
                if (!token.equals("paramAssign")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.parameterAssignment", severity, isEnabling);
                return;
            }
            case 'r': {
                if (token.equals("raw")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.rawTypeReference", severity, isEnabling);
                    return;
                }
                if (!token.equals("redundantSuperinterface")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.redundantSuperinterface", severity, isEnabling);
                return;
            }
            case 's': {
                if (token.equals("specialParamHiding")) {
                    this.options.put("org.eclipse.jdt.core.compiler.problem.specialParameterHidingField", isEnabling ? "enabled" : "disabled");
                    return;
                }
                if (token.equals("syntheticAccess") || token.equals("synthetic-access")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation", severity, isEnabling);
                    return;
                }
                if (token.equals("staticReceiver")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.staticAccessReceiver", severity, isEnabling);
                    return;
                }
                if (token.equals("syncOverride")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod", severity, isEnabling);
                    return;
                }
                if (token.equals("semicolon")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.emptyStatement", severity, isEnabling);
                    return;
                }
                if (token.equals("serial")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.missingSerialVersion", severity, isEnabling);
                    return;
                }
                if (token.equals("suppress")) {
                    switch (severity) {
                        case 0: {
                            this.options.put("org.eclipse.jdt.core.compiler.problem.suppressWarnings", isEnabling ? "enabled" : "disabled");
                            this.options.put("org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors", "disabled");
                            break;
                        }
                        case 1: {
                            this.options.put("org.eclipse.jdt.core.compiler.problem.suppressWarnings", isEnabling ? "enabled" : "disabled");
                            this.options.put("org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors", isEnabling ? "enabled" : "disabled");
                        }
                    }
                    return;
                }
                if (token.equals("static-access")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.staticAccessReceiver", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.indirectStaticAccess", severity, isEnabling);
                    return;
                }
                if (token.equals("super")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation", severity, isEnabling);
                    return;
                }
                if (!token.equals("static-method")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic", severity, isEnabling);
                return;
            }
            case 't': {
                if (token.startsWith("tasks")) {
                    String taskTags = Util.EMPTY_STRING;
                    int start = token.indexOf(40);
                    int end = token.indexOf(41);
                    if (start >= 0 && end >= 0 && start < end) {
                        taskTags = token.substring(start + 1, end).trim();
                        taskTags = taskTags.replace('|', ',');
                    }
                    if (taskTags.length() == 0) {
                        throw new IllegalArgumentException(this.bind("configure.invalidTaskTag", token));
                    }
                    this.options.put("org.eclipse.jdt.core.compiler.taskTags", isEnabling ? taskTags : Util.EMPTY_STRING);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.tasks", severity, isEnabling);
                    return;
                }
                if (!token.equals("typeHiding")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.typeParameterHiding", severity, isEnabling);
                return;
            }
            case 'u': {
                if (token.equals("unusedLocal") || token.equals("unusedLocals")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedLocal", severity, isEnabling);
                    return;
                }
                if (token.equals("unusedArgument") || token.equals("unusedArguments")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedParameter", severity, isEnabling);
                    return;
                }
                if (token.equals("unusedImport") || token.equals("unusedImports")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedImport", severity, isEnabling);
                    return;
                }
                if (token.equals("unusedAllocation")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation", severity, isEnabling);
                    return;
                }
                if (token.equals("unusedPrivate")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedPrivateMember", severity, isEnabling);
                    return;
                }
                if (token.equals("unusedLabel")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedLabel", severity, isEnabling);
                    return;
                }
                if (token.equals("uselessTypeCheck")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck", severity, isEnabling);
                    return;
                }
                if (token.equals("unchecked") || token.equals("unsafe")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation", severity, isEnabling);
                    return;
                }
                if (token.equals("unnecessaryElse")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unnecessaryElse", severity, isEnabling);
                    return;
                }
                if (token.equals("unusedThrown")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException", severity, isEnabling);
                    return;
                }
                if (token.equals("unqualifiedField") || token.equals("unqualified-field-access")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess", severity, isEnabling);
                    return;
                }
                if (token.equals("unused")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedLocal", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedParameter", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedImport", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedPrivateMember", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedLabel", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments", severity, isEnabling);
                    return;
                }
                if (token.equals("unusedTypeArgs")) {
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation", severity, isEnabling);
                    this.setSeverity("org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments", severity, isEnabling);
                    return;
                }
                if (!token.equals("unavoidableGenericProblems")) break;
                this.options.put("org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems", isEnabling ? "enabled" : "disabled");
                return;
            }
            case 'v': {
                if (!token.equals("varargsCast")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast", severity, isEnabling);
                return;
            }
            case 'w': {
                if (!token.equals("warningToken")) break;
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.unhandledWarningToken", severity, isEnabling);
                this.setSeverity("org.eclipse.jdt.core.compiler.problem.unusedWarningToken", severity, isEnabling);
                return;
            }
        }
        String message = null;
        switch (severity) {
            case 0: {
                message = this.bind("configure.invalidWarning", token);
                break;
            }
            case 1: {
                message = this.bind("configure.invalidError", token);
            }
        }
        this.addPendingErrors(message);
    }

    protected void initialize(PrintWriter outWriter, PrintWriter errWriter, boolean systemExit) {
        this.initialize(outWriter, errWriter, systemExit, null, null);
    }

    protected void initialize(PrintWriter outWriter, PrintWriter errWriter, boolean systemExit, Map customDefaultOptions) {
        this.initialize(outWriter, errWriter, systemExit, customDefaultOptions, null);
    }

    protected void initialize(PrintWriter outWriter, PrintWriter errWriter, boolean systemExit, Map customDefaultOptions, CompilationProgress compilationProgress) {
        this.logger = new Logger(this, outWriter, errWriter);
        this.proceed = true;
        this.out = outWriter;
        this.err = errWriter;
        this.systemExitWhenFinished = systemExit;
        this.options = new CompilerOptions().getMap();
        this.progress = compilationProgress;
        if (customDefaultOptions != null) {
            this.didSpecifySource = customDefaultOptions.get("org.eclipse.jdt.core.compiler.source") != null;
            this.didSpecifyTarget = customDefaultOptions.get("org.eclipse.jdt.core.compiler.codegen.targetPlatform") != null;
            Iterator iter = customDefaultOptions.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry entry = iter.next();
                this.options.put(entry.getKey(), entry.getValue());
            }
        } else {
            this.didSpecifySource = false;
            this.didSpecifyTarget = false;
        }
        this.classNames = null;
    }

    protected void initializeAnnotationProcessorManager() {
        try {
            Class<?> c = Class.forName("org.eclipse.jdt.internal.compiler.apt.dispatch.BatchAnnotationProcessorManager");
            AbstractAnnotationProcessorManager annotationManager = (AbstractAnnotationProcessorManager)c.newInstance();
            annotationManager.configure(this, this.expandedCommandLine);
            annotationManager.setErr(this.err);
            annotationManager.setOut(this.out);
            this.batchCompiler.annotationProcessorManager = annotationManager;
        }
        catch (ClassNotFoundException classNotFoundException) {
        }
        catch (InstantiationException instantiationException) {
            throw new AbortCompilation();
        }
        catch (IllegalAccessException illegalAccessException) {
            throw new AbortCompilation();
        }
        catch (UnsupportedClassVersionError unsupportedClassVersionError) {
            this.logger.logIncorrectVMVersionForAnnotationProcessing();
        }
    }

    public void outputClassFiles(CompilationResult unitResult) {
        if (unitResult != null && (!unitResult.hasErrors() || this.proceedOnError)) {
            ClassFile[] classFiles = unitResult.getClassFiles();
            String currentDestinationPath = null;
            boolean generateClasspathStructure = false;
            CompilationUnit compilationUnit = (CompilationUnit)unitResult.compilationUnit;
            if (compilationUnit.destinationPath == null) {
                if (this.destinationPath == null) {
                    currentDestinationPath = this.extractDestinationPathFromSourceFile(unitResult);
                } else if (this.destinationPath != NONE) {
                    currentDestinationPath = this.destinationPath;
                    generateClasspathStructure = true;
                }
            } else if (compilationUnit.destinationPath != NONE) {
                currentDestinationPath = compilationUnit.destinationPath;
                generateClasspathStructure = true;
            }
            if (currentDestinationPath != null) {
                int i = 0;
                int fileCount = classFiles.length;
                while (i < fileCount) {
                    ClassFile classFile = classFiles[i];
                    char[] filename = classFile.fileName();
                    int length = filename.length;
                    char[] relativeName = new char[length + 6];
                    System.arraycopy(filename, 0, relativeName, 0, length);
                    System.arraycopy(SuffixConstants.SUFFIX_class, 0, relativeName, length, 6);
                    CharOperation.replace(relativeName, '/', File.separatorChar);
                    String relativeStringName = new String(relativeName);
                    try {
                        if (this.compilerOptions.verbose) {
                            this.out.println(Messages.bind(Messages.compilation_write, new String[]{String.valueOf(this.exportedClassFilesCounter + 1), relativeStringName}));
                        }
                        Util.writeToDisk(generateClasspathStructure, currentDestinationPath, relativeStringName, classFile);
                        this.logger.logClassFile(generateClasspathStructure, currentDestinationPath, relativeStringName);
                        ++this.exportedClassFilesCounter;
                    }
                    catch (IOException e) {
                        this.logger.logNoClassFileCreated(currentDestinationPath, relativeStringName, e);
                    }
                    ++i;
                }
                this.batchCompiler.lookupEnvironment.releaseClassFiles(classFiles);
            }
        }
    }

    public void performCompilation() {
        this.startTime = System.currentTimeMillis();
        FileSystem environment = this.getLibraryAccess();
        this.compilerOptions = new CompilerOptions(this.options);
        this.compilerOptions.performMethodsFullRecovery = false;
        this.compilerOptions.performStatementsRecovery = false;
        this.batchCompiler = new Compiler(environment, this.getHandlingPolicy(), this.compilerOptions, this.getBatchRequestor(), this.getProblemFactory(), this.out, this.progress);
        this.batchCompiler.remainingIterations = this.maxRepetition - this.currentRepetition;
        String setting = System.getProperty("jdt.compiler.useSingleThread");
        boolean bl = this.batchCompiler.useSingleThread = setting != null && setting.equals("true");
        if (this.compilerOptions.complianceLevel >= 0x320000L && this.compilerOptions.processAnnotations) {
            if (this.checkVMVersion(0x320000L)) {
                this.initializeAnnotationProcessorManager();
                if (this.classNames != null) {
                    this.batchCompiler.setBinaryTypes(this.processClassNames(this.batchCompiler.lookupEnvironment));
                }
            } else {
                this.logger.logIncorrectVMVersionForAnnotationProcessing();
            }
        }
        this.compilerOptions.verbose = this.verbose;
        this.compilerOptions.produceReferenceInfo = this.produceRefInfo;
        try {
            this.logger.startLoggingSources();
            this.batchCompiler.compile(this.getCompilationUnits());
        }
        finally {
            this.logger.endLoggingSources();
        }
        if (this.extraProblems != null) {
            this.loggingExtraProblems();
            this.extraProblems = null;
        }
        if (this.compilerStats != null) {
            this.compilerStats[this.currentRepetition] = this.batchCompiler.stats;
        }
        this.logger.printStats();
        environment.cleanup();
    }

    protected void loggingExtraProblems() {
        this.logger.loggingExtraProblems(this);
    }

    public void printUsage() {
        this.printUsage("misc.usage");
    }

    private void printUsage(String sectionID) {
        this.logger.logUsage(this.bind(sectionID, new String[]{System.getProperty("path.separator"), this.bind("compiler.name"), this.bind("compiler.version"), this.bind("compiler.copyright")}));
        this.logger.flush();
    }

    private ReferenceBinding[] processClassNames(LookupEnvironment environment) {
        int length = this.classNames.length;
        ReferenceBinding[] referenceBindings = new ReferenceBinding[length];
        int i = 0;
        while (i < length) {
            String currentName = this.classNames[i];
            Object compoundName = null;
            if (currentName.indexOf(46) != -1) {
                char[] typeName = currentName.toCharArray();
                compoundName = CharOperation.splitOn('.', typeName);
            } else {
                compoundName = new char[][]{currentName.toCharArray()};
            }
            ReferenceBinding type = environment.getType((char[][])compoundName);
            if (type != null && type.isValidBinding()) {
                if (type.isBinaryBinding()) {
                    referenceBindings[i] = type;
                }
            } else {
                throw new IllegalArgumentException(this.bind("configure.invalidClassName", currentName));
            }
            ++i;
        }
        return referenceBindings;
    }

    public void processPathEntries(int defaultSize, ArrayList paths, String currentPath, String customEncoding, boolean isSourceOnly, boolean rejectDestinationPathOnJars) {
        String currentClasspathName = null;
        String currentDestinationPath = null;
        ArrayList<String> currentRuleSpecs = new ArrayList<String>(defaultSize);
        StringTokenizer tokenizer = new StringTokenizer(currentPath, String.valueOf(File.pathSeparator) + "[]", true);
        ArrayList<String> tokens = new ArrayList<String>();
        while (tokenizer.hasMoreTokens()) {
            tokens.add(tokenizer.nextToken());
        }
        int state = 0;
        String token = null;
        int cursor = 0;
        int tokensNb = tokens.size();
        int bracket = -1;
        while (cursor < tokensNb && state != 99) {
            if ((token = (String)tokens.get(cursor++)).equals(File.pathSeparator)) {
                switch (state) {
                    case 0: 
                    case 3: 
                    case 10: {
                        break;
                    }
                    case 1: 
                    case 2: 
                    case 8: {
                        state = 3;
                        this.addNewEntry(paths, currentClasspathName, currentRuleSpecs, customEncoding, currentDestinationPath, isSourceOnly, rejectDestinationPathOnJars);
                        currentRuleSpecs.clear();
                        break;
                    }
                    case 6: {
                        state = 4;
                        break;
                    }
                    case 7: {
                        throw new IllegalArgumentException(this.bind("configure.incorrectDestinationPathEntry", currentPath));
                    }
                    case 11: {
                        cursor = bracket + 1;
                        state = 5;
                        break;
                    }
                    default: {
                        state = 99;
                        break;
                    }
                }
            } else if (token.equals("[")) {
                switch (state) {
                    case 0: {
                        currentClasspathName = "";
                    }
                    case 1: {
                        bracket = cursor - 1;
                    }
                    case 11: {
                        state = 10;
                        break;
                    }
                    case 2: {
                        state = 9;
                        break;
                    }
                    case 8: {
                        state = 5;
                        break;
                    }
                    default: {
                        state = 99;
                        break;
                    }
                }
            } else if (token.equals("]")) {
                switch (state) {
                    case 6: {
                        state = 2;
                        break;
                    }
                    case 7: {
                        state = 8;
                        break;
                    }
                    case 10: {
                        state = 11;
                        break;
                    }
                    default: {
                        state = 99;
                        break;
                    }
                }
            } else {
                switch (state) {
                    case 0: 
                    case 3: {
                        state = 1;
                        currentClasspathName = token;
                        break;
                    }
                    case 5: {
                        if (token.startsWith("-d ")) {
                            if (currentDestinationPath != null) {
                                throw new IllegalArgumentException(this.bind("configure.duplicateDestinationPathEntry", currentPath));
                            }
                            currentDestinationPath = token.substring(3).trim();
                            state = 7;
                            break;
                        }
                    }
                    case 4: {
                        if (currentDestinationPath != null) {
                            throw new IllegalArgumentException(this.bind("configure.accessRuleAfterDestinationPath", currentPath));
                        }
                        state = 6;
                        currentRuleSpecs.add(token);
                        break;
                    }
                    case 9: {
                        if (!token.startsWith("-d ")) {
                            state = 99;
                            break;
                        }
                        currentDestinationPath = token.substring(3).trim();
                        state = 7;
                        break;
                    }
                    case 11: {
                        int i = bracket;
                        while (i < cursor) {
                            currentClasspathName = String.valueOf(currentClasspathName) + (String)tokens.get(i);
                            ++i;
                        }
                        state = 1;
                        break;
                    }
                    case 10: {
                        break;
                    }
                    default: {
                        state = 99;
                    }
                }
            }
            if (state != 11 || cursor != tokensNb) continue;
            cursor = bracket + 1;
            state = 5;
        }
        switch (state) {
            case 3: {
                break;
            }
            case 1: 
            case 2: 
            case 8: {
                this.addNewEntry(paths, currentClasspathName, currentRuleSpecs, customEncoding, currentDestinationPath, isSourceOnly, rejectDestinationPathOnJars);
                break;
            }
            default: {
                if (currentPath.length() == 0) break;
                this.addPendingErrors(this.bind("configure.incorrectClasspath", currentPath));
            }
        }
    }

    private int processPaths(String[] args, int index, String currentArg, ArrayList paths) {
        int localIndex = index;
        int count = 0;
        int i = 0;
        int max = currentArg.length();
        while (i < max) {
            switch (currentArg.charAt(i)) {
                case '[': {
                    ++count;
                    break;
                }
                case ']': {
                    --count;
                }
            }
            ++i;
        }
        if (count != 0) {
            if (count > 1) {
                throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", currentArg));
            }
            StringBuffer currentPath = new StringBuffer(currentArg);
            while (true) {
                if (localIndex >= args.length) {
                    throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", currentArg));
                }
                String nextArg = args[++localIndex];
                int i2 = 0;
                int max2 = nextArg.length();
                while (i2 < max2) {
                    switch (nextArg.charAt(i2)) {
                        case '[': {
                            if (count > 1) {
                                throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", nextArg));
                            }
                            ++count;
                            break;
                        }
                        case ']': {
                            --count;
                        }
                    }
                    ++i2;
                }
                if (count == 0) {
                    currentPath.append(' ');
                    currentPath.append(nextArg);
                    paths.add(currentPath.toString());
                    return localIndex - index;
                }
                if (count < 0) {
                    throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", nextArg));
                }
                currentPath.append(' ');
                currentPath.append(nextArg);
            }
        }
        paths.add(currentArg);
        return localIndex - index;
    }

    private int processPaths(String[] args, int index, String currentArg, String[] paths) {
        int localIndex = index;
        int count = 0;
        int i = 0;
        int max = currentArg.length();
        while (i < max) {
            switch (currentArg.charAt(i)) {
                case '[': {
                    ++count;
                    break;
                }
                case ']': {
                    --count;
                }
            }
            ++i;
        }
        if (count != 0) {
            StringBuffer currentPath = new StringBuffer(currentArg);
            while (true) {
                if (++localIndex >= args.length) {
                    throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", currentArg));
                }
                String nextArg = args[localIndex];
                int i2 = 0;
                int max2 = nextArg.length();
                while (i2 < max2) {
                    switch (nextArg.charAt(i2)) {
                        case '[': {
                            if (count > 1) {
                                throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", currentArg));
                            }
                            ++count;
                            break;
                        }
                        case ']': {
                            --count;
                        }
                    }
                    ++i2;
                }
                if (count == 0) {
                    currentPath.append(' ');
                    currentPath.append(nextArg);
                    paths[0] = currentPath.toString();
                    return localIndex - index;
                }
                if (count < 0) {
                    throw new IllegalArgumentException(this.bind("configure.unexpectedBracket", currentArg));
                }
                currentPath.append(' ');
                currentPath.append(nextArg);
            }
        }
        paths[0] = currentArg;
        return localIndex - index;
    }

    public void relocalize() {
        this.relocalize(Locale.getDefault());
    }

    private void relocalize(Locale locale) {
        this.compilerLocale = locale;
        try {
            this.bundle = ResourceBundleFactory.getBundle(locale);
        }
        catch (MissingResourceException e) {
            System.out.println("Missing resource : " + bundleName.replace('.', '/') + ".properties for locale " + locale);
            throw e;
        }
    }

    public void setDestinationPath(String dest) {
        this.destinationPath = dest;
    }

    public void setLocale(Locale locale) {
        this.relocalize(locale);
    }

    protected void setPaths(ArrayList bootclasspaths, String sourcepathClasspathArg, ArrayList sourcepathClasspaths, ArrayList classpaths, ArrayList extdirsClasspaths, ArrayList endorsedDirClasspaths, String customEncoding) {
        bootclasspaths = this.handleBootclasspath(bootclasspaths, customEncoding);
        classpaths = this.handleClasspath(classpaths, customEncoding);
        if (sourcepathClasspathArg != null) {
            this.processPathEntries(4, sourcepathClasspaths, sourcepathClasspathArg, customEncoding, true, false);
        }
        extdirsClasspaths = this.handleExtdirs(extdirsClasspaths);
        endorsedDirClasspaths = this.handleEndorseddirs(endorsedDirClasspaths);
        bootclasspaths.addAll(endorsedDirClasspaths);
        bootclasspaths.addAll(extdirsClasspaths);
        bootclasspaths.addAll(sourcepathClasspaths);
        bootclasspaths.addAll(classpaths);
        classpaths = bootclasspaths;
        classpaths = FileSystem.ClasspathNormalizer.normalize(classpaths);
        this.checkedClasspaths = new FileSystem.Classpath[classpaths.size()];
        classpaths.toArray(this.checkedClasspaths);
        this.logger.logClasspath(this.checkedClasspaths);
    }

    protected void validateOptions(boolean didSpecifyCompliance) {
        Object version;
        if (didSpecifyCompliance) {
            Object source;
            version = this.options.get("org.eclipse.jdt.core.compiler.compliance");
            if ("1.3".equals(version)) {
                if (!this.didSpecifySource) {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.3");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.1");
                }
            } else if ("1.4".equals(version)) {
                if (this.didSpecifySource) {
                    source = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(source)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.2");
                        }
                    } else if ("1.4".equals(source) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.3");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.2");
                    }
                }
            } else if ("1.5".equals(version)) {
                if (this.didSpecifySource) {
                    source = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(source) || "1.4".equals(source)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if ("1.5".equals(source) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.5");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                    }
                }
            } else if ("1.6".equals(version)) {
                if (this.didSpecifySource) {
                    source = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(source) || "1.4".equals(source)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if (("1.5".equals(source) || "1.6".equals(source)) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.6");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                    }
                }
            } else if ("1.7".equals(version)) {
                if (this.didSpecifySource) {
                    source = this.options.get("org.eclipse.jdt.core.compiler.source");
                    if ("1.3".equals(source) || "1.4".equals(source)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                        }
                    } else if ("1.5".equals(source) || "1.6".equals(source)) {
                        if (!this.didSpecifyTarget) {
                            this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                        }
                    } else if ("1.7".equals(source) && !this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                    }
                } else {
                    this.options.put("org.eclipse.jdt.core.compiler.source", "1.7");
                    if (!this.didSpecifyTarget) {
                        this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                    }
                }
            }
        } else if (this.didSpecifySource) {
            version = this.options.get("org.eclipse.jdt.core.compiler.source");
            if ("1.4".equals(version)) {
                if (!didSpecifyCompliance) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.4");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.4");
                }
            } else if ("1.5".equals(version)) {
                if (!didSpecifyCompliance) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.5");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.5");
                }
            } else if ("1.6".equals(version)) {
                if (!didSpecifyCompliance) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.6");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.6");
                }
            } else if ("1.7".equals(version)) {
                if (!didSpecifyCompliance) {
                    this.options.put("org.eclipse.jdt.core.compiler.compliance", "1.7");
                }
                if (!this.didSpecifyTarget) {
                    this.options.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.7");
                }
            }
        }
        Object sourceVersion = this.options.get("org.eclipse.jdt.core.compiler.source");
        Object compliance = this.options.get("org.eclipse.jdt.core.compiler.compliance");
        if (sourceVersion.equals("1.7") && CompilerOptions.versionToJdkLevel(compliance) < 0x330000L) {
            throw new IllegalArgumentException(this.bind("configure.incompatibleComplianceForSource", (String)this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.7"));
        }
        if (sourceVersion.equals("1.6") && CompilerOptions.versionToJdkLevel(compliance) < 0x320000L) {
            throw new IllegalArgumentException(this.bind("configure.incompatibleComplianceForSource", (String)this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.6"));
        }
        if (sourceVersion.equals("1.5") && CompilerOptions.versionToJdkLevel(compliance) < 0x310000L) {
            throw new IllegalArgumentException(this.bind("configure.incompatibleComplianceForSource", (String)this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.5"));
        }
        if (sourceVersion.equals("1.4") && CompilerOptions.versionToJdkLevel(compliance) < 0x300000L) {
            throw new IllegalArgumentException(this.bind("configure.incompatibleComplianceForSource", (String)this.options.get("org.eclipse.jdt.core.compiler.compliance"), "1.4"));
        }
        if (this.didSpecifyTarget) {
            Object targetVersion = this.options.get("org.eclipse.jdt.core.compiler.codegen.targetPlatform");
            if ("jsr14".equals(targetVersion)) {
                if (CompilerOptions.versionToJdkLevel(sourceVersion) < 0x310000L) {
                    throw new IllegalArgumentException(this.bind("configure.incompatibleTargetForGenericSource", (String)targetVersion, (String)sourceVersion));
                }
            } else if ("cldc1.1".equals(targetVersion)) {
                if (this.didSpecifySource && CompilerOptions.versionToJdkLevel(sourceVersion) >= 0x300000L) {
                    throw new IllegalArgumentException(this.bind("configure.incompatibleSourceForCldcTarget", (String)targetVersion, (String)sourceVersion));
                }
                if (CompilerOptions.versionToJdkLevel(compliance) >= 0x310000L) {
                    throw new IllegalArgumentException(this.bind("configure.incompatibleComplianceForCldcTarget", (String)targetVersion, (String)sourceVersion));
                }
            } else {
                if (CompilerOptions.versionToJdkLevel(sourceVersion) >= 0x330000L && CompilerOptions.versionToJdkLevel(targetVersion) < 0x330000L) {
                    throw new IllegalArgumentException(this.bind("configure.incompatibleTargetForSource", (String)targetVersion, "1.7"));
                }
                if (CompilerOptions.versionToJdkLevel(sourceVersion) >= 0x320000L && CompilerOptions.versionToJdkLevel(targetVersion) < 0x320000L) {
                    throw new IllegalArgumentException(this.bind("configure.incompatibleTargetForSource", (String)targetVersion, "1.6"));
                }
                if (CompilerOptions.versionToJdkLevel(sourceVersion) >= 0x310000L && CompilerOptions.versionToJdkLevel(targetVersion) < 0x310000L) {
                    throw new IllegalArgumentException(this.bind("configure.incompatibleTargetForSource", (String)targetVersion, "1.5"));
                }
                if (CompilerOptions.versionToJdkLevel(sourceVersion) >= 0x300000L && CompilerOptions.versionToJdkLevel(targetVersion) < 0x300000L) {
                    throw new IllegalArgumentException(this.bind("configure.incompatibleTargetForSource", (String)targetVersion, "1.4"));
                }
                if (CompilerOptions.versionToJdkLevel(compliance) < CompilerOptions.versionToJdkLevel(targetVersion)) {
                    throw new IllegalArgumentException(this.bind("configure.incompatibleComplianceForTarget", (String)this.options.get("org.eclipse.jdt.core.compiler.compliance"), (String)targetVersion));
                }
            }
        }
    }

    public static class Logger {
        private PrintWriter err;
        private PrintWriter log;
        private Main main;
        private PrintWriter out;
        private HashMap parameters;
        int tagBits;
        private static final String CLASS = "class";
        private static final String CLASS_FILE = "classfile";
        private static final String CLASSPATH = "classpath";
        private static final String CLASSPATH_FILE = "FILE";
        private static final String CLASSPATH_FOLDER = "FOLDER";
        private static final String CLASSPATH_ID = "id";
        private static final String CLASSPATH_JAR = "JAR";
        private static final String CLASSPATHS = "classpaths";
        private static final String COMMAND_LINE_ARGUMENT = "argument";
        private static final String COMMAND_LINE_ARGUMENTS = "command_line";
        private static final String COMPILER = "compiler";
        private static final String COMPILER_COPYRIGHT = "copyright";
        private static final String COMPILER_NAME = "name";
        private static final String COMPILER_VERSION = "version";
        public static final int EMACS = 2;
        private static final String ERROR = "ERROR";
        private static final String ERROR_TAG = "error";
        private static final String WARNING_TAG = "warning";
        private static final String EXCEPTION = "exception";
        private static final String EXTRA_PROBLEM_TAG = "extra_problem";
        private static final String EXTRA_PROBLEMS = "extra_problems";
        private static final HashtableOfInt FIELD_TABLE = new HashtableOfInt();
        private static final String KEY = "key";
        private static final String MESSAGE = "message";
        private static final String NUMBER_OF_CLASSFILES = "number_of_classfiles";
        private static final String NUMBER_OF_ERRORS = "errors";
        private static final String NUMBER_OF_LINES = "number_of_lines";
        private static final String NUMBER_OF_PROBLEMS = "problems";
        private static final String NUMBER_OF_TASKS = "tasks";
        private static final String NUMBER_OF_WARNINGS = "warnings";
        private static final String OPTION = "option";
        private static final String OPTIONS = "options";
        private static final String OUTPUT = "output";
        private static final String PACKAGE = "package";
        private static final String PATH = "path";
        private static final String PROBLEM_ARGUMENT = "argument";
        private static final String PROBLEM_ARGUMENT_VALUE = "value";
        private static final String PROBLEM_ARGUMENTS = "arguments";
        private static final String PROBLEM_CATEGORY_ID = "categoryID";
        private static final String ID = "id";
        private static final String PROBLEM_ID = "problemID";
        private static final String PROBLEM_LINE = "line";
        private static final String PROBLEM_OPTION_KEY = "optionKey";
        private static final String PROBLEM_MESSAGE = "message";
        private static final String PROBLEM_SEVERITY = "severity";
        private static final String PROBLEM_SOURCE_END = "charEnd";
        private static final String PROBLEM_SOURCE_START = "charStart";
        private static final String PROBLEM_SUMMARY = "problem_summary";
        private static final String PROBLEM_TAG = "problem";
        private static final String PROBLEMS = "problems";
        private static final String SOURCE = "source";
        private static final String SOURCE_CONTEXT = "source_context";
        private static final String SOURCE_END = "sourceEnd";
        private static final String SOURCE_START = "sourceStart";
        private static final String SOURCES = "sources";
        private static final String STATS = "stats";
        private static final String TASK = "task";
        private static final String TASKS = "tasks";
        private static final String TIME = "time";
        private static final String VALUE = "value";
        private static final String WARNING = "WARNING";
        public static final int XML = 1;
        private static final String XML_DTD_DECLARATION = "<!DOCTYPE compiler PUBLIC \"-//Eclipse.org//DTD Eclipse JDT 3.2.004 Compiler//EN\" \"http://www.eclipse.org/jdt/core/compiler_32_004.dtd\">";

        static {
            try {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jdt.core.compiler.IProblem");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class<?> c = clazz;
                Field[] fields = c.getFields();
                int i = 0;
                int max = fields.length;
                while (i < max) {
                    Field field = fields[i];
                    if (field.getType().equals(Integer.TYPE)) {
                        Integer value = (Integer)field.get(null);
                        int key2 = value & 0xFFFFFF;
                        if (key2 == 0) {
                            key2 = Integer.MAX_VALUE;
                        }
                        FIELD_TABLE.put(key2, field.getName());
                    }
                    ++i;
                }
            }
            catch (SecurityException e) {
                e.printStackTrace();
            }
            catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
            catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }

        public Logger(Main main, PrintWriter out, PrintWriter err) {
            this.out = out;
            this.err = err;
            this.parameters = new HashMap();
            this.main = main;
        }

        public String buildFileName(String outputPath, String relativeFileName) {
            char fileSeparatorChar = File.separatorChar;
            String fileSeparator = File.separator;
            outputPath = outputPath.replace('/', fileSeparatorChar);
            StringBuffer outDir = new StringBuffer(outputPath);
            if (!outputPath.endsWith(fileSeparator)) {
                outDir.append(fileSeparator);
            }
            StringTokenizer tokenizer = new StringTokenizer(relativeFileName, fileSeparator);
            String token = tokenizer.nextToken();
            while (tokenizer.hasMoreTokens()) {
                outDir.append(token).append(fileSeparator);
                token = tokenizer.nextToken();
            }
            return outDir.append(token).toString();
        }

        public void close() {
            if (this.log != null) {
                if ((this.tagBits & 1) != 0) {
                    this.endTag(COMPILER);
                    this.flush();
                }
                this.log.close();
            }
        }

        public void compiling() {
            this.printlnOut(this.main.bind("progress.compiling"));
        }

        private void endLoggingExtraProblems() {
            this.endTag(EXTRA_PROBLEMS);
        }

        private void endLoggingProblems() {
            this.endTag("problems");
        }

        public void endLoggingSource() {
            if ((this.tagBits & 1) != 0) {
                this.endTag(SOURCE);
            }
        }

        public void endLoggingSources() {
            if ((this.tagBits & 1) != 0) {
                this.endTag(SOURCES);
            }
        }

        public void endLoggingTasks() {
            if ((this.tagBits & 1) != 0) {
                this.endTag("tasks");
            }
        }

        private void endTag(String name) {
            if (this.log != null) {
                ((GenericXMLWriter)this.log).endTag(name, true, true);
            }
        }

        private String errorReportSource(CategorizedProblem problem, char[] unitSource, int bits) {
            char c;
            int length;
            int startPosition = problem.getSourceStart();
            int endPosition = problem.getSourceEnd();
            if (unitSource == null && problem.getOriginatingFileName() != null) {
                try {
                    unitSource = Util.getFileCharContent(new File(new String(problem.getOriginatingFileName())), null);
                }
                catch (IOException iOException) {}
            }
            if (startPosition > endPosition || startPosition < 0 && endPosition < 0 || unitSource == null || (length = unitSource.length) == 0) {
                return Messages.problem_noSourceInformation;
            }
            StringBuffer errorBuffer = new StringBuffer();
            if ((bits & 2) == 0) {
                errorBuffer.append(' ').append(Messages.bind(Messages.problem_atLine, String.valueOf(problem.getSourceLineNumber())));
                errorBuffer.append(Util.LINE_SEPARATOR);
            }
            errorBuffer.append('\t');
            int begin = startPosition >= length ? length - 1 : startPosition;
            while (begin > 0) {
                c = unitSource[begin - 1];
                if (c == '\n' || c == '\r') break;
                --begin;
            }
            int end = endPosition >= length ? length - 1 : endPosition;
            while (end + 1 < length) {
                c = unitSource[end + 1];
                if (c == '\r' || c == '\n') break;
                ++end;
            }
            while ((c = unitSource[begin]) == ' ' || c == '\t') {
                ++begin;
            }
            errorBuffer.append(unitSource, begin, end - begin + 1);
            errorBuffer.append(Util.LINE_SEPARATOR).append("\t");
            int i = begin;
            while (i < startPosition) {
                errorBuffer.append(unitSource[i] == '\t' ? (char)'\t' : ' ');
                ++i;
            }
            i = startPosition;
            while (i <= (endPosition >= length ? length - 1 : endPosition)) {
                errorBuffer.append('^');
                ++i;
            }
            return errorBuffer.toString();
        }

        private void extractContext(CategorizedProblem problem, char[] unitSource) {
            char c;
            int length;
            int startPosition = problem.getSourceStart();
            int endPosition = problem.getSourceEnd();
            if (unitSource == null && problem.getOriginatingFileName() != null) {
                try {
                    unitSource = Util.getFileCharContent(new File(new String(problem.getOriginatingFileName())), null);
                }
                catch (IOException iOException) {}
            }
            if (startPosition > endPosition || startPosition < 0 && endPosition < 0 || unitSource == null || (length = unitSource.length) <= 0 || endPosition > length) {
                this.parameters.put("value", Messages.problem_noSourceInformation);
                this.parameters.put(SOURCE_START, "-1");
                this.parameters.put(SOURCE_END, "-1");
                this.printTag(SOURCE_CONTEXT, this.parameters, true, true);
                return;
            }
            int begin = startPosition >= length ? length - 1 : startPosition;
            while (begin > 0) {
                c = unitSource[begin - 1];
                if (c == '\n' || c == '\r') break;
                --begin;
            }
            int end = endPosition >= length ? length - 1 : endPosition;
            while (end + 1 < length) {
                c = unitSource[end + 1];
                if (c == '\r' || c == '\n') break;
                ++end;
            }
            while ((c = unitSource[begin]) == ' ' || c == '\t') {
                ++begin;
            }
            while ((c = unitSource[end]) == ' ' || c == '\t') {
                --end;
            }
            StringBuffer buffer = new StringBuffer();
            buffer.append(unitSource, begin, end - begin + 1);
            this.parameters.put("value", String.valueOf(buffer));
            this.parameters.put(SOURCE_START, Integer.toString(startPosition - begin));
            this.parameters.put(SOURCE_END, Integer.toString(endPosition - begin));
            this.printTag(SOURCE_CONTEXT, this.parameters, true, true);
        }

        public void flush() {
            this.out.flush();
            this.err.flush();
            if (this.log != null) {
                this.log.flush();
            }
        }

        private String getFieldName(int id) {
            int key2 = id & 0xFFFFFF;
            if (key2 == 0) {
                key2 = Integer.MAX_VALUE;
            }
            return (String)FIELD_TABLE.get(key2);
        }

        private String getProblemOptionKey(int problemID) {
            int irritant = ProblemReporter.getIrritant(problemID);
            return CompilerOptions.optionKeyFromIrritant(irritant);
        }

        public void logAverage() {
            Arrays.sort(this.main.compilerStats);
            long lineCount = this.main.compilerStats[0].lineCount;
            int length = this.main.maxRepetition;
            long sum = 0L;
            long parseSum = 0L;
            long resolveSum = 0L;
            long analyzeSum = 0L;
            long generateSum = 0L;
            int i = 1;
            int max = length - 1;
            while (i < max) {
                CompilerStats stats = this.main.compilerStats[i];
                sum += stats.elapsedTime();
                parseSum += stats.parseTime;
                resolveSum += stats.resolveTime;
                analyzeSum += stats.analyzeTime;
                generateSum += stats.generateTime;
                ++i;
            }
            long time = sum / (long)(length - 2);
            long parseTime = parseSum / (long)(length - 2);
            long resolveTime = resolveSum / (long)(length - 2);
            long analyzeTime = analyzeSum / (long)(length - 2);
            long generateTime = generateSum / (long)(length - 2);
            this.printlnOut(this.main.bind("compile.averageTime", new String[]{String.valueOf(lineCount), String.valueOf(time), String.valueOf((double)((int)((double)lineCount * 10000.0 / (double)time)) / 10.0)}));
            if ((this.main.timing & 2) != 0) {
                this.printlnOut(this.main.bind("compile.detailedTime", new String[]{String.valueOf(parseTime), String.valueOf((double)((int)((double)parseTime * 1000.0 / (double)time)) / 10.0), String.valueOf(resolveTime), String.valueOf((double)((int)((double)resolveTime * 1000.0 / (double)time)) / 10.0), String.valueOf(analyzeTime), String.valueOf((double)((int)((double)analyzeTime * 1000.0 / (double)time)) / 10.0), String.valueOf(generateTime), String.valueOf((double)((int)((double)generateTime * 1000.0 / (double)time)) / 10.0)}));
            }
        }

        public void logClassFile(boolean generatePackagesStructure, String outputPath, String relativeFileName) {
            if ((this.tagBits & 1) != 0) {
                String fileName = null;
                if (generatePackagesStructure) {
                    fileName = this.buildFileName(outputPath, relativeFileName);
                } else {
                    char fileSeparatorChar = File.separatorChar;
                    String fileSeparator = File.separator;
                    outputPath = outputPath.replace('/', fileSeparatorChar);
                    int indexOfPackageSeparator = relativeFileName.lastIndexOf(fileSeparatorChar);
                    if (indexOfPackageSeparator == -1) {
                        fileName = outputPath.endsWith(fileSeparator) ? String.valueOf(outputPath) + relativeFileName : String.valueOf(outputPath) + fileSeparator + relativeFileName;
                    } else {
                        int length = relativeFileName.length();
                        fileName = outputPath.endsWith(fileSeparator) ? String.valueOf(outputPath) + relativeFileName.substring(indexOfPackageSeparator + 1, length) : String.valueOf(outputPath) + fileSeparator + relativeFileName.substring(indexOfPackageSeparator + 1, length);
                    }
                }
                File f = new File(fileName);
                try {
                    this.parameters.put(PATH, f.getCanonicalPath());
                    this.printTag(CLASS_FILE, this.parameters, true, true);
                }
                catch (IOException e) {
                    this.logNoClassFileCreated(outputPath, relativeFileName, e);
                }
            }
        }

        public void logClasspath(FileSystem.Classpath[] classpaths) {
            int length;
            if (classpaths == null) {
                return;
            }
            if ((this.tagBits & 1) != 0 && (length = classpaths.length) != 0) {
                this.printTag(CLASSPATHS, null, true, false);
                int i = 0;
                while (i < length) {
                    String classpath = classpaths[i].getPath();
                    this.parameters.put(PATH, classpath);
                    File f = new File(classpath);
                    String id = null;
                    if (f.isFile()) {
                        id = Util.isPotentialZipArchive(classpath) ? CLASSPATH_JAR : CLASSPATH_FILE;
                    } else if (f.isDirectory()) {
                        id = CLASSPATH_FOLDER;
                    }
                    if (id != null) {
                        this.parameters.put("id", id);
                        this.printTag(CLASSPATH, this.parameters, true, true);
                    }
                    ++i;
                }
                this.endTag(CLASSPATHS);
            }
        }

        public void logCommandLineArguments(String[] commandLineArguments) {
            int length;
            if (commandLineArguments == null) {
                return;
            }
            if ((this.tagBits & 1) != 0 && (length = commandLineArguments.length) != 0) {
                this.printTag(COMMAND_LINE_ARGUMENTS, null, true, false);
                int i = 0;
                while (i < length) {
                    this.parameters.put("value", commandLineArguments[i]);
                    this.printTag("argument", this.parameters, true, true);
                    ++i;
                }
                this.endTag(COMMAND_LINE_ARGUMENTS);
            }
        }

        public void logException(Exception e) {
            String message;
            StringWriter writer = new StringWriter();
            PrintWriter printWriter = new PrintWriter(writer);
            e.printStackTrace(printWriter);
            printWriter.flush();
            printWriter.close();
            String stackTrace = writer.toString();
            if ((this.tagBits & 1) != 0) {
                LineNumberReader reader = new LineNumberReader(new StringReader(stackTrace));
                int i = 0;
                StringBuffer buffer = new StringBuffer();
                String message2 = e.getMessage();
                if (message2 != null) {
                    buffer.append(message2).append(Util.LINE_SEPARATOR);
                }
                try {
                    String line;
                    while ((line = reader.readLine()) != null && i < 4) {
                        buffer.append(line).append(Util.LINE_SEPARATOR);
                        ++i;
                    }
                    reader.close();
                }
                catch (IOException iOException) {}
                message2 = buffer.toString();
                this.parameters.put("message", message2);
                this.parameters.put(CLASS, e.getClass());
                this.printTag(EXCEPTION, this.parameters, true, true);
            }
            if ((message = e.getMessage()) == null) {
                this.printlnErr(stackTrace);
            } else {
                this.printlnErr(message);
            }
        }

        private void logExtraProblem(CategorizedProblem problem, int localErrorCount, int globalErrorCount) {
            char[] originatingFileName = problem.getOriginatingFileName();
            if (originatingFileName == null) {
                if (problem.isError()) {
                    this.printErr(this.main.bind("requestor.extraerror", Integer.toString(globalErrorCount)));
                } else {
                    this.printErr(this.main.bind("requestor.extrawarning", Integer.toString(globalErrorCount)));
                }
                this.printErr(" ");
                this.printlnErr(problem.getMessage());
            } else {
                String fileName = new String(originatingFileName);
                if ((this.tagBits & 2) != 0) {
                    String result = String.valueOf(fileName) + ":" + problem.getSourceLineNumber() + ": " + (problem.isError() ? this.main.bind("output.emacs.error") : this.main.bind("output.emacs.warning")) + ": " + problem.getMessage();
                    this.printlnErr(result);
                    String errorReportSource = this.errorReportSource(problem, null, this.tagBits);
                    this.printlnErr(errorReportSource);
                } else {
                    if (localErrorCount == 0) {
                        this.printlnErr("----------");
                    }
                    this.printErr(problem.isError() ? this.main.bind("requestor.error", Integer.toString(globalErrorCount), new String(fileName)) : this.main.bind("requestor.warning", Integer.toString(globalErrorCount), new String(fileName)));
                    String errorReportSource = this.errorReportSource(problem, null, 0);
                    this.printlnErr(errorReportSource);
                    this.printlnErr(problem.getMessage());
                    this.printlnErr("----------");
                }
            }
        }

        public void loggingExtraProblems(Main currentMain) {
            ArrayList problems = currentMain.extraProblems;
            int count = problems.size();
            int localProblemCount = 0;
            if (count != 0) {
                CategorizedProblem problem;
                int errors = 0;
                int warnings = 0;
                int i = 0;
                while (i < count) {
                    problem = (CategorizedProblem)problems.get(i);
                    if (problem != null) {
                        ++currentMain.globalProblemsCount;
                        this.logExtraProblem(problem, localProblemCount, currentMain.globalProblemsCount);
                        ++localProblemCount;
                        if (problem.isError()) {
                            ++errors;
                            ++currentMain.globalErrorsCount;
                        } else if (problem.isWarning()) {
                            ++currentMain.globalWarningsCount;
                            ++warnings;
                        }
                    }
                    ++i;
                }
                if ((this.tagBits & 1) != 0 && errors + warnings != 0) {
                    this.startLoggingExtraProblems(count);
                    i = 0;
                    while (i < count) {
                        problem = (CategorizedProblem)problems.get(i);
                        if (problem != null && problem.getID() != 536871362) {
                            this.logXmlExtraProblem(problem, localProblemCount, currentMain.globalProblemsCount);
                        }
                        ++i;
                    }
                    this.endLoggingExtraProblems();
                }
            }
        }

        public void logIncorrectVMVersionForAnnotationProcessing() {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", this.main.bind("configure.incorrectVMVersionforAPT"));
                this.printTag(ERROR_TAG, this.parameters, true, true);
            }
            this.printlnErr(this.main.bind("configure.incorrectVMVersionforAPT"));
        }

        public void logNoClassFileCreated(String outputDir, String relativeFileName, IOException e) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", this.main.bind("output.noClassFileCreated", new String[]{outputDir, relativeFileName, e.getMessage()}));
                this.printTag(ERROR_TAG, this.parameters, true, true);
            }
            this.printlnErr(this.main.bind("output.noClassFileCreated", new String[]{outputDir, relativeFileName, e.getMessage()}));
        }

        public void logNumberOfClassFilesGenerated(int exportedClassFilesCounter) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("value", new Integer(exportedClassFilesCounter));
                this.printTag(NUMBER_OF_CLASSFILES, this.parameters, true, true);
            }
            if (exportedClassFilesCounter == 1) {
                this.printlnOut(this.main.bind("compile.oneClassFileGenerated"));
            } else {
                this.printlnOut(this.main.bind("compile.severalClassFilesGenerated", String.valueOf(exportedClassFilesCounter)));
            }
        }

        public void logOptions(Map options) {
            if ((this.tagBits & 1) != 0) {
                this.printTag(OPTIONS, null, true, false);
                Set entriesSet = options.entrySet();
                Object[] entries = entriesSet.toArray();
                Arrays.sort(entries, new Comparator(this){
                    final /* synthetic */ Logger this$1;
                    {
                        this.this$1 = logger;
                    }

                    public int compare(Object o1, Object o2) {
                        Map.Entry entry1 = (Map.Entry)o1;
                        Map.Entry entry2 = (Map.Entry)o2;
                        return ((String)entry1.getKey()).compareTo((String)entry2.getKey());
                    }
                });
                int i = 0;
                int max = entries.length;
                while (i < max) {
                    Map.Entry entry = (Map.Entry)entries[i];
                    String key = (String)entry.getKey();
                    this.parameters.put(KEY, key);
                    this.parameters.put("value", entry.getValue());
                    this.printTag(OPTION, this.parameters, true, true);
                    ++i;
                }
                this.endTag(OPTIONS);
            }
        }

        public void logPendingError(String error) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", error);
                this.printTag(ERROR_TAG, this.parameters, true, true);
            }
            this.printlnErr(error);
        }

        public void logWarning(String message) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", message);
                this.printTag(WARNING_TAG, this.parameters, true, true);
            }
            this.printlnOut(message);
        }

        private void logProblem(CategorizedProblem problem, int localErrorCount, int globalErrorCount, char[] unitSource) {
            if ((this.tagBits & 2) != 0) {
                String result = String.valueOf(new String(problem.getOriginatingFileName())) + ":" + problem.getSourceLineNumber() + ": " + (problem.isError() ? this.main.bind("output.emacs.error") : this.main.bind("output.emacs.warning")) + ": " + problem.getMessage();
                this.printlnErr(result);
                String errorReportSource = this.errorReportSource(problem, unitSource, this.tagBits);
                if (errorReportSource.length() != 0) {
                    this.printlnErr(errorReportSource);
                }
            } else {
                if (localErrorCount == 0) {
                    this.printlnErr("----------");
                }
                this.printErr(problem.isError() ? this.main.bind("requestor.error", Integer.toString(globalErrorCount), new String(problem.getOriginatingFileName())) : this.main.bind("requestor.warning", Integer.toString(globalErrorCount), new String(problem.getOriginatingFileName())));
                try {
                    String errorReportSource = this.errorReportSource(problem, unitSource, 0);
                    this.printlnErr(errorReportSource);
                    this.printlnErr(problem.getMessage());
                }
                catch (Exception exception) {
                    this.printlnErr(this.main.bind("requestor.notRetrieveErrorMessage", problem.toString()));
                }
                this.printlnErr("----------");
            }
        }

        public int logProblems(CategorizedProblem[] problems, char[] unitSource, Main currentMain) {
            int count = problems.length;
            int localErrorCount = 0;
            int localProblemCount = 0;
            if (count != 0) {
                CategorizedProblem problem;
                int errors = 0;
                int warnings = 0;
                int tasks = 0;
                int i = 0;
                while (i < count) {
                    problem = problems[i];
                    if (problem != null) {
                        ++currentMain.globalProblemsCount;
                        this.logProblem(problem, localProblemCount, currentMain.globalProblemsCount, unitSource);
                        ++localProblemCount;
                        if (problem.isError()) {
                            ++localErrorCount;
                            ++errors;
                            ++currentMain.globalErrorsCount;
                        } else if (problem.getID() == 536871362) {
                            ++currentMain.globalTasksCount;
                            ++tasks;
                        } else {
                            ++currentMain.globalWarningsCount;
                            ++warnings;
                        }
                    }
                    ++i;
                }
                if ((this.tagBits & 1) != 0) {
                    if (errors + warnings != 0) {
                        this.startLoggingProblems(errors, warnings);
                        i = 0;
                        while (i < count) {
                            problem = problems[i];
                            if (problem != null && problem.getID() != 536871362) {
                                this.logXmlProblem(problem, unitSource);
                            }
                            ++i;
                        }
                        this.endLoggingProblems();
                    }
                    if (tasks != 0) {
                        this.startLoggingTasks(tasks);
                        i = 0;
                        while (i < count) {
                            problem = problems[i];
                            if (problem != null && problem.getID() == 536871362) {
                                this.logXmlTask(problem, unitSource);
                            }
                            ++i;
                        }
                        this.endLoggingTasks();
                    }
                }
            }
            return localErrorCount;
        }

        public void logProblemsSummary(int globalProblemsCount, int globalErrorsCount, int globalWarningsCount, int globalTasksCount) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("problems", new Integer(globalProblemsCount));
                this.parameters.put(NUMBER_OF_ERRORS, new Integer(globalErrorsCount));
                this.parameters.put(NUMBER_OF_WARNINGS, new Integer(globalWarningsCount));
                this.parameters.put("tasks", new Integer(globalTasksCount));
                this.printTag(PROBLEM_SUMMARY, this.parameters, true, true);
            }
            if (globalProblemsCount == 1) {
                String message = null;
                message = globalErrorsCount == 1 ? this.main.bind("compile.oneError") : this.main.bind("compile.oneWarning");
                this.printErr(this.main.bind("compile.oneProblem", message));
            } else {
                int warningsNumber;
                String errorMessage = null;
                String warningMessage = null;
                if (globalErrorsCount > 0) {
                    errorMessage = globalErrorsCount == 1 ? this.main.bind("compile.oneError") : this.main.bind("compile.severalErrors", String.valueOf(globalErrorsCount));
                }
                if ((warningsNumber = globalWarningsCount + globalTasksCount) > 0) {
                    warningMessage = warningsNumber == 1 ? this.main.bind("compile.oneWarning") : this.main.bind("compile.severalWarnings", String.valueOf(warningsNumber));
                }
                if (errorMessage == null || warningMessage == null) {
                    if (errorMessage == null) {
                        this.printErr(this.main.bind("compile.severalProblemsErrorsOrWarnings", String.valueOf(globalProblemsCount), warningMessage));
                    } else {
                        this.printErr(this.main.bind("compile.severalProblemsErrorsOrWarnings", String.valueOf(globalProblemsCount), errorMessage));
                    }
                } else {
                    this.printErr(this.main.bind("compile.severalProblemsErrorsAndWarnings", new String[]{String.valueOf(globalProblemsCount), errorMessage, warningMessage}));
                }
            }
            if ((this.tagBits & 2) != 0) {
                this.printlnErr();
            }
        }

        public void logProgress() {
            this.printOut('.');
        }

        public void logRepetition(int i, int repetitions) {
            this.printlnOut(this.main.bind("compile.repetition", String.valueOf(i + 1), String.valueOf(repetitions)));
        }

        public void logTiming(CompilerStats compilerStats) {
            long time = compilerStats.elapsedTime();
            long lineCount = compilerStats.lineCount;
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("value", new Long(time));
                this.printTag(TIME, this.parameters, true, true);
                this.parameters.put("value", new Long(lineCount));
                this.printTag(NUMBER_OF_LINES, this.parameters, true, true);
            }
            if (lineCount != 0L) {
                this.printlnOut(this.main.bind("compile.instantTime", new String[]{String.valueOf(lineCount), String.valueOf(time), String.valueOf((double)((int)((double)lineCount * 10000.0 / (double)time)) / 10.0)}));
            } else {
                this.printlnOut(this.main.bind("compile.totalTime", new String[]{String.valueOf(time)}));
            }
            if ((this.main.timing & 2) != 0) {
                this.printlnOut(this.main.bind("compile.detailedTime", new String[]{String.valueOf(compilerStats.parseTime), String.valueOf((double)((int)((double)compilerStats.parseTime * 1000.0 / (double)time)) / 10.0), String.valueOf(compilerStats.resolveTime), String.valueOf((double)((int)((double)compilerStats.resolveTime * 1000.0 / (double)time)) / 10.0), String.valueOf(compilerStats.analyzeTime), String.valueOf((double)((int)((double)compilerStats.analyzeTime * 1000.0 / (double)time)) / 10.0), String.valueOf(compilerStats.generateTime), String.valueOf((double)((int)((double)compilerStats.generateTime * 1000.0 / (double)time)) / 10.0)}));
            }
        }

        public void logUsage(String usage) {
            this.printlnOut(usage);
        }

        public void logVersion(boolean printToOut) {
            if (this.log != null && (this.tagBits & 1) == 0) {
                String version = this.main.bind("misc.version", new String[]{this.main.bind("compiler.name"), this.main.bind("compiler.version"), this.main.bind("compiler.copyright")});
                this.log.println("# " + version);
                if (printToOut) {
                    this.out.println(version);
                    this.out.flush();
                }
            } else if (printToOut) {
                String version = this.main.bind("misc.version", new String[]{this.main.bind("compiler.name"), this.main.bind("compiler.version"), this.main.bind("compiler.copyright")});
                this.out.println(version);
                this.out.flush();
            }
        }

        public void logWrongJDK() {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("message", this.main.bind("configure.requiresJDK1.2orAbove"));
                this.printTag(ERROR, this.parameters, true, true);
            }
            this.printlnErr(this.main.bind("configure.requiresJDK1.2orAbove"));
        }

        private void logXmlExtraProblem(CategorizedProblem problem, int globalErrorCount, int localErrorCount) {
            int sourceStart = problem.getSourceStart();
            int sourceEnd = problem.getSourceEnd();
            boolean isError = problem.isError();
            this.parameters.put(PROBLEM_SEVERITY, isError ? ERROR : WARNING);
            this.parameters.put(PROBLEM_LINE, new Integer(problem.getSourceLineNumber()));
            this.parameters.put(PROBLEM_SOURCE_START, new Integer(sourceStart));
            this.parameters.put(PROBLEM_SOURCE_END, new Integer(sourceEnd));
            this.printTag(EXTRA_PROBLEM_TAG, this.parameters, true, false);
            this.parameters.put("value", problem.getMessage());
            this.printTag("message", this.parameters, true, true);
            this.extractContext(problem, null);
            this.endTag(EXTRA_PROBLEM_TAG);
        }

        private void logXmlProblem(CategorizedProblem problem, char[] unitSource) {
            int sourceStart = problem.getSourceStart();
            int sourceEnd = problem.getSourceEnd();
            int id = problem.getID();
            this.parameters.put("id", this.getFieldName(id));
            this.parameters.put(PROBLEM_ID, new Integer(id));
            boolean isError = problem.isError();
            int severity = isError ? 1 : 0;
            this.parameters.put(PROBLEM_SEVERITY, isError ? ERROR : WARNING);
            this.parameters.put(PROBLEM_LINE, new Integer(problem.getSourceLineNumber()));
            this.parameters.put(PROBLEM_SOURCE_START, new Integer(sourceStart));
            this.parameters.put(PROBLEM_SOURCE_END, new Integer(sourceEnd));
            String problemOptionKey = this.getProblemOptionKey(id);
            if (problemOptionKey != null) {
                this.parameters.put(PROBLEM_OPTION_KEY, problemOptionKey);
            }
            int categoryID = ProblemReporter.getProblemCategory(severity, id);
            this.parameters.put(PROBLEM_CATEGORY_ID, new Integer(categoryID));
            this.printTag(PROBLEM_TAG, this.parameters, true, false);
            this.parameters.put("value", problem.getMessage());
            this.printTag("message", this.parameters, true, true);
            this.extractContext(problem, unitSource);
            String[] arguments = problem.getArguments();
            int length = arguments.length;
            if (length != 0) {
                this.printTag(PROBLEM_ARGUMENTS, null, true, false);
                int i = 0;
                while (i < length) {
                    this.parameters.put("value", arguments[i]);
                    this.printTag("argument", this.parameters, true, true);
                    ++i;
                }
                this.endTag(PROBLEM_ARGUMENTS);
            }
            this.endTag(PROBLEM_TAG);
        }

        private void logXmlTask(CategorizedProblem problem, char[] unitSource) {
            this.parameters.put(PROBLEM_LINE, new Integer(problem.getSourceLineNumber()));
            this.parameters.put(PROBLEM_SOURCE_START, new Integer(problem.getSourceStart()));
            this.parameters.put(PROBLEM_SOURCE_END, new Integer(problem.getSourceEnd()));
            String problemOptionKey = this.getProblemOptionKey(problem.getID());
            if (problemOptionKey != null) {
                this.parameters.put(PROBLEM_OPTION_KEY, problemOptionKey);
            }
            this.printTag(TASK, this.parameters, true, false);
            this.parameters.put("value", problem.getMessage());
            this.printTag("message", this.parameters, true, true);
            this.extractContext(problem, unitSource);
            this.endTag(TASK);
        }

        private void printErr(String s) {
            this.err.print(s);
            if ((this.tagBits & 1) == 0 && this.log != null) {
                this.log.print(s);
            }
        }

        private void printlnErr() {
            this.err.println();
            if ((this.tagBits & 1) == 0 && this.log != null) {
                this.log.println();
            }
        }

        private void printlnErr(String s) {
            this.err.println(s);
            if ((this.tagBits & 1) == 0 && this.log != null) {
                this.log.println(s);
            }
        }

        private void printlnOut(String s) {
            this.out.println(s);
            if ((this.tagBits & 1) == 0 && this.log != null) {
                this.log.println(s);
            }
        }

        public void printNewLine() {
            this.out.println();
        }

        private void printOut(char c) {
            this.out.print(c);
        }

        public void printStats() {
            boolean isTimed;
            boolean bl = isTimed = (this.main.timing & 1) != 0;
            if ((this.tagBits & 1) != 0) {
                this.printTag(STATS, null, true, false);
            }
            if (isTimed) {
                CompilerStats compilerStats = this.main.batchCompiler.stats;
                compilerStats.startTime = this.main.startTime;
                compilerStats.endTime = System.currentTimeMillis();
                this.logTiming(compilerStats);
            }
            if (this.main.globalProblemsCount > 0) {
                this.logProblemsSummary(this.main.globalProblemsCount, this.main.globalErrorsCount, this.main.globalWarningsCount, this.main.globalTasksCount);
            }
            if (this.main.exportedClassFilesCounter != 0 && (this.main.showProgress || isTimed || this.main.verbose)) {
                this.logNumberOfClassFilesGenerated(this.main.exportedClassFilesCounter);
            }
            if ((this.tagBits & 1) != 0) {
                this.endTag(STATS);
            }
        }

        private void printTag(String name, HashMap params, boolean insertNewLine, boolean closeTag) {
            if (this.log != null) {
                ((GenericXMLWriter)this.log).printTag(name, this.parameters, true, insertNewLine, closeTag);
            }
            this.parameters.clear();
        }

        public void setEmacs() {
            this.tagBits |= 2;
        }

        public void setLog(String logFileName) {
            Date date = new Date();
            DateFormat dateFormat = DateFormat.getDateTimeInstance(3, 1, Locale.getDefault());
            try {
                int index = logFileName.lastIndexOf(46);
                if (index != -1) {
                    if (logFileName.substring(index).toLowerCase().equals(".xml")) {
                        this.log = new GenericXMLWriter(new OutputStreamWriter((OutputStream)new FileOutputStream(logFileName, false), "UTF-8"), Util.LINE_SEPARATOR, true);
                        this.tagBits |= 1;
                        this.log.println("<!-- " + dateFormat.format(date) + " -->");
                        this.log.println(XML_DTD_DECLARATION);
                        this.parameters.put(COMPILER_NAME, this.main.bind("compiler.name"));
                        this.parameters.put(COMPILER_VERSION, this.main.bind("compiler.version"));
                        this.parameters.put(COMPILER_COPYRIGHT, this.main.bind("compiler.copyright"));
                        this.printTag(COMPILER, this.parameters, true, false);
                    } else {
                        this.log = new PrintWriter(new FileOutputStream(logFileName, false));
                        this.log.println("# " + dateFormat.format(date));
                    }
                } else {
                    this.log = new PrintWriter(new FileOutputStream(logFileName, false));
                    this.log.println("# " + dateFormat.format(date));
                }
            }
            catch (FileNotFoundException fileNotFoundException) {
                throw new IllegalArgumentException(this.main.bind("configure.cannotOpenLog", logFileName));
            }
            catch (UnsupportedEncodingException unsupportedEncodingException) {
                throw new IllegalArgumentException(this.main.bind("configure.cannotOpenLogInvalidEncoding", logFileName));
            }
        }

        private void startLoggingExtraProblems(int count) {
            this.parameters.put("problems", new Integer(count));
            this.printTag(EXTRA_PROBLEMS, this.parameters, true, false);
        }

        private void startLoggingProblems(int errors, int warnings) {
            this.parameters.put("problems", new Integer(errors + warnings));
            this.parameters.put(NUMBER_OF_ERRORS, new Integer(errors));
            this.parameters.put(NUMBER_OF_WARNINGS, new Integer(warnings));
            this.printTag("problems", this.parameters, true, false);
        }

        public void startLoggingSource(CompilationResult compilationResult) {
            if ((this.tagBits & 1) != 0) {
                ICompilationUnit compilationUnit = compilationResult.compilationUnit;
                if (compilationUnit != null) {
                    char[][] packageName;
                    char[] fileName = compilationUnit.getFileName();
                    File f = new File(new String(fileName));
                    if (fileName != null) {
                        this.parameters.put(PATH, f.getAbsolutePath());
                    }
                    if ((packageName = compilationResult.packageName) != null) {
                        this.parameters.put(PACKAGE, new String(CharOperation.concatWith(packageName, File.separatorChar)));
                    }
                    CompilationUnit unit = (CompilationUnit)compilationUnit;
                    String destinationPath = unit.destinationPath;
                    if (destinationPath == null) {
                        destinationPath = this.main.destinationPath;
                    }
                    if (destinationPath != null && destinationPath != Main.NONE) {
                        if (File.separatorChar == '/') {
                            this.parameters.put(OUTPUT, destinationPath);
                        } else {
                            this.parameters.put(OUTPUT, destinationPath.replace('/', File.separatorChar));
                        }
                    }
                }
                this.printTag(SOURCE, this.parameters, true, false);
            }
        }

        public void startLoggingSources() {
            if ((this.tagBits & 1) != 0) {
                this.printTag(SOURCES, null, true, false);
            }
        }

        public void startLoggingTasks(int tasks) {
            if ((this.tagBits & 1) != 0) {
                this.parameters.put("tasks", new Integer(tasks));
                this.printTag("tasks", this.parameters, true, false);
            }
        }
    }

    public static class ResourceBundleFactory {
        private static HashMap Cache = new HashMap();

        public static synchronized ResourceBundle getBundle(Locale locale) {
            ResourceBundle bundle = (ResourceBundle)Cache.get(locale);
            if (bundle == null) {
                bundle = ResourceBundle.getBundle(Main.bundleName, locale);
                Cache.put(locale, bundle);
            }
            return bundle;
        }
    }
}

