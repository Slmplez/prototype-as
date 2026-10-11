/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.serviceregistry;

import org.eclipse.osgi.internal.serviceregistry.ServiceProperties;
import org.osgi.framework.Filter;
import org.osgi.framework.ServiceEvent;
import org.osgi.framework.ServiceReference;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class ModifiedServiceEvent
extends ServiceEvent {
    private static final long serialVersionUID = -5373850978543026102L;
    private final ServiceEvent modified;
    private final ServiceEvent modifiedEndMatch;
    private final ServiceProperties previousProperties;

    ModifiedServiceEvent(ServiceReference<?> reference, ServiceProperties previousProperties) {
        super(2, reference);
        this.modified = new ServiceEvent(2, reference);
        this.modifiedEndMatch = new ServiceEvent(8, reference);
        this.previousProperties = previousProperties;
    }

    ServiceEvent getModifiedEvent() {
        return this.modified;
    }

    ServiceEvent getModifiedEndMatchEvent() {
        return this.modifiedEndMatch;
    }

    boolean matchPreviousProperties(Filter filter) {
        return filter.matchCase(this.previousProperties);
    }
}

