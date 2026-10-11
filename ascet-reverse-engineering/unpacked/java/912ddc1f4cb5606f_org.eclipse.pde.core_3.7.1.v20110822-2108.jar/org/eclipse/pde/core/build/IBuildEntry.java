/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.core.build;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.IWritable;
import org.eclipse.pde.core.build.IBuildModel;

public interface IBuildEntry
extends IWritable {
    public static final String P_NAME = "name";
    public static final String JAR_PREFIX = "source.";
    public static final String OUTPUT_PREFIX = "output.";
    public static final String BIN_INCLUDES = "bin.includes";
    public static final String SRC_INCLUDES = "src.includes";
    public static final String JARS_EXTRA_CLASSPATH = "jars.extra.classpath";
    public static final String SECONDARY_DEPENDENCIES = "additional.bundles";

    public void addToken(String var1) throws CoreException;

    public IBuildModel getModel();

    public String getName();

    public String[] getTokens();

    public boolean contains(String var1);

    public void removeToken(String var1) throws CoreException;

    public void renameToken(String var1, String var2) throws CoreException;

    public void setName(String var1) throws CoreException;
}

