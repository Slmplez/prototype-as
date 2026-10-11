/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.core.resources;

import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IMarker
extends IAdaptable {
    public static final String MARKER = "org.eclipse.core.resources.marker";
    public static final String TASK = "org.eclipse.core.resources.taskmarker";
    public static final String PROBLEM = "org.eclipse.core.resources.problemmarker";
    public static final String TEXT = "org.eclipse.core.resources.textmarker";
    public static final String BOOKMARK = "org.eclipse.core.resources.bookmark";
    public static final String SEVERITY = "severity";
    public static final String MESSAGE = "message";
    public static final String LOCATION = "location";
    public static final String PRIORITY = "priority";
    public static final String DONE = "done";
    public static final String CHAR_START = "charStart";
    public static final String CHAR_END = "charEnd";
    public static final String LINE_NUMBER = "lineNumber";
    public static final String TRANSIENT = "transient";
    public static final String USER_EDITABLE = "userEditable";
    public static final String SOURCE_ID = "sourceId";
    public static final int PRIORITY_HIGH = 2;
    public static final int PRIORITY_NORMAL = 1;
    public static final int PRIORITY_LOW = 0;
    public static final int SEVERITY_ERROR = 2;
    public static final int SEVERITY_WARNING = 1;
    public static final int SEVERITY_INFO = 0;

    public void delete() throws CoreException;

    public boolean equals(Object var1);

    public boolean exists();

    public Object getAttribute(String var1) throws CoreException;

    public int getAttribute(String var1, int var2);

    public String getAttribute(String var1, String var2);

    public boolean getAttribute(String var1, boolean var2);

    public Map<String, Object> getAttributes() throws CoreException;

    public Object[] getAttributes(String[] var1) throws CoreException;

    public long getCreationTime() throws CoreException;

    public long getId();

    public IResource getResource();

    public String getType() throws CoreException;

    public boolean isSubtypeOf(String var1) throws CoreException;

    public void setAttribute(String var1, int var2) throws CoreException;

    public void setAttribute(String var1, Object var2) throws CoreException;

    public void setAttribute(String var1, boolean var2) throws CoreException;

    public void setAttributes(String[] var1, Object[] var2) throws CoreException;

    public void setAttributes(Map<String, ? extends Object> var1) throws CoreException;
}

