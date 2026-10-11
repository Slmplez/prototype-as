/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.artop.aal.serialization;

import org.artop.aal.serialization.ISerializationPerformanceStats;
import org.artop.aal.serialization.NullSerializationPerformanceStats;
import org.artop.aal.serialization.SerializationPerformanceStats;
import org.eclipse.core.runtime.Platform;

public class SerializationPerformanceStatsFactory {
    public static ISerializationPerformanceStats create() {
        if (Platform.isRunning()) {
            return SerializationPerformanceStats.INSTANCE;
        }
        return NullSerializationPerformanceStats.INSTANCE;
    }
}

