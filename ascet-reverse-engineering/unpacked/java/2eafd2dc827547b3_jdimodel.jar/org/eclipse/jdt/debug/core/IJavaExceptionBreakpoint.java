/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaBreakpoint;

public interface IJavaExceptionBreakpoint
extends IJavaBreakpoint {
    public void setInclusionFilters(String[] var1) throws CoreException;

    public String[] getInclusionFilters() throws CoreException;

    public boolean isCaught() throws CoreException;

    public boolean isUncaught() throws CoreException;

    public void setCaught(boolean var1) throws CoreException;

    public void setUncaught(boolean var1) throws CoreException;

    public boolean isChecked() throws CoreException;

    public String getExceptionTypeName();

    public void setFilters(String[] var1, boolean var2) throws CoreException;

    public void setExclusionFilters(String[] var1) throws CoreException;

    public String[] getFilters() throws CoreException;

    public String[] getExclusionFilters() throws CoreException;

    public boolean isInclusiveFiltered() throws CoreException;
}

