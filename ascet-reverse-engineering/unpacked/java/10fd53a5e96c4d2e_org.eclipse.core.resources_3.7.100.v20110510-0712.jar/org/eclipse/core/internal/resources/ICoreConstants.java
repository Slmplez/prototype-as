/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IFileState;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.QualifiedName;

public interface ICoreConstants {
    public static final QualifiedName K_BUILD_LIST = new QualifiedName("org.eclipse.core.resources", "BuildMap");
    public static final String REFRESH_ON_STARTUP = "-refresh";
    public static final long I_NULL_SYNC_INFO = -1L;
    public static final int M_OPEN = 1;
    public static final int M_LOCAL_EXISTS = 2;
    public static final int M_PHANTOM = 8;
    public static final int M_USED = 16;
    public static final int M_TYPE = 3840;
    public static final int M_TYPE_START = 8;
    public static final int M_MARKERS_SNAP_DIRTY = 4096;
    public static final int M_SYNCINFO_SNAP_DIRTY = 8192;
    public static final int M_DERIVED = 16384;
    public static final int M_TEAM_PRIVATE_MEMBER = 32768;
    public static final int M_HIDDEN = 0x200000;
    public static final int M_LINK = 65536;
    public static final int M_VIRTUAL = 524288;
    public static final int M_NO_CONTENT_DESCRIPTION = 131072;
    public static final int M_DEFAULT_CONTENT_DESCRIPTION = 262144;
    public static final int M_CHILDREN_UNKNOWN = 0x100000;
    public static final int M_CONTENT_CACHE = 393216;
    public static final int NULL_FLAG = -1;
    public static final String PREF_VERSION_KEY = "version";
    public static final String PREF_VERSION = "1";
    public static final int CRASH_DETECTED = 10035;
    public static final int PROJECT_SEGMENT_LENGTH = 1;
    public static final int MINIMUM_FOLDER_SEGMENT_LENGTH = 2;
    public static final int MINIMUM_FILE_SEGMENT_LENGTH = 2;
    public static final int WORKSPACE_TREE_VERSION_1 = 67305985;
    public static final int WORKSPACE_TREE_VERSION_2 = 67305986;
    public static final IBuildConfiguration[] EMPTY_BUILD_CONFIG_ARRAY = new IBuildConfiguration[0];
    public static final IProject[] EMPTY_PROJECT_ARRAY = new IProject[0];
    public static final IResource[] EMPTY_RESOURCE_ARRAY = new IResource[0];
    public static final IFileState[] EMPTY_FILE_STATES = new IFileState[0];
}

