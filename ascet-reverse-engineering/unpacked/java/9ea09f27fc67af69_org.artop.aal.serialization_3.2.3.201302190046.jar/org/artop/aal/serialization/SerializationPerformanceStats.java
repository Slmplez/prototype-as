/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.sphinx.platform.stats.AbstractPerformanceStats
 *  org.eclipse.sphinx.platform.stats.IEventTypeEnumerator
 */
package org.artop.aal.serialization;

import org.artop.aal.serialization.ISerializationPerformanceStats;
import org.eclipse.sphinx.platform.stats.AbstractPerformanceStats;
import org.eclipse.sphinx.platform.stats.IEventTypeEnumerator;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SerializationPerformanceStats
extends AbstractPerformanceStats<SerializationEvent>
implements ISerializationPerformanceStats {
    private static final String TRACE_XML_SAX_PARSING = "org.artop.aal.serialization/traceXMLSAXParsing";
    static boolean isTraceXMLSAXParsing;
    public static SerializationPerformanceStats INSTANCE;

    static {
        INSTANCE = new SerializationPerformanceStats();
    }

    private SerializationPerformanceStats() {
        isTraceXMLSAXParsing = SerializationPerformanceStats.getBooleanOption((String)TRACE_XML_SAX_PARSING, (boolean)false);
    }

    protected String getPluginId() {
        return "org.artop.aal.serialization";
    }

    @Override
    public void printlnToStandardOutput(String s) {
        if (isTraceXMLSAXParsing) {
            System.out.println(s);
        }
    }

    @Override
    public void printToStandardOutput(String s) {
        if (isTraceXMLSAXParsing) {
            System.out.print(s);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static enum SerializationContext implements IEventTypeEnumerator
    {

        private String name;

        private SerializationContext(String contextName) {
            this.name = contextName;
        }

        public String getName() {
            return this.name;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static enum SerializationEvent implements IEventTypeEnumerator
    {

        private String name;

        private SerializationEvent(String eventName) {
            this.name = eventName;
        }

        public String getName() {
            return this.name;
        }
    }
}

