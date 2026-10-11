/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.Filter
 */
package org.eclipse.equinox.p2.metadata.expression;

import java.util.Map;
import org.eclipse.equinox.p2.metadata.expression.IExpression;
import org.osgi.framework.Filter;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IFilterExpression
extends IExpression,
Filter {
    public boolean match(Map<String, ? extends Object> var1);

    public boolean matchCase(Map<String, ? extends Object> var1);
}

