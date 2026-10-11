/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.sphinx.platform.stats.IPerformanceStats
 */
package org.artop.aal.serialization;

import org.artop.aal.serialization.SerializationPerformanceStats;
import org.eclipse.sphinx.platform.stats.IPerformanceStats;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ISerializationPerformanceStats
extends IPerformanceStats<SerializationPerformanceStats.SerializationEvent> {
    public void printlnToStandardOutput(String var1);

    public void printToStandardOutput(String var1);
}

