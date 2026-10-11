/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jdt.core.ClasspathContainerInitializer
 *  org.eclipse.jdt.core.IClasspathContainer
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.net.MalformedURLException;
import java.net.URL;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.JREContainer;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallType;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.LibraryLocation;
import org.eclipse.jdt.launching.VMStandin;
import org.eclipse.jdt.launching.environments.IExecutionEnvironment;
import org.eclipse.jdt.launching.environments.IExecutionEnvironmentsManager;

public class JREContainerInitializer
extends ClasspathContainerInitializer {
    private static final IStatus READ_ONLY = new Status(4, "org.eclipse.jdt.launching", 2, new String(), null);
    private static final IStatus NOT_SUPPORTED = new Status(4, "org.eclipse.jdt.launching", 1, new String(), null);

    public void initialize(IPath containerPath, IJavaProject project) throws CoreException {
        int size;
        if (JREContainer.DEBUG_JRE_CONTAINER) {
            System.out.println("<JRE_CONTAINER> initialize()");
            System.out.println("\tPath: " + containerPath.toString());
            System.out.println("\tProj: " + project.getProject().getName());
        }
        if ((size = containerPath.segmentCount()) > 0) {
            if (containerPath.segment(0).equals(JavaRuntime.JRE_CONTAINER)) {
                IVMInstall vm = JREContainerInitializer.resolveVM(containerPath);
                JREContainer container = null;
                if (vm != null) {
                    if (JREContainer.DEBUG_JRE_CONTAINER) {
                        System.out.println("\tResolved VM: " + vm.getName());
                    }
                    container = new JREContainer(vm, containerPath, project);
                } else if (JREContainer.DEBUG_JRE_CONTAINER) {
                    System.out.println("\t*** FAILED RESOLVE VM ***");
                }
                JavaCore.setClasspathContainer((IPath)containerPath, (IJavaProject[])new IJavaProject[]{project}, (IClasspathContainer[])new IClasspathContainer[]{container}, null);
            } else if (JREContainer.DEBUG_JRE_CONTAINER) {
                System.out.println("\t*** INVALID JRE CONTAINER PATH ***");
            }
        } else if (JREContainer.DEBUG_JRE_CONTAINER) {
            System.out.println("\t*** NO SEGMENTS IN CONTAINER PATH ***");
        }
    }

    public void initialize(IPath containerPath, IJavaProject[] projects) throws CoreException {
        int size = containerPath.segmentCount();
        if (size > 0) {
            if (containerPath.segment(0).equals(JavaRuntime.JRE_CONTAINER)) {
                int length = projects.length;
                IVMInstall vm = JREContainerInitializer.resolveVM(containerPath);
                IClasspathContainer[] containers = new JREContainer[length];
                if (vm != null) {
                    if (JREContainer.DEBUG_JRE_CONTAINER) {
                        System.out.println("\tResolved VM: " + vm.getName());
                    }
                    int i = 0;
                    while (i < length) {
                        containers[i] = new JREContainer(vm, containerPath, projects[i]);
                        ++i;
                    }
                } else if (JREContainer.DEBUG_JRE_CONTAINER) {
                    System.out.println("\t*** FAILED RESOLVE VM ***");
                }
                JavaCore.setClasspathContainer((IPath)containerPath, (IJavaProject[])projects, (IClasspathContainer[])containers, null);
            } else if (JREContainer.DEBUG_JRE_CONTAINER) {
                System.out.println("\t*** INVALID JRE CONTAINER PATH ***");
            }
        } else if (JREContainer.DEBUG_JRE_CONTAINER) {
            System.out.println("\t*** NO SEGMENTS IN CONTAINER PATH ***");
        }
    }

    public static IVMInstall resolveVM(IPath containerPath) {
        IVMInstall vm = null;
        if (containerPath.segmentCount() > 1) {
            String id = JREContainerInitializer.getExecutionEnvironmentId(containerPath);
            if (id != null) {
                IExecutionEnvironmentsManager manager;
                IExecutionEnvironment environment;
                if (JREContainer.DEBUG_JRE_CONTAINER) {
                    System.out.println("<JRE_CONTAINER> resolveVM(IPath)");
                    System.out.println("\tEE: " + id);
                }
                if ((environment = (manager = JavaRuntime.getExecutionEnvironmentsManager()).getEnvironment(id)) != null) {
                    vm = JREContainerInitializer.resolveVM(environment);
                } else if (JREContainer.DEBUG_JRE_CONTAINER) {
                    System.out.println("\t*** NO ENVIRONMENT ***");
                }
            } else {
                String vmTypeId = JREContainerInitializer.getVMTypeId(containerPath);
                String vmName = JREContainerInitializer.getVMName(containerPath);
                IVMInstallType vmType = JavaRuntime.getVMInstallType(vmTypeId);
                if (vmType != null) {
                    vm = vmType.findVMInstallByName(vmName);
                }
            }
        } else {
            vm = JavaRuntime.getDefaultVMInstall();
        }
        return vm;
    }

    public static IVMInstall resolveVM(IExecutionEnvironment environment) {
        IVMInstall vm;
        if (JREContainer.DEBUG_JRE_CONTAINER) {
            System.out.println("<JRE_CONTAINER> resolveVM(IExecutionEnvironment)");
        }
        if ((vm = environment.getDefaultVM()) == null) {
            IVMInstall[] installs = environment.getCompatibleVMs();
            if (installs.length == 0 && JREContainer.DEBUG_JRE_CONTAINER) {
                System.out.println("\t*** NO COMPATIBLE VMS ***");
            }
            int i = 0;
            while (i < installs.length) {
                IVMInstall install = installs[i];
                if (environment.isStrictlyCompatible(install)) {
                    vm = install;
                    if (installs.length != 0 || !JREContainer.DEBUG_JRE_CONTAINER) break;
                    System.out.println("\tPerfect Match: " + vm.getName());
                    break;
                }
                ++i;
            }
            if (vm == null && installs.length > 0) {
                vm = installs[0];
                if (installs.length == 0 && JREContainer.DEBUG_JRE_CONTAINER) {
                    System.out.println("\tFirst Match: " + vm.getName());
                }
            }
        } else if (JREContainer.DEBUG_JRE_CONTAINER) {
            System.out.println("\tUser Default VM: " + vm.getName());
        }
        return vm;
    }

    public static String getExecutionEnvironmentId(IPath path) {
        String name = JREContainerInitializer.getVMName(path);
        if (name != null) {
            name = JREContainerInitializer.decodeEnvironmentId(name);
            IExecutionEnvironmentsManager manager = JavaRuntime.getExecutionEnvironmentsManager();
            IExecutionEnvironment environment = manager.getEnvironment(name);
            if (environment != null) {
                return environment.getId();
            }
        }
        return null;
    }

    public static boolean isExecutionEnvironment(IPath path) {
        return JREContainerInitializer.getExecutionEnvironmentId(path) != null;
    }

    public static String encodeEnvironmentId(String id) {
        return id.replace('/', '%');
    }

    public static String decodeEnvironmentId(String id) {
        return id.replace('%', '/');
    }

    public static String getVMTypeId(IPath path) {
        return path.segment(1);
    }

    public static String getVMName(IPath path) {
        return path.segment(2);
    }

    public boolean canUpdateClasspathContainer(IPath containerPath, IJavaProject project) {
        if (containerPath != null && containerPath.segmentCount() > 0 && JavaRuntime.JRE_CONTAINER.equals(containerPath.segment(0))) {
            return JREContainerInitializer.resolveVM(containerPath) != null;
        }
        return false;
    }

    public IStatus getAccessRulesStatus(IPath containerPath, IJavaProject project) {
        return READ_ONLY;
    }

    public IStatus getSourceAttachmentStatus(IPath containerPath, IJavaProject project) {
        return Status.OK_STATUS;
    }

    public IStatus getAttributeStatus(IPath containerPath, IJavaProject project, String attributeKey) {
        if (attributeKey.equals("javadoc_location")) {
            return Status.OK_STATUS;
        }
        if (attributeKey.equals(JavaRuntime.CLASSPATH_ATTR_LIBRARY_PATH_ENTRY)) {
            return Status.OK_STATUS;
        }
        return NOT_SUPPORTED;
    }

    /*
     * Unable to fully structure code
     */
    public void requestClasspathContainerUpdate(IPath containerPath, IJavaProject project, IClasspathContainer containerSuggestion) throws CoreException {
        vm = JREContainerInitializer.resolveVM(containerPath);
        if (vm == null) {
            status = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 105, MessageFormat.format((String)LaunchingMessages.JREContainerInitializer_JRE_referenced_by_classpath_container__0__does_not_exist__1, (Object[])new String[]{containerPath.toString()}), null);
            throw new CoreException((IStatus)status);
        }
        entries = containerSuggestion.getClasspathEntries();
        libs = new LibraryLocation[entries.length];
        i = 0;
        while (i < entries.length) {
            entry = entries[i];
            if (entry.getEntryKind() != 1) ** GOTO lbl35
            path = entry.getPath();
            lib = path.toFile();
            if (lib.exists() && lib.isFile()) {
                srcPath = entry.getSourceAttachmentPath();
                if (srcPath == null) {
                    srcPath = Path.EMPTY;
                }
                if ((rootPath = entry.getSourceAttachmentRootPath()) == null) {
                    rootPath = Path.EMPTY;
                }
                javadocLocation = null;
                extraAttributes = entry.getExtraAttributes();
                j = 0;
                while (j < extraAttributes.length) {
                    attribute = extraAttributes[j];
                    if (attribute.getName().equals("javadoc_location") && (url = attribute.getValue()) != null && url.trim().length() > 0) {
                        try {
                            javadocLocation = new URL(url);
                        }
                        catch (MalformedURLException e) {
                            LaunchingPlugin.log(e);
                        }
                    }
                    ++j;
                }
            } else {
                status = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, MessageFormat.format((String)LaunchingMessages.JREContainerInitializer_Classpath_entry__0__does_not_refer_to_an_existing_library__2, (Object[])new String[]{entry.getPath().toString()}), null);
                throw new CoreException((IStatus)status);
lbl35:
                // 1 sources

                status = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 150, MessageFormat.format((String)LaunchingMessages.JREContainerInitializer_Classpath_entry__0__does_not_refer_to_a_library__3, (Object[])new String[]{entry.getPath().toString()}), null);
                throw new CoreException((IStatus)status);
            }
            libs[i] = new LibraryLocation(path, srcPath, rootPath, javadocLocation);
            ++i;
        }
        standin = new VMStandin(vm);
        standin.setLibraryLocations(libs);
        standin.convertToRealVM();
        JavaRuntime.saveVMConfiguration();
    }

    public String getDescription(IPath containerPath, IJavaProject project) {
        String tag = JREContainerInitializer.getExecutionEnvironmentId(containerPath);
        if (tag == null && containerPath.segmentCount() > 2) {
            tag = JREContainerInitializer.getVMName(containerPath);
        }
        if (tag != null) {
            return MessageFormat.format((String)LaunchingMessages.JREContainer_JRE_System_Library_1, (Object[])new String[]{tag});
        }
        return LaunchingMessages.JREContainerInitializer_Default_System_Library_1;
    }
}

