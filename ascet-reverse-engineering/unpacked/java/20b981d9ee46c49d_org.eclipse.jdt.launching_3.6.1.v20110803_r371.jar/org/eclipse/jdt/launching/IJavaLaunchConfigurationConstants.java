/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching;

import org.eclipse.jdt.internal.launching.LaunchingPlugin;
import org.eclipse.jdt.launching.JavaRuntime;

public interface IJavaLaunchConfigurationConstants {
    public static final String ID_JAVA_APPLICATION = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".localJavaApplication";
    public static final String ID_REMOTE_JAVA_APPLICATION = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".remoteJavaApplication";
    public static final String ID_JAVA_APPLET = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".javaApplet";
    public static final String ID_SOCKET_ATTACH_VM_CONNECTOR = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".socketAttachConnector";
    public static final String ID_SOCKET_LISTEN_VM_CONNECTOR = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".socketListenConnector";
    public static final String ID_JAVA_PROCESS_TYPE = "java";
    public static final String ATTR_PROJECT_NAME = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PROJECT_ATTR";
    public static final String ATTR_MAIN_TYPE_NAME = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".MAIN_TYPE";
    public static final String ATTR_STOP_IN_MAIN = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".STOP_IN_MAIN";
    public static final String ATTR_PROGRAM_ARGUMENTS = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".PROGRAM_ARGUMENTS";
    public static final String ATTR_VM_ARGUMENTS = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".VM_ARGUMENTS";
    public static final String ATTR_WORKING_DIRECTORY = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".WORKING_DIRECTORY";
    public static final String ATTR_JRE_CONTAINER_PATH = JavaRuntime.JRE_CONTAINER;
    public static final String ATTR_VM_INSTALL_NAME = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".VM_INSTALL_NAME";
    public static final String ATTR_VM_INSTALL_TYPE = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".VM_INSTALL_TYPE_ID";
    public static final String ATTR_VM_INSTALL_TYPE_SPECIFIC_ATTRS_MAP = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + "VM_INSTALL_TYPE_SPECIFIC_ATTRS_MAP";
    public static final String ATTR_VM_CONNECTOR = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".VM_CONNECTOR_ID";
    public static final String ATTR_CLASSPATH = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".CLASSPATH";
    public static final String ATTR_DEFAULT_CLASSPATH = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".DEFAULT_CLASSPATH";
    public static final String ATTR_CLASSPATH_PROVIDER = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".CLASSPATH_PROVIDER";
    public static final String ATTR_SOURCE_PATH = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".SOURCE_PATH";
    public static final String ATTR_DEFAULT_SOURCE_PATH = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".DEFAULT_SOURCE_PATH";
    public static final String ATTR_SOURCE_PATH_PROVIDER = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".SOURCE_PATH_PROVIDER";
    public static final String ATTR_ALLOW_TERMINATE = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".ALLOW_TERMINATE";
    public static final String ATTR_JAVA_COMMAND = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".JAVA_COMMAND";
    public static final String ATTR_CONNECT_MAP = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".CONNECT_MAP";
    public static final String ATTR_APPLET_WIDTH = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".APPLET_WIDTH";
    public static final String ATTR_APPLET_HEIGHT = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".APPLET_HEIGHT";
    public static final String ATTR_APPLET_NAME = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".APPLET_NAME";
    public static final String ATTR_APPLET_PARAMETERS = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".APPLET_PARAMETERS";
    public static final String ATTR_APPLET_APPLETVIEWER_CLASS = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".APPLET_APPLETVIEWER_CLASS";
    public static final String ATTR_BOOTPATH_PREPEND = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".-Xbootclasspath/p:";
    public static final String ATTR_BOOTPATH = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".-Xbootclasspath:";
    public static final String ATTR_BOOTPATH_APPEND = String.valueOf(LaunchingPlugin.getUniqueIdentifier()) + ".-Xbootclasspath/a:";
    public static final int ERR_UNSPECIFIED_PROJECT = 100;
    public static final int ERR_UNSPECIFIED_MAIN_TYPE = 101;
    public static final int ERR_UNSPECIFIED_VM_INSTALL_TYPE = 102;
    public static final int ERR_UNSPECIFIED_VM_INSTALL = 103;
    public static final int ERR_VM_INSTALL_TYPE_DOES_NOT_EXIST = 104;
    public static final int ERR_VM_INSTALL_DOES_NOT_EXIST = 105;
    public static final int ERR_VM_RUNNER_DOES_NOT_EXIST = 106;
    public static final int ERR_NOT_A_JAVA_PROJECT = 107;
    public static final int ERR_WORKING_DIRECTORY_DOES_NOT_EXIST = 108;
    public static final int ERR_UNSPECIFIED_HOSTNAME = 109;
    public static final int ERR_INVALID_HOSTNAME = 110;
    public static final int ERR_UNSPECIFIED_PORT = 111;
    public static final int ERR_INVALID_PORT = 112;
    public static final int ERR_REMOTE_VM_CONNECTION_FAILED = 113;
    public static final int ERR_SHARED_MEMORY_CONNECTOR_UNAVAILABLE = 114;
    public static final int ERR_WORKING_DIRECTORY_NOT_SUPPORTED = 115;
    public static final int ERR_VM_LAUNCH_ERROR = 116;
    public static final int ERR_VM_CONNECT_TIMEOUT = 117;
    public static final int ERR_NO_SOCKET_AVAILABLE = 118;
    public static final int ERR_CONNECTOR_NOT_AVAILABLE = 119;
    public static final int ERR_CONNECTION_FAILED = 120;
    public static final int ERR_NOT_AN_APPLET = 121;
    public static final int ERR_UNSPECIFIED_LAUNCH_CONFIG = 122;
    public static final int ERR_COULD_NOT_BUILD_HTML = 123;
    public static final int ERR_PROJECT_CLOSED = 124;
    public static final int ERR_INTERNAL_ERROR = 150;
    public static final String DEFAULT_APPLETVIEWER_CLASS = "sun.applet.AppletViewer";
    public static final int DETAIL_CONFIG_READY_TO_ACCEPT_REMOTE_VM_CONNECTION = 1001;
}

