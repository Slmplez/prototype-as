/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.osgi.framework.InvalidSyntaxException
 */
package org.osgi.service.wireadmin;

import java.util.Dictionary;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.service.wireadmin.Wire;

public interface WireAdmin {
    public Wire createWire(String var1, String var2, Dictionary var3);

    public void deleteWire(Wire var1);

    public void updateWire(Wire var1, Dictionary var2);

    public Wire[] getWires(String var1) throws InvalidSyntaxException;
}

