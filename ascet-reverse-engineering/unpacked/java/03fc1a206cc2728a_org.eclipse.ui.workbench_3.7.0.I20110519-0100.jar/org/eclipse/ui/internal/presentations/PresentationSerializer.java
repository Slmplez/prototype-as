/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.presentations;

import java.util.Collections;
import java.util.List;
import org.eclipse.ui.presentations.IPresentablePart;
import org.eclipse.ui.presentations.IPresentationSerializer;

public class PresentationSerializer
implements IPresentationSerializer {
    private List parts = Collections.EMPTY_LIST;

    public PresentationSerializer(List presentableParts) {
        this.parts = presentableParts;
    }

    public String getId(IPresentablePart part) {
        int index = this.parts.indexOf(part);
        return "" + index;
    }

    public IPresentablePart getPart(String id) {
        try {
            Integer integer = new Integer(id);
            int index = integer;
            if (this.parts.size() > index) {
                return (IPresentablePart)this.parts.get(index);
            }
        }
        catch (NumberFormatException numberFormatException) {}
        return null;
    }

    public void dispose() {
        this.parts = Collections.EMPTY_LIST;
    }
}

