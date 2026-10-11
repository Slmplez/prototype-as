/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.handlers;

public interface IActionCommandMappingService {
    public String getCommandId(String var1);

    public void map(String var1, String var2);

    public String getGeneratedCommandId(String var1, String var2);
}

