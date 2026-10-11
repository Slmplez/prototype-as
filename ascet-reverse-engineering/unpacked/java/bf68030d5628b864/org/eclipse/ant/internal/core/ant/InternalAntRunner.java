/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.AntTypeDefinition
 *  org.apache.tools.ant.BuildEvent
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.BuildListener
 *  org.apache.tools.ant.BuildLogger
 *  org.apache.tools.ant.ComponentHelper
 *  org.apache.tools.ant.DefaultLogger
 *  org.apache.tools.ant.DemuxOutputStream
 *  org.apache.tools.ant.Diagnostics
 *  org.apache.tools.ant.Main
 *  org.apache.tools.ant.Project
 *  org.apache.tools.ant.ProjectHelper
 *  org.apache.tools.ant.Target
 *  org.apache.tools.ant.XmlLogger
 *  org.apache.tools.ant.types.Path
 *  org.eclipse.ant.core.AntCorePlugin
 *  org.eclipse.ant.core.AntCorePreferences
 *  org.eclipse.ant.core.AntSecurityException
 *  org.eclipse.ant.core.Property
 *  org.eclipse.ant.core.Task
 *  org.eclipse.ant.core.Type
 *  org.eclipse.ant.internal.core.AbstractEclipseBuildLogger
 *  org.eclipse.ant.internal.core.AntCoreUtil
 *  org.eclipse.ant.internal.core.AntSecurityManager
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.VariablesPlugin
 */
package org.eclipse.ant.internal.core.ant;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.URL;
import java.text.MessageFormat;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Properties;
import java.util.Vector;
import org.apache.tools.ant.AntTypeDefinition;
import org.apache.tools.ant.BuildEvent;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.BuildListener;
import org.apache.tools.ant.BuildLogger;
import org.apache.tools.ant.ComponentHelper;
import org.apache.tools.ant.DefaultLogger;
import org.apache.tools.ant.DemuxOutputStream;
import org.apache.tools.ant.Diagnostics;
import org.apache.tools.ant.Main;
import org.apache.tools.ant.Project;
import org.apache.tools.ant.ProjectHelper;
import org.apache.tools.ant.Target;
import org.apache.tools.ant.XmlLogger;
import org.eclipse.ant.core.AntCorePlugin;
import org.eclipse.ant.core.AntCorePreferences;
import org.eclipse.ant.core.AntSecurityException;
import org.eclipse.ant.core.Property;
import org.eclipse.ant.core.Task;
import org.eclipse.ant.core.Type;
import org.eclipse.ant.internal.core.AbstractEclipseBuildLogger;
import org.eclipse.ant.internal.core.AntCoreUtil;
import org.eclipse.ant.internal.core.AntSecurityManager;
import org.eclipse.ant.internal.core.ant.DemuxInputStreamSetter;
import org.eclipse.ant.internal.core.ant.EclipseMainHelper;
import org.eclipse.ant.internal.core.ant.ExecutorSetter;
import org.eclipse.ant.internal.core.ant.InputHandlerSetter;
import org.eclipse.ant.internal.core.ant.InternalAntMessages;
import org.eclipse.ant.internal.core.ant.InternalProject;
import org.eclipse.ant.internal.core.ant.InternalProject2;
import org.eclipse.ant.internal.core.ant.ProgressBuildListener;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.VariablesPlugin;

public class InternalAntRunner {
    private IProgressMonitor monitor;
    private List buildListeners;
    private String buildFileLocation;
    private Vector targets;
    private Map userProperties;
    private boolean noExplicitUserProperties = true;
    private Project currentProject;
    private String defaultTarget;
    private BuildLogger buildLogger = null;
    private String antVersionNumber = null;
    private int messageOutputLevel = 2;
    private boolean emacsMode = false;
    private boolean projectHelp = false;
    private PrintStream out = System.out;
    private PrintStream err = System.err;
    private String loggerClassname = null;
    private String[] extraArguments = null;
    private boolean executed = false;
    private List propertyFiles = new ArrayList();
    private URL[] customClasspath = null;
    private String inputHandlerClassname = null;
    private String buildAntHome = null;
    private boolean keepGoing = false;
    private boolean allowInput = true;
    private String fEarlyErrorMessage = null;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public void addBuildListeners(List classNames) {
        if (this.buildListeners == null) {
            this.buildListeners = new ArrayList(classNames.size());
        }
        this.buildListeners.addAll(classNames);
    }

    public void addBuildLogger(String className) {
        this.loggerClassname = className;
    }

    public void addUserProperties(Map properties) {
        if (this.userProperties == null) {
            this.userProperties = new HashMap(properties);
        } else {
            this.userProperties.putAll(properties);
        }
        this.noExplicitUserProperties = false;
    }

    public void addPropertyFiles(String[] additionalPropertyFiles) {
        this.propertyFiles.addAll(Arrays.asList(additionalPropertyFiles));
    }

