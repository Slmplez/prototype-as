/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import java.util.Map;
import org.eclipse.equinox.p2.metadata.ITouchpointInstruction;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ITouchpointData {
    public ITouchpointInstruction getInstruction(String var1);

    public Map<String, ITouchpointInstruction> getInstructions();

    public boolean equals(Object var1);
}

