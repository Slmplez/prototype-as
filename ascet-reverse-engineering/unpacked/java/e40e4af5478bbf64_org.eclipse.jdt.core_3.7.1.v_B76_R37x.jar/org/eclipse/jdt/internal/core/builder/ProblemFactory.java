/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.builder;

import java.util.Locale;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class ProblemFactory
extends DefaultProblemFactory {
    static SimpleLookupTable factories = new SimpleLookupTable(5);

    private ProblemFactory(Locale locale) {
        super(locale);
    }

    public static ProblemFactory getProblemFactory(Locale locale) {
        ProblemFactory factory = (ProblemFactory)factories.get(locale);
        if (factory == null) {
            factory = new ProblemFactory(locale);
            factories.put(locale, factory);
        }
        return factory;
    }
}

