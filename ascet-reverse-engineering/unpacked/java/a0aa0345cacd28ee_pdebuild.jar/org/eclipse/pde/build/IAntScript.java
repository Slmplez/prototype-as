/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.build;

import java.util.List;
import java.util.Map;

public interface IAntScript {
    public void print(String var1);

    public void printComment(String var1);

    public void println(String var1);

    public void println();

    public void printAntCallTask(String var1, boolean var2, Map var3);

    public void printAttribute(String var1, String var2, boolean var3);

    public void printStartTag(String var1);

    public void printStartTag(String var1, Map var2);

    public void printEndTag(String var1);

    public void printElement(String var1, Map var2);

    public void printTabs();

    public void incrementIdent();

    public void decrementIdent();

    public void printTargetDeclaration(String var1, String var2, String var3, String var4, String var5);

    public void printTargetEnd();

    public void printEchoTask(String var1, String var2, String var3);

    public void printMacroDef(String var1, List var2);

    public void printEndMacroDef();
}

