/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.sun.jdi.event.Event
 *  com.sun.jdi.event.EventIterator
 */
package org.eclipse.jdi.internal.event;

import com.sun.jdi.event.Event;
import com.sun.jdi.event.EventIterator;
import java.util.ListIterator;
import org.eclipse.jdi.internal.event.EventMessages;

public class EventIteratorImpl
implements EventIterator {
    private ListIterator fIterator;

    public EventIteratorImpl(ListIterator iter) {
        this.fIterator = iter;
    }

    public Event nextEvent() {
        return (Event)this.fIterator.next();
    }

    public boolean hasNext() {
        return this.fIterator.hasNext();
    }

    public Object next() {
        return this.fIterator.next();
    }

    public void remove() {
        throw new UnsupportedOperationException(EventMessages.EventIteratorImpl_EventSets_are_unmodifiable_1);
    }
}

