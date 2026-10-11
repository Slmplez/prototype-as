/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.sphinx.platform.stats.AbstractPerformanceStats
 *  org.eclipse.sphinx.platform.stats.IEventTypeEnumerator
 */
package org.eclipse.sphinx.emf.internal;

import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.platform.stats.AbstractPerformanceStats;
import org.eclipse.sphinx.platform.stats.IEventTypeEnumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class EcorePerformanceStats
extends AbstractPerformanceStats<EcoreEvent> {
    public static EcorePerformanceStats INSTANCE = new EcorePerformanceStats();

    protected String getPluginId() {
        return Activator.getPlugin().getSymbolicName();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static enum EcoreContext implements IEventTypeEnumerator
    {
        CONTEXT("");

        private String name;

        private EcoreContext(String contextName) {
            this.name = contextName;
        }

        public String getName() {
            return this.name;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static enum EcoreEvent implements IEventTypeEnumerator
    {
        EVENT_CHOICES_OF_VALUES("choicesOfValues"),
        EVENT_FACTORIZED_OBJECTS("factorizedObjects"),
        EVENT_READ_CONTRIBUTIONS_CUSTOM_COMMANDS("readContributions_customCommands");

        private String name;

        private EcoreEvent(String eventName) {
            this.name = eventName;
        }

        public String getName() {
            return this.name;
        }
    }
}

