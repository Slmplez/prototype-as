/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.core;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IClasspathAttribute;

public interface IClasspathEntry {
    public static final int CPE_LIBRARY = 1;
    public static final int CPE_PROJECT = 2;
    public static final int CPE_SOURCE = 3;
    public static final int CPE_VARIABLE = 4;
    public static final int CPE_CONTAINER = 5;

    public boolean combineAccessRules();

    public IAccessRule[] getAccessRules();

    public int getContentKind();

    public int getEntryKind();

    public IPath[] getExclusionPatterns();

    public IClasspathAttribute[] getExtraAttributes();

    public IPath[] getInclusionPatterns();

    public IPath getOutputLocation();

    public IPath getPath();

    public IPath getSourceAttachmentPath();

    public IPath getSourceAttachmentRootPath();

    public IClasspathEntry getReferencingEntry();

    public boolean isExported();

    public IClasspathEntry getResolvedEntry();
}

