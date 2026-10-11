/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IStepFilters
 */
package org.eclipse.jdt.debug.core;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IStepFilters;
import org.eclipse.jdt.debug.core.IJavaHotCodeReplaceListener;
import org.eclipse.jdt.debug.core.IJavaThreadGroup;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;

public interface IJavaDebugTarget
extends IDebugTarget,
IStepFilters {
    public IJavaVariable findVariable(String var1) throws DebugException;

    public IJavaType[] getJavaTypes(String var1) throws DebugException;

    public IJavaValue newValue(boolean var1);

    public IJavaValue newValue(byte var1);

    public IJavaValue newValue(char var1);

    public IJavaValue newValue(double var1);

    public IJavaValue newValue(float var1);

    public IJavaValue newValue(int var1);

    public IJavaValue newValue(long var1);

    public IJavaValue newValue(short var1);

    public IJavaValue newValue(String var1);

    public IJavaValue nullValue();

    public IJavaValue voidValue();

    public boolean isOutOfSynch() throws DebugException;

    public boolean mayBeOutOfSynch() throws DebugException;

    public boolean supportsHotCodeReplace();

    public boolean isPerformingHotCodeReplace();

    public boolean supportsInstanceBreakpoints();

    public boolean isFilterSynthetics();

    public void setFilterSynthetics(boolean var1);

    public boolean isFilterGetters();

    public void setFilterGetters(boolean var1);

    public boolean isFilterSetters();

    public void setFilterSetters(boolean var1);

    public boolean isFilterStaticInitializers();

    public void setFilterStaticInitializers(boolean var1);

    public boolean isFilterConstructors();

    public void setFilterConstructors(boolean var1);

    public String[] getStepFilters();

    public void setStepFilters(String[] var1);

    public void setStepThruFilters(boolean var1);

    public boolean isStepThruFilters();

    public boolean supportsRequestTimeout();

    public void setRequestTimeout(int var1);

    public int getRequestTimeout();

    public boolean supportsMonitorInformation();

    public boolean supportsAccessWatchpoints();

    public boolean supportsModificationWatchpoints();

    public void setDefaultStratum(String var1);

    public String getDefaultStratum();

    public IJavaThreadGroup[] getRootThreadGroups() throws DebugException;

    public IJavaThreadGroup[] getAllThreadGroups() throws DebugException;

    public boolean supportsInstanceRetrieval();

    public boolean supportsForceReturn();

    public boolean supportsSelectiveGarbageCollection();

    public String getVMName() throws DebugException;

    public String getVersion() throws DebugException;

    public void refreshState() throws DebugException;

    public byte[] sendCommand(byte var1, byte var2, byte[] var3) throws DebugException;

    public void addHotCodeReplaceListener(IJavaHotCodeReplaceListener var1);

    public void removeHotCodeReplaceListener(IJavaHotCodeReplaceListener var1);
}

