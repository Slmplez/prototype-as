/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.commands.common;

import java.util.Comparator;
import org.eclipse.core.commands.common.NamedHandleObject;
import org.eclipse.core.commands.common.NotDefinedException;
import org.eclipse.core.internal.commands.util.Util;

public class NamedHandleObjectComparator
implements Comparator {
    public final int compare(Object left, Object right) {
        NamedHandleObject a = (NamedHandleObject)left;
        NamedHandleObject b = (NamedHandleObject)right;
        String aName = null;
        try {
            aName = a.getName();
        }
        catch (NotDefinedException notDefinedException) {}
        String bName = null;
        try {
            bName = b.getName();
        }
        catch (NotDefinedException notDefinedException) {}
        return Util.compare((Comparable)((Object)aName), (Comparable)((Object)bName));
    }
}

