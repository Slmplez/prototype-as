/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.resources;

import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;

public interface IResourceStatus
extends IStatus {
    public static final int INVALID_NATURE_SET = 35;
    public static final int BUILD_FAILED = 75;
    public static final int OPERATION_FAILED = 76;
    public static final int INVALID_VALUE = 77;
    public static final int MISSING_DESCRIPTION_REPAIRED = 234;
    public static final int OVERLAPPING_LOCATION = 235;
    public static final int EXISTS_LOCAL = 268;
    public static final int NOT_FOUND_LOCAL = 269;
    public static final int NO_LOCATION_LOCAL = 270;
    public static final int FAILED_READ_LOCAL = 271;
    public static final int FAILED_WRITE_LOCAL = 272;
    public static final int FAILED_DELETE_LOCAL = 273;
    public static final int OUT_OF_SYNC_LOCAL = 274;
    public static final int CASE_VARIANT_EXISTS = 275;
    public static final int WRONG_TYPE_LOCAL = 276;
    public static final int PARENT_READ_ONLY = 277;
    public static final int INVALID_RESOURCE_NAME = 278;
    public static final int READ_ONLY_LOCAL = 279;
    public static final int VARIABLE_NOT_DEFINED_WARNING = 333;
    public static final int RESOURCE_WRONG_TYPE = 366;
    public static final int RESOURCE_EXISTS = 367;
    public static final int RESOURCE_NOT_FOUND = 368;
    public static final int RESOURCE_NOT_LOCAL = 369;
    public static final int WORKSPACE_NOT_OPEN = 370;
    public static final int PROJECT_NOT_OPEN = 372;
    public static final int PATH_OCCUPIED = 374;
    public static final int PARTNER_NOT_REGISTERED = 375;
    public static final int MARKER_NOT_FOUND = 376;
    public static final int RESOURCE_NOT_LINKED = 377;
    public static final int LINKING_NOT_ALLOWED = 378;
    public static final int VARIABLE_NOT_DEFINED = 379;
    public static final int WORKSPACE_LOCKED = 380;
    public static final int FAILED_DESCRIBING_CONTENTS = 381;
    public static final int FAILED_SETTING_CHARSET = 382;
    public static final int FAILED_GETTING_CHARSET = 383;
    public static final int BUILD_CONFIGURATION_NOT_FOUND = 384;
    public static final int INTERNAL_ERROR = 566;
    public static final int FAILED_READ_METADATA = 567;
    public static final int FAILED_WRITE_METADATA = 568;
    public static final int FAILED_DELETE_METADATA = 569;

    public IPath getPath();
}

