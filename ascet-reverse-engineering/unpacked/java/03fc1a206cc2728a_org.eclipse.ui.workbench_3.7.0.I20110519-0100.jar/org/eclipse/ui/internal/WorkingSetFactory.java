/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.internal.AbstractWorkingSet;
import org.eclipse.ui.internal.AggregateWorkingSet;
import org.eclipse.ui.internal.WorkingSet;

public class WorkingSetFactory
implements IElementFactory {
    public IAdaptable createElement(IMemento memento) {
        boolean isAggregate;
        String workingSetName = memento.getString("name");
        String label = memento.getString("label");
        if (label == null) {
            label = workingSetName;
        }
        String workingSetEditPageId = memento.getString("editPageId");
        String aggregateString = memento.getString("aggregate");
        boolean bl = isAggregate = aggregateString != null && Boolean.valueOf(aggregateString) != false;
        if (workingSetName == null) {
            return null;
        }
        AbstractWorkingSet workingSet = null;
        workingSet = isAggregate ? new AggregateWorkingSet(workingSetName, label, memento) : new WorkingSet(workingSetName, label, memento);
        if (workingSetEditPageId != null) {
            workingSet.setId(workingSetEditPageId);
        } else if (!isAggregate) {
            workingSet.setId("org.eclipse.ui.resourceWorkingSetPage");
        }
        return workingSet;
    }
}

