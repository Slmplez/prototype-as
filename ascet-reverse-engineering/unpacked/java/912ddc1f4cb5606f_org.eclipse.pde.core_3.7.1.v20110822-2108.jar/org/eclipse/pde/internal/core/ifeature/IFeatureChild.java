/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IIdentifiable;
import org.eclipse.pde.core.plugin.IMatchRules;
import org.eclipse.pde.internal.core.ifeature.IEnvironment;
import org.eclipse.pde.internal.core.ifeature.IFeatureObject;

public interface IFeatureChild
extends IFeatureObject,
IIdentifiable,
IMatchRules,
IEnvironment {
    public static final String P_VERSION = "version";
    public static final String P_OPTIONAL = "optional";
    public static final String P_NAME = "name";
    public static final String P_MATCH = "match";
    public static final String P_FILTER = "filter";
    public static final String P_SEARCH_LOCATION = "search-location";
    public static final int ROOT = 0;
    public static final int SELF = 1;
    public static final int BOTH = 2;

    public String getVersion();

    public void setVersion(String var1) throws CoreException;

    public boolean isOptional();

    public void setOptional(boolean var1) throws CoreException;

    public String getName();

    public void setName(String var1) throws CoreException;

    public int getSearchLocation();

    public void setSearchLocation(int var1) throws CoreException;

    public int getMatch();

    public void setMatch(int var1) throws CoreException;

    public String getFilter();

    public void setFilter(String var1) throws CoreException;
}

