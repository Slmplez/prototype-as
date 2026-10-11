/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.jdt.core;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOpenable;
import org.eclipse.jdt.core.JavaModelException;

public interface IJavaElement
extends IAdaptable {
    public static final int JAVA_MODEL = 1;
    public static final int JAVA_PROJECT = 2;
    public static final int PACKAGE_FRAGMENT_ROOT = 3;
    public static final int PACKAGE_FRAGMENT = 4;
    public static final int COMPILATION_UNIT = 5;
    public static final int CLASS_FILE = 6;
    public static final int TYPE = 7;
    public static final int FIELD = 8;
    public static final int METHOD = 9;
    public static final int INITIALIZER = 10;
    public static final int PACKAGE_DECLARATION = 11;
    public static final int IMPORT_CONTAINER = 12;
    public static final int IMPORT_DECLARATION = 13;
    public static final int LOCAL_VARIABLE = 14;
    public static final int TYPE_PARAMETER = 15;
    public static final int ANNOTATION = 16;

    public boolean exists();

    public IJavaElement getAncestor(int var1);

    public String getAttachedJavadoc(IProgressMonitor var1) throws JavaModelException;

    public IResource getCorrespondingResource() throws JavaModelException;

    public String getElementName();

    public int getElementType();

    public String getHandleIdentifier();

    public IJavaModel getJavaModel();

    public IJavaProject getJavaProject();

    public IOpenable getOpenable();

    public IJavaElement getParent();

    public IPath getPath();

    public IJavaElement getPrimaryElement();

    public IResource getResource();

    public ISchedulingRule getSchedulingRule();

    public IResource getUnderlyingResource() throws JavaModelException;

    public boolean isReadOnly();

    public boolean isStructureKnown() throws JavaModelException;
}

