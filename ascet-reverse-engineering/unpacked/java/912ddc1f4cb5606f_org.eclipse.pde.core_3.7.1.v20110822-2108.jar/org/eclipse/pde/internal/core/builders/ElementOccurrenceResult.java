/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.builders;

import org.eclipse.pde.internal.core.ischema.ISchemaElement;
import org.w3c.dom.Element;

public class ElementOccurrenceResult {
    private Element fElement;
    private ISchemaElement fSchemaElement;
    private int fActualOccurrences;
    private int fAllowedOccurrences;

    public ElementOccurrenceResult(Element element, ISchemaElement schemaElement, int actualOccurrences, int allowedOccurrences) {
        this.fElement = element;
        this.fActualOccurrences = actualOccurrences;
        this.fAllowedOccurrences = allowedOccurrences;
        this.fSchemaElement = schemaElement;
    }

    public ISchemaElement getSchemaElement() {
        return this.fSchemaElement;
    }

    public Element getElement() {
        return this.fElement;
    }

    public int getActualOccurrences() {
        return this.fActualOccurrences;
    }

    public int getAllowedOccurrences() {
        return this.fAllowedOccurrences;
    }
}

