/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

import java.util.Map;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ICommand {
    public Map<String, String> getArguments();

    public String getBuilderName();

    public boolean isBuilding(int var1);

    public boolean isConfigurable();

    public void setArguments(Map<String, String> var1);

    public void setBuilderName(String var1);

    public void setBuilding(int var1, boolean var2);
}

