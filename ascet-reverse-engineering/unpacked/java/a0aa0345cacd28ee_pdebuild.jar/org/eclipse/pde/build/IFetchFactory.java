/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.pde.build;

import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.pde.build.IAntScript;

public interface IFetchFactory {
    public static final String KEY_ELEMENT_NAME = "element";
    public static final String KEY_ELEMENT_TYPE = "type";
    public static final String KEY_ELEMENT_TAG = "tag";
    public static final String ELEMENT_TYPE_BUNDLE = "bundle";
    public static final String ELEMENT_TYPE_FEATURE = "feature";
    public static final String ELEMENT_TYPE_FRAGMENT = "fragment";
    public static final String ELEMENT_TYPE_PLUGIN = "plugin";

    public void parseMapFileEntry(String var1, Properties var2, Map var3) throws CoreException;

    public void generateRetrieveElementCall(Map var1, IPath var2, IAntScript var3);

    public void generateRetrieveFilesCall(Map var1, IPath var2, String[] var3, IAntScript var4);

    public void addTargets(IAntScript var1);
}