    private void addBuildListeners(Project project) {
        String className = null;
        try {
            BuildLogger logger = this.createLogger();
            if (logger != null) {
                project.addBuildListener((BuildListener)logger);
            }
            if (this.buildListeners != null) {
                Iterator iterator = this.buildListeners.iterator();
                while (iterator.hasNext()) {
                    className = (String)iterator.next();
                    Class<?> listener = Class.forName(className);
                    project.addBuildListener((BuildListener)listener.newInstance());
                }
            }
        }
        catch (ClassCastException e) {
            String message = MessageFormat.format(InternalAntMessages.InternalAntRunner_not_an_instance_of_apache_ant_BuildListener, className);
            this.logMessage(null, message, 0);
            throw new BuildException(message, (Throwable)e);
        }
        catch (BuildException e) {
            throw e;
        }
        catch (Exception e) {
            throw new BuildException((Throwable)e);
        }
    }

    private void setProperties(Project project, boolean substituteVariables) {
        this.setBuiltInProperties(project);
        if (this.userProperties != null) {
            Iterator iterator = this.userProperties.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry entry = iterator.next();
                String value = (String)entry.getValue();
                if (substituteVariables && value != null) {
                    try {
                        value = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(value);
                    }
                    catch (CoreException coreException) {}
                }
                project.setUserProperty((String)entry.getKey(), value);
            }
            if (this.noExplicitUserProperties) {
                this.setGlobalProperties(project, substituteVariables);
            }
        } else {
            this.setGlobalProperties(project, substituteVariables);
        }
    }

    private void setBuiltInProperties(Project project) {
        project.setUserProperty("ant.file", this.getBuildFileLocation());
        project.setUserProperty("ant.version", Main.getAntVersion());
    }

    private void setGlobalProperties(Project project, boolean substituteVariables) {
        AntCorePreferences prefs = AntCorePlugin.getPlugin().getPreferences();
        List properties = prefs.getProperties();
        if (properties != null) {
            Iterator iter = properties.iterator();
            while (iter.hasNext()) {
                Property property = (Property)iter.next();
                String value = property.getValue(substituteVariables);
                if (value == null) continue;
                project.setUserProperty(property.getName(), value);
            }
        }
    }

    private void setTasks(Project project) {
        List tasks = AntCorePlugin.getPlugin().getPreferences().getTasks();
        Iterator iterator = tasks.iterator();
        while (iterator.hasNext()) {
            Task task = (Task)iterator.next();
            if (this.isVersionCompatible("1.6")) {
                AntTypeDefinition def = new AntTypeDefinition();
                String name = ProjectHelper.genComponentName((String)task.getURI(), (String)task.getTaskName());
                def.setName(name);
                def.setClassName(task.getClassName());
                def.setClassLoader(this.getClass().getClassLoader());
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = Class.forName("org.apache.tools.ant.Task");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                def.setAdaptToClass((Class)clazz);
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("org.apache.tools.ant.TaskAdapter");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                def.setAdapterClass((Class)clazz2);
                ComponentHelper.getComponentHelper((Project)project).addDataTypeDefinition(def);
                continue;
            }
            try {
                Class<?> taskClass = Class.forName(task.getClassName());
                if (this.isVersionCompatible("1.5")) {
                    try {
                        project.checkTaskClass(taskClass);
                    }
                    catch (BuildException e) {
                        Status status = new Status(4, "org.eclipse.ant.core", 1, MessageFormat.format(InternalAntMessages.InternalAntRunner_Error_setting_Ant_task, task.getTaskName()), (Throwable)e);
                        AntCorePlugin.getPlugin().getLog().log((IStatus)status);
                        continue;
                    }
                }
                project.addTaskDefinition(task.getTaskName(), taskClass);
            }
            catch (ClassNotFoundException e) {
                Status status = new Status(4, "org.eclipse.ant.core", 1, MessageFormat.format(InternalAntMessages.InternalAntRunner_Class_not_found_for_task, task.getClassName(), task.getTaskName()), (Throwable)e);
                AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            }
        }
    }

    private void setTypes(Project project) {
        List types = AntCorePlugin.getPlugin().getPreferences().getTypes();
        Iterator iterator = types.iterator();
        while (iterator.hasNext()) {
            Type type = (Type)iterator.next();
            if (this.isVersionCompatible("1.6")) {
                AntTypeDefinition def = new AntTypeDefinition();
                String name = ProjectHelper.genComponentName((String)type.getURI(), (String)type.getTypeName());
                def.setName(name);
                def.setClassName(type.getClassName());
                def.setClassLoader(this.getClass().getClassLoader());
                ComponentHelper.getComponentHelper((Project)project).addDataTypeDefinition(def);
                continue;
            }
            try {
                Class<?> typeClass = Class.forName(type.getClassName());
                project.addDataTypeDefinition(type.getTypeName(), typeClass);
            }
            catch (ClassNotFoundException e) {
                Status status = new Status(4, "org.eclipse.ant.core", 1, MessageFormat.format(InternalAntMessages.InternalAntRunner_Class_not_found_for_type, type.getClassName(), type.getTypeName()), (Throwable)e);
                AntCorePlugin.getPlugin().getLog().log((IStatus)status);
            }
        }
    }

    private void parseBuildFile(Project project) {
        File buildFile = new File(this.getBuildFileLocation());
        if (!buildFile.exists()) {
            throw new BuildException(MessageFormat.format(InternalAntMessages.InternalAntRunner_Buildfile_does_not_exist, buildFile.getAbsolutePath()));
        }
        if (!buildFile.isFile()) {
            throw new BuildException(MessageFormat.format(InternalAntMessages.InternalAntRunner_Buildfile_is_not_a_file, buildFile.getAbsolutePath()));
        }
        if (!this.isVersionCompatible("1.5")) {
            this.parseBuildFile(project, buildFile);
        } else {
            ProjectHelper helper = ProjectHelper.getProjectHelper();
            project.addReference("ant.projectHelper", (Object)helper);
            helper.parse(project, (Object)buildFile);
        }
    }

    private void parseBuildFile(Project project, File buildFile) {
        ProjectHelper.configureProject((Project)project, (File)buildFile);
    }

    public List getTargets() {
        try {
            this.setJavaClassPath();
            Project antProject = this.getProject();
            this.processAntHome(false);
            antProject.init();
            this.setTypes(antProject);
            boolean exceptionState = this.processProperties(AntCoreUtil.getArrayList((String[])this.extraArguments));
            if (this.fEarlyErrorMessage != null && exceptionState) {
                throw new BuildException(this.fEarlyErrorMessage);
            }
            this.setProperties(antProject, false);
            if (this.isVersionCompatible("1.5")) {
                new InputHandlerSetter().setInputHandler(antProject, "org.eclipse.ant.internal.core.ant.NullInputHandler");
            }
            this.parseBuildFile(antProject);
            this.defaultTarget = antProject.getDefaultTarget();
            Enumeration projectTargets = antProject.getTargets().elements();
            ArrayList<Object> infos = new ArrayList<Object>();
            infos.add(antProject.getName());
            infos.add(antProject.getDescription());
            boolean defaultFound = false;
            while (projectTargets.hasMoreElements()) {
                Target target = (Target)projectTargets.nextElement();
                String name = target.getName();
                if (name.length() == 0) continue;
                ArrayList<Object> info = new ArrayList<Object>(4);
                info.add(name);
                if (target.getName().equals(this.defaultTarget)) {
                    defaultFound = true;
                }
                info.add(target.getDescription());
                ArrayList dependencies = new ArrayList();
                Enumeration enumeration = target.getDependencies();
                while (enumeration.hasMoreElements()) {
                    dependencies.add(enumeration.nextElement());
                }
                String[] dependencyArray = new String[dependencies.size()];
                dependencies.toArray(dependencyArray);
                info.add(dependencyArray);
                infos.add(info);
            }
            if (!defaultFound) {
                throw new BuildException(MessageFormat.format(InternalAntMessages.InternalAntRunner_Default_target_does_not_exist, "'", this.defaultTarget, "'"));
            }
            ArrayList<Object> arrayList = infos;
            return arrayList;
        }
        finally {
            this.processAntHome(true);
        }
    }

    private List getTargetNames() {
        try {
            this.setJavaClassPath();
            Project antProject = this.getProject();
            this.processAntHome(false);
            antProject.init();
            this.setTypes(antProject);
            this.processProperties(AntCoreUtil.getArrayList((String[])this.extraArguments));
            this.setProperties(antProject, false);
            if (this.isVersionCompatible("1.5")) {
                new InputHandlerSetter().setInputHandler(antProject, "org.eclipse.ant.internal.core.ant.NullInputHandler");
            }
            this.parseBuildFile(antProject);
            Enumeration projectTargets = antProject.getTargets().elements();
            ArrayList<String> names = new ArrayList<String>();
            while (projectTargets.hasMoreElements()) {
                Target target = (Target)projectTargets.nextElement();
                String name = target.getName();
                if (name.length() == 0) continue;
                names.add(name);
            }
            ArrayList<String> arrayList = names;
            return arrayList;
        }
        finally {
            this.processAntHome(true);
        }
    }

    private Project getProject() {
        Project antProject = this.isVersionCompatible("1.6") ? (this.isVersionCompatible("1.6.3") ? new InternalProject2() : new Project()) : new InternalProject();
        return antProject;
    }

    public String getDefaultTarget() {
        return this.defaultTarget;
    }

    public void run() {
        this.run(AntCoreUtil.getArrayList((String[])this.extraArguments));
    }

    private void printArguments(Project project) {
        if (this.messageOutputLevel != 4 && this.messageOutputLevel != 3) {
            return;
        }
        StringBuffer sb = new StringBuffer();
        int i = 0;
        while (i < this.extraArguments.length) {
            sb.append(this.extraArguments[i]);
            sb.append(' ');
            ++i;
        }
        project.log(MessageFormat.format(InternalAntMessages.InternalAntRunner_Arguments, sb.toString().trim()));
    }

    private void createMonitorBuildListener(Project project) {
        if (this.monitor == null) {
            return;
        }
        AbstractList chosenTargets = this.targets;
        if (chosenTargets == null || chosenTargets.isEmpty()) {
            chosenTargets = new ArrayList(1);
            String defltTarget = project.getDefaultTarget();
            if (defltTarget != null) {
                chosenTargets.add(defltTarget);
            }
        }
        project.addBuildListener((BuildListener)new ProgressBuildListener(project, chosenTargets, this.monitor));
    }

    public void run(Object argArray) throws Exception {
        this.run(AntCoreUtil.getArrayList((String[])((String[])argArray)));
    }

    private void run(List argList) {
        this.setCurrentProject(new Project());
        if (this.isVersionCompatible("1.6.3")) {
            new ExecutorSetter().setExecutor(this.getCurrentProject());
        }
        Throwable error = null;
        PrintStream originalErr = System.err;
        PrintStream originalOut = System.out;
        InputStream originalIn = System.in;
        SecurityManager originalSM = System.getSecurityManager();
        this.setJavaClassPath();
        this.executed = true;
        this.processAntHome(false);
        try {
            if (argList != null && (argList.remove("-projecthelp") || argList.remove("-p"))) {
                this.projectHelp = true;
            }
            this.getCurrentProject().init();
            if (argList != null) {
                this.executed = this.preprocessCommandLine(argList);
                if (!this.executed) {
                    return;
                }
            }
            boolean exceptionState = this.processProperties(argList);
            this.addBuildListeners(this.getCurrentProject());
            this.addInputHandler(this.getCurrentProject());
            this.remapSystemIn();
            System.setOut(new PrintStream((OutputStream)new DemuxOutputStream(this.getCurrentProject(), false)));
            System.setErr(new PrintStream((OutputStream)new DemuxOutputStream(this.getCurrentProject(), true)));
            if (!this.projectHelp) {
                this.fireBuildStarted(this.getCurrentProject());
            }
            if (this.fEarlyErrorMessage != null) {
                this.logMessage(this.getCurrentProject(), this.fEarlyErrorMessage, 0);
                if (exceptionState) {
                    throw new BuildException(this.fEarlyErrorMessage);
                }
            }
            this.setProperties(this.getCurrentProject(), true);
            if (argList != null && !argList.isEmpty()) {
                try {
                    this.executed = this.processCommandLine(argList);
                }
                catch (BuildException e) {
                    this.executed = false;
                    throw e;
                }
            }
            if (!this.executed) {
                return;
            }
            if (this.allowInput && this.inputHandlerClassname != null && this.inputHandlerClassname.length() > 0) {
                if (this.isVersionCompatible("1.6")) {
                    System.getProperties().remove("eclipse.ant.noInput");
                }
            } else {
                System.setProperty("eclipse.ant.noInput", "true");
                if (this.isVersionCompatible("1.5") && (this.inputHandlerClassname == null || this.inputHandlerClassname.length() == 0)) {
                    InputHandlerSetter setter = new InputHandlerSetter();
                    setter.setInputHandler(this.getCurrentProject(), "org.eclipse.ant.internal.core.ant.FailInputHandler");
                }
            }
            if (!this.projectHelp) {
                this.getCurrentProject().log(MessageFormat.format(InternalAntMessages.InternalAntRunner_Build_file, this.getBuildFileLocation()));
                this.setTasks(this.getCurrentProject());
                this.setTypes(this.getCurrentProject());
                if (this.isVersionCompatible("1.6")) {
                    this.getCurrentProject().setKeepGoingMode(this.keepGoing);
                }
                this.parseBuildFile(this.getCurrentProject());
            }
            this.createMonitorBuildListener(this.getCurrentProject());
            if (this.projectHelp) {
                if (this.isVersionCompatible("1.7")) {
                    new EclipseMainHelper().runProjectHelp(this.getBuildFileLocation(), this.getCurrentProject());
                    return;
                }
                this.getCurrentProject().log(InternalAntMessages.InternalAntRunner_ant_1_7_needed_for_help_info);
                this.executed = false;
                return;
            }
            try {
                if (this.extraArguments != null) {
                    this.printArguments(this.getCurrentProject());
                }
                System.setSecurityManager((SecurityManager)new AntSecurityManager(originalSM, Thread.currentThread()));
                if (this.targets == null) {
                    this.targets = new Vector(1);
                }
                if (this.targets.isEmpty() && this.getCurrentProject().getDefaultTarget() != null) {
                    this.targets.add(this.getCurrentProject().getDefaultTarget());
                }
                if (!this.isVersionCompatible("1.6.3")) {
                    this.getCurrentProject().addReference("eclipse.ant.targetVector", (Object)this.targets);
                }
                this.getCurrentProject().executeTargets(this.targets);
            }
            catch (OperationCanceledException e) {
                this.executed = false;
                this.logMessage(this.getCurrentProject(), e.getMessage(), 2);
                throw e;
            }
            catch (AntSecurityException antSecurityException) {
            }
            catch (RuntimeException e) {
                error = e;
                throw e;
            }
            catch (Error e) {
                error = e;
                throw e;
            }
        }
        finally {
            System.setErr(originalErr);
            System.setOut(originalOut);
            System.setIn(originalIn);
            if (System.getSecurityManager() instanceof AntSecurityManager) {
                System.setSecurityManager(originalSM);
            }
            if (!this.projectHelp) {
                if (AntCorePlugin.getPlugin().getBundle().getState() != 32) {
                    return;
                }
                this.fireBuildFinished(this.getCurrentProject(), error);
            }
            if (this.err != originalErr) {
                this.err.close();
            }
            if (this.out != originalOut) {
                this.out.close();
            }
            this.processAntHome(true);
            if (!this.allowInput) {
                System.getProperties().remove("eclipse.ant.noInput");
            }
        }
    }

    private void remapSystemIn() {
        if (!this.isVersionCompatible("1.6")) {
            return;
        }
        DemuxInputStreamSetter setter = new DemuxInputStreamSetter();
        setter.remapSystemIn(this.getCurrentProject());
    }

    private void processAntHome(boolean finished) {
        AntCorePreferences prefs = AntCorePlugin.getPlugin().getPreferences();
        String antHome = prefs.getAntHome();
        if (this.buildAntHome != null && !finished) {
            antHome = this.buildAntHome;
        }
        if (antHome == null || antHome.length() == 0) {
            System.getProperties().remove("ant.home");
            System.getProperties().remove("ant.library.dir");
        } else {
            System.setProperty("ant.home", antHome);
            File antLibDir = new File(antHome, "lib");
            System.setProperty("ant.library.dir", antLibDir.getAbsolutePath());
        }
    }

    public void setAntHome(String antHome) {
        this.buildAntHome = antHome;
    }

    private BuildLogger createLogger() {
        if (this.loggerClassname == null) {
            this.buildLogger = new DefaultLogger();
        } else if (!"".equals(this.loggerClassname)) {
            try {
                this.buildLogger = (BuildLogger)Class.forName(this.loggerClassname).newInstance();
            }
            catch (ClassCastException e) {
                String message = MessageFormat.format(InternalAntMessages.InternalAntRunner_not_an_instance_of_apache_ant_BuildLogger, this.loggerClassname);
                this.logMessage(null, message, 0);
                throw new BuildException(message, (Throwable)e);
            }
            catch (Exception e) {
                String message = MessageFormat.format(InternalAntMessages.InternalAntRunner_Unable_to_instantiate_logger, this.loggerClassname);
                this.logMessage(null, message, 0);
                throw new BuildException(message, (Throwable)e);
            }
        }
        if (this.buildLogger != null) {
            this.buildLogger.setMessageOutputLevel(this.messageOutputLevel);
            this.buildLogger.setOutputPrintStream(this.out);
            this.buildLogger.setErrorPrintStream(this.err);
            this.buildLogger.setEmacsMode(this.emacsMode);
            if (this.buildLogger instanceof AbstractEclipseBuildLogger) {
                ((AbstractEclipseBuildLogger)this.buildLogger).configure(this.userProperties);
            }
        }
        return this.buildLogger;
    }

    private void fireBuildStarted(Project project) {
        if (!this.isVersionCompatible("1.5")) {
            BuildEvent event = new BuildEvent(project);
            Vector listeners = (Vector)project.getBuildListeners().clone();
            Iterator iterator = listeners.iterator();
            while (iterator.hasNext()) {
                BuildListener listener = (BuildListener)iterator.next();
                listener.buildStarted(event);
            }
        } else {
            project.fireBuildStarted();
        }
    }

    private void fireBuildFinished(Project project, Throwable error) {
        if (this.usingXmlLogger()) {
            String fileName = project.getProperty("XmlLogger.file");
            if (fileName == null) {
                fileName = "log.xml";
            }
            String realPath = new Path(this.getBuildFileLocation()).toFile().getAbsolutePath();
            Path path = new Path(realPath);
            path = path.removeLastSegments(1);
            path = path.addTrailingSeparator();
            path = path.append(fileName);
            project.setProperty("XmlLogger.file", path.toOSString());
        }
        if (error == null && this.executed) {
            this.logMessage(project, InternalAntMessages.InternalAntRunner_BUILD_SUCCESSFUL_1, this.messageOutputLevel);
        }
        if (!this.isVersionCompatible("1.5")) {
            BuildEvent event = new BuildEvent(project);
            event.setException(error);
            Vector listeners = (Vector)project.getBuildListeners().clone();
            Iterator iter = listeners.iterator();
            while (iter.hasNext()) {
                BuildListener listener = (BuildListener)iter.next();
                listener.buildFinished(event);
            }
        } else {
            project.fireBuildFinished(error);
        }
    }

    private boolean usingXmlLogger() {
        if (this.buildLogger instanceof XmlLogger) {
            return true;
        }
        if (this.buildListeners != null) {
            Enumeration e = this.getCurrentProject().getBuildListeners().elements();
            while (e.hasMoreElements()) {
                BuildListener element = (BuildListener)e.nextElement();
                if (!(element instanceof XmlLogger)) continue;
                return true;
            }
        }
        return false;
    }

    private void logMessage(Project project, String message, int priority) {
        if (project != null) {
            project.log(message, priority);
        } else if (this.buildListeners != null) {
            Project p = new Project();
            BuildEvent event = new BuildEvent(p);
            event.setMessage(message, priority);
            Iterator iterator = this.buildListeners.iterator();
            while (iterator.hasNext()) {
                try {
                    BuildListener listener = (BuildListener)iterator.next();
                    listener.messageLogged(event);
                }
                catch (ClassCastException classCastException) {}
            }
        } else {
            Status s = new Status(4, "org.eclipse.ant.core", 120, message, null);
            AntCorePlugin.getPlugin().getLog().log((IStatus)s);
        }
    }

    public void setBuildFileLocation(String buildFileLocation) {
        this.buildFileLocation = buildFileLocation;
        if (this.getCurrentProject() != null) {
            this.getCurrentProject().setUserProperty("ant.file", buildFileLocation);
        }
    }

    public void setInputHandler(String inputHandlerClassname) {
        this.inputHandlerClassname = inputHandlerClassname;
    }

    private String getBuildFileLocation() {
        if (this.buildFileLocation == null) {
            this.buildFileLocation = new File("build.xml").getAbsolutePath();
        }
        return this.buildFileLocation;
    }

    public void setMessageOutputLevel(int level) {
        this.messageOutputLevel = level;
        if (this.buildLogger != null) {
            this.buildLogger.setMessageOutputLevel(level);
        }
    }

    public void setArguments(String[] args) {
        this.extraArguments = args;
    }

    public void setExecutionTargets(String[] executionTargets) {
        this.targets = new Vector(executionTargets.length);
        int i = 0;
        while (i < executionTargets.length) {
            this.targets.add(executionTargets[i]);
            ++i;
        }
    }

    private String getAntVersionNumber() throws BuildException {
        if (this.antVersionNumber == null) {
            try {
                String versionNumber;
                Properties props = new Properties();
                Class<?> clazz = class$2;
                if (clazz == null) {
                    try {
                        clazz = class$2 = Class.forName("org.apache.tools.ant.Main");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                InputStream in = clazz.getResourceAsStream("/org/apache/tools/ant/version.txt");
                props.load(in);
                in.close();
                this.antVersionNumber = versionNumber = props.getProperty("VERSION");
            }
            catch (IOException ioe) {
                throw new BuildException(MessageFormat.format(InternalAntMessages.InternalAntRunner_Could_not_load_the_version_information, ioe.getMessage()));
            }
            catch (NullPointerException npe) {
                throw new BuildException(MessageFormat.format(InternalAntMessages.InternalAntRunner_Could_not_load_the_version_information, npe.getMessage()));
            }
        }
        return this.antVersionNumber;
    }

    private boolean isVersionCompatible(String comparison) {
        String version = this.getAntVersionNumber();
        return version.compareTo(comparison) >= 0;
    }

    private boolean preprocessCommandLine(List commands) {
        String arg = AntCoreUtil.getArgument((List)commands, (String)"-listener");
        while (arg != null) {
            if (arg.length() == 0) {
                throw new BuildException(InternalAntMessages.InternalAntRunner_specify_a_classname_using_the_listener_argument);
            }
            if (this.buildListeners == null) {
                this.buildListeners = new ArrayList(1);
            }
            this.buildListeners.add(arg);
            arg = AntCoreUtil.getArgument((List)commands, (String)"-listener");
        }
        arg = AntCoreUtil.getArgument((List)commands, (String)"-logger");
        if (arg != null) {
            if (arg.length() == 0) {
                throw new BuildException(InternalAntMessages.InternalAntRunner_specify_a_classname_using_the_logger_argument);
            }
            this.loggerClassname = arg;
        }
        if ((arg = AntCoreUtil.getArgument((List)commands, (String)"-logger")) != null) {
            throw new BuildException(InternalAntMessages.InternalAntRunner_Only_one_logger_class_may_be_specified);
        }
        arg = AntCoreUtil.getArgument((List)commands, (String)"-inputhandler");
        if (arg != null) {
            if (!this.isVersionCompatible("1.5")) {
                throw new BuildException(InternalAntMessages.InternalAntRunner_Specifying_an_InputHandler_is_an_Ant_1_5_feature);
            }
            if (arg.length() == 0) {
                throw new BuildException(InternalAntMessages.InternalAntRunner_specify_a_classname_the_inputhandler_argument);
            }
            this.inputHandlerClassname = arg;
        }
        if ((arg = AntCoreUtil.getArgument((List)commands, (String)"-inputhandler")) != null) {
            throw new BuildException(InternalAntMessages.InternalAntRunner_Only_one_input_handler_class_may_be_specified);
        }
        return true;
    }

    private boolean processCommandLine(List commands) {
        if (commands.remove("-help") || commands.remove("-h")) {
            if (this.isVersionCompatible("1.7")) {
                new EclipseMainHelper().runUsage(this.getBuildFileLocation(), this.getCurrentProject());
            } else {
                this.getCurrentProject().log(InternalAntMessages.InternalAntRunner_ant_1_7_needed_for_help_message);
            }
            return false;
        }
        if (commands.remove("-version")) {
            this.printVersion();
            return false;
        }
        if (commands.remove("-verbose") || commands.remove("-v")) {
            this.printVersion();
            this.setMessageOutputLevel(3);
        }
        if (commands.remove("-debug") || commands.remove("-d")) {
            this.printVersion();
            this.setMessageOutputLevel(4);
        }
        if (commands.remove("-quiet") || commands.remove("-q")) {
            this.setMessageOutputLevel(1);
        }
        if (commands.remove("-emacs") || commands.remove("-e")) {
            this.emacsMode = true;
            if (this.buildLogger != null) {
                this.buildLogger.setEmacsMode(true);
            }
        }
        if (commands.remove("-diagnostics")) {
            if (!this.isVersionCompatible("1.5")) {
                throw new BuildException(InternalAntMessages.InternalAntRunner_The_diagnositics_options_is_an_Ant_1_5_feature);
            }
            try {
                Diagnostics.doReport((PrintStream)System.out);
            }
            catch (NullPointerException nullPointerException) {
                this.logMessage(this.getCurrentProject(), InternalAntMessages.InternalAntRunner_anthome_must_be_set_to_use_ant_diagnostics, 0);
            }
            return false;
        }
        String arg = AntCoreUtil.getArgument((List)commands, (String)"-logfile");
        if (arg == null) {
            arg = AntCoreUtil.getArgument((List)commands, (String)"-l");
        }
        if (arg != null) {
            if (arg.length() == 0) {
                String message = InternalAntMessages.InternalAntRunner_specify_a_log_file_using_the_log_argument;
                this.logMessage(this.currentProject, message, 0);
                throw new BuildException(message);
            }
            try {
                this.createLogFile(arg);
            }
            catch (IOException iOException) {
                this.logMessage(this.getCurrentProject(), MessageFormat.format(InternalAntMessages.InternalAntRunner_Could_not_write_to_log_file, arg), 0);
                return false;
            }
        }
        if ((arg = AntCoreUtil.getArgument((List)commands, (String)"-buildfile")) == null && (arg = AntCoreUtil.getArgument((List)commands, (String)"-file")) == null) {
            arg = AntCoreUtil.getArgument((List)commands, (String)"-f");
        }
        if (arg != null) {
            if (arg.length() == 0) {
                String message = InternalAntMessages.InternalAntRunner_specify_a_buildfile_using_the_buildfile_argument;
                this.logMessage(this.currentProject, message, 0);
                throw new BuildException(message);
            }
            this.setBuildFileLocation(arg);
        }
        if (this.isVersionCompatible("1.6")) {
            if (commands.remove("-k") || commands.remove("-keep-going")) {
                this.keepGoing = true;
            }
            if (commands.remove("-noinput")) {
                this.allowInput = false;
            }
            if ((arg = AntCoreUtil.getArgument((List)commands, (String)"-lib")) != null) {
                this.logMessage(this.currentProject, InternalAntMessages.InternalAntRunner_157, 0);
                return false;
            }
        }
        if ((arg = AntCoreUtil.getArgument((List)commands, (String)"-find")) == null) {
            arg = AntCoreUtil.getArgument((List)commands, (String)"-s");
        }
        if (arg != null) {
            this.logMessage(this.currentProject, InternalAntMessages.InternalAntRunner_find_not_supported, 0);
            return false;
        }
        if (!commands.isEmpty()) {
            this.processUnrecognizedCommands(commands);
        }
        if (!commands.isEmpty()) {
            this.processUnrecognizedTargets(commands);
        }
        if (!commands.isEmpty()) {
            this.processTargets(commands);
        }
        return true;
    }

    private void processUnrecognizedTargets(List commands) {
        List names = this.getTargetNames();
        ListIterator iterator = commands.listIterator();
        while (iterator.hasNext()) {
            String target = (String)iterator.next();
            if (names.contains(target)) continue;
            iterator.remove();
            String message = MessageFormat.format(InternalAntMessages.InternalAntRunner_unknown_target, target);
            this.logMessage(this.currentProject, message, 1);
        }
    }

    private void processUnrecognizedCommands(List commands) {
        int p = -1;
        int i = commands.size() - 1;
        while (i >= 0) {
            if (((String)commands.get(i)).startsWith("-")) {
                p = i;
                break;
            }
            --i;
        }
        if (p < 0) {
            return;
        }
        String s = "";
        int i2 = 0;
        while (i2 <= p) {
            s = String.valueOf(s) + " " + (String)commands.get(0);
            commands.remove(0);
            ++i2;
        }
        String message = MessageFormat.format(InternalAntMessages.InternalAntRunner_Unknown_argument, s.substring(1));
        this.logMessage(this.currentProject, message, 1);
    }

    private void processTargets(List commands) {
        if (this.targets == null) {
            this.targets = new Vector(commands.size());
        }
        Iterator iter = commands.iterator();
        while (iter.hasNext()) {
            this.targets.add(iter.next());
        }
    }

    private void createLogFile(String fileName) throws FileNotFoundException, IOException {
        File logFile = this.getFileRelativeToBaseDir(fileName);
        this.err = this.out = new PrintStream(new FileOutputStream(logFile));
        this.logMessage(this.getCurrentProject(), MessageFormat.format(InternalAntMessages.InternalAntRunner_Using_file_as_build_log, logFile.getCanonicalPath()), 2);
        if (this.buildLogger != null) {
            this.buildLogger.setErrorPrintStream(this.err);
            this.buildLogger.setOutputPrintStream(this.out);
        }
    }

    private File getFileRelativeToBaseDir(String fileName) {
        return AntCoreUtil.getFileRelativeToBaseDir((String)fileName, (String)this.getCurrentProject().getUserProperty("basedir"), (String)this.getBuildFileLocation());
    }

    private boolean processProperties(List commands) {
        boolean exceptionToBeThrown = false;
        String arg = AntCoreUtil.getArgument((List)commands, (String)"-propertyfile");
        while (arg != null) {
            if (!this.isVersionCompatible("1.5")) {
                this.fEarlyErrorMessage = InternalAntMessages.InternalAntRunner_Specifying_property_files_is_a_Ant_1_5_feature;
                break;
            }
            if (arg.length() == 0) {
                this.fEarlyErrorMessage = InternalAntMessages.InternalAntRunner_specify_a_property_filename_when_using_propertyfile_argument;
                exceptionToBeThrown = true;
                break;
            }
            this.propertyFiles.add(arg);
            arg = AntCoreUtil.getArgument((List)commands, (String)"-propertyfile");
        }
        String[] globalPropertyFiles = AntCorePlugin.getPlugin().getPreferences().getCustomPropertyFiles();
        if (globalPropertyFiles.length > 0) {
            if (!this.isVersionCompatible("1.5")) {
                this.fEarlyErrorMessage = InternalAntMessages.InternalAntRunner_Specifying_property_files_is_a_Ant_1_5_feature;
            } else {
                if (this.propertyFiles == null) {
                    this.propertyFiles = new ArrayList(globalPropertyFiles.length);
                }
                this.propertyFiles.addAll(Arrays.asList(globalPropertyFiles));
            }
        }
        if (this.propertyFiles != null && !this.propertyFiles.isEmpty()) {
            this.loadPropertyFiles();
        }
        if (commands != null) {
            this.processMinusDProperties(commands);
        }
        return exceptionToBeThrown;
    }

    private void processMinusDProperties(List commands) {
        if (!commands.isEmpty() && this.userProperties == null) {
            this.userProperties = new HashMap();
        }
        AntCoreUtil.processMinusDProperties((List)commands, (Map)this.userProperties);
    }

    private void printVersion() {
        this.logMessage(this.getCurrentProject(), Main.getAntVersion(), 2);
    }

    public void setProgressMonitor(IProgressMonitor monitor) {
        this.monitor = monitor;
    }

    private Project getCurrentProject() {
        return this.currentProject;
    }

    private void setCurrentProject(Project currentProject) {
        this.currentProject = currentProject;
    }

    public String getBuildExceptionErrorMessage(Throwable t) {
        if (t instanceof BuildException) {
            return t.toString();
        }
        return null;
    }

    private void loadPropertyFiles() {
        if (this.userProperties == null) {
            this.userProperties = new HashMap();
        }
        try {
            List allProperties = AntCoreUtil.loadPropertyFiles((List)this.propertyFiles, (String)this.getCurrentProject().getUserProperty("basedir"), (String)this.getBuildFileLocation());
            Iterator iter = allProperties.iterator();
            while (iter.hasNext()) {
                Properties props = (Properties)iter.next();
                Enumeration<?> propertyNames = props.propertyNames();
                while (propertyNames.hasMoreElements()) {
                    String name = (String)propertyNames.nextElement();
                    if (this.userProperties.get(name) != null) continue;
                    this.userProperties.put(name, props.getProperty(name));
                }
            }
        }
        catch (IOException e) {
            this.fEarlyErrorMessage = MessageFormat.format(InternalAntMessages.InternalAntRunner_could_not_load_property_file, e.getMessage());
        }
    }

    private void addInputHandler(Project project) {
        if (!this.isVersionCompatible("1.5") || this.inputHandlerClassname != null && this.inputHandlerClassname.length() == 0) {
            return;
        }
        InputHandlerSetter setter = new InputHandlerSetter();
        setter.setInputHandler(project, this.inputHandlerClassname);
    }

    private void setJavaClassPath() {
        org.apache.tools.ant.types.Path systemClasspath;
        URL[] antClasspath = null;
        AntCorePreferences prefs = AntCorePlugin.getPlugin().getPreferences();
        if (this.customClasspath == null) {
            antClasspath = prefs.getURLs();
        } else {
            URL[] extraClasspath = prefs.getExtraClasspathURLs();
            antClasspath = new URL[this.customClasspath.length + extraClasspath.length];
            System.arraycopy(this.customClasspath, 0, antClasspath, 0, this.customClasspath.length);
            System.arraycopy(extraClasspath, 0, antClasspath, this.customClasspath.length, extraClasspath.length);
        }
        StringBuffer buff = new StringBuffer();
        File file = null;
        int i = 0;
        while (i < antClasspath.length) {
            block5: {
                try {
                    file = new File(FileLocator.toFileURL((URL)antClasspath[i]).getPath());
                }
                catch (IOException iOException) {
                    break block5;
                }
                buff.append(file.getAbsolutePath());
                buff.append("; ");
            }
            ++i;
        }
        org.apache.tools.ant.types.Path.systemClasspath = systemClasspath = new org.apache.tools.ant.types.Path(null, buff.substring(0, buff.length() - 2));
    }

    public void setCustomClasspath(URL[] classpath) {
        this.customClasspath = classpath;
    }
}

