/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.condpermadmin;

import java.util.Dictionary;
import org.osgi.service.condpermadmin.BooleanCondition;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Condition {
    public static final Condition TRUE = new BooleanCondition(true);
    public static final Condition FALSE = new BooleanCondition(false);

    public boolean isPostponed();

    public boolean isSatisfied();

    public boolean isMutable();

    public boolean isSatisfied(Condition[] var1, Dictionary<Object, Object> var2);
}

