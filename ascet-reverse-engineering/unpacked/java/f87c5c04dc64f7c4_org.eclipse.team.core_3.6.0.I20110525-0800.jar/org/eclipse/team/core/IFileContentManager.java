/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IStorage
 */
package org.eclipse.team.core;

import org.eclipse.core.resources.IStorage;
import org.eclipse.team.core.IStringMapping;

public interface IFileContentManager {
    public int getType(IStorage var1);

    public boolean isKnownFilename(String var1);

    public boolean isKnownExtension(String var1);

    public int getTypeForName(String var1);

    public int getTypeForExtension(String var1);

    public void addNameMappings(String[] var1, int[] var2);

    public void addExtensionMappings(String[] var1, int[] var2);

    public void setNameMappings(String[] var1, int[] var2);

    public void setExtensionMappings(String[] var1, int[] var2);

    public IStringMapping[] getNameMappings();

    public IStringMapping[] getExtensionMappings();

    public IStringMapping[] getDefaultNameMappings();

    public IStringMapping[] getDefaultExtensionMappings();
}

