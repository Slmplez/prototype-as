/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResourceDelta
 */
package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.dom.CompilationUnit;

public interface IJavaElementDelta {
    public static final int ADDED = 1;
    public static final int REMOVED = 2;
    public static final int CHANGED = 4;
    public static final int F_CONTENT = 1;
    public static final int F_MODIFIERS = 2;
    public static final int F_CHILDREN = 8;
    public static final int F_MOVED_FROM = 16;
    public static final int F_MOVED_TO = 32;
    public static final int F_ADDED_TO_CLASSPATH = 64;
    public static final int F_REMOVED_FROM_CLASSPATH = 128;
    public static final int F_CLASSPATH_REORDER = 256;
    public static final int F_REORDER = 256;
    public static final int F_OPENED = 512;
    public static final int F_CLOSED = 1024;
    public static final int F_SUPER_TYPES = 2048;
    public static final int F_SOURCEATTACHED = 4096;
    public static final int F_SOURCEDETACHED = 8192;
    public static final int F_FINE_GRAINED = 16384;
    public static final int F_ARCHIVE_CONTENT_CHANGED = 32768;
    public static final int F_PRIMARY_WORKING_COPY = 65536;
    public static final int F_CLASSPATH_CHANGED = 131072;
    public static final int F_PRIMARY_RESOURCE = 262144;
    public static final int F_AST_AFFECTED = 524288;
    public static final int F_CATEGORIES = 0x100000;
    public static final int F_RESOLVED_CLASSPATH_CHANGED = 0x200000;
    public static final int F_ANNOTATIONS = 0x400000;

    public IJavaElementDelta[] getAddedChildren();

    public IJavaElementDelta[] getAffectedChildren();

    public IJavaElementDelta[] getAnnotationDeltas();

    public CompilationUnit getCompilationUnitAST();

    public IJavaElementDelta[] getChangedChildren();

    public IJavaElement getElement();

    public int getFlags();

    public int getKind();

    public IJavaElement getMovedFromElement();

    public IJavaElement getMovedToElement();

    public IJavaElementDelta[] getRemovedChildren();

    public IResourceDelta[] getResourceDeltas();
}

