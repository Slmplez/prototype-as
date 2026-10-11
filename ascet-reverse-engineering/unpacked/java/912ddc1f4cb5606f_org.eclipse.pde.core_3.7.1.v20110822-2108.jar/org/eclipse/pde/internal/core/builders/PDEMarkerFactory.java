/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.runtime.CoreException;

public class PDEMarkerFactory {
    public static final String MARKER_ID = "org.eclipse.pde.core.problem";
    public static final int NO_RESOLUTION = -1;
    public static final int M_DEPRECATED_AUTOSTART = 4097;
    public static final int M_JAVA_PACKAGE__PORTED = 4098;
    public static final int M_SINGLETON_DIR_NOT_SET = 4099;
    public static final int M_SINGLETON_ATT_NOT_SET = 4100;
    public static final int M_PROJECT_BUILD_ORDER_ENTRIES = 4101;
    public static final int M_EXPORT_PKG_NOT_EXIST = 4102;
    public static final int M_IMPORT_PKG_NOT_AVAILABLE = 4103;
    public static final int M_REQ_BUNDLE_NOT_AVAILABLE = 4104;
    public static final int M_UNKNOWN_CLASS = 4105;
    public static final int M_UNKNOWN_ACTIVATOR = 4112;
    public static final int M_SINGLETON_DIR_NOT_SUPPORTED = 4113;
    public static final int M_DIRECTIVE_HAS_NO_EFFECT = 4114;
    public static final int M_MISMATCHED_EXEC_ENV = 4115;
    public static final int M_UNKNOW_EXEC_ENV = 4116;
    public static final int M_DEPRECATED_IMPORT_SERVICE = 4117;
    public static final int M_DEPRECATED_EXPORT_SERVICE = 4118;
    public static final int M_UNECESSARY_DEP = 4119;
    public static final int M_MISSING_EXPORT_PKGS = 4120;
    public static final int M_DEPRECATED_PROVIDE_PACKAGE = 4121;
    public static final int M_EXECUTION_ENVIRONMENT_NOT_SET = 4128;
    public static final int M_MISSING_BUNDLE_CLASSPATH_ENTRY = 4129;
    public static final int M_LAZYLOADING_HAS_NO_EFFECT = 4130;
    public static final int M_DISCOURAGED_CLASS = 4131;
    public static final int B_APPEND_SLASH_FOLDER_ENTRY = 8193;
    public static final int B_REMOVE_SLASH_FILE_ENTRY = 8194;
    public static final int B_ADDITION = 8195;
    public static final int B_SOURCE_ADDITION = 8196;
    public static final int B_REMOVAL = 8197;
    public static final int B_REPLACE = 8198;
    public static final int B_JAVA_ADDDITION = 8199;
    public static final int P_ILLEGAL_XML_NODE = 12289;
    public static final int P_UNTRANSLATED_NODE = 12290;
    public static final int P_UNKNOWN_CLASS = 12291;
    public static final int P_USELESS_FILE = 12292;
    public static final String BK_BUILD_ENTRY = "buildEntry.key";
    public static final String BK_BUILD_TOKEN = "buildEntry.tokenValue";
    public static final String MPK_LOCATION_PATH = "xmlTree.locationPath";
    public static final String CAT_FATAL = "fatal";
    public static final String CAT_NLS = "nls";
    public static final String CAT_DEPRECATION = "deprecation";
    public static final String CAT_EE = "ee";
    public static final String CAT_OTHER = "";
    public static final String CAT_ID = "categoryId";

    public IMarker createMarker(IFile file, int id, String category) throws CoreException {
        IMarker marker = file.createMarker(MARKER_ID);
        marker.setAttribute("id", id);
        marker.setAttribute(CAT_ID, (Object)category);
        return marker;
    }
}

