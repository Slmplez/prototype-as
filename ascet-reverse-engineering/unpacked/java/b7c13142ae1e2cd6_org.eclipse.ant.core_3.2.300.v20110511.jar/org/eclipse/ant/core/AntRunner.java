/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.app.IApplication
 *  org.eclipse.equinox.app.IApplicationContext
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.ant.core;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.eclipse.ant.core.AntCorePlugin;
import org.eclipse.ant.core.AntCorePreferences;
import org.eclipse.ant.core.ProjectInfo;
import org.eclipse.ant.core.TargetInfo;
import org.eclipse.ant.internal.core.AntClassLoader;
import org.eclipse.ant.internal.core.InternalCoreAntMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.app.IApplication;
import org.eclipse.equinox.app.IApplicationContext;
import org.eclipse.osgi.util.NLS;

public class AntRunner
implements IApplication {
    private static boolean buildRunning = false;
    protected String buildFileLocation = "build.xml";
    protected List buildListeners;
    protected String[] targets;
    protected Map userProperties;
    protected int messageOutputLevel = 2;
    protected String buildLoggerClassName;
    protected String inputHandlerClassName;
    protected String[] arguments;
    protected String[] propertyFiles;
    protected URL[] customClasspath;
    protected String antHome;
    private IProgressMonitor progressMonitor = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;

    public void setBuildFileLocation(String buildFileLocation) {
        this.buildFileLocation = buildFileLocation == null ? "build.xml" : buildFileLocation;
    }

    public void setMessageOutputLevel(int level) {
        this.messageOutputLevel = level;
    }

    public void setArguments(String arguments) {
        this.arguments = this.getArray(arguments);
    }

    private String[] getArray(String args) {
        StringBuffer sb = new StringBuffer();
        boolean waitingForQuote = false;
        ArrayList<String> result = new ArrayList<String>();
        StringTokenizer tokens = new StringTokenizer(args, ", \"", true);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken();
            if (waitingForQuote) {
                if (token.equals("\"")) {
                    result.add(sb.toString());
                    sb.setLength(0);
                    waitingForQuote = false;
                    continue;
                }
                sb.append(token);
                continue;
            }
            if (token.equals("\"")) {
                int index;
                String last;
                if (result.size() > 0 && (last = (String)result.get(index = result.size() - 1)).charAt(last.length() - 1) == '=') {
                    result.remove(index);
                    sb.append(last);
                }
                waitingForQuote = true;
                continue;
            }
            if (token.equals(",") || token.equals(" ")) continue;
            result.add(token);
        }
        return result.toArray(new String[result.size()]);
    }

    public void setArguments(String[] arguments) {
        this.arguments = arguments;
    }

    public void setExecutionTargets(String[] executionTargets) {
        this.targets = executionTargets;
    }

    public void addBuildListener(String className) {
        if (className == null) {
            return;
        }
        if (this.buildListeners == null) {
            this.buildListeners = new ArrayList(5);
        }
        this.buildListeners.add(className);
    }

    public void addBuildLogger(String className) {
        this.buildLoggerClassName = className;
    }

    public void addUserProperties(Map properties) {
        if (this.userProperties == null) {
            this.userProperties = new HashMap(properties);
        } else {
            this.userProperties.putAll(properties);
        }
    }

    public synchronized TargetInfo[] getAvailableTargets() throws CoreException {
        Class classInternalAntRunner = null;
        Object runner = null;
        ClassLoader originalClassLoader = Thread.currentThread().getContextClassLoader();
        try {
            classInternalAntRunner = this.getInternalAntRunner();
            runner = classInternalAntRunner.newInstance();
            this.basicConfigure(classInternalAntRunner, runner);
            Method getTargets = classInternalAntRunner.getMethod("getTargets", null);
            Object results = getTargets.invoke(runner, null);
            Method getDefault = classInternalAntRunner.getMethod("getDefaultTarget", null);
            String defaultName = (String)getDefault.invoke(runner, null);
            List infos = (List)results;
            ProjectInfo project = new ProjectInfo((String)infos.remove(0), (String)infos.remove(0));
            int i = 0;
            Iterator iter = infos.iterator();
            TargetInfo[] targetInfo = new TargetInfo[infos.size()];
            while (iter.hasNext()) {
                List info = (List)iter.next();
                targetInfo[i++] = new TargetInfo(project, (String)info.get(0), (String)info.get(1), (String[])info.get(2), info.get(0).equals(defaultName));
            }
            TargetInfo[] targetInfoArray = targetInfo;
            return targetInfoArray;
        }
        catch (NoClassDefFoundError e) {
            this.problemLoadingClass(e);
            TargetInfo[] targetInfoArray = new TargetInfo[]{};
            return targetInfoArray;
        }
        catch (ClassNotFoundException e) {
            this.problemLoadingClass(e);
            TargetInfo[] targetInfoArray = new TargetInfo[]{};
            return targetInfoArray;
        }
        catch (InvocationTargetException e) {
            this.handleInvocationTargetException(runner, classInternalAntRunner, e);
            TargetInfo[] targetInfoArray = new TargetInfo[]{};
            return targetInfoArray;
        }
        catch (Exception e) {
            String message = e.getMessage() == null ? InternalCoreAntMessages.AntRunner_Build_Failed__3 : e.getMessage();
            throw new CoreException((IStatus)new Status(4, "org.eclipse.ant.core", 1, message, (Throwable)e));
        }
        finally {
            Thread.currentThread().setContextClassLoader(originalClassLoader);
        }
    }

    private void basicConfigure(Class classInternalAntRunner, Object runner) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.String");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Method setBuildFileLocation = classInternalAntRunner.getMethod("setBuildFileLocation", classArray);
        setBuildFileLocation.invoke(runner, this.buildFileLocation);
        if (this.antHome != null) {
            Class[] classArray2 = new Class[1];
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray2[0] = clazz2;
            Method setAntHome = classInternalAntRunner.getMethod("setAntHome", classArray2);
            setAntHome.invoke(runner, this.antHome);
        }
        this.setProperties(runner, classInternalAntRunner);
        if (this.arguments != null && this.arguments.length > 0) {
            Class[] classArray3 = new Class[1];
            Class<?> clazz3 = class$1;
            if (clazz3 == null) {
                try {
                    clazz3 = class$1 = Class.forName("[Ljava.lang.String;");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray3[0] = clazz3;
            Method setArguments = classInternalAntRunner.getMethod("setArguments", classArray3);
            setArguments.invoke(runner, new Object[]{this.arguments});
        }
    }

    /*
     * Exception decompiling
     */
    public void run(IProgressMonitor monitor) throws CoreException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    private Class getInternalAntRunner() throws ClassNotFoundException {
        ClassLoader loader = this.getClassLoader();
        Thread.currentThread().setContextClassLoader(loader);
        return loader.loadClass("org.eclipse.ant.internal.core.ant.InternalAntRunner");
    }

    private void setProperties(Object runner, Class classInternalAntRunner) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (this.userProperties != null) {
            Class[] classArray = new Class[1];
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("java.util.Map");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            Method addUserProperties = classInternalAntRunner.getMethod("addUserProperties", classArray);
            addUserProperties.invoke(runner, this.userProperties);
        }
        if (this.propertyFiles != null) {
            Class[] classArray = new Class[1];
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("[Ljava.lang.String;");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            Method addPropertyFiles = classInternalAntRunner.getMethod("addPropertyFiles", classArray);
            addPropertyFiles.invoke(runner, new Object[]{this.propertyFiles});
        }
    }

    protected void handleInvocationTargetException(Object runner, Class classInternalAntRunner, InvocationTargetException e) throws CoreException {
        Throwable realException = e.getTargetException();
        if (realException instanceof OperationCanceledException) {
            return;
        }
        String message = null;
        if (runner != null) {
            try {
                Class[] classArray = new Class[1];
                Class<?> clazz = class$6;
                if (clazz == null) {
                    try {
                        clazz = class$6 = Class.forName("java.lang.Throwable");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz;
                Method getBuildErrorMessage = classInternalAntRunner.getMethod("getBuildExceptionErrorMessage", classArray);
                message = (String)getBuildErrorMessage.invoke(runner, realException);
            }
            catch (Exception exception) {}
        }
        if (message == null && (realException instanceof NoClassDefFoundError || realException instanceof ClassNotFoundException)) {
            this.problemLoadingClass(realException);
            return;
        }
        boolean internalError = false;
        if (message == null) {
            internalError = true;
            message = realException.getMessage() == null ? InternalCoreAntMessages.AntRunner_Build_Failed__3 : realException.getMessage();
        }
        Status status = new Status(4, "org.eclipse.ant.core", 1, message, realException);
        if (internalError) {
            AntCorePlugin.getPlugin().getLog().log((IStatus)status);
        }
        throw new CoreException((IStatus)status);
    }

    protected void problemLoadingClass(Throwable e) throws CoreException {
        String message;
        String missingClassName = e.getMessage();
        if (missingClassName != null) {
            missingClassName = missingClassName.replace('/', '.');
            message = InternalCoreAntMessages.AntRunner_Could_not_find_one_or_more_classes__Please_check_the_Ant_classpath__2;
            message = NLS.bind((String)message, (Object[])new String[]{missingClassName});
        } else {
            message = InternalCoreAntMessages.AntRunner_Could_not_find_one_or_more_classes__Please_check_the_Ant_classpath__1;
        }
        Status status = new Status(4, "org.eclipse.ant.core", 1, message, e);
        AntCorePlugin.getPlugin().getLog().log((IStatus)status);
        throw new CoreException((IStatus)status);
    }

    public void run() throws CoreException {
        this.run(null);
    }

    public Object run(Object argArray) throws Exception {
        ClassLoader originalClassLoader = Thread.currentThread().getContextClassLoader();
        try {
            AntCorePlugin.getPlugin().setRunningHeadless(true);
            if (Platform.inDebugMode()) {
                String[] args = argArray;
                String[] newArgs = new String[args.length + 1];
                System.arraycopy(argArray, 0, newArgs, 0, args.length);
                newArgs[args.length] = "-debug";
                argArray = newArgs;
            }
            ClassLoader loader = this.getClassLoader();
            Thread.currentThread().setContextClassLoader(loader);
            Class<?> classInternalAntRunner = loader.loadClass("org.eclipse.ant.internal.core.ant.InternalAntRunner");
            Object runner = classInternalAntRunner.newInstance();
            Class[] classArray = new Class[1];
            Class<?> clazz = class$7;
            if (clazz == null) {
                try {
                    clazz = class$7 = Class.forName("java.lang.Object");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz;
            Method run = classInternalAntRunner.getMethod("run", classArray);
            run.invoke(runner, new Object[]{argArray});
        }
        finally {
            Thread.currentThread().setContextClassLoader(originalClassLoader);
        }
        return EXIT_OK;
    }

    private ClassLoader getClassLoader() {
        if (this.customClasspath == null) {
            return AntCorePlugin.getPlugin().getNewClassLoader();
        }
        AntCorePreferences preferences = AntCorePlugin.getPlugin().getPreferences();
        ArrayList<URL> fullClasspath = new ArrayList<URL>();
        fullClasspath.addAll(Arrays.asList(this.customClasspath));
        fullClasspath.addAll(Arrays.asList(preferences.getExtraClasspathURLs()));
        return new AntClassLoader(fullClasspath.toArray(new URL[fullClasspath.size()]), preferences.getPluginClassLoaders());
    }

    public void setInputHandler(String className) {
        this.inputHandlerClassName = className;
    }

    public void setPropertyFiles(String[] propertyFiles) {
        this.propertyFiles = propertyFiles;
    }

    public void setCustomClasspath(URL[] customClasspath) {
        this.customClasspath = customClasspath;
    }

    public void setAntHome(String antHome) {
        this.antHome = antHome;
    }

    public static boolean isBuildRunning() {
        return buildRunning;
    }

    public Object start(IApplicationContext context) throws Exception {
        Map contextArguments = context.getArguments();
        return this.run(contextArguments.get("application.args"));
    }

    public void stop() {
        if (this.progressMonitor != null) {
            this.progressMonitor.setCanceled(true);
        }
    }
}

