/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.console;

import java.util.Dictionary;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommandInterpreter {
    public String nextArgument();

    public Object execute(String var1);

    public void print(Object var1);

    public void println();

    public void println(Object var1);

    public void printStackTrace(Throwable var1);

    public void printDictionary(Dictionary<?, ?> var1, String var2);

    public void printBundleResource(Bundle var1, String var2);
}

